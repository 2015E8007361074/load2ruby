a = Rational(2,5)
b = Rational(1,3)

p a
p b

c = a + b

p c

p c.to_f

d = Complex(0,2)**2
p d

p 1234567
p 1_234_567#字面量中的_会被自动忽略

#与除法相关

p 5.div(2) #=>2
p 5.div(2.2) #=>2 向下取整

p 5.quo(2) #=>(5/2)
p 5.quo(2.2) #=>2.272727272727...

p 5.modulo(2)

p 10.divmod(3.5) #=>[2,3.0]

p 10.remainder(-3.5)