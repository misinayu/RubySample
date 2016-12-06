=begin
「たのしいRuby 第５版」サンプル
コメントの使い方
16-09-14 山本昌範
=end
print("ハロー　ルビー.\n")
puts("Hello, ruby.")
p "100"
p 100
# 表面積を出力する
area = 100
print "表面積=#{area}\n"

p(2 == 2)
p("ruby" == "ruby")
p("ruby" == "neko")

# if else文の練習
a = 20
if a >= 10 then
  puts "greater"
else
  puts "smaller"
end

# 繰り返しの練習
i = 0
while i < 10
  print i, "\n"
  i = i + 1;
end

=begin
100.times do
  print "all work and no play makes jack a dull boy.\n"
end
=end
