class Member < ActiveRecord::Base
    before_save { self.email = email.downcase }
    validates :surrName,  presence: true, length: { maximum: 50, minimum: 2 }
    validates :name,  presence: true, length: { maximum: 50, minimum: 2 }
    validates :password,  presence: true, length: { maximum: 25, minimum: 6 }
    validates :addr1,  presence: true, length: { maximum: 100, minimum: 10 }
    validates :addr2,  presence: true, length: { maximum: 100, minimum: 10 }
    validates :tel,  presence: true, length: { maximum: 14, minimum: 10 }
    validates :userName,  presence: true, length: { maximum: 50, minimum: 5 }
end
