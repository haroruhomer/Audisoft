class AdminsController < ApplicationController
  before_action :validate
  def index
     @users=Usuario.all
   end
   
   def newUser
     @rols=Rol.all
     @user = Usuario.new
   end
   
   def edit
     @rols=Rol.all
     @user=Usuario.find(params[:id])
   end
   
   private

def validate
  if session[:rol].to_s!='1'
    redirect_to root_path
  end
end
   
end
