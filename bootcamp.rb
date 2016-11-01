require "./student"
require "./instructor"
require "./lesson"

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
    #instructor3 = Instructor.new({
    #  first_name: "Camilo",
    #  last_name: "Ordoñez",
    #  strengths: "js"
    #  })

    puts "#{instructor1.first_name} #{instructor1.last_name} #{instructor1.nickname} #{instructor1.clain_your_strengths}"
    puts "#{instructor2.first_name} #{instructor2.last_name} #{instructor2.nickname} #{instructor2.clain_your_strengths}"
    #  puts "#{instructor3.first_name} #{instructor3.last_name} #{instructor3.nickname} #{instructor3.clain_your_strengths}"

    #  estudiante1 = Student.new({
    #    first_name: "Natalia",
    #    last_name: "Ruge",
    #    age: 27
    #    })
    #    puts "I'm #{estudiante1.first_name} #{estudiante1.last_name} #{estudiante1.clain_your_age}"

    @lesson = []
    @instructors = []

      def create_lesson (subject , instructor)
        @lesson << Lesson.new({
          subject: subject,
          instructor: instructor
          })
      end
      def create_instructor(params)
        @instructors.push Instructor.new(params)
      end

      def find_instructor(instructor_nickname)
        @instructors.each do|instructor|
        return instructor if instructor.nickname == nickname
        end
      end

      def print_instructor
        @instructors.each_with_index do |instructor , index|
          puts "#{index}. #{instructor.first_name}: #{instructor.clain_your_strengths}"
        end
      end

      def print_lessons
          @lesson.each_with_index do |lesson, index|
            puts " Lesson numbers #{index} => #{lesson.subject}"
            puts "Lesson instructor: #{lesson.instructor.nickname}"
         end
      end

      begin
        puts "Welcome to our bootcamp"
        puts "1. Create a new instructor"
        puts "2. Create a new lesson"
        puts "10. print lessons"
        puts "11. print instructor"
        @user_input = gets.chomp.downcase
        case @user_input
        when "1"
          instructor_params = {}
          puts "Please type the firts name"
          instructor_params[:first_name] = gets.chomp.downcase
          puts "Please type the last name"
          instructor_params[:last_name] = gets.chomp.downcase
          puts "Please type the nickname"
          instructor_params[:nickname] = gets.chomp.downcase
          puts "Please type the strengths"
          instructor_params[:strengths] = gets.chomp.downcase
          puts "Please type the age"
          instructor_params[:age] = gets.chomp.downcase
          create_instructor instructor_params
        when "2"
          if @instructors.any?
            puts "Please type the subject at the lesson"
            subject = gets.chomp.downcase
            puts "Please select the instructor(type index)"
            print_instructor
            instructor_index = gets.chomp.to_i
            create_lesson subject, @instructors[instructor_index]
          else
            puts "it must exit a instructor"
          end
            when "10"
              print_lessons
            when "11"
              print_instructor
        end
      end while @user_input != "exit"
