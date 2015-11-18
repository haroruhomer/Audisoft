class SessionsController < ApplicationController
  def new
  end
  def create
    user = Usuario.find_by(usuario:params[:usuario][:usuario])
      if user && user.contrasena==params[:usuario][:contrasena]
        session[:usuario]=user.nombre
        session[:rol]=user.rol_id    
        if session[:rol].to_s=='1'
          redirect_to '/admins'
        end
        if session[:rol].to_s=='3'
          redirect_to '/informe.pdf'
        end
        if session[:rol].to_s=='2'
          redirect_to '/auditor/auditar'
        end
        else
          #flash[:danger]= 'No se pudieron verificar sus credenciales'
          redirect_to login_path, notice: 'No se pudieron verificar sus credenciales'
        end
  end
  
  def destroy
    reset_session
    redirect_to root_path
  end
  
  
  private
  def sess_params
    params.require(:usuario).permit(:usuario, :contrasena)
  end
  
end
