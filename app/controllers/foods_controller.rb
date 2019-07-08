class FoodsController < ApplicationController
  def index
    render locals: {
      facade: UserSearchFacade.new
    }
  end
end
