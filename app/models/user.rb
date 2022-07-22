class User < ApplicationRecord
    validates  :username, present: true, length: {minimum:3, maximum: 15}
    has_secure_password
end
