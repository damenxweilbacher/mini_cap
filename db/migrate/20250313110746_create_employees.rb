class CreateEmployees < ActiveRecord::Migration[8.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :dob
      t.integer :employee_id
      t.integer :number

      t.timestamps
    end
  end
end
