require 'open-uri'
require 'json'

# You can ignore the next two lines; it's a hack to prevent
#   errors on certain machines
require 'openssl'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

url="https://graph.facebook.com/v2.3/me/home?access_token=CAACEdEose0cBAOyw7azlbHmWi204IiWaWaY9x5apf4uZC8DiQOJV8ETeSZAJX1MHpZC8JlQgvZC2D54bR08BLv1agHKsPiqtzWZBDhkBIgDI7B3orZAxhSFNXer61t6fNen9gSqZBSCwD2Ha1kzHAAvZC8kMZC1EIdkWLX1Thp4NxhWLdOBLoXCVsrJnquGHz8GLRv7BriLrw5oloRjdXnAWLAgt2tl2d4IUrztIWlc2CtgZDZD"

result = JSON.parse(open(url).read)

# puts result["data"][0]["from"]["name"]
# puts result["data"][0]["message"]
# posts=results["data"]

puts"<ul>"
posts.each do |the_post|
  if the_post["type"]=="video"
    puts"<li>"
  puts the_post["from"]["name"]
  puts the_post["message"]
  puts the_post["link"]
  puts
  puts "</li>"
end
end
puts"</ul>"

