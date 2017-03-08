class CreateSuggests < ActiveRecord::Migration[5.0]
  def change
    create_table :suggests do |t|
      t.string :sname
      t.date :sdate
      t.string :stime
      t.string :splace
      t.string :sarea
      t.string :saddress
      t.string :sphone
      t.text :sdescription

      t.timestamps
    end
  end
end
