# じゃんけんをして、勝ち負けを判定させましょう。（相手の出す手は乱数で決めましょう）
#  以下は出力例です。
#  -----------------
#  最初はグー、じゃんけん...
# [0]:グー
# [1]:チョキ
# [2]:パー
# 0
# あなたの手:グー、相手の手:チョキ
# あなたの勝ちです
# -----------------
# 以下は例外を入力した時の出力例です。
# -----------------
# 最初はグー、じゃんけん...
# [0]:グー
# [1]:チョキ
# [2]:パー
# 3
# 入力された値が無効です
# 最初はグー、じゃんけん...
# [0]:グー
# [1]:チョキ
# [2]:パー
# ...
def janken

    puts "[0]:グー"
    puts "[1]:チョキ"
    puts "[2]:パー"

    hands = ["グー", "チョキ", "パー"]

    hand = gets.to_i
    cp = rand(0..2).to_i

    if (hand != 0) && (hand != 1) && (hand != 2)
        puts "入力された値が無効です"
        puts "最初はグー、じゃんけん..."
        return true
    else

        puts "あなたの手:" + hands[hand] + ", 相手の手:" + hands[cp]

        if hand == cp
            puts "あいこで..."
            return true
        elsif (hand == 0 && cp == 1) || (hand == 1 && cp == 2) || (hand == 2 && cp == 0)
            puts "あなたの勝ちです"
            return false
        else
            puts "あなたの負けです"
            return false
        end
    end
end

battle = true

puts "最初はグー、じゃんけん..."

while battle do
    battle = janken
end