class TimetableCellsController < ApplicationController
  def new
  end

  def create
    @timetable_cell = TimetableCell.new(
      day_of_the_week_id:params_int(params[:day_of_the_week_id]),
      period_id:params_int(params[:period_id]),
      subject_id:params_int(params[:subject_id]),
      timetable_id:params_int(params[:id])
    )
    @timetable_cell.save!
    redirect_to(new_timetable_cell_path)
  end

  def update
    @timetable_cell=TimetableCell.find_by(timetable_id:params[:id])
    @timetable_cell.subject_id = params[:subject_id]
    @timetable_cell.save!
    redirect_to(new_timetable_cell_path(params[:id]))
  end

  def params_int(model_params)
    return model_params.to_i
  end
   helper_method :params_int

  def subject_finder(day_of_the_week,period,timetable)
       @timetable_cells=TimetableCell.where(day_of_the_week_id: day_of_the_week, period_id: period, timetable_id: timetable)
       @timetable_cells.each do |timetable_cell|
         @subject=Subject.find(timetable_cell.subject_id)
        return @subject.name
      end
  end
  helper_method :subject_finder
end
