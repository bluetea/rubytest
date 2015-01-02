ltotal = 0 #line 数合计
wtotal = 0 #word 数合计
ctotal = 0 #character 数合计

ARGV.each do |file|
  begin
    input = File.open(file)
    l = 0
    w = 0
    c = 0
    input.each_line do |line|
      l += 1
      c += line.size
      line.sub!(/^\s+/, "") #任何以空格为开头的行，把空格删除
      ary = line.split(" ")
      w += ary.size
    end
    input.close
    printf("%8d, %8d, %8d, %s\n", l, w, c, file)

    ltotal += l
    wtotal += w
    ctotal += c
  rescue
    # print errors_object.message, "\n" #等于 $!
    # print errors_object.class, "\n"
    # print errors.backtrace , "\n" #等于 $@ 
  ensure
    p "ensure后语句无论如何都会执行"
  end
end

printf("%8d, %8d, %8d, %s\n", ltotal, wtotal, ctotal ,"total")