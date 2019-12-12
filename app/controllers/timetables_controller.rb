class TimetablesController < ApplicationController
  def index
    @timetables = Timetable.where(user:current_user)
  end

  def create
    @timetable = Timetable.new(name:params[:name],user:current_user)
    if @timetable.save
      redirect_to(timetables_path(current_user))
   else
     flash[:alert] = "時間割の名前は１文字以上入力してください"
     redirect_to(timetables_path(current_user))
   end
  end

  def new
  end

  def destroy
    Timetable.find(params[:id]).destroy
    redirect_to(timetables_path(current_user))
  end
end
