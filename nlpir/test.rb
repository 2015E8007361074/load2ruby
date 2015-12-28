require 'nlpir'
include Nlpir

s="坚定不移沿着中国特色社会主义道路前进  为全面建成小康社会而奋斗"

#在当前文件夹路径下初始化
nlpir_init(File.expand_path("../", __FILE__),UTF8_CODE)

#处理字符串
text_proc(s) 

#处理文件
file_proc("example.txt","result.txt") 

#导入用户词典
import_userdict("./userdict.txt")
text_proc(s)

nlpir_exit()