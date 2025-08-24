defmodule Main do
  @moduledoc """
  Módulo principal que utiliza el módulo `Util` para solicitar un dato al
  usuario, procesarlo y mostrar un mensaje.
  """

  @doc """
  Función principal del programa.

  - Solicita al usuario su nombre.
  - Convierte el nombre ingresado a mayúsculas.
  - Muestra el nombre convertido en un mensaje.
  """
  def main() do
    Util.input_data("Ingresa tu Nombre: ")
    |> String.upcase()
    |> Util.mostrar_mensaje()
  end
end

Main.main()

