class SubjectsController < ApplicationController
  def index
  end

  def show
    @subject=Subject.find(params[:id])
    @plans=Plan.where(subject_id:params[:id])
    @evaluations=Evaluation.where(subject_id:params[:id])
    @textbooks=Textbook.where(subject_id:params[:id])
    @readings=Reading.where(subject_id:params[:id])

  end

  def search
    
  end

  def search_result
    @subjects = Subject.search(
      params[:name],
      params[:instructor],
      params[:subject_code],
      params[:subject_num]
    )
    @subjects = @subjects.page(params[:page]).per(50)
  end
end
