class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
    	 create_table :authors do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.date :birthday
      t.timestamps
    end
  end
end
