class Person < ApplicationRecord
    validates :email, :name, presence: true
end
