defmodule Publico do
  @moduledoc """
  Módulo principal que utiliza el módulo `Util` para interactuar con el usuario
  mediante diálogos de Java.
  """

  @doc """
  Función principal del programa.

  - Muestra un mensaje de bienvenida al usuario.
  - Solicita un dato al usuario utilizando una ventana de entrada Java.
  - Muestra un mensaje con el dato ingresado por el usuario.
  """
  def main() do
    Util.mostrar_mensaje("Bienvenido al programa de ejemplo")

    dato = Util.pedir_dato()

    "Usted ingreso: #{dato}"
    |> Util.mostrar_mensaje()
  end
end

Publico.main()

