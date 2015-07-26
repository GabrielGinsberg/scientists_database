class CreateSkeets < ActiveRecord::Migration
  def change
    create_table :skeets do |t|
      t.string :name
      t.string :url

      t.timestamps null: false
    end
  end
end
