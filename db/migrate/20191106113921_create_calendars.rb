class CreateCalendars < ActiveRecord::Migration[6.0]
  def change
    create_table :calendars do |t|
      t.string :date
      t.references :goal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
