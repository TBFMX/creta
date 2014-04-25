class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :name
      t.string :lastname
      t.string :email
      t.date :login_date
      t.date :password_date
      t.integer :rol_id

      t.timestamps
    end
  end
end
