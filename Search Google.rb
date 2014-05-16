# Google It!
require "erb"
require "uri"

include ERB::Util

clipboard=`pbpaste`
url=url_encode(clipboard)

`open https://www.google.com/#q=#{url}`