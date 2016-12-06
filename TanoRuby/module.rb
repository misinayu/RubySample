module M
  def meth
    "meth"
  end
end

class C
  include M # モジュールMをインクルードする
end

c = C.new
p c.meth

C.include?(M)

p C.ancestors # 継承関係にあるクラスの一覧
p C.superclass # 直接のスーパークラス
