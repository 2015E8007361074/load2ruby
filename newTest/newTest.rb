=begin
hash = {"a"=>1,"b"=>2}

puts hash["b"]

hash.each do|key,value|
  puts "#{key}: #{value}"
  
end
=end

=begin
names = ["yuwenyan","wenyanyu","yanwenyu","ieeflsyu","bobyu"]

names.each do |name|
  if /wen/ =~ name
  puts name
  end
end

=end


require "date"

days = Date.today - Date.new(1994, 11, 14)
puts(days.to_i)

