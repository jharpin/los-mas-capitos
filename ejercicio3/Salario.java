import javax.swing.JOptionPane;

public class Salario {
    public static void main(String[] args) {
        String nombre = JOptionPane.showInputDialog("Digite el nombre del empleado:");
        int horasTrabajadas = Integer.parseInt(JOptionPane.showInputDialog("Digite las horas trabajadas:"));
        double valorHora = Double.parseDouble(JOptionPane.showInputDialog("Digite el valor por hora:"));

        double salarioBase;
        double horasExtra = 0;
        double salarioNeto;

        if (horasTrabajadas > 160) {
            salarioBase = 160 * valorHora;
            horasExtra = (horasTrabajadas - 160) * valorHora * 1.25;
        } else {
            salarioBase = horasTrabajadas * valorHora;
        }

        salarioNeto = salarioBase + horasExtra;

        JOptionPane.showMessageDialog(null,
                "Empleado: " + nombre +
                "\nSalario neto: $" + salarioNeto);
    }
}
