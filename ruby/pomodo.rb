
#まず最初にライブラリ(gem)のlaunchyを読み込む
require 'launchy'

# 音楽を流すページを表示させる
Launchy.open("https://www.youtube.com/")


# ２４分間表示させて、休憩のページを表示させる
sleep(60 * 24)


# 休憩のページを表示させる
Launchy.open("https://diveintocode.jp/")



