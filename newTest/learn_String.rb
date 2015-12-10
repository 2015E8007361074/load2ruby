require 'pp'
#字符的创建

str1 = "这是字符串"
str2 = '这也是字符串'

#pp str1
#pp str2

moji = "字\s符\s串"
str1 = "这\r是#{moji}"

str2 = '这也是#{moji}'

#puts str1
#puts str2

#使用%Q与%q
#当创建包含"或者'的字符串时，比起使用\“、\‘进行转义，使用%Q或者%q更为简单

desc = %Q{Ruby 的字符串也可以使用''和”“。}
str = %q|Ruby said，"hello word"|

#puts desc
#puts str

#使用here Document。创建包含换行的长字符串时用这个方法是最简单的

#printf 方法

n=123
#p printf("%d\n",n)
#p printf("%4d\n",n)
#p printf("%04d\n",n)
#p printf("%+d\n",n)


n = "Ruby"

#p sprintf("Hello,%s!\n",n)
#p sprintf("Hello,%8s!\n",n)
#p sprintf("Hello,%-8s!\n",n) #%-8s 表示按左对齐的方式输出8位字符


#获取字符串的长度 length或size

p "just another ruby haker ".length
p "just another ruby haker ".size

p '我要学好红宝石语言！'.length #若为中文，则返回中文字符数
p "我要学好红宝石语言！".bytesize #返回的是字节数

p "".empty?
p "foo".empty?

#字符串的索引
#字符串的链接






