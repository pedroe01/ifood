class HomeController < ApplicationController
  def index
    @produtos = Produto.search(params[:search])
  end
end
