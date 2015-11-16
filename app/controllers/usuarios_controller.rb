class UsuariosController < ApplicationController
  before_action :set_usuario, only: [:edit, :update, :destroy]
  def create
    @user= Usuario.new(user_params)
    if @user.save
      redirect_to '/admins'
    else
      redirect_to '/admins/new'
    end
  end
  
  def update
    if@user.update_attributes(user_params)
      redirect_to '/admins'
    else
      redirect_to '/admins/'+params[:id]+"/edit"
    end
  end
  
  def destroy
    @user.destroy
    redirect_to '/admins'
  end
  
  private
  def set_usuario
    @user = Usuario.find(params[:id])
  end
  def user_params
    params.require(:usuario).permit(:nombre, :rol_id, :usuario, :contrasena);
  end

end
