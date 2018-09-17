class Student


  attr_accessor :name , :cohort, :fav_lang

  def initialize(student_name, student_cohort)

    @name = student_name
    @cohort = student_cohort
    @fav_lang = "Python"

  end

  def make_talk
    return "I'm #{@name} and I'm speaking"
  end

  def say_fav_lang
    return @fav_lang
  end


end
