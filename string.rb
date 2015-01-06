#初始化单词数量，默认值为0
count = Hash.new(0)

#统计单词
File.open(ARGV[0]) do |f|
  f.each_line do |line|
    words = line.split
    words.each do |w|
      count[w] += 1  #默认为0，所以当有第一个单词的时候为1
    end
  end
end
count.sort{|a, b| a[1] <=> b[1]}.each do |key, value|
  print "#{key}: #{value}\n"
end

