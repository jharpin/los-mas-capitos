defmodule Util do
  @moduledoc """
  Módulo de utilidades para mostrar mensajes y solicitar datos al usuario
  a través de la terminal.
  """
  def mostrar_mensaje(mensaje) do
    mensaje
    |> IO.puts()
  end

  @doc """
  Solicita un dato al usuario desde la terminal y devuelve el valor ingresado,
  sin espacios ni saltos de línea.
  """
  def pedir_dato() do
    IO.gets("su dato: ")
    |> String.trim()
  end
end
