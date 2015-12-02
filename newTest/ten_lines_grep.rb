#achieve a unix simple command---grep
pattern = /matz/
filename = "D:/ruby/load2ruby/newTest/ChangeLog"

max_matches = 4 #print out the max line
matches = 0
file = File.open(filename)
file.each_line do |line|
  
   if matches >= max_matches
     break     
   end
  
   if pattern =~ line
      puts line
      matches += 1
   end   
end

file.close