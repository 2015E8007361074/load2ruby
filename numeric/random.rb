p Random.rand
p Random.rand(10)
p Random.rand(10)

#模拟随机数终究只是通过计算得到的数值，只要随机数的种子一样，那么得到的值就有可能重复出现
r1 = Random.new(1)
p [r1.rand,r1.rand]

r2 = Random.new(1)
p [r2.rand,r2.rand]

