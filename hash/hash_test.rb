require 'pp'
pinyin = Hash.new
pinyin["yun"] = "云"
pinyin["zhong"] = "中"
pinyin["bu"] = "布"
pinyin["yi"] = "衣"

  
p pinyin["zhong"]
  
p pinyin

h1 = {"a"=>"b","c"=>"d"}

p h1["a"]


h = Hash.new
h["R"] = "Ruby"
p h["R"]
  
h3 = Hash.new
h3.store("R","Ruby")
p h3.fetch("R","Hash表没有这个键")
p h3.fetch("U","Hash表没有这个键")
p h3.fetch("B"){String.new}