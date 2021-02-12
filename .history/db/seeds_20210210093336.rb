# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: "テスト管理者", user_id:"matumoto3030", password:"password", password_confirmation:"password")
Calendar.create!(calendar_name: "Rose", address:"東京都渋谷区", phone:"09057975695")
Staff.create!(calendar_id: 1, name:"スタッフA", email:"staff@email.com", description: "元気いっぱいです！", staff_part: "店長")
TaskCourse.create!(calendar_id: 1, title:"カット", description:"髪の毛を切る", course_time: 60, charge: "5000")