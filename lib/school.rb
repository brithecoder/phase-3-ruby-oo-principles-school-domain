# class School 
#     attr_accessor :name, :roster

#   def initialize(name="Test school",roster = {})
#      @name = name
#      @roster = roster
#   end

#   def add_student(name, grade)
#      if @roster[grade]
#      @roster[grade] << name
#     else 
#      @roster[grade] = []
#       @roster[grade] << name
#      end
#     end
#     def grade(grade)
#        @roster[grade]
#     end
#     def sort 
#         sorted_hash = {}
#         @roster.sort.each {|grade,name_array|}
#            sorted_hash[grade] = (name_array.sort)
#     end 
#     sorted_hash
#  end
# end 
require "pry"

class School
    attr_accessor :name, :roster

    def initialize(name = "Test School", roster = {})
        @name = name
        @roster = roster
    end

    def add_student(name, grade)
        if @roster[grade]
            @roster[grade] << name
        else 
            @roster[grade] =[]
            @roster[grade] << name
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted_hash = {}
        @roster.sort.each {|grade, name_array|}
            sorted_hash[grade] = (name_array.sort)
        end 
        sorted_hash
    end

end

school = School.new
school.add_student("Daniel", 9)
school.add_student("Zaniel", 9)
school.add_student("Baniel", 10)
school.add_student("Maniel", 11)

binding.pry