x = 1
#y = 1
ary = [1,2,3]

begin 
  
ary.each do |x|
  y=x
end

p [x,y]

rescue => ex
  puts "异常的种类：#{ex.class}\n异常的信息：#{ex.message}\n异常发生的位置：#{ex.backtrace}"
  
ensure
  puts "后处理"
end
