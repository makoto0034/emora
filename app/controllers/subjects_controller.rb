class SubjectsController < ApplicationController
  def index
  end

  def show
    @subject = Subject.find(params[:id])
  end  

  def search
    @subjects = Subject.search(params[:search])
  end

  def search_result
    @subjects = Subject.search(params[:search])
  end
end
