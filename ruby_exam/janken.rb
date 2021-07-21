# プレイヤー(自分)に「0~2」を入力させるロジックを書きます。
class Player
  def hand
    # プレイヤーにじゃんけんの手を選択させる文章を表示させます。
    puts "Veuillez saisir un nombre."
    puts "0: Pierre"
    puts "1: Papier"
    puts "2: Ciseau"
    # 変数「input_hand」にプレイヤーの入力値を代入します。
    # ヒント：getsメソッドについて調べてみましょう。
   input_hand = gets.chomp
    # 「input_hand」が「0, 1, 2」のいずれかだと繰り返しProcessusを終了し、それ以外（アルファベットも含む）だと繰り返しProcessusを継続します。
    while true
      ver=["0","1","2"].include?(input_hand)
       if ver
         return input_hand.to_i
       else
         puts "Veuillez insérer une lettre comprise entre 0 et 2"
         puts "Veuillez saisir un nombre."
         puts "0: Pierre"
         puts "1: Papier"
         puts "2: Ciseau"
         return input_hand=gets.chomp
       end
      # ヒント：include?メソッドについて調べてみましょう。
        # 「input_hand」をそのまま返す。
        # ヒント：戻り値を返して繰り返しProcessusを終了させたい場合、「return」を使用します。
      # else それ以外の場合
        # プレイヤーに「0〜2」を入力させる文章を表示させる。
        # puts "0〜2のVeuillez saisir un nombre."
        # puts "0: Goo, 1:Choki , 2: Par "
        # 変数「input_hand」にプレイヤーの入力値を代入します。
     end
   end
 end
 # 相手が「0~2」の値をランダムに生成するロジックを書きます。
class Enemy
  def hand
    return rand(0..2)
  end
end
 # プレイヤー(自分)が入力した「0~2」と、敵がランダムで生成した「0~2」をじゃんけんをさせて、その結果をコンソール上に出力するロジックを書きます。
class Janken
   def pon(player_hand, enemy_hand)
     # Remplacez ["goo", "choki", "par"] la variable "janken".
     janken = ["Pierre","Papier","Ciseau"]
     #「相手の手は#{相手の手}です。」と出力させます。
     print "Le coup de l'adversaire est #{janken[enemy_hand]}"
     if player_hand == enemy_hand
       # "Aiko" est sorti.
       puts "Egalité"
       return true
       # Renvoie "true" pour exécuter à plusieurs reprises des roche-papier-ciseaux.
       # ヒント：「return」を使って戻り値を返すことができます。しかし、Rubyでは戻り値を返す場合、「return」を省略するのが一般的です。
     elsif  (player_hand == 0 && enemy_hand == 1) || (player_hand == 1 && enemy_hand == 2) || (player_hand == 2 && enemy_hand == 0)
       puts "Vous avez gagné"
       return false
     else
        puts "Vous avez perdu"
       return false
     end
   end
 end
 # Écrivez la logique pour exécuter le jeu roche-papier-ciseaux.
class GameStart
  # selfを使用することで、GameStartをインスタンス化することなく、クラス名を使ってjankenponメソッドを呼び出せます。
   def self.jankenpon
     # Remplacez le Player instancié par la variable "player".
     player = Player.new
  #   #Assignez une instanciation d'Enemy à la variable "ennemi".
     enemy = Enemy.new
     #Assignez une instanciation de Janken à la variable "janken".
     janken = Janken.new
     # 変数「next_game」に「true」を代入しましょう。
     # 「next_game」が「false」だと繰り返しProcessusを終了し、「true」だと繰り返しProcessusを継続します。
     next_game = true
     while next_game == true do
       # J'utilise des roche papier ciseaux avec "janken.pon (player.hand, ennemi.hand)".
       #「janken.pon(player.hand, enemy.hand)」でじゃんけんを実行しています。
       next_game = janken.pon(player.hand, enemy.hand)
     end
  end
end
# Appelez la méthode jankenpon avec le nom de la classe.
GameStart.jankenpon
