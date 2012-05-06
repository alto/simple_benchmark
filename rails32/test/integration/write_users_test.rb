require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class WriteUsersTest < ActionController::IntegrationTest

  def test_write_users
    Benchmark.bm do |bm|
      bm.report do
        10000.times { |i| User.create!(:user_name => "test#{i}") }
      end
    end
    User.delete_all('id > 10000')
  end

end
