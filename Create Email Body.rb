# Create new email with copied text as body. Uses mailto: to fire off default email client.
require "erb"
require "uri"

include ERB::Util

clipboard=`pbpaste`
url=url_encode(clipboard)

m1 = URI::MailTo.build(['', "body=#{url}"])

`open #{m1}`