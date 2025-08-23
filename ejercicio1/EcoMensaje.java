import javax.swing.JOptionPane;

public class EcoMensaje {
    public static void main(String[] args) {
        String mensaje = JOptionPane.showInputDialog("Digite un mensaje:");
        
        // Simulamos que lo procesa "Elixir": lo devolvemos en mayúsculas
        String respuesta = mensaje.toUpperCase();
        
        JOptionPane.showMessageDialog(null, "Mensaje devuelto: " + respuesta);
    }
}
