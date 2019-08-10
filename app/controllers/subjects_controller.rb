class SubjectsController < ApplicationController
  def index
  end

  def search
    @subjects = Subject.search(params[:search])
  end

  def search_result
    @subjects = Subject.search(params[:search])
  end
end
