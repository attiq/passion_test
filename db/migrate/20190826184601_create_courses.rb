class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.references :category, foreign_key: true
      t.string :name
      t.string :state
      t.string :author

      t.timestamps
    end
  end
end
