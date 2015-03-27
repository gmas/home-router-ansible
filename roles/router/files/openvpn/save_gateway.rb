#!/bin/env ruby
# saves IP as gateway in dhcpcd client format
# used by Shorewall to 'detect' provider gateway
#echo "GATEWAYS=$5" > /var/lib/dhcpcd/dhcpcd-tun1.info
gateway = ARGF.argv[3]
File.open("/var/lib/dhcpcd/dhcpcd-tun1.info", "r+") do |f|
  f.truncate(0)
  f.write "GATEWAYS=#{gateway}\r\n"
end
