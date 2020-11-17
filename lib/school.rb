require "pry"

class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}

    end

    def grade(grade)
        @roster[grade]
    end

    def add_student(name, grade)
        if @roster.include?(grade)
            @roster[grade]<< (name) 
        else
            @roster[grade] = [name]
        end
    end

    def sort
        sort_roster = {}
        @roster.collect do |grade, names|
            sort_roster[grade]=names.sort
        end
        sort_roster
    end


end