class Member < ActiveRecord::Base
    before_save { self.email = email.downcase }
    validates :surrName,  presence: true, length: { maximum: 50, minimum: 2 }
    validates :name,  presence: true, length: { maximum: 50, minimum: 2 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
    validates :addr1,  presence: true, length: { maximum: 100, minimum: 10 }
    validates :addr2,  presence: true, length: { maximum: 100, minimum: 10 }
    validates :tel,  presence: true, length: { maximum: 14, minimum: 10 }
    validates :userName,  presence: true, length: { maximum: 50, minimum: 5 }
    has_secure_password
    validates :password,  presence: true, length: { minimum: 6 }, :on => :create
    
     def Member.digest(string)
        cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
        BCrypt::Password.create(string, cost: cost)
     end
     
     def self.mapping(string)
          string.split(',')
     end
end
