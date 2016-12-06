sum = 0
for i in 1..5 do
  sum = sum + i
end
puts sum

names = ["awk", "Perl", "Python", "Ruby"]
# for name in names do
#   puts name
# end
#
# names.each do |name|
#   puts name
# end
i = 0
names.each do |lang|
  i += 1
  if i == 3
    break
  end
  p [i, lang]
end

i = 0
names.each do |lang|
  i += 1
  if i == 3
    next
  end
  p [i, lang]
end
