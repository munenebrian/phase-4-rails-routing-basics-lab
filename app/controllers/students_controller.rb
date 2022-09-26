class StudentsController < ApplicationController
  def index
    students = Students.all
    render json: students
  end
  def grades
    grades = Students.all.order("grade DESC")
    render json: grades
  end
  def highest_grade
    highest_grade = Students.all.order("grade DESC").first
    render json: highest_grade
  end
end
