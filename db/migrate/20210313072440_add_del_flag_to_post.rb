class AddDelFlagToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :del_flag, :integer  ,default:0
  end
end
