class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.date :event_date
      t.time :event_time
      t.string :place
      t.string :area
      t.string :address
      t.string :phone
      t.text :description

      t.timestamps
    end
  end
end
