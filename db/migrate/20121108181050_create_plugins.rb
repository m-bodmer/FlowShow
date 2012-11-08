class CreatePlugins < ActiveRecord::Migration
  def change
    create_table :plugins do |t|
      t.string :name
      t.text :description
      t.string :url
      t.references :software

      t.timestamps
    end
    add_index :plugins, :software_id
  end
end
