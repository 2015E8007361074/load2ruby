=begin
hash = {"a"=>1,"b"=>2}

puts hash["b"]

hash.each do|key,value|
  puts "#{key}: #{value}"
  
end
=end

=begin
names = ["yuwenyan","wenyanyu","yanwenyu","ieeflsyu","bobyu"]

names.each do |name|
  if /wen/ =~ name
  puts name
  end
end

=end

=begin
require "date"

days = Date.today - Date.new(1994, 11, 14)
puts(days.to_i)

=end

=begin
p "10,20,30,40".split(",")
p [1,2,3,4].index(2)
p 1000.to_s

p Time.now.to_s
=end
=begin  
Array.new #create a new array
File.open("some_file") #create a new File object
Time.now #create a new Time object
=end

=begin
def hello(name1,name2 = "Ruby")
  puts "hello,#{name1}!"
  puts "hello,#{name2}!"
end

hello("C")
hello("C","C++")
p print("1:") #print method just output parameters content, and return nil

def myloop
  while true
    yield # excute block
  end
end

num = 1 #initialize  num
myloop do
  puts "num is #{num}"
  break if num > 1000
  num *= 2
end

def foo(a,b,c)
  a+b+c
end

p foo(1,2,3)

args1 = [2,3]
p foo(1, *args1)

args2 = [1,2,3]
p foo(*args2)

def foohash(arg)
  arg
end

p foohash({"a"=>1, "b"=>2})
p foohash("a"=>1,"b"=>2)

=end

ary = []
str = "Hello, Ruby！"
p ary.class
p str.class
p ary.instance_of?(Array)
p str.instance_of?(String)

p str.is_a?(String)
p String.is_a?(Object)
p str.is_a?(Object)

