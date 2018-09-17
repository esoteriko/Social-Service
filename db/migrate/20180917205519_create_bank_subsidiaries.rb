class CreateBankSubsidiaries < ActiveRecord::Migration[5.2]
  def change
    create_table :bank_subsidiaries do |t|
      t.string :addres
      t.references :bank, foreign_key: true

      t.timestamps
    end
  end
end
