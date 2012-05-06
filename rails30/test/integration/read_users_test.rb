require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class ReadUsersTest < ActionController::IntegrationTest

  def test_read_users
    Benchmark.bm do |bm|
      bm.report do
        10000.times { |i| u = User.where(:id => i).first; u.user_name if u }
      end
    end
  end

end
