class FloresController < ApplicationController
  def index
    @flores = ""
    @flor = Flor.all

    @user_conversations = Flor.joins(:ventas)

    print @user_conversations
  end
  def create
    #metodo para crear flores mandando nombre, url, descripcion, precio
    print params['nombre']
    @flores = Flor.new(nombre: params['nombre'], url: params['url'], descripcion: params['descripcion'], precio: params['precio'])
    @flores.save

    redirect_to '/flores'
  end
  def edit
    #metodo para editar las flores solo como parametro el id de la flor
    @flor = Flor.find(params[:id])
    @flor.update_attributes(nombre: params['nombre'], descripcion: params['descripcion'])
    redirect_to '/flores'
  end
  def ordenar
    #metodo para acumular ventas de las flores pasando como parametro el id
    @flor = Flor.find(params[:id])
    @venta = Venta.new(id_flor: params[:id])
    @venta.save
  end
  def destroy
    #metodo para eliminar flores con solo el id
    @flor = Flor.find(params[:id])
    @flor.destroy
    redirect_to '/flores'
  end
end