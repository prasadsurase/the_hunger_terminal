class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :mobile
      t.string :role
      t.string :email
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
