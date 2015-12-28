class Book < Struct.new(:title)

  # 长度大于2的不重复的单词的数组
  # 也可以是「标签」或「分类」的数组
  def words
    @words ||= self.title.gsub(/[a-zA-Z]{3,}/).map(&:downcase).uniq.sort
  end

end

class BookRecommender

  def initialize book, books
    @book, @books = book, books
  end

  def recommendations

    # 计算每个元素的 jaccard_index 值并排序
    @books.map! do |this_book|

      # 运行中定义 jaccard_index 的取值 singleton 方法
      this_book.define_singleton_method(:jaccard_index) do
        @jaccard_index
      end

      # 还有赋值方法
      this_book.define_singleton_method("jaccard_index=") do |index|
        @jaccard_index = index || 0.0
      end

      # 计算样本的交集
      intersection = (@book.words & this_book.words).size
      # ... 和并集
      union = (@book.words | this_book.words).size

      # 将除法运算的结果赋值，如无法计算则捕捉异常并赋值为0
      this_book.jaccard_index = (intersection.to_f / union.to_f) rescue 0.0

      this_book

      # 排序
    end.sort_by { |book| 1 - book.jaccard_index }

  end

end
# ...
# 读取数据并定义书籍数组
BOOKS = DATA.read.split("\n").map { |l| Book.new(l) }

# 定义当前书籍
current_book = Book.new("Ruby programming language")

# 进行推荐...
books = BookRecommender.new(current_book, BOOKS).recommendations

books.each do |book|
  puts "#{book.title} (#{'%.2f' % book.jaccard_index})"
end

__END__
Finding the best language for the job
Could Ruby save the day
Python will rock your world
Is Ruby better than Python
Programming in Ruby is fun
Python to the moon
Programming languages of the future


