# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(user_id:"matumoto3030", password:"password", password_confirmation:"password")
Calendar.create!(user_id: 1, calendar_name: "Rose", address:"東京都渋谷区", phone:"09057975695")
Staff.create!(calendar_id: 1, name:"スタッフA", email:"staff@email.com", description: "元気いっぱいです！", staff_part: "店長")

TaskCourse.create!(calendar_id: 1, title:"カット(Stylist / Top Stylist)", description:"髪の毛を切る", course_time: 60, charge: "4400")
TaskCourse.create!(calendar_id: 1, title:"カット(Director)", description:"髪の毛を切る", course_time: 60, charge: "5000")
TaskCourse.create!(calendar_id: 1, title:"カット(TAKAGI（新規指名のお客様）)", description:"髪の毛を切る", course_time: 60, charge: "10000")
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
