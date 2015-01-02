class Point
  attr_accessor :x, :y

  def initialize(x=0, y=0)
    @x, @y = x, y

  end

 def [](index)

  case index
  when 0
    puts "x objcet_id = #{x.object_id}\n@x object id = #{@x.object_id}"
  when 1
    y
  else
    raise ArgumentError ," out of range #{index}"
  end

 end

 def []=(index, val)

  case index
  when 0
    x= val
    puts  "x的objcet_id 是:#{x.object_id}"
    puts "@x的object id 是: #{@x.object_id}"
    puts "self的x的object_id 是: #{self.x.object_id}"
  when 1
    y= val
  else
    raise ArgumentError, "out of range #{index}"
  end
  
  end
end

p1 = Point.new(22,11)
p p1[0]
p p1[0] = 333
