class PopulateUsers < ActiveRecord::Migration
  def self.up
    10000.times { |i| User.create!(:user_name => "test#{i}") }
  end

  def self.down
  end
end
