# Send text post to Google Plus
require "erb"
require "uri"

include ERB::Util

clipboard=`pbpaste`
url=url_encode(clipboard)

`open 'https://plus.google.com/share?url=#{url}'`
