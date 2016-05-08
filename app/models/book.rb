class Book < ActiveRecord::Base
    def self.search(search)
        where("title LIKE ? OR isbn LIKE ? OR author LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%") 
    end
    
    def self.getbooks()
        where("isAvailable >= 0")
    end
end
