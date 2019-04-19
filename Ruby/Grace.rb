#!/usr/bin/env ruby

# I do get my pizzas paid for by Linux indirectly.

KIDDIE='Grace_kid.rb'
PROG=%q(#!/usr/bin/env ruby%1$c%1$c# I do get my pizzas paid for by Linux indirectly.%1$c%1$cKIDDIE='Grace_kid.rb'%1$cPROG=%3$cq(%4$s)%1$cMAIN=%3$c{File.open(%2$c%5$c{KIDDIE}%2$c,File::WRONLY|File::CREAT,0644) {|f|f.printf(%2$c%5$c{PROG}%2$c,10,34,37,%2$c%5$c{PROG}%2$c,35)}}%1$c%1$ceval MAIN%1$c)
MAIN=%{File.open("#{KIDDIE}",File::WRONLY|File::CREAT,0644) {|f|f.printf("#{PROG}",10,34,37,"#{PROG}",35)}}

eval MAIN
