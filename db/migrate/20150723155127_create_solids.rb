class CreateSolids < ActiveRecord::Migration
  def change
    create_table :solids do |t|
      t.string :picture
      t.string :scientist_name
      t.string :date
      t.string :bio
      t.string :location
      t.string :percent

      t.timestamps null: false
    end
  end
end
