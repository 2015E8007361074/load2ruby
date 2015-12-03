module M
  def meth
    "meth"
  end
end

class C
  include M
end

c = C.new
#p c.meth


module ClassMethods
  def cmethod
    "class method"
  end
end

module InstanceMethods
  def imethods
    "instance method"
  end
end

class MyClass
  extend ClassMethods
  include InstanceMethods
end

p MyClass.cmethod
p MyClass.new.imethods
