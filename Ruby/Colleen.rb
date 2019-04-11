#!/usr/bin/env ruby
# WAAAAAAAAGH

def func
  s = "#!/usr/bin/env ruby%c# WAAAAAAAAGH%c%cdef func%c  s = %c%s%c%c  printf(s,10,10,10,10,34,s,34,10,10,10,10,10,10,10,10)%cend%c%cif __FILE__ == $0%c  func()%c  #this is useless%cend%c"
  printf(s,10,10,10,10,34,s,34,10,10,10,10,10,10,10,10)
end

if __FILE__ == $0
  func()
  #this is useless
end
