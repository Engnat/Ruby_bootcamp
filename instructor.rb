class Instructor

  attr_accessor :first_name, :last_name, :nickname, :age, :strengths
  def initialize(params = {})
      @first_name = params[:first_name] ? params[:first_name] : "N/A" #?= if valor por defecto no name
      @last_name = params[:last_name] ? params[:last_name]: "N/A"
      @nickname  = params[:nickname] if params[:nickname]#solo asigne nickname si le asignaron el parametro
      @age = params[:age] ? params[:age] : 1000
      @strengths = params[:strengths] ? params[:strengths]: "Lazy"
  end

  def clain_your_strengths
    "I like so much #{self.strengths.upcase}" 
  end

end
