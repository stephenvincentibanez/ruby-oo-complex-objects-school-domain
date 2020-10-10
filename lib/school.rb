require 'pry'
class School

attr_accessor :school, :roster, :student_name, :grade

    def initialize(school)
        @school = school
        @roster = {}
    end

    def roster 
        @roster
    end

    def add_student(name, grade)
        @student_name = name 
        @grade = grade
        if @roster.include?(grade) == false
        roster[grade] = []
        end 
        roster[grade] << name
    end
    
    def grade(grade)
        @roster[grade]
    end
    
    def sort
        @roster.each do |grade, name|
            @roster[grade] = name.sort
        end 
    end

end

# pomperaug = School.new("Pomperaug High School")