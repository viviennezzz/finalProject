class CreateRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :records do |t|
      t.date :date
      t.text :workouts

      t.timestamps
    end
  end
end
