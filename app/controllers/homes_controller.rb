class HomesController < ApplicationController
  def index
    @todo = Todo.all
  end
end
