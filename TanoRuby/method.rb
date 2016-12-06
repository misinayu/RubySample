p 10.to_s
p Time.now.to_s

def hello(name="Ruby")
  puts "Hello, #{name}."
end

hello()
hello("Newbie")

def volume(x, y, z)
  return x * y * z
end

p volume(2, 3, 4)
p volume(10, 20, 30)

p print("1:")


#ブロックつきメソッドの定義
def myloop
  while true
    yield
  end
end

num = 1
myloop do
  puts "num is #{num}"
  break if num > 10
  num *= 2
end

#キーワード引数
def area2(x: 0, y: 0, z: 0)
  xy = x * y
  yz = y * z
  zx = z * x
  (xy + yz + zx) * 2
end

p area2(x: 2, y: 3, z: 4)
p area2(z: 4, y: 3, x: 2)
p area2(x: 2, z: 3)

def meth(x: 0, y: 0, z: 0, **args)
  [x, y, z, args]
end

p meth(z: 4, y:3, x: 2)
p meth(x: 2, z: 3, v: 4, w: 5)


#ハッシュで引数を渡す
def area2(x: 0, y: 0, z: 0)
  xy = x * y
  yz = y * z
  zx = z * x
  (xy + yz+ zx) * 2
end

args1 = {x: 2, y: 3, z: 4}
p area2(args1)

args2 = {x: 2, z: 4}
p area2(args2)
