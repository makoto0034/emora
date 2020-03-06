class TimetableCellContentsController < ApplicationController
  def new
    @schedules = Schedule.where(
      day_of_the_week_id:params_int(params[:day_of_the_week_id]),
      period_id:params_int(params[:period_id])
    )
    if @schedules.empty?
      @subjects = nil
    else
      @subjects = @schedules.map(&:subject)
      @subjects = Kaminari.paginate_array(@subjects).page(params[:page]).per(50)
    end
  end

  def edit
    @schedules = Schedule.where(
      day_of_the_week_id:params_int(params[:day_of_the_week_id]),
      period_id:params_int(params[:period_id])
    )
    @subjects = @schedules.map(&:subject)
    @subjects = Kaminari.paginate_array(@subjects).page(params[:page]).per(50)
  end

  def params_int(model_params)
    return model_params.to_i
  end

end
