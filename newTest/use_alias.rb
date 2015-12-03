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