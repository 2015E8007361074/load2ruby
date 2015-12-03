class RingArray < Array
  def [](i)
    idx = i % size
    super(idx) #调用父类的同名方法
  end
end

wday = RingArray["金","木","水","火","土"]


#p wday[11]
#p wday[15]
#p wday[-1]
  
#p -1 % 5
  
#p BasicObject.instance_methods
#p Object.instance_methods