class TodoController < ApplicationController
  before_action :set_course, only: [:show, :destroy]
  def index
    @todo = Todo.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
