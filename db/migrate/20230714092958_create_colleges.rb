class CreateColleges < ActiveRecord::Migration[7.0]
  def change
    create_table :colleges do |t|
      t.string :name
      t.string :address
      t.references :university, foreign_key: true

      t.timestamps
    end
  end
end
