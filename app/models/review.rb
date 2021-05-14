class Review < ApplicationRecord
    belongs_to :establishment
    belongs_to :user
    has_many :comments
end
