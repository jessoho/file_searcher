
puts ""
puts "Hi there! I will help you to search through a folder of your choice.
I will show you, which subfolders contain files. I won't bore you with folders that are empty."
puts ""
puts "Which folder should be looked through? Just insert the path."
puts "Be patient please, this may take a while."
puts ""
folder_count = 0
input_user = gets.chomp
input_folder = Dir["#{input_user.gsub('\\','/')}/**/*"]
puts ""
puts "Ok, we searched through: #{input_user}"
puts ""
input_folder.each do |item|
    if Dir["#{item}/*.*"] != []
      folder_count = folder_count+1
      puts item
      puts "Number of files found: " + Dir["#{item}/*.*"].count.to_s
      puts "Name of file(s):"
      puts Dir["#{item}/*.*"]
      puts ""
    end
end
puts "Number of folders with files found: " + folder_count.to_s
puts ""
puts "Exit by pressing enter"
gets
