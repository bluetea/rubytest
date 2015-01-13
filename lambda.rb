def power(n)
  lambda do |x|
    p "return"
    return 
  end
end

def power1(n)
  Proc.new do |x|
    break 2

  end
end