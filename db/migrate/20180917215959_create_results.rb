class CreateResults < ActiveRecord::Migration[5.2]
  def change
    create_table :results do |t|
      t.string :description
      t.integer :kr_measure_id
      t.references :objective, foreign_key: true

      t.timestamps
    end
  end
end
