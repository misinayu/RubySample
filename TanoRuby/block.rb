alphabet = ["a", "b", "c", "d", "e"]
alphabet.each do |i|
  puts i.upcase
end

sum = 0
outcome = {"参加費"=>1000, "ストラップ"=>1000, "懇親会会費"=>4000}
outcome.each do |pair|
  sum += pair[1] # 値を指定している
end
puts "合計：#{sum}"


# 計算の一部を差し替える
ary = %w(
  Ruby is a open source programming language with a focus
  on simplicity and productivity. It has an elegant syntax
  that is natural to read and easy to write
)

# call_num = 0
# sorted = ary.sort do |a, b|
#   call_num += 1
#   a.length <=> b.length
# end

sorted = ary.sort_by{ |item| item.length }
# p sorted

# puts "ソートの結果 #{sorted}"
# puts "配列の要素数 #{ary.length}"
# puts "ブロックの呼び出し回数 #{call_num}"


# ブロックつきメソッドを作る
def myloop
  while true
    yield # ブロックを実行する
  end
end

num = 1
myloop do
  puts "num is #{num}" # numを表示する
  break if num > 10 # numが10を超えていたら抜ける
  num *= 2 # numを2倍する
end


# ブロック変数を渡す、ブロックの結果を得る
def total(from, to)
  result = 0 # 合計の値
  from.upto(to) do |num| # fromからtoまで処理する
    if block_given? # ブロックがあれば
      result += yield(num) # ブロックで処理した値を足す
    else # ブロックがなければ
      result += num # そのまま足す
    end
  end
  return result # メソッドの結果を返す
end

p total(1, 10)
p total(1, 10){|num| num ** 2} # 1から10の2乗の値の和

# ブロック変数に複数の引数を渡す
def block_args_test
  yield() # ブロック変数なし
  yield(1) # ブロック変数１つ
  yield(1, 2, 3) # ブロック変数３つ
end

puts "ブロック変数を|a|で受け取る"
block_args_test do |a|
  p [a]
end
puts

puts "ブロック変数を|a, b, c|で受け取る"
block_args_test do |a, b, c|
  p [a, b, c]
end
puts

puts "ブロック変数を|*a|で受け取る"
block_args_test do |*a|
  p [a]
end
puts


# ブロックをオブジェクトとして受け取る
hello = Proc.new do |name|
  puts "Hello, #{name}"
end

hello.call("World")
hello.call("Ruby")

def total2(from, to, &block)
  result = 0
  from.upto(to) do |num|
    if block
      result += block.call(num)
    else
      result += num
    end
  end
  return result
end

p total2(1, 10)
p total2(1, 10){|num| num ** 2}

# Procオブジェクトの引き渡し
def call_each(ary, &block)
  ary.each(&block)
end

call_each [1, 2, 3] do |item|
  p item
end


# ローカル変数とブロック変数
x = 1
y = 1
ary = [1, 2, 3]

ary.each do |x|
  y = x
end

p [x, y]


x = y = z = 0 # xとyとzを初期化
ary = [1, 2, 3]
ary.each do |x; y| # ブロック変数x, ブロックローカル変数yを使用
  y = x # ブロックローカル変数yを代入
  z = x # ブロックローカルでない変数zを代入
  p [x, y, z] # ブロック内のx,y,zの値を確認する
end
puts
p [x, y, z]
