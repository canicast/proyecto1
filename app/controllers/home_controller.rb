class HomeController < ApplicationController
  def index
  	@flor = Flor.all
  	#trae todos los registros de la base de datos de flores para poder mostrarla a la vista
  end
end
