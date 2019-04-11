#!/usr/bin/env ruby

KIDDIE='Grace_kid.rb'
PROG=''
MAIN="File.open(#{KIDDIE}, File::WRONLY|File::CREAT, 0644) { |f| f.write(#{PROG}) }"

eval MAIN
