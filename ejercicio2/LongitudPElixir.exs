defmodule Main do
  @moduledoc """
  Módulo principal que solicita una palabra al usuario, calcula su longitud
  y muestra el resultado.
  """

  @doc """
  Función principal que realiza las siguientes acciones:

  - Solicita una palabra al usuario mediante un cuadro de entrada.
  - Calcula la longitud de la palabra ingresada.
  - Muestra la longitud de la palabra en un mensaje.
  """
  def main() do
    Mensaje_Util.input_data("Ingrese una palabra: ")
    |> String.length()
    |> Integer.to_string()
    |> Mensaje_Util.mostrar_mensaje()
  end
end

Main.main()

