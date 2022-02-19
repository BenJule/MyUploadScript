import json
from pytumblr import TumblrRestClient
from pprint import pprint

blogName = "benlue"

creds = json.load(open('./creds.json'))

client = TumblrRestClient(
    creds['consumer_key'],
    creds['consumer_secret'],
    creds['access_token'],
    creds['access_token_secret'],
)

client.create_photo(blogName, state="published", tags=["testing", "ok"],
                    source="https://68.media.tumblr.com/b965fbb2e501610a29d80ffb6fb3e1ad/tumblr_n55vdeTse11rn1906o1_500.jpg")
