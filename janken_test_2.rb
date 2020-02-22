def player
  puts "じゃんけんの手を入力してください"
  p_hand = gets.chomp
  until p_hand == "0" ||
        p_hand == "1" ||
        p_hand == "2" do
    puts "じゃんけんの手を入力してください"
    p_hand = gets.chomp
  end
  puts p_hand.to_i#puts　は消せ！！
end

player