# 論理演算子の練習
# or operator
name = "Ruby"
var = nil
if var
  name = var
end

name = var || "Ruby"

var ||= 1 # var = var || 1と同じ

# and operator
item = nil
ary = []
if ary
  item = ary.first
end

item = ary && ary.first
item = ary&.first # 上と同じ

# 三項演算子
a = 1
b = 2
max = (a > b) ? a : b
p max

# 範囲演算子
p (5..10).to_a
p (5...10).to_a


# 演算子を定義する
class Point
  attr_accessor :x, :y

  def initialize(x=0, y=0)
    @x, @y = x, y
  end

  def inspect # pメソッドで「（x, y）」と表示する
    "(#{x}, #{y})"
  end

  def +(other) # x, yのそれぞれを足す
    self.class.new(x + other.x, y + other.y)
  end

  def -(other) # x, yのそれぞれを引く
    self.class.new(x - other.x, y - other.y)
  end

  def +@ # +インスタンスと使う
    dup # 自分の複製を返す
  end

  def -@
    self.class.new(-x, -y) # x, yのそれぞれの正負を玉にする
  end

  def ~@
    self.class.new(-y, x) # 90度反転させた座標を返す
  end

  def [](index)
    case index
    when 0
      x
    when 1
      y
    else
      raise ArgumentError, "out of range '#{index}'"
    end
  end

  def []=(index, val)
    case index
    when 0
      self.x = val
    when 1
      self.y = val
    else
      raise ArgumentError, "out of range '#{index}'"
    end
  end
end

point0 = Point.new(3, 6)
point1 = Point.new(1, 8)

p point0
p point1
p point0 + point1
p point0 - point1

p +point0
p -point0
p ~point0

p point0[0]
p point0[1] = 2
p point0[1]
