class ControlsController < ApplicationController
  before_action :set_control, only: [:edit, :update, :destroy]
  def create
    @control=Control.new(control_params)
    if @control.save
      redirect_to '/auditor/list'
    else
      redirect_to '/auditor/new'
    end
  end
  
  def update
    if@control.update(control_params)
      redirect_to '/auditor/list'
    else
      redirect_to '/auditor/list'
    end
  end
  
  def destroy
    @control.destroy
    redirect_to '/auditor/list'
  end
    
  private
  def set_control
    @control = Control.find(params[:id])
  end
  def control_params
    params.require(:control).permit(:control, :riesgo_id, :recomendacion);
  end  
end
