require "./person"
class Student < Person

  attr_accessor :tutor, :average

  def initialize(params = {})
    @first_name = params[:first_name] if params[:first_name]
    @last_name = params[:last_name] if params[:last_name]
    @id = params[:id] if params[:id]
    @age = params[:age] if params[:age]
    @tutor = params[:tutor] if params[:tutor]
    @average = params[:average] if params[:average]
  end

  def clain_your_age
    "#{super} and I'm a STUDENT "
  end

end
