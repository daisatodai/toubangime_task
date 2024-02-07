#開始
user = ["相方","大西","岸田","岡本","佐藤","村松","鶴","小寺","松村","宮岡"]
answer = "y"



#ユーザー配列を定義する
#ユーザーの一覧を表示

#除外する人はいるか
#除外する人を選択
#当番の確定、当番を決める処理を実行
#終了
while answer == "y" do 
  #実際の処理
  #リスト表示 
  user.each_with_index do |user, i|
    puts "#{i}.#{user}"
  end 
  #除外する処理
  puts "除外する人はいますか？(y/nで入力してください)"
  #y/nを入力してyなら除外処理、nなら当番を決める処理へ
  answer = gets.chomp
  if answer == "y"
    puts "除外する人の番号を入力してください(半角スペースで区切る)"
    delete = gets.chomp #数字を入れる
    deletelist = delete.split.sort.reverse
    deletelist.each do |e|
      user.delete(user[e.to_i])
    end
  else 
    #当番を決める処理
    puts"当番は"
    puts"ジャカジャカジャカジャカジャカジャカジャーーーーーーーン"
    puts "#{user.sample}さんです"
    break
  end
end