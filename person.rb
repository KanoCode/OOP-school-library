require './decorate'

class Person < Nameable
  def initialize(age, parent_permission: true, name: 'Unknown')
    @name = name
    @age = age
    @id = Random.rand(1..100)
    @parent_permission = parent_permission
  end

  attr_accessor :name, :age
  attr_reader :id

  def can_use_services?
    if of_age?(@age) or @parent_permission
      true
    else
      false
    end
  end

  def correct_name
    @name
  end

  def add_rental(book, date)
    Rental.new(date, self, book)
  end

  private

  def of_age?(age)
    age >= 18
  end
end
