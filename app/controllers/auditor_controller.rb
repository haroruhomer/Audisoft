class AuditorController < ApplicationController
 before_action :validate, except:[:informe]
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
  @controls = Control.find_by_sql("SELECT * FROM controls INNER JOIN control_estados ON control_id=controls.id INNER JOIN riesgos ON riesgos.id=controls.riesgo_id WHERE estado_id=2")
  respond_to do |format|    
    format.pdf do
      render :pdf =>"Informe", :layout =>'pdf.html'
    end
  end
end

private

def validate
  if session[:rol].to_s!='2'
    redirect_to root_path
  end
end


end
