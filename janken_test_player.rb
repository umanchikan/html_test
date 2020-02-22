class Player
def player
  puts "数字を入力してください"
  puts "0: グー"
  puts "1: チョキ"
  puts "2: パー"
  
  p_hand = gets.chomp
  until p_hand == "0" ||
        p_hand == "1" ||
        p_hand == "2" do
    puts "じゃんけんの手を入力してください"
    p_hand = gets.chomp
  end
  p_hand.to_i
end
end

