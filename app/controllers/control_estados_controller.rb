class ControlEstadosController < ApplicationController

def create
  
  ControlEstado.delete_all()
  @num=params[:control_estado].size
  @i=1;
  
  begin
    @ctrlEst=ControlEstado.new(:control_id => params[:control_estado]["control_id#{@i}"], :estado_id => params[:control_estado]["estado_id#{@i}"])
    @ctrlEst.save
    @i+=1
  end until @i>@num/2
  
  #params[:control_estado].each do |key, value|
   # @ctrlEst=ControlEstado.new(:control_id => params[:control_estado].size, :estado_id => value)
   # @ctrlEst.save
  #end
  redirect_to '/auditor/final'
end

end
