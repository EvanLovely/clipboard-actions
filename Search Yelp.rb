# Search for Restaraunts, Bars, and more
require "erb"
require "uri"

include ERB::Util

clipboard=`pbpaste`
url=url_encode(clipboard)

`open http://www.yelp.com/search?find_desc=#{url}`