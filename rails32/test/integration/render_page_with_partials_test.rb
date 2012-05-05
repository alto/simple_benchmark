require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class RenderPageWithPartialsTest < ActionController::IntegrationTest

  def test_render_page_with_partials
    Benchmark.bm do |bm|
      bm.report do
        5000.times { |i| get '/page_with_partials' }
      end
    end
  end

end
