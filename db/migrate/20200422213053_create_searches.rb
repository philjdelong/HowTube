class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.string :title
      t.integer :hits, default: 1

      t.timestamps
    end
  end
end
