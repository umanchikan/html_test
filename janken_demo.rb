
 

def janken(my_hand,your_hand)
  a = {0 =>"ぐー", 1=>"チョキ", 2=>"パー"}
  b = {0 =>"あいこ", 1 =>"勝ち", 2 =>"負け"}
  while true
    rezult = (my_hand - your_hand + 3) % 3
    if rezult == 1 || rezult == 2 #勝ちか負け
      puts "相手の手は#{a[my_hand]}です。あなたの#{b[rezult]}です。"
    　return false
    elsif rezult == 0
      puts "相手の手は#{a[0]}です。あなたの#{b[0]}です。"
    else
      puts "エラーです。最初からやり直してください"
    end
    
end
end

janken(0, 1)