class CreateUserSignups < ActiveRecord::Migration
  def self.up
    create_table :user_signups do |t|
      t.string        :first_name
      t.string        :last_name
      t.string        :email
      t.string        :mobile_number
      t.string        :multiply_user_id
      t.timestamps
    end
  end

  def self.down
    drop_table :user_signups
  end
end
