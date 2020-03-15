# code here!
# Create a class, School, in the lib directory that can be initialized with a name. The School class would be referred to as a "model" in the domain model context.

# school = School.new("Bayside High School")
class School

    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(name, grade)
        if @roster[grade] != nil
            @roster[grade] << name
        else
            @roster[grade] = [name]
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |k, v|
            v.sort!
        end
    end

end

# class School
#     def initialize(name)
#       @name = name
#       @roster = {}
#     end
  
#     def roster
#       @roster
#     end
  
#     def add_student(name, grade)
#       if @roster[grade] != nil
#         @roster[grade] << name
#       else
#         @roster[grade] = [name]
#       end
#     end
  
#     def grade(grade)
#       @roster[grade]
#     end
  
#     def sort
#       @roster.each do |key, value|
#         value.sort!
#       end
#     end
#   end 