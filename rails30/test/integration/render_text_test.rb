require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class RenderTextTest < ActionController::IntegrationTest

  def test_render_text
    Benchmark.bm do |bm|
      bm.report do
        5000.times { |i| get '/texts' }
      end
    end
  end

end
