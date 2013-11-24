if( ARGV.size == 0 ) then
  puts "No Dump File Selected"
  abort
end

if(!File.exist?(ARGV[0])) then
  puts "File does not exist"
  abort
end

file = File.open(ARGV[0], "rb")
contents = file.read
file.close
contents.gsub!(/\sDEFINER=`.*`@`.*?`/ , " ")
file = File.open(ARGV[0].gsub(".sql","_clean.sql"), "w") {|f| f.write(contents) }
puts "File cleaning complete... #{ARGV[0].sub(".sql","_clean.sql")}"
