class User < ApplicationRecord
    has_secure_password
    has_many :post,class_name:"Post"
end
