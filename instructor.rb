require "./person"
class Instructor < Person

  attr_accessor  :nickname, :strengths
  def initialize(params = {})
    super
    @nickname  = params[:nickname] if params[:nickname]#solo asigne nickname si le asignaron el parametro
    @strengths = params[:strengths] ? params[:strengths]: "Lazy"
  end

  def clain_your_strengths
    "I like so much #{self.strengths.upcase}"
  end

end
