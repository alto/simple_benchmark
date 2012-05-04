class PopulateUsers < ActiveRecord::Migration
  def up
    10000.times { |i| User.create!(:user_name => "test#{i}") }
  end

  def down
  end
end
