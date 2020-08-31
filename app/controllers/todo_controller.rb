class TodoController < ApplicationController
  before_action :set_course, only: [:show, :destroy]
  def index
    @todo = Todo.all
  end

  def show
  end

  def new
    @todo = Todo.create
  end

  def create
    @todo = Todo.new(todo_params)
    if todo.save
      redirect_to @todo
    else
      render :new
    end
  end
  def destroy 
   @todo.destroy 
   redirect_to todo_index_path
  end

  def edit
  end

  private 

  def set_todo
    @todo = Todo.find(params[:id])
  end
  def todo_params
    params.requiere(:todo).permit(:name, :note)
  end
end
