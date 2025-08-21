defmodule Privado do
  def mostrar_mensaje()do
  "Bienvenido a la empresa Once Ltta  "
  |> mensaje_privado()

end

defp mensaje_privado(mensaje)do
mensaje
|>IO.puts()
end

end
Privado.mostrar_mensaje()
