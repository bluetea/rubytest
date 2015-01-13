def print_lib
  # all = $:
  # all.sort!{|a, b| a <=> b}
  # all.each_with_index do |item, i|
  #   print "第#{i+1}个为: #{item}"
  # end
  print "#{$:}"
end