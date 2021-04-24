class PostController < ApplicationController

def TOP
@post = Post.all
@post = Post.where.not(del_flag: 1)
@category = Category.all
end
#※del_flagが1のやつは表示しない！
     
end