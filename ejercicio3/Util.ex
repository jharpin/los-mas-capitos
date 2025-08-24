defmodule Util do

  def mostrar_mensaje(mensaje) do
    System.cmd("java", ["-cp", ".", "Salario", mensaje])
  end

  def input_data(data) do
    System.cmd("java", ["-cp", ".", "Salario", "input", data])
    |> elem(0)
    |> String.trim()
  end
end
