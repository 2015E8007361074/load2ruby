file = File.open("D:/ruby/load2ruby/newTest/ten_lines_grep.rb")

file.each_line do |line|
  next if /^\s*$/ =~ line # empty line
  next if /^#/ =~ line #line which beginning with #
  puts line
end

file.close

sum = 0
m = 5
(1..5).each do |i|
  sum = sum +i
end
puts sum