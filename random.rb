ary1 = [1,2,3,4,5]
ary2 = [10, 20, 30, 40,50,60, 70]
ary3 = [100, 200, 300, 400]
i = 0
result = []
ary1.zip(ary2, ary3) do |a, b, c|
  result << a+ b+ c
end

p result
