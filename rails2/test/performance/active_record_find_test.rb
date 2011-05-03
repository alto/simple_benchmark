require 'test_helper'
require 'performance_test_help'

# Profiling results for each test method are written to tmp/performance.
class ActiveRecordFindTest < ActionController::PerformanceTest

  def setup
    10000.times { |i| User.create!(:user_name => "test#{i}") }
  end

  def test_a_lot_of_find_calls
    10000.times { |i| u = User.find_by_id(i); u.user_name if u }
  end

end