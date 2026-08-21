#!/usr/bin/env ruby

require "#{ENV['TM_SUPPORT_PATH']}/private/plist"

result = %x{defaults read com.apple.Xcode PBXApplicationwideBuildSettings}
if $? == 0
	print Plist.load(result)["OBJROOT"].to_s
	exit(0)
else
	exit($?)
end