class CreateLoginForms < ActiveRecord::Migration[7.0]
  def change
    create_table :login_forms do |t|
      t.string :User_Name, limit: 10
      t.integer :Password
      t.integer :Class

      t.timestamps
    end
  end
end
