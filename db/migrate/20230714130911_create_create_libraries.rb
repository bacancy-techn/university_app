class CreateCreateLibraries < ActiveRecord::Migration[7.0]
  def change
    create_table :create_libraries do |t|
      t.string :name
      t.string :location
      t.references :college, null: false, foreign_key: true

      t.timestamps
    end
  end
end
