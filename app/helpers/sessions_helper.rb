module SessionsHelper
  def log_in(user)
    session[:rol]=user.rol
    session[:usuario]=user.usuario
  end
end
