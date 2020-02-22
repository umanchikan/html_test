class School
  def name
    @greeting = "Hello"
  end

  def name2
    puts @greeting
  end
end

school = School.new
school.name
school.name2
