=begin


=end

module Cryptogr_pb
class Base64_pb
def initialize()

# Base64 encoder/decoder.
#

require "base64"

puts ""
title "// Base64 Encoder & Decoder //"
puts ""
puts " Insert string to encode or decode."
puts ""
print "   -> "
word = gets_pb.chomp

puts ""
puts "Encoded -> " + Base64.encode64(word)
puts ""
puts "Decoded -> " + Base64.decode64(word)
puts ""

end
end
end
