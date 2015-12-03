class C1
  def hello
    "hello"
  end
  
  def test
    "test"
  end
end

class C2 < C1
  alias old_hello hello
  def hello
    "#{old_hello},again"
  end
 # undef test #用于删除已有方法的定义
end


obj = C2.new
p obj.old_hello
p obj.hello
p obj.test

p C2.ancestors #取得继承关系列表
p C2.superclass #直接返回C2的父类C1

p Enumerable.instance_methods #以符号的形式返回该类的实例方法列表