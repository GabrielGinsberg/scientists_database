class CreateYeets < ActiveRecord::Migration
  def change
    create_table :yeets do |t|

      t.timestamps null: false
    end
  end
end
