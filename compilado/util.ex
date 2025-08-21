defmodule Util do
  def mostrar_mensaje(mensaje)do
   mensaje
   |>IO.puts

  end
  def pedir_dato()do
    IO.gets("su dato: ")
    |> String.trim()
  end
end
