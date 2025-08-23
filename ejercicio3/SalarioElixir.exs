def salarioElixir(nombre, horas_trabajadas, valor_hora) do
    if horas_trabajadas > 160 do
      salario_base = 160 * valor_hora
      horas_extra = (horas_trabajadas - 160) * valor_hora * 1.25
      salario_neto = salario_base + horas_extra

      "Empleado: #{nombre} - Salario neto: $#{salario_neto}"
    else
      salario_neto = horas_trabajadas * valor_hora
      "Empleado: #{nombre} - Salario neto: $#{salario_neto}"
    end
  end
