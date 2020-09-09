class User < ApplicationRecord
    validates :user_name, presence: true
    validates :password, presence: true, length: { in: 6..25 }
    validates :email, presence: true, confirmation: { case_sensitive: false }, 
                            format: { with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/ }
end
