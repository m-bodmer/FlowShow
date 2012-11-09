class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.references :software

      t.timestamps
    end
    add_index :tags, :software_id
  end
end
