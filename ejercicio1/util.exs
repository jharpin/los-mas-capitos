defmodule Mensaje_Util do

  def mostrar_mensaje(mensaje) do
    System.cmd("java", ["-cp", ".", "EcoMensaje", mensaje])
  end

  def input_data(data) do
    System.cmd("java", ["-cp", ".", "ejercicio1.EcoMensaje", "input", data])
    |> elem(0)
    |> String.trim()
  end
end
