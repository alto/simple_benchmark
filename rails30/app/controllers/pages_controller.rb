class PagesController < ApplicationController
  def simple
    @data = {
      :item1 => 'item1',
      :item2 => 'item2',
      :item3 => 'item3'
    }
  end

  def partials
    @data = {
      :item1 => 'item1',
      :item2 => 'item2',
      :item3 => 'item3'
    }
  end
end
