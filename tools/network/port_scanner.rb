=begin

    

=end

module Network_pb
class Port_scanner_pb
def initialize()

# A simple scanner that connects sockets to see if the port is open.
#

require "socket"
require "timeout"

puts ""
title "// TCP port scanner //"
puts ""
puts " Insert host to scan."
puts ""
print "   -> "
$host = gets_pb.chomp

def scanrang(initialport, finalport)
	Thread.new do
		while initialport != finalport
			initialport += 1
			begin
				socket = TCPSocket.new($host, initialport)
				if socket
					puts ""
					puts " Open port -> #{initialport.to_s}"
				end
				socket.close
			rescue
			end
		end
	end
end

def ping(host, timeout=5, service="echo") # Adapted from ping.rb by Yukihiro Matz.
	begin
		timeout(timeout) do
			s = TCPSocket.new(host, service)
			s.close
		end
	rescue Errno::ECONNREFUSED
		return true
	rescue Timeout::Error, StandardError
		return false
	end
	return true
end

puts ""
print "[*] Pinging ... "
if ping($host) == false
	print "failed\n\n"
	puts " Error: Host seems down."
	puts ""
	exit
end
print "ok\n\n"

puts "[*] Scanning ..."
puts ""
puts " OPEN PORTS"
scanrang(0, 501)
scanrang(501, 1001)
scanrang(1001, 1501)
scanrang(1501, 2001)
scanrang(2001, 2501)
scanrang(2501, 3001)
scanrang(3001, 3501)
scanrang(3501, 4001)
scanrang(4001, 4501)
scanrang(4501, 5000)
while (Thread.list.length != 1)
	sleep(1)
end
puts ""
puts "[*] Scan finished."
puts ""

end
end
end
