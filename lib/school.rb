# code here!
require 'pry'
class School
    def initialize(school_name)
        @school = school_name
        @roster = {}
    end

    attr_accessor :roster

    def add_student(name, grade)
        @roster[grade] ||= @roster[grade] = []
        @roster[grade] << name
        # if @roster[grade]
        #     @roster[grade] << name
        # else
        #     @roster[grade] = [name]
        # end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |grade, student|
            @roster[grade] = student.sort
        end
    end
end