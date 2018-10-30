=begin

   

=end

module Cryptogr_pb
class Digest_pb
def initialize()

# Multi Hash Digest (MD5, SHA1, SHA256, SHA384, SHA512, RIPEMD-160).
#

require "digest/md5"
require "digest/sha1"
require "digest/sha2"
require "digest/rmd160"

puts ""
title "// Multi-Digest (MD5, SHA1, SHA256, SHA384, SHA512, RIPEMD-160) //"
puts ""
puts " Insert string to digest."
puts ""
print "   -> "
word = gets_pb.chomp

puts ""
puts "MD5 = " + Digest::MD5.hexdigest(word)
puts ""
puts "SHA1 = " + Digest::SHA1.hexdigest(word)
puts ""
puts "SHA2 (256) = " + Digest::SHA256.hexdigest(word)
puts ""
puts "SHA2 (384) = " + Digest::SHA384.hexdigest(word)
puts ""
puts "SHA2 (512) = " + Digest::SHA512.hexdigest(word)
puts ""
puts "RIPEMD-160 = " + Digest::RMD160.hexdigest(word)
puts ""

end
end
end
