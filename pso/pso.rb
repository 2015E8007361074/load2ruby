#Author: Wenyan Yu
#Date:2015-12-17
#Function:Acheieve particle swarm optimization 
#f(x)=x^3 - 5x^2-2x+3

#定义粒子类
class Particle
  def initialize(x,v)
    @x = x  #初始化实例变量
    @v = v
    @p_best_max = x
    @p_best_min = x
  end  
  attr_accessor :x, :v ,:p_best_max, :p_best_min 
end
#计算粒子的适应度
def fitness(x)    
  x**3-5*x**2-2*x+3 
end

#初始化

#控制随机数产生的种子
r1 = Random.new(1)  
#初始化一个粒子群数组
p_arry = []
10.times do|i|
    p_arry[i] = Particle.new((r1.rand*7-2),0) #初始化粒子位置范围为[-2,5],初始速度均为0.1
end

g_best_max = p_arry[0].x #初始化最大值全局最好的位置
g_best_min = p_arry[0].x #初始化最小值全局最好的位置
mark_g_best_max = [] #记录最大值全局最好的位置变化路径
mark_g_best_min = [] #记录最小值全局最好的位置变化路径 

150.times do
  p_arry.each do |p|
    
    #记录路径
    mark_g_best_max << g_best_max
    mark_g_best_min << g_best_min    
    g_best_max = p.x if fitness(p.x) > fitness(g_best_max)#更新全局最好适应度及其相应的位置 
    g_best_min = p.x if fitness(p.x) < fitness(g_best_min)     
    p.p_best_max = p.x if fitness(p.x) > fitness(p.p_best_max)#更新每个粒子历史最好的适应度及其相应的位置
    p.p_best_min = p.x if fitness(p.x) < fitness(p.p_best_min)    
    
    #更新每个粒子的速度和位置
    p.v = p.v + 2*r1.rand*(p.p_best_max - p.x) + 2*r1.rand*(g_best_max - p.x)
    p.x = p.x + p.v 
    
    #控制粒子位置的变化范围        
    p.x = -2 if p.x > 5 || p.x < -2 
        
  end
end

#结果输出
puts "函数取得最大值的位置：X=#{g_best_max}"
puts "函数的最大值为：Y=#{fitness(g_best_max)}"
puts
puts "函数取得最小值的位置：X=#{g_best_min}"
puts "函数的最小值为：Y=#{fitness(g_best_min)}"
puts
puts "最大值历史全局最好位置的记录："
p mark_g_best_max
puts
puts "最小值历史全局最好位置的记录："
p mark_g_best_min




