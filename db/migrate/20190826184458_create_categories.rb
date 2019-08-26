class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.references :vertical, foreign_key: true
      t.string :name
      t.string :state

      t.timestamps
    end
  end
end
