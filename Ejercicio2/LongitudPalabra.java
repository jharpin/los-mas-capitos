import javax.swing.JOptionPane;

public class LongitudPalabra {
    public static void main(String[] args) {
        String palabra = JOptionPane.showInputDialog("Digite una palabra:");
        
        // "Elixir" devuelve la longitud
        int longitud = palabra.length();
        
        JOptionPane.showMessageDialog(null, "La longitud de la palabra es: " + longitud);
    }
}
