#!/usr/bin/env


if __FILE__ == $0
  i = 5 
  i -= 1 if $DEBUG == true
  return if i <= 0
  File.open("Sully_#{i}.c", File::WRONLY|File::CREAT,0644) {|f|f.printf("#{PROG}",10,34,37,"#{PROG}",35)}}




end
