class HelloWorld
  Version = "1.0"
  @@count = 0

  def initialize(myname = "Ruby")
    @name = myname #@から始まる変数は「インスタンス変数」と呼ばれる
  end

  def HelloWorld.count
    @@count
  end

  def hello
    @@count += 1
    puts "Hello, world. I am #{@name}."
  end

  def name # @nameを参照する
    @name
  end

  def name=(value) # @nameを変更する
    @name = value
  end

  #クラスメソッド
  class << self
    def hello2(name2)
      puts "#{name2} said hello."
    end
  end
end

bob = HelloWorld.new("Bob")
alice = HelloWorld.new("Alice")
ruby = HelloWorld.new

bob.hello
alice.hello
bob.name = "Robert"
p bob.name
p HelloWorld::Version

class String
  def count_word
    ary = self.split(/\s+/) # selfを空白文字区切りで
                            # 配列に分解する
    return ary.size         # 分解後の配列の要素数を返す
  end
end

str = "Just Another Ruby Newbite"
p str.count_word


# 継承の練習
class RingArray < Array # スーパークラスを指定する
  def [](i)             # 演算子[]の再定義
    idx = i % size      # 新しいインデックスを求める
    super(idx)          # スーパークラスの同盟のメソッドを呼ぶ
  end
end

wday = RingArray["Sun", "Mon", "Tue", "Wen", "Thu", "Fri", "Sat"]
p wday[6]
p wday[11]
p wday[15]
p wday[-1]


# aliasの練習
class C1
  def hello
    "Hello"
  end
end

class C2 < C1
  alias old_hello hello

  def hello
    "#{old_hello}, again"
  end
end

obj = C2.new
p obj.old_hello
p obj.hello


# 特異クラスの練習
str1 = "Ruby"
str2 = "Ruby"

class << str1
  def hello
    "Heloo, #{self}!"
  end
end

p str1.hello
# p str2.hello


# モジュールの使い方
module MyModule
  # 共通して提供したいメソッドなど
end

class MyClass1
  include MyModule
  # MyClass1に固有のメソッドなど
end

class MyClass2
  include MyModule
  # MyClass2に固有のメソッドなど
end

module HelloModule
  Version = "1.0"

  def helloByModule(name)
    puts "Hello, #{name}."
  end
  module_function :helloByModule # モジュール関数として公開する
end

p HelloModule::Version
HelloModule.helloByModule("Alice")

include HelloModule
p Version
helloByModule("Alice")
