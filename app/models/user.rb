class User < ApplicationRecord
    validates  :username, presenct: true, length: {minimum:3, maximum: 15}
    has_secure_password
end
