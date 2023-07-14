class CreateProfessors < ActiveRecord::Migration[7.0]
  def change
    create_table :professors do |t|
      t.string :name
      t.string :email
      t.references :department, foreign_key: true

      t.timestamps
    end
  end
end
