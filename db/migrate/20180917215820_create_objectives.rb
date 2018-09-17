class CreateObjectives < ActiveRecord::Migration[5.2]
  def change
    create_table :objectives do |t|
      t.integer :user_id
      t.string :description
      t.integer :period_value
      t.string :time_id

      t.timestamps
    end
  end
end
