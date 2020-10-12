# README

# usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string| null:false, unique: true|
|password|string| null:false|
|name|string|null:false|
|login_date|dare|
### Association
- has_many :lists,dependent: :destroy


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

### Association
- belongs_to :list


# if_then_planning
"if_then_planning" is an app that helps you continue 
"if_then_planning"は習慣化を助けるアプリです。


# Features
 ruby '2.6.5'
'rails', '~> 5.2.3'
I was not good at continuing to work on something,so
I made this app under the influence of the self-proclaimed "Mentalist", Daigo Matsumaru
While imitating the Trello, I made the usage more concrete
I paid attention to how to use colors
You can get courage by touching the owl illustration
Owl was created to improve my technical ability and motivate users.

自分は何かを継続して取り組むのが得意ではなかったのでメンタリストDaigoの本を読み、そこからヒントを得てこのアプリを作りました。
その本から得た１番のヒントは、人間は何かをした後に何かをすると結びつけると継続して取り組むのが楽になるということです。
このアプリでは、最初に普段行っている日常的なルーティーンを登録し、そこに継続させたいことを登録します。そうすることで自分で意識するようになり、継続を促せると思います。
自分の場合は、コーヒーが好きでほぼ毎日飲んでしまうので、その度にスクワッド15回を課すことで、コーヒーを飲むたび足を鍛えることができます。
ToDoをするという面でTrelloに似ていると思ったので、ビューの面でヒントにしました。
また右下にふくろうを配置してそれに触れると、元気のでる（と著者が感じる）ことばを吹き出しで話してくれます。
これをつけた理由は、まず元気の出る言葉を言って励ましたいという理由が一つと、人間は適度に監視されている感覚があった方が継続しやすいという効果を狙ったものです。
ちなみにjsの勉強にもなりました。


# Requirement
Not particularly
今のところ無いです。

# Usage
Please access this URL
https://ifthenplanning.herokuapp.com/
After that, please register as a user
First, register the usual action from the icon in the header
Next,Create the action you want to continue from the created action screen
By doing Prompt for continuation by linking the usual action with the action you want to continue

まずこちらのURLにアクセスしてください。
https://ifthenplanning.herokuapp.com/
まず、右上のヘッダーのアイコンから、普段から行っていることを登録します。
そうすることで、新しくビューが作成されるので、”継続させたいことを結びつける”のところから継続させたいことを登録します。


# Author
* 安田悠磨

