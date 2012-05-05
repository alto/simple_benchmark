require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class ReadAndWriteUsersTest < ActionController::IntegrationTest

  def test_read_and_write_users
    Benchmark.bm do |bm|
      bm.report do
        10000.times { |i| u = User.where(:id => i).first; u.user_name if u }
      end
      bm.report do
        10000.times { |i| User.create!(:user_name => "test#{i}") }
      end
      User.delete_all('id > 10000')
    end
  end

end
