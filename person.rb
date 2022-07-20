class Person
  def initialize(age, parent_permission: true, name: 'Unknown')
    @name = name
    @age = age
    @id = Random.rand(1..100)
    @parent_permission = parent_permission
  end

  attr_accessor :name, :age
  attr_reader :id

  def can_use_services?
    if is_of_age?(@age) or @parent_permission
      true
    else
      false
    end
  end

  private

  def is_of_age?(age)
    age >= 18
  end
end
