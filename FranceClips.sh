#!/bin/bash
# FranceClips Clips
if [ -d "$MEDIA_DIR" ]; then
    #for file in "$MEDIA_DIR${FR_DIR}"/**/*.mp4; do
    find "${MEDIA_DIR}/${FR_DIR}" -name "*.mp4" -type f
        echo "Processing $file file..."
        echo "### Determine the available node of Doodstream.com ###"
        curl -X GET https://doodapi.com/api/upload/server?key="$DOODSTREAM_API" | tee ./host.json
        echo ""
        echo "### The following data were determined by means of a loop ###"
        ls -lah "$file"
        echo ""
        DATA=$(jq "." ./host.json)
        RESULT=$(echo "${DATA[@]}" | jq -r '.result')

        echo "### Current Doodstream Node ###"
        jq <./host.json '.result'
        echo ""
        echo "### Upload clip to Doodstream.com ###"
        curl -X POST \
            -F "api_key=$DOODSTREAM_API" \
            -F "file=@$file" \
            "$RESULT"?"$DOODSTREAM_API" |
            tee ./dl.json | jq

        echo "### Create clip screenshot ###"
        SCREENSHOT_NAME="${file%.*}-screenshot.jpeg"
        ffmpeg -y -i "${file}" -ss 00:00:10 -frames:v 1 "${SCREENSHOT_NAME}"

        echo "### Generate Tumblr post request ###"
        DATA=$(jq "." dl.json)
        DL_LINK=$(echo "$DATA" | jq '.result[] .protected_dl')
        TUMBLRDATA=$(echo "$DATA" | jq -r '.result[] | "client.create_photo((blogName), state=\"'"$TUMBLR_STATE"'\", tags=[\"'"$TUMBLR_FR_HTAGS"'\"], format=\"html\", source=\"" + .single_img + "\", " + " caption=\"'"$FR_EMOJI"'\" <h2>" + .title + "</h2><br><br> 🎥 <a href=" + .protected_dl + ">Watch Clip</a> 🎥 <br><br> 🐦 <a href='https://twitter.com/USER'> Follow me on Twitter </a> \") " ')
        echo "$TUMBLRDATA" | tee >>./PyTumblrFile.txt

        echo "### Upload screenshot to Twitter ###"
        #MEDIA_ID=$(twurl -X POST -H upload.twitter.com "/1.1/media/upload.json?media_category=TWEET_IMAGE&additional_owners=00000000000" \
        #    -f ${SCREENSHOT_NAME} \
        #    -F media | python3 -c "import sys, json, requests; print(json.load(sys.stdin)['media_id'])")

        echo "### Generate Twitter post request ###"
        TWITTERDATA=$(echo "$DATA" | jq -r '.result[] | " twurl tweet -d '"$FR_EMOJI"' " + .title + " 🎥 " + .protected_dl + " '"$TWITTER_FR_HTAGS"' " ')
        echo "$TWITTERDATA" | tee >>./Twitter.txt

        echo "### Tweet Clipfile ###"
        #twurl tweet -d "media_ids=$MEDIA_ID&status=​$FR_EMOJI Frankreich 🎥 $DL_LINK $TWITTER_FR_HTAGS"
    done
fi
