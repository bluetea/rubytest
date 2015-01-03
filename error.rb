begin
  puts "开始"
  # raise "测试抛出错误" #不加参数属于RuntimeError类
  raise 
rescue => e
  p e.message 
  p e.class
  p e.backtrace
end
