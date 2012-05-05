class TextsController < ApplicationController
  def index
    render :text => 'hello', :status => 200
  end
end
