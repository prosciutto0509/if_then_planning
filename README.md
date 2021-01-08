# README

# usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string| null:false, unique: true|
|password|string| null:false|
|name|string|null:false|
|login_date|date||
|total_login|integer||
|continous_login|integer||

### Association
- has_many :lists,dependent: :destroy
- has_many :complete

# listsテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|length: {in: 1..255}|
|user_id|integer||
|time_zone|string|presence: true|

### Association
- belongs_to :user
- has_many :cards, dependent: :destroy


# cardsテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|length: {in: 1..255}|
|memo|string|length: { maximum: 1000}|
|where|string|length: { in: 1..255}|
|list_id|integer||

### Association
- belongs_to :list


# completesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer||
|card_id|integer||

### Association
- belongs_to :card
- belongs_to :user




# if_then_planning
"if_then_planning" is an app that helps you continue 

"if_then_planning"は習慣化を助けるアプリです。

# アピールポイント
１番のアピールポイントはバックエンドの部分です。このアプリはAWS・Docker・Puma・Nginx・Railsを組み合わせてデプロイしてあります。
より詳しく説明しますと、AWSの部分ではEC2とRDSのインスタンスを使っています。Dockerはnginx、rails、データベースの3つでコンテナを分けて、docker-compose で管理しています。データベースはmysqlのdockerイメージを使っています。RDSへの接続はターミナルから確認できています。
どのようにデプロイしてあるかと言いますと、まず、EC2インスタンス上にGithubからアプリをクローンします。その後master.keyや環境変数をEC2上で入力した後、アプリ内にあるdockerfileをdocker-composeを使ってbuildしてイメージ化します。その後、そのイメージをupするとともにRDSに接続しました。

#　なぜバックエンドの部分を作り込んだか
Web系の企業様に面接を受ける中でバックエンドの知識を問われることも多くあったことと、Webエンジニアになるのであればバックエンドの知識も必要であると情報取集するうちに感じて学習をし始めました。実際にバックエンドの学習を進めると覚える事が多く、インプットの時間が長くなっていきました。インプットの時間が長くなってしまったことで、企業の方にアピールできるポイントを説明しづらいと感じました。なので、今まで学習してきたことのアウトプットと、証明のためにバックエンドの部分を作り込みました。


# Features
 ruby '2.6.5'
'rails', '~> 5.2.3'
I was not good at continuing to work on something,so
I made this app under the influence of the self-proclaimed "Mentalist", Daigo Matsumaru
While imitating the Trello, I made the usage more concrete
I paid attention to how to use colors
You can get courage by touching the owl illustration
Owl was created to improve my technical ability and motivate users.

私は何かを継続して取り組むのが得意ではなかったのでメンタリストDaigoさんの本を読み、そこからヒントを得てこのアプリを作りました。
その本から得た１番のヒントは、人間は何かをした後に何かをすると結びつけると継続して取り組むのが楽になるということです。<br>
このアプリでは、最初に普段行っている日常的なルーティーンを登録し、そこに継続させたいことを登録します。そうすることで日常生活での行動と継続したいことを結びつけ、最初はついでで行うような形ですが、慣れると自然と継続できるようになります。  <br>
私の場合は、コーヒーが好きでほぼ毎日飲んでいます。なのでその度にスクワット15回を課すことで、最初は意識してスクワットをしていましたが、慣れると家でコーヒーを飲む食びにスクワットをして筋トレができるようになりました。
<br>ToDoをするという面でTrelloに似ていると思ったので、ビューの面でヒントにしました。
また右下にふくろうを配置してそれに触れると、連続のログインと通算のログインがみられるようにしてあります。
継続したい内容をクリックしたら非同期で完了に切り替わるようにしました。
また、上でも書きましたが、バックエンドの部分を実践的に作りました。



# Usage
Please access this URL
http://18.177.231.109/
After that, please register as a user
First, register the usual action from the icon in the header
Next,Create the action you want to continue from the created action screen
By doing Prompt for continuation by linking the usual action with the action you want to continue

まずこちらのURLにアクセスしてください。
http://18.177.231.109/
まず、右上のヘッダーのアイコンから、普段から行っていることを登録します。
そうすることで、新しくビューが作成されるので、”継続させたいことを結びつける”のところから継続させたいことを登録します。

# テストアカウント
メールアドレス
aaa@aaa
パスワード
aaaaaaaa

# Author
* 安田悠磨

