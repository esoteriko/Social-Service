class CreateKeyResults < ActiveRecord::Migration[5.2]
  def change
    create_table :key_results do |t|
      t.integer :objective_id
      t.string :description
      t.integer :kr_measure_id

      t.timestamps
    end
  end
end
