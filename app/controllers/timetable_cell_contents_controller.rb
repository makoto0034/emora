class TimetableCellContentsController < ApplicationController
  def new
    @schedules = Schedule.where(day_of_the_week_id:params_int(params[:day_of_the_week_id]),period_id:params_int(params[:period_id]))
    p @schedules
    if @schedules.empty?
      @subjects = nil
    else
      @subjects = @schedules.map(&:subject)
    end
  end

  def params_int(model_params)
    return model_params.to_i
  end
end
