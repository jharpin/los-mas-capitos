defmodule Main do
  def main() do
    Mensaje_Util.input_data("Ingrese una palabra: ")
    |> String.length()
    |> Integer.to_string()
    |> Mensaje_Util.mostrar_mensaje()
  end
end

Main.main()

