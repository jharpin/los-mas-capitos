defmodule Mensaje_Util do

  def mostrar_mensaje(mensaje) do
    System.cmd("java", ["-cp", ".", "LongitudPalabra", mensaje])
  end

  def input_data(data) do
    System.cmd("java", ["-cp", ".", "LongitudPalabra", "input", data])
    |> elem(0)
    |> String.trim()
  end
end
