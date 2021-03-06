# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(user_id:"matumoto3030", password:"password", password_confirmation:"password")
Calendar.create!(user_id: 1, calendar_name: "Rose", address:"東京都渋谷区", phone:"09057975695")

Staff.create!(calendar_id: 1, name:"高木 達也", email:"staff1@email.com", description: "ROSEのDNA。「カット1万円」から繰り広げられる「タカギマジック」は、多くのファッショニスタからも支持される。
※高木の予約は混雑しますので、1～2週間前の予約をお勧めします。", staff_part: "店長", picture: File.open(Rails.root.join('app/assets/images/image_staff_takagi.jpeg')))
Staff.create!(calendar_id: 1, name:"稲森 春香", email:"staff2@email.com", description: "お客様の悩みとしっかり向き合い、あなたに似合う最高の美を提案します！安心して、お任せください。素敵なデザインを一緒につくりましょう。", staff_part: "DIRECTOR", picture: File.open(Rails.root.join('app/assets/images/image_staff_inamori2.jpeg')))
Staff.create!(calendar_id: 1, name:"中森 大貴", email:"staff3@email.com", description: "ナチュラルなスタイルからエッジの効いたスタイルまで、どんなテイストでもお任せください‼お客様に似合うお洒落で素敵なスタイルを一緒に創りましょう★", staff_part: "SUB DIRECTOR", picture: File.open(Rails.root.join('app/assets/images/image_staff_nakamori2 (1).jpeg')))
Staff.create!(calendar_id: 1, name:"大野 仁美", email:"staff4@email.com", description: "女性としてママとして主婦として。いろんな目線からお客様だけの素敵をデザインさせて頂きます♪", staff_part: "STYLIST", picture: File.open(Rails.root.join('app/assets/images/DkxxWohP_400x400.jpg')))
Staff.create!(calendar_id: 1, name:"鈴木 ケイ", email:"staff5@email.com", description: "年齢・性別にとらわれず自分らしい選択ができる自由を、美容を通して提案します！あなただけの素敵を一緒につくりましょう☆", staff_part: "TOP STYLIST", picture: File.open(Rails.root.join('app/assets/images/image_gallery1.jpg')))

TaskCourse.create!(calendar_id: 1, title:"カット(Stylist / Top Stylist)", description:"", course_time: 60, charge: "4400")
TaskCourse.create!(calendar_id: 1, title:"カット(Director)", description:"", course_time: 60, charge: "5000")
TaskCourse.create!(calendar_id: 1, title:"カット(TAKAGI（新規指名のお客様）)", description:"", course_time: 60, charge: "10000")
TaskCourse.create!(calendar_id: 1, title:"リタッチ", description:"カラー", course_time: 60, charge: "4500")
TaskCourse.create!(calendar_id: 1, title:"ワンタッチ", description:"カラー", course_time: 60, charge: "5000")
TaskCourse.create!(calendar_id: 1, title:"ツータッチ", description:"カラー", course_time: 60, charge: "7000")
TaskCourse.create!(calendar_id: 1, title:"ダブルカラー", description:"カラー", course_time: 60, charge: "9000")
TaskCourse.create!(calendar_id: 1, title:"AVEDAカラー", description:"カラー", course_time: 60, charge: "1500")
TaskCourse.create!(calendar_id: 1, title:"ベーシックパーマ", description:"パーマ", course_time: 60, charge: "6600")
TaskCourse.create!(calendar_id: 1, title:"デジタルパーマ", description:"パーマ", course_time: 60, charge: "11600")
TaskCourse.create!(calendar_id: 1, title:"ストレートパーマ", description:"パーマ", course_time: 60, charge: "11700")
TaskCourse.create!(calendar_id: 1, title:"トリートメント各種", description:"トリートメント", course_time: 30, charge: "2500 ")
TaskCourse.create!(calendar_id: 1, title:"ヘッドスパ各種", description:"トリートメント", course_time: 30, charge: "2500")
TaskCourse.create!(calendar_id: 1, title:"個室スパ", description:"トリートメント", course_time: 60, charge: "2500")
TaskCourse.create!(calendar_id: 1, title:"シャンプー&ブロー", description:"シャンプー", course_time: 10, charge: "2500")
TaskCourse.create!(calendar_id: 1, title:"セット / アップ", description:"セット", course_time: 20, charge: "3000")
TaskCourse.create!(calendar_id: 1, title:"ポイントメイク / フルメイク", description:"メイク", course_time: 30, charge: "2000")
