class Book < ActiveRecord::Base
<<<<<<< HEAD
    validates :bookID,  presence: true, length: { maximum: 10}
    validates :title,  presence: true, length: { maximum: 100}
    validates :isbn,  presence: true, length: { maximum: 100}
    validates :description,  presence: true, length: { maximum: 200}
    validates :author,  presence: true, length: { maximum: 100}
=======
    def self.search(search)
        where("title LIKE ? OR isbn LIKE ? OR author LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%") 
    end
>>>>>>> e041d9cfb118993a90d628ce3ca0dcd5c5fd663b
end
