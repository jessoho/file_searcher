
puts ""
puts "Hi there! I will help you to search through a folder of your choice.
I will show you, which folders contain files and which ones are empty."
puts ""
puts "Which folder should be looked through?"
puts "Please follow this structure 'drive:/path/folder'"
puts ""
input_folder = Dir["#{gets.chomp}/**"]
puts ""
puts "Ok we search through #{input_folder}"
puts ""
input_folder.each do |item|
    if Dir["#{item}/*.*"] != []
      puts item
      puts "number of files found:" + Dir["#{item}/*.*"].count.to_s
      puts ""
    end
end
