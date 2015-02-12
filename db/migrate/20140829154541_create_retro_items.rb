class CreateRetroItems < ActiveRecord::Migration
  def change
    create_table :retro_items do |t|
      t.integer :item_type
      t.integer :happiness
      t.string :description
      t.timestamps
    end
  end
end
