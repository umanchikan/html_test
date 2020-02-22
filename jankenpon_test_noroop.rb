#自分の手
require '/Users/chiakisaito/workspace/DIVE/janken_test_player.rb'
player_hand = Player.new
@player_hand =  player_hand.player


#相手の手
require "/Users/chiakisaito/workspace/DIVE/janken_test_enemy.rb"
enemy_hand = Enemy.new
@enemy_hand = enemy_hand.enemy


def janken_game(player_hand, enemy_hand)
  rock_paper_scissors = {0 =>"ぐー", 1=>"チョキ", 2=>"パー"}
  game_rezult = {0 =>"あいこ", 1 =>"勝ち", 2 =>"負け"}
  rezult = (player_hand - enemy_hand + 3) % 3
    if rezult == 1 || rezult == 2 #勝ちか負け
      puts "相手の手は#{rock_paper_scissors[player_hand]}です。あなたの#{game_rezult[rezult]}です。"
    else
      puts "相手の手は#{rock_paper_scissors[player_hand]}です。あなたの#{game_rezult[rezult]}です。"
    end
end

janken_game(@player_hand, @enemy_hand)
