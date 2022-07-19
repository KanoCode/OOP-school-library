class Person
    def initialize(id,age,parent_permission=true,name="Unknown")
      @name = name
      @age = age
      @id =id
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
  