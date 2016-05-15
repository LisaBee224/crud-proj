class CreateListsTags < ActiveRecord::Migration
  def change
    create_table :lists_tags do |t|
      t.references :list, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps(null:false)
    end
  end
end
