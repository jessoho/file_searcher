folders = Dir["C:/Users/jessi/Documents/**"]
files = Dir["C:/Users/jessi/Documents/**/*.*"]
results = folders - files
dir = '"C:/Users/jessi/Documents/**"'

results.each do |folder|
    if Dir["#{folder}/*.*"] != []
      puts folder
      puts Dir["#{folder}/*.*"]
      puts folder.class
    end
end
