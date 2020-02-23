#自分の手のコード
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
player_hand = Player.new
@player_hand =  player_hand.player


#相手の手のコード
class Enemy
  def enemy
    enemy_hands = [0, 1, 2]
    enemy_hands.shuffle[0]
  end
  end
enemy_hand = Enemy.new
@enemy_hand = enemy_hand.enemy

class Janken
def janken_game(player_hand, enemy_hand)
  rock_paper_scissors = {0 =>"ぐー", 1=>"チョキ", 2=>"パー"}
  game_rezult = {0 =>"あいこ", 1 =>"勝ち", 2 =>"負け"}
  
  rezult = (player_hand - enemy_hand + 3) % 3
    if rezult == 1 || rezult == 2 #勝ちか負け
      puts "相手の手は#{rock_paper_scissors[player_hand]}です。あなたの#{game_rezult[rezult]}です。"
      return
    else
      puts "相手の手は#{rock_paper_scissors[player_hand]}です。あなたの#{game_rezult[rezult]}です。"
        player_hand = Player.new
        @player_hand =  player_hand.player
        enemy_hand = Enemy.new
        @enemy_hand = enemy_hand.enemy
        janken_game(@player_hand, @enemy_hand)
        janken = Janken.new
        janken.janken_game(@player_hand, @enemy_hand) 
    end
end
end
janken = Janken.new
janken.janken_game(@player_hand, @enemy_hand)


