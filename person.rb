class Person
    def initialize(age,parent_permission=true,name="Unknown")
      @name = name
      @age = age
      @id = Random.rand(1..100)
      @parent_permission = parent_permission
    end
    
    def name
      @name
    end
    
    def id
      @id
    end
    
    def age
      @age
    end
  
    def name=(value)
      @name = value
    end
  
    def age=(value)
      @age = value
    end
  
  def can_use_services?
    if is_of_age?(@age) or @parent_permission
      true
    else
      false
    end
  end
  
    
    private 
    def is_of_age?(age)
      if age >= 18
        true
      else
        false
      end
    end 
  end
  

  person1 = Person.new(12)
  p person1.age