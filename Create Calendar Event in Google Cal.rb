# Make a new Calendar title
require "erb"
require "uri"

include ERB::Util

clipboard=`pbpaste`
url=url_encode(clipboard)

`open 'http://www.google.com/calendar/event?action=TEMPLATE&text=#{url}'`
