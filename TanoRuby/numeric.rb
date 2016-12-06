# Rationalクラス
a = Rational(2, 5)
b = Rational(1, 3)
p [a, b]
c = a + b
p c
p c.to_f
p [c.numerator, c.denominator]

# Complexクラス
c = Complex(1, 2) ** 2
p c
p [c.real, c.imaginary]

# 数値のリテラル
p 1234567
p 1_234_567 # _は無視される
p 0b11111111
p 01234567
p 0x12345678

# 乱数
require "securerandom"

p SecureRandom.random_bytes(12)
p SecureRandom.base64(12)

# 数え上げ
# n.times
ary = []
10.times do |i|
  ary << i # iを配列の要素として追加する
end
p ary

# from.upto(to)
ary = []
2.upto(10) do |i|
  ary << i
end
p ary

# from.downto(to)
ary = []
10.downto(2) do |i|
  ary << i
end
p ary

# from.step(to, step)
ary = []
2.step(10, 3) do |i|
  ary << i
end
p ary

ary = []
10.step(2, -3) do |i|
  ary << i
end
p ary


# 練習問題01
def cels_to_fahr(cels)
  cels * 9 / 5 + 32
end

p cels_to_fahr(5)

# 練習問題02
def fahr_to_cels(fahr)
  5 * (fahr - 32) / 9
  # cel * 9 / 5 + 32
end

p fahr_to_cels(41)

# 練習問題03
def dice()
  Random.rand(6) + 1
end

p dice()

# 練習問題04
def dice10()
  temp = 0
  10.times do
    temp += dice()
  end
  temp
end

p dice10()

# 練習問題05
def prime?(num)
  limit = Math.sqrt(num)
end
