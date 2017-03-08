class CreateTerminals < ActiveRecord::Migration[5.0]
  def change
    create_table :terminals do |t|
      t.string :name
      t.string :landline
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
