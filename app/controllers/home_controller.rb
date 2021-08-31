class HomeController < ApplicationController

  def dashboard
    @q = Doctor.ransack(params[:q])
    @pagy, @doctors = pagy(@q.result(distinct: true), items: 10)
    # @pagy, @doctors = pagy(Doctor.order(:name), items: 10)
  end
  

end