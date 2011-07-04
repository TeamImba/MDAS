class ModifyUser < ActiveRecord::Migration
  def self.up
    remove_column   :user_signups, :first_name
    remove_column   :user_signups, :last_name
    add_column      :user_signups, :name, :string
    add_column      :user_signups, :age, :string
    add_column      :user_signups, :contact_number, :string
    add_column      :user_signups, :address, :string
    add_column      :user_signups, :size_of_shirt, :string
    remove_column   :user_signups, :email
    remove_column   :user_signups, :mobile_number
  end

  def self.down
  end
end
