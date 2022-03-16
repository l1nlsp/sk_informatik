import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

class Komplex {
    float Re, Im;

    public Komplex(String z) {
        String[] teile = z.split("\\+");
        Re = Float.parseFloat(teile[0]);
        /* exclude String"i" */
        Im = Float.parseFloat(teile[1].substring(2));
    }
}

class KomplexeRechnungen {
    Float Re1, Im1, Re2, Im2, Re_Loesung, Im_Loesung;

    public KomplexeRechnungen(Komplex z1, Komplex z2) {
        Re1 = z1.Re;
        Im1 = z1.Im;
        Re2 = z2.Re;
        Im2 = z2.Im;
    }

    public void Addition() {

        Re_Loesung = Re1 + Re2;
        Im_Loesung = Im1 + Im2;

        System.out.println("Z1 + Z2 = " + Re_Loesung + " + i(" + Im_Loesung+")");
    }

    public void Substraktion() {

        Re_Loesung = Re1 - Re2;
        Im_Loesung = Im1 - Im2;

        System.out.println("Z1 - Z2 = " + Re_Loesung + " + i(" + Im_Loesung+")");
    }

    public void Multiplikation() {

        Re_Loesung = Re1 * Re2 - Im1 * Im2;
        Im_Loesung = Re1 * Im2 + Re2 * Im1;

        System.out.println("Z1 * Z2 = " + Re_Loesung + " + i(" + Im_Loesung+")");
    }

    public void Division() {

        Re_Loesung = (Re1 * Re2 + Im1 * Im2) / (Re2 * Re2 + Im2 * Im2);
        Im_Loesung = (Re2 * Im1 - Re1 * Im2) / (Re2 * Re2 + Im2 * Im2);

        System.out.println("Z1 / Z2 = " + Re_Loesung + " + i(" + Im_Loesung+")");
    }

}

class KomplexeZahlen {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

        System.out.println("Eingabe Format: Zahl+i*Zahl");
        /* Read user input */
        System.out.println("Z1: ");
        String z1_input = br.readLine();

        System.out.println("Z2: ");
        String z2_input = br.readLine();

        /* Transform input(String) into Komplex */
        Komplex z1 = new Komplex(z1_input);
        Komplex z2 = new Komplex(z2_input);

        /* Operate invoking methods */
        KomplexeRechnungen Rechnungen = new KomplexeRechnungen(z1, z2);
        Rechnungen.Addition();
        Rechnungen.Substraktion();
        Rechnungen.Multiplikation();
        Rechnungen.Division();
    }
}