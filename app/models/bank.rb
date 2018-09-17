class Bank < ApplicationRecord
    has_many :bank_subsidiaries, dependent: :destroy
    accepts_nested_attributes_for :bank_subsidiaries, allow_destroy: true
    validates :name, presence: true
    def to_s
        name
    end
end
