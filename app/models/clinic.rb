class Clinic < ApplicationRecord
    has_one_attached :logo
    validates :logo, presence: true
    validates :name, uniqueness: true
end
