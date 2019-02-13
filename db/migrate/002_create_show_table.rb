class CreateShowTable < ActiveRecord::Migration[5.2]
  def change
    create_table :shows do |t|
      t.integer :year
      t.string :date
    end
  end
end
