
puts ""
puts "Hi there! I will help you to search through a folder of your choice.
I will show you, which folders contain files. I won't bore you with folders that are empty."
puts ""
puts "Which folder should be looked through?"
puts "Please follow this structure 'drive:/path/folder'"
puts ""
input_user = gets.chomp
input_folder = Dir["#{input_user}/**"]
puts ""
puts "Ok, we searched through: #{input_user}"
puts ""
input_folder.each do |item|
    if Dir["#{item}/*.*"] != []
      puts item
      puts "Number of files found: " + Dir["#{item}/*.*"].count.to_s
      puts "Name of file(s):"
      puts Dir["#{item}/*.*"]
      puts ""
    end
end
