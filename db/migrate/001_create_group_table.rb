class CreateGroupTable < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :name
    end
  end
end
