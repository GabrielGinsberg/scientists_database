class CreatePros < ActiveRecord::Migration
  def change
    create_table :pros do |t|
      t.string :url
      t.string :caption

      t.timestamps null: false
    end
  end
end
