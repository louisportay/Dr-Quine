#!/usr/bin/env ruby

if __FILE__ == $0
  i = 5
  i -= 1 if $DEBUG == true
  s = %q(#!/usr/bin/env ruby

if __FILE__ == $0
  i = %d
  i -= 1 if $DEBUG == true
  s = %%q%c%s%c
  File.open("Sully_#{i}.rb",File::WRONLY|File::CREAT,0644) {|f|f.printf(s,i,40,s,41)}
  system("ruby -d Sully_#{i}.rb") if i > 0
end
)
  File.open("Sully_#{i}.rb",File::WRONLY|File::CREAT,0644) {|f|f.printf(s,i,40,s,41)}
  system("ruby -d Sully_#{i}.rb") if i > 0
end
