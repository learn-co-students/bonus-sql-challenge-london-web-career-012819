class CreateGuestTable < ActiveRecord::Migration[5.2]
  def change
    create_table :guests do |t|
      t.string :name
      t.string :occupation
      t.integer :show_id
      t.integer :group_id
    end
  end
end
