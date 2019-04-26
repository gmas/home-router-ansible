#!/bin/env ruby
# saves IP as gateway in dhcpcd client format
# used by Shorewall to 'detect' provider gateway
#echo "GATEWAYS=$3" > /var/lib/dhcpcd/dhcpcd-#{interface}.info
gateway = ARGF.argv[3]
interface= ARGF.argv[0]
File.open("/var/lib/dhcpcd/dhcpcd-#{interface}.info", "w+") do |f|
  f.truncate(0)
  f.write "GATEWAYS=#{gateway}"
end

# reload shorewall
system("/usr/bin/shorewall reload")
