defmodule Main do
  @moduledoc """
  Módulo principal para calcular el salario neto de un empleado en función de las horas trabajadas
  y el valor por hora. También maneja horas extras si el empleado supera las 160 horas trabajadas.
  """
  @doc """
  Función principal que solicita los datos del empleado (nombre, horas trabajadas, valor por hora),
  calcula el salario neto y muestra el resultado.
  - Solicita el nombre del empleado.
  - Solicita las horas trabajadas y las convierte a entero.
  - Solicita el valor por hora y lo convierte a flotante.
  - Calcula el salario neto considerando horas extras si es necesario.
  - Muestra el salario neto del empleado.
  """
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

  @doc """
  Calcula el salario neto del empleado, considerando horas extras (por encima de 160 horas)
  Si el empleado trabajó más de 160 horas, las horas extras se pagan al 125% del valor por hora.
  """
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
