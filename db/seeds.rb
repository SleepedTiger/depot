# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# いったんきれいにお掃除する
Product.delete_all

# 新しく商品データを作成する
Product.create([
  {
    id: 1,
    title: '蔵で臼',
    description: %{<p>
      懐かしの横スクロールシューティングゲーム。</p>
      <p>蔵の中で次々と襲ってくる古物を撃ち落とせ！
      </p>},
    image_url: '130723Gradius-thumb-640x393-74491.jpg',
    price: 5600
  },
  {
    id: 2,
    title: 'FirstFantasy',
    description: %{<p>
      世界を動かしている4つの水晶が砕かれようとしている。</p>
      <p>世界の平和を守るため、水晶を守る冒険が今始まる・・・
      </p>},
    image_url: 'FF.png',
    price: 6400
  },
  {
    id: 3,
    title: '竜探索',
    description: %{<p>
      突如として竜達が暴れまわり、街を破壊し始めた！</p>
      <p>暴れる竜を打ち倒し、世界の平和を取り戻すため、竜王を倒せ！
      </p>},
    image_url: 'dq.jpg',
    price: 6100
  },
  {
    id: 4,
    title: 'どきどきメモリアル',
    description: %{<p>
      楽しい高校生活の始まり・・・</p>
      <p>隣に住む幼馴染や同級生・部活の先輩など魅力的な女の子が一杯！</p>
      <p>好みの女の子と仲良くなれるかどうかは貴方の行動次第
      </p>},
    image_url: 'smile.jpg',
    price: 5800
  },
  {
    id: 5,
    title: '道三の野望',
    description: %{<p>
      油売りから一国一城の主となった斉藤道三</p>
      <p>道半ばにして敗れた道三の野望を叶えるため全国統一を果たそう！
      </p>},
    image_url: 'pc_koe_000833_01.jpg',
    price: 9800
  },
  {
    id: 6,
    title: 'ぶよぶよ',
    description: %{<p>
      あのゲームの人気キャラクターがパズルゲームに登場！</p>
      <p>お餅のような【ぶよぶよ】を縦・横に並べて消そう♪
      </p>},
    image_url: '38730.jpg',
    price: 5200
  },
  {
    id: 7,
    title: '熱狂パワフルプロ野球',
    description: %{<p>
      自分のプロ野球チームを編成して日本一を目指せ！</p>
      <p>自分がプロ野球選手になって人生を過ごす【マイ人生】モードも搭載♪
      </p>},
    image_url: 'img_pawapuro.png',
    price: 7800
  },
  {
    id: 8,
    title: 'Wining11人',
    description: %{<p>
      自分の好きなチームでJリーグ優勝、そしてCWC優勝を勝ち取ろう！</p>
      <p>オリジナルプレイヤーを作成して、育てることもできるぞ♪
      </p>},
    image_url: 'PES2011_kickoff_bmp_jpgcopy.jpg',
    price: 7500
  },
  {
    id: 9,
    title: 'アブラゼミのなく頃に',
    description: %{<p>
      アブラゼミが鳴く季節に起こる惨劇・・・</p>
      <p>貴方はこの謎を解き明かし、惨劇を回避できるか？
      </p>},
    image_url: '8447857_624.jpg',
    price: 6400
  },
  {
    id: 10,
    title: 'ファンタシームーン',
    description: %{<p>
      平和な毎日を過ごしていた主人公</p>
      <p>しかし、突如として平和な日々が乱されることとなる・・・
      </p>},
    image_url: '8tnu0100004i1y44.jpg',
    price: 6900
  }
  ])
