# キュー
alpha = ["a", "b", "c", "d", "e"]
p alpha.push("f")
p alpha.shift
p alpha

# スタック
alpha = ["a", "b", "c", "d", "e"]
p alpha.push("f")
p alpha.pop
p alpha

a = [1, 2, 3, 4, 5]
a.unshift(0) # 配列の先頭に新しい要素を付け加える
a << 6 # a.push()と同じ
a.concat([7, 8]) # 元の配列に別の配列を連結

p a

# 破壊的なメソッド　：　レシーバにあたるオブジェクトの値そのものを変更してしまうメソッド

# 配列aの要素がなくなるまで繰り返す
while item = a.pop
  ## itemに対する処理
end
