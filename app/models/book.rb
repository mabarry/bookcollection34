class Book < ApplicationRecord

    belongs_to :category, optional: true
    validates :name, presence: true
    validates :author, presence: true
    validates :price, presence: true
    validates :published_date, presence: true
end
