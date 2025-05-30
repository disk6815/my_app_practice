class User < ApplicationRecord
    enum languge: { ja: 0, en: 1 }, _prefix: true
    validates :name, presence: true, uniqueness: true
    validates :sex, presence: true 
end