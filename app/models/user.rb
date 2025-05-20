class User < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :sex, presence: true 
end
