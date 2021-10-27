class Student
  attr_reader :name, :age
  def initialize(student_details)

    @student_details = student_details
    @name = student_details[:name]
    @age = student_details[:age]
    @student_scores = []
  end

  def scores
    @student_scores
  end

  def log_score(score)
    @student_scores << score
  end

  def grade
    @student_scores.sum.to_f / @student_scores.count.to_f
  end
end
