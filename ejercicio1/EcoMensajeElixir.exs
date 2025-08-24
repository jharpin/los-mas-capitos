defmodule Main do
  def main() do
    Mensaje_Util.input_data("Ingresa tu Nombre: ")
    |> String.upcase()
    |> Mensaje_Util.mostrar_mensaje()


  end
end

Main.main()
