class CreateGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|
      t.text :goals
      t.text :days, array: true
      t.text :months, array: true
      t.text :years, array: true

      t.timestamps
    end
    add_index :goals, :days, using: 'gin'
    add_index :goals, :months, using: 'gin'
    add_index :goals, :years, using: 'gin'
  end
end
