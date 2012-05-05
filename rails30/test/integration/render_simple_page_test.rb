require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class RenderSimplePageTest < ActionController::IntegrationTest

  def test_render_simple_page
    Benchmark.bm do |bm|
      bm.report do
        5000.times { |i| get '/simple_page' }
      end
    end
  end

end
