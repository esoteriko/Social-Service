class BankSubsidiary < ApplicationRecord
  belongs_to :bank
  validates :addres, presence: true
  
  def to_s
    addres
  end

end
