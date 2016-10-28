require "./instructor"

instructor1 = Instructor.new({
  first_name: "Jorge",
  nickname: "Yonga",
  strengths: "RoR"
  })
instructor2 = Instructor.new({
  first_name: "Diego",
  last_name: "Florez",
  strengths: "html, js, css"
  })
instructor3 = Instructor.new({
  first_name: "Camilo",
  last_name: "Ordoñez",
  strengths: "js"
  })
puts instructor1
puts "#{instructor1.first_name} #{instructor1.last_name} #{instructor1.nickname} #{instructor1.clain_your_strengths}"
puts instructor2
puts "#{instructor2.first_name} #{instructor2.last_name} #{instructor2.nickname} #{instructor2.clain_your_strengths}"
puts instructor3
puts "#{instructor3.first_name} #{instructor3.last_name} #{instructor3.nickname} #{instructor3.clain_your_strengths}"
