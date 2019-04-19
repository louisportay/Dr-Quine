#!/usr/bin/env ruby
# WAAAAAAAAGH

def func
  s = "#!/usr/bin/env ruby%1$c# WAAAAAAAAGH%1$c%1$cdef func%1$c  s = %2$c%3$s%2$c%1$c  printf(s,10,34,s)%1$cend%1$c%1$cif __FILE__ == $0%1$c  func%1$c  #this is useless%1$c%1$cend%1$c"
  printf(s,10,34,s)
end

if __FILE__ == $0
  func
  #this is useless

end
