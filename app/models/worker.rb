class Worker < ApplicationRecord
    has_and_belogns_to_many :projects
end
