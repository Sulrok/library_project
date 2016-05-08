class Book < ActiveRecord::Base
    validates :bookID,  presence: true, length: { maximum: 10}
    validates :title,  presence: true, length: { maximum: 100}
    validates :isbn,  presence: true, length: { maximum: 100}
    validates :description,  presence: true, length: { maximum: 200}
    validates :author,  presence: true, length: { maximum: 100}
end
