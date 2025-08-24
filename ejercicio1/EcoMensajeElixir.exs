defmodule Main do
  def main() do
    Util.input_data("Ingresa tu Nombre: ")
    |> String.upcase()
    |> Util.mostrar_mensaje()


  end
end

Main.main()
