require './person'

class Student < Person
  def initialize(classroom)
    super()
    @classroom = classroom
  end

  def play_hookey
    "¯\(ツ)/¯"
  end


  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
