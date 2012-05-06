require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class User < ActiveRecord::Base
  before_save :on_save
  before_create :on_create
  before_validation :on_validation

private

  %w(on_save on_create on_validation).each do |hook|
    define_method(hook) do
      true
    end
  end

end

class WriteUsersWithHooksTest < ActionController::IntegrationTest

  def test_write_users_with_hooks
    Benchmark.bm do |bm|
      bm.report do
        10000.times { |i| User.create!(:user_name => "test#{i}") }
      end
    end
    User.delete_all('id > 10000')
  end

end
