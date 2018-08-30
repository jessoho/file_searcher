folders = Dir["C:/Users/jessi/Documents/**"]
files = Dir["C:/Users/jessi/Documents/**/*.*"]
results = folders - files

puts "Which folder should be looked through?"
input_folder = gets.chomp.to_i

puts "Ok we search through #{input_folder}"

results.each do |folder|
    if Dir["#{folder}/*.*"] != []
      puts folder
      puts "number of files found:"
      puts Dir["#{folder}/*.*"].count
    end
end
