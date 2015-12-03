class String
  def count_word
    ary = self.split(/\s+/) #use space split receiver
    return ary.size
  end
end

str = "Came to UCAS has been more than two months, my biggest feeling is that major learning is not just learning major, but also English learning. English learning can not be dropped. With the continuous improvement of the level of professional knowledge, gradually found that major learning is no longer limited to the mainland of China, more excellent information is from abroad. So a good Enlish level is very important to gain this excellent information from abroad. Then what is the relationship between major learning and English learning?
First of all, English learning has a promoting effect on major learning. A good English level can be very helpful to us understand the major knowledge that teachers teaching in class. A good English level can let us very convenient to pick up English professional learning materials. In addition, a good English level also is very helpful to us publish the papers when we graduated in the future.
Secondly, major learning also in turn to have a promoting effect on English learning. With the continuous improvement of the professional level, the requirement for the level of English is becoming higher and higher, the motivation for learning English is also enhanced. Major learning process, in fact, is an English learning process. Because both the teacher teaching in class or after class learning, most of the learning materials in English, the English slide, the English papers, the English document. Especially for our computer science students, almost all of the new technology, there are no Chinese documents. It can be said that at the same time learning a new computer technology, a large part of the time is learning English. For example, recently,I was learning a new programming language---Ruby. However, this programming language is not very popular in China, its official document and learning materials are almost all in English. So I am learning the Ruby programming language, but also in learning English.
In general, I think that the relationship between major learning and English learning is a function of the reaction. Good English level can improve the ability of major learning, and major learning will further promote English learning."

p str.count_word