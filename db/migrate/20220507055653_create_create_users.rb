class CreateCreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :create_users do |t|
      t.string :username
      t.string :string
      t.string :email

      t.timestamps
    end
  end
end
