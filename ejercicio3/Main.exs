defmodule Main do
  def main() do
    nombre = Util.input_data("Ingrese el nombre del empleado: ")
    horas_trabajadas = Util.input_data("Ingrese las horas trabajadas: ")
    |> String.to_integer()
    valor_por_hora = Util.input_data("Ingrese el valor por hora: ")
    |> String.to_float()

    {horas_trabajadas, valor_por_hora}
    |> calcular_salario_neto()
    |> Float.round(7)
    |> (&("El salario neto de #{nombre} es: #{&1}")).()
    |> Util.mostrar_mensaje()
  end

  defp calcular_salario_neto({horas, valor_hora}) do
    if horas > 160 do
      horas_normales = 160
      horas_extra = horas - 160

      salario_base = horas_normales * valor_hora
      salario_extra = horas_extra * valor_hora * 1.25

      salario_base + salario_extra
    else
      horas * valor_hora
    end
  end
end

Main.main()
