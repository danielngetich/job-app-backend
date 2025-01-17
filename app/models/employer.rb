class Employer < ApplicationRecord
    validates :username, presence: true
    validates :email, presence: true, uniqueness: true
    validates :password, length: {minimum: 8}
    has_secure_password
end
