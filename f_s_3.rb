folders = Dir["C:/Users/jessi/Documents/**"]
files = Dir["C:/Users/jessi/Documents/**/*.*"]
results = folders - files
dir = '"C:/Users/jessi/Documents/**"'

results.each do |folder|
    if Dir["#{folder}/*.*"] != []
      puts folder
      puts "number of files found:"
      puts Dir["#{folder}/*.*"].count
      puts Dir["#{folder}/*.*"]
      #puts folder.class - not needed atm
    end
end
