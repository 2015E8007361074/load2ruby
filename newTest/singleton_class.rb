str1 = "Ruby"
str2 = "Ruby"

class << str1
  def hello
    "Hello,#{self}!"
  end
end

p str1.hello
p str2.hello

#通过单例类的定义，就可以给对象添加方法（单例方法）。单例类定义被用于定义对象的专属实例方法。

#Ruby中的所有类都是Class类的实例，对Class类添加实例方法，就等于给所有的类添加了该类的方法。因此，只希望对某个实例添加方法时，就需要利用单例方法。