class User < ApplicationRecord
    validates :name, presence: true
    validates :name, length: { minimum: 2 } 
    validates :name, length: { maximum: 200 }

    validates :email, presence: true

    has_many :orders
end