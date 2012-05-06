class FilteredPagesController < ApplicationController

  before_filter :for_all
  before_filter :another_for_all
  before_filter :and_one_more
  before_filter :only_for_simple, :only => :simple
  before_filter :not_for_simple, :except => :simple
  around_filter :merry_go_round

  def simple
    @data = {
      :item1 => 'item1',
      :item2 => 'item2',
      :item3 => 'item3'
    }
  end

private

  %w(for_all another_for_all and_one_more only_for_simple not_for_simple).each do |filter_name|
    define_method(filter_name) do
      instance_variable_set("@#{filter_name}", filter_name)
    end
  end

  def merry_go_round
    yield
  end

end
