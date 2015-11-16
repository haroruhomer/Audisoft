class AdminsController < ApplicationController
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
end
