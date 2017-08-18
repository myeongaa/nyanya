# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(userid:"nyanya", password:"111111", password_confirmation:"111111", name:"냐냐", email:"nyanya@email.com",number:"
01011111111")

(1..5).each do |a|
   Bigsort.create(name:"대분류#{a}")
   (1..6).each do |b|
       Smallsort.create(name:"소분류#{a}-#{b}", bigsort_id: a)
    end
end

Bang.create(smallsort_id:1, title:"야구보러갈샤럄", content:"냐냐", person_limit:5, king_id:1, bang_date:"2017-08-20", bang_time:"1:00 AM")
Bang.find(1).users << User.find(1)
Bang.create(smallsort_id:1, title:"야구보러갈샤럄", content:"냐냐", person_limit:5, king_id:1, bang_date:"2017-08-20", bang_time:"1:00 AM")
Bang.find(2).users << User.find(1)
Bang.create(smallsort_id:1, title:"야구보러갈샤럄", content:"냐냐", person_limit:5, king_id:1, bang_date:"2017-08-20", bang_time:"1:00 AM")
Bang.find(3).users << User.find(1)
Bang.create(smallsort_id:1, title:"야구보러갈샤럄", content:"냐냐", person_limit:5, king_id:1, bang_date:"2017-08-20", bang_time:"1:00 AM")
Bang.find(4).users << User.find(1)
