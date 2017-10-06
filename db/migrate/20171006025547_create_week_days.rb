class CreateWeekDays < ActiveRecord::Migration[5.1]
  def change
    create_table :week_days do |t|
      t.date :date
      t.references :meal, foreign_key: true
      t.boolean :eaten

      t.timestamps
    end
  end
end
