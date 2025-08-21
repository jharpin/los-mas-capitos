defmodule Publico do
  def main()do
    Util.mostrar_mensaje("Bienvenido al programa de ejemplo")
    dato = Util.pedir_dato()
    "Usted ingreso: #{dato}"
    |> String.upcase()
  |>Util.mostrar_mensaje()
  end
end
Publico.main()
