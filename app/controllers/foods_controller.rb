class FoodsController < ApplicationController
  def index
    render locals: {
      facade: UserSearchFacade.new(params[:food])
    }
  end
end
