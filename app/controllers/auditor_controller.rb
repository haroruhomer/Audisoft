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

def final
  
end

def matriz
  @ctrl_est = Control.find_by_sql("SELECT * FROM controls INNER JOIN control_estados ON control_id=controls.id INNER JOIN riesgos ON riesgos.id=controls.riesgo_id WHERE estado_id=2")
end

def semaforo
  @controls = Control.find_by_sql("SELECT * FROM controls INNER JOIN control_estados ON control_id=controls.id WHERE estado_id=2 order by riesgo_id")
end

def informe
  
end

end
