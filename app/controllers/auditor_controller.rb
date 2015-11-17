class AuditorController < ApplicationController

def index
end

def show
  @controls=Control.all
end

def edit
  @riesgos=Riesgo.all
  @control=Control.find(params[:id])
end

def new
  @control=Control.new
  @riesgos=Riesgo.all
end

def auditar
  @controls=Control.all
  @contr_est=ControlEstado.new
  @estados=Estado.all
end

def audita
  
end

end
