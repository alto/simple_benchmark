require 'test_helper'
require 'rails/performance_test_help'

# Profiling results for each test method are written to tmp/performance.
class ActiveRecordFindTest < ActionDispatch::PerformanceTest
  def test_a_lot_of_find_calls
    10000.times { |i| u = User.where(:id => i).first; u.user_name if u }
  end
end