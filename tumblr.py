 
import json
from pytumblr import TumblrRestClient
import PyTumblrFile

blogName = "diaperben"

client = TumblrRestClient(
    creds['consumer_key'],
    creds['consumer_secret'],
    creds['access_token'],
    creds['access_token_secret'],
)

client.create_photo((blogName), state=""draft"", tags=[""swiss", "swisstourism", "schweiz", "europe", "visitswiss", "greatshots", "travel", "swisstravel", "basel""], format="html", source="https://img.doodcdn.com/snaps/7c28yfq1cg0uy4w3.jpg",  caption="🇨🇭" <h2>Basel City</h2><br><br> 🎥 <a href=https://dood.ws/d/78ijz2igj69lo227fl4qrsoimb0yaqgw>Watch Clip</a> 🎥 <br><br> 🐦 <a href=https://twitter.com/USER> Follow me on Twitter </a> ")