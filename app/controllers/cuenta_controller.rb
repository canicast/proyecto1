class CuentaController < ApplicationController
  def index
  	@cuenta = Cuentum.all
  	return @cuenta
  end
  def create
  	@cuenta = ""
  	@correo = params['correo']
  	@contrasena = params['contrasena']
  	@nombre = Cuentum.first
  	
  	if @nombre.correo == @correo && @nombre.contrasena == @contrasena
  		redirect_to '/flores'
  	else
  		flash.now.alert = "Beware now!"
  	end
  		
  end 
end
