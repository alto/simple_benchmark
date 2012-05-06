require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class User < ActiveRecord::Base
  validates_presence_of :user_name
  validates_uniqueness_of :user_name
  validates :user_name, :format => { :with => /test[0-9]+/ }
  validates :user_name, :length => { :in => 5..10 }

  def validate_each(record, attribute, value)
    if value.starts_with? 'X'
      record.errors[attribute] << 'Do not use a name starting with X please!'
    end
  end

end

class WriteUsersWithValidationsTest < ActionController::IntegrationTest

  def test_write_users_with_validations
    Benchmark.bm do |bm|
      bm.report do
        1000.times { |i| User.create!(:user_name => "test#{10000 + i}") }
      end
    end
    User.delete_all('id > 10000')
  end

end
