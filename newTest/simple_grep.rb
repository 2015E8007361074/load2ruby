#achieve a unix simple command---grep
pattern = /matz/
filename = "D:/ruby/load2ruby/newTest/ChangeLog"

file = File.open(filename)
file.each_line do |line|
   if pattern =~ line
      puts line
   end
end

file.close