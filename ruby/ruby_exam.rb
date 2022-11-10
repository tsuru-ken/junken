# プレイヤー(自分)に「0~2」を入力させるロジックを書きます。
class Player
  def hand #handというメソッドを定義（鶴田記載）
    # プレイヤーにじゃんけんの手を選択させる文章を表示させます。
    puts "数字を入力してください。"
    puts "0:グー, 1:チョキ, 2:パー"
    
    # 変数「input_hand」にプレイヤーの入力値を代入します。
    # ヒント：getsメソッドについて調べてみましょう。
    #getsメソッドで入力した値を所得する（鶴田記載）
    input_hand = gets.to_i #to_iメソッドで文字列オブジェクトを数値オブジェクトに変換する（鶴田記載）

    # 「input_hand」が「0, 1, 2」のいずれかだと繰り返し処理を終了し、それ以外（アルファベットも含む）だと繰り返し処理を継続します。
    while true do
      janken = [0, 1, 2]

      # if 「input_hand」が「0, 1, 2」のいずれかの場合だった場合
      # ヒント：include?メソッドについて調べてみましょう。
      #includeメソッドでinput_handの文字列があるか確認する（鶴田記載）
      if janken.include?(input_hand)

        # 「input_hand」をそのまま返す。
        # ヒント：戻り値を返して繰り返し処理を終了させたい場合、「return」を使用します。
        return input_hand

      # else それ以外の場合
      else
        # プレイヤーに「0〜2」を入力させる文章を表示させる。
        # puts "0〜2の数字を入力してください。"
        puts "0~2の数字を入力してください"
        # puts "0:グー, 1:チョキ, 2:パー"
        puts "0:グー, 1:チョキ, 2:パー"
        # 変数「input_hand」にプレイヤーの入力値を代入します。
        input_hand = gets.to_i #to_iメソッドで文字列オブジェクトを数値オブジェクトに変換する（鶴田記載）
      # end if文のend
      end
    end
  end
end

# 相手が「0~2」の値をランダムに生成するロジックを書きます。
class Enemy
  def hand #handというメソッドを定義（鶴田記載）
    # グー、チョキ、パーの値をランダムに取得する。

    #この書き方が不明
    return rand(3).to_i #to_iメソッドで文字列オブジェクトを数値オブジェクトに変換する（鶴田記載）
  end
end
# プレイヤー(自分)が入力した「0~2」と、敵がランダムで生成した「0~2」をじゃんけんをさせて、その結果をコンソール上に出力するロジックを書きます。
class Janken

  #ponというメソッドを定義して引数名（player_hand, enemy_hand）を渡す（鶴田記載）メソッド名と引数値を書く？
  def pon(player_hand, enemy_hand) 
    # 変数「janken」に["グー", "チョキ", "パー"]を代入します。
    janken = ["グー", "チョキ", "パー"]
    #「相手の手は#{相手の手}です。」と出力させます。
    puts "相手の手は#{janken[enemy_hand]}です。"

    # Playerクラスの戻り値とEnemyクラスの戻り値からじゃんけんするロジックを作成します。
    if player_hand == enemy_hand # Playerクラスの戻り値(player_hand)とEnemyクラスの戻り値(enemy_hand)の値が同じだった場合
      # 「あいこ」を出力します。
      puts "あいこ"
      #「true」を返してじゃんけんを繰り返し実行させます。
      return true
      # ヒント：「return」を使って戻り値を返すことができます。しかし、Rubyでは戻り値を返す場合、「return」を省略するのが一般的です。
      

    elsif # もしも下記の組み合わせだった場合
      (player_hand == 0 && enemy_hand == 1) || (player_hand == 1 && enemy_hand == 2) || (player_hand == 2 && enemy_hand == 0)
      #「あなたの勝ちです」を出力します。
      puts "あなたの勝ちです"

      #「false」を返してじゃんけんを終了させます。
      false

    else
      #「あなたの負けです」を出力します。
      puts "あなたの負けです"
      #「false」を返してじゃんけんを終了させます。
      false
    end
  end
end
# じゃんけんゲームを実行するロジックを書きます。
class GameStart
  # selfを使用することで、GameStartをインスタンス化することなく、クラス名を使ってjankenponメソッドを呼び出せます。
  def self.jankenpon
    # 変数「player」にPlayerをインスタンス化したものを代入します。
    player = Player.new
    # 変数「enemy」にEnemyをインスタンス化したものを代入します。
    enemy = Enemy.new
    # 変数「janken」にJankenをインスタンス化したものを代入します。
    janken = Janken.new

    # 変数「next_game」に「true」を代入しましょう。
    next_game = true

    # 「next_game」が「false」だと繰り返し処理を終了し、「true」だと繰り返し処理を継続します。
    while next_game == true

      # 変数「next_game」にじゃんけんを実行して返ってきた値(戻り値)を代入します。
      #「janken.pon(player.hand, enemy.hand)」でじゃんけんを実行しています。
      next_game = janken.pon(player.hand, enemy.hand)
    end
  end
end
# クラス名を使ってjankenponメソッドを呼び出します。
GameStart.jankenpon