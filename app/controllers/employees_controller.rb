class EmployeesController < ApplicationController

 def index
   employee = Employee.all # list all created users
   render json: employees 
 end

 def show
   employee = Employee.find(params[:id]) # in order to search for any user (dynamic)
   render json: employee
 end

 def create # create  new users (employee in this case)
   employee = Employee.create!(name:params[:name], dob:params[:dob], employee_id:params [:employee_id], number:params[:number])
   render json: employee
 end

 def update # change information on existing users
  employee = Employee.find(params[:id]) # dynamic
  Employee.update(name:params[:name], dob:params[:dob], employee_id:params[:employee_id], number:params[:number])
  render json: employee
 end

 def delete 
  employee = Employee.find(params[:id]) # in order to delete a specific user (dynamic)
  employee.destroy
  render :no_content
 end
end
