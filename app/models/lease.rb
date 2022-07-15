class Lease < ApplicationRecord
    validates :rent, numericality: true
    belongs_to :tenant
    belongs_to :apartment
end
