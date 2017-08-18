# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(userid:"nyanya", password:"111111", password_confirmation:"111111", name:"냐냐", email:"nyanya@email.com",number:"
01011111111")

User.create(userid:"nyanya2", password:"222222", password_confirmation:"222222", name:"냐냐", email:"nyanya2@email.com",number:"
01022222222")


Bigsort.create(name:"스포츠")
Bigsort.create(name:"문화")
Bigsort.create(name:"스터디")
Bigsort.create(name:"게임")
Bigsort.create(name:"기타")


Smallsort.create(name:"축구", bigsort_id:1)
Smallsort.create(name:"야구", bigsort_id:1)
Smallsort.create(name:"농구", bigsort_id:1)
Smallsort.create(name:"배구", bigsort_id:1)
Smallsort.create(name:"족구", bigsort_id:1)
Smallsort.create(name:"기타", bigsort_id:1)

Smallsort.create(name:"영화", bigsort_id:2)
Smallsort.create(name:"콘서트/공연", bigsort_id:2)
Smallsort.create(name:"뮤지컬/연극", bigsort_id:2)
Smallsort.create(name:"전시회", bigsort_id:2)
Smallsort.create(name:"기타", bigsort_id:2)

Smallsort.create(name:"토익", bigsort_id:3)
Smallsort.create(name:"컴퓨터/프로그래밍", bigsort_id:3)
Smallsort.create(name:"자격증", bigsort_id:3)
Smallsort.create(name:"수능", bigsort_id:3)
Smallsort.create(name:"기타", bigsort_id:3)

Smallsort.create(name:"RPG", bigsort_id:4)
Smallsort.create(name:"AOS", bigsort_id:4)
Smallsort.create(name:"FPS", bigsort_id:4)
Smallsort.create(name:"스포츠", bigsort_id:4)
Smallsort.create(name:"아케이드", bigsort_id:4)
Smallsort.create(name:"기타", bigsort_id:4)


Smallsort.create(name:"독서", bigsort_id:5)
Smallsort.create(name:"여행", bigsort_id:5)
Smallsort.create(name:"냠냠", bigsort_id:5)
Smallsort.create(name:"기타", bigsort_id:5)

