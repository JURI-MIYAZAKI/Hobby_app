class Post < ApplicationRecord
    belongs_to :user, class_name: "User", foreign_key: "user_id" , optional: true
    # TODO: user_idをPostに追加しないと関連付けが出来ない。
    belongs_to :category, class_name: "Category",foreign_key:"category_id"

    end