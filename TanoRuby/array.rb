require "pp"

names = ["小林", "林", "高野", "森岡"]
print "最初の名前は", names[0], "です\n"
names[0] = "野尻"
puts names
puts names.size
names.each do |n|
  puts n
end

# Hashの練習
song = { :title => "Paranoid Android", :artist => "Radiohead"}
song2 = { title: "Paranoid Android", artist: "Radiohead"}
person = { "名前" => "高橋", "仮名" => "タカハシ"}
mark = { 11 => "Jack", 12 => "Queen", 13 => "King"}
puts song[:title]

mark.each do |key, value|
  puts "#{key}: #{value}"
end

def hello
  puts "Hello, Ruby."
end

hello()

pp song
