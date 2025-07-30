/******************************************************************************

Welcome to GDB Online.
GDB online is an online compiler and debugger tool for C, C++, Python, Java, PHP, Ruby, Perl,
C#, OCaml, VB, Swift, Pascal, Fortran, Haskell, Objective-C, Assembly, HTML, CSS, JS, SQLite, Prolog.
Code, Compile, Run and Debug online from anywhere in world.

*******************************************************************************/
public class Main
{
	public static void main(String[] args) {
		Veiculo v = new Veiculo("Carro elétrico", "China", 2022);
		
		System.out.println("[Veiculo]");
		v.exibirDetalhes();
		
		System.out.println("\n[Carro]");
		v = new Carro("Chevrolet", "Tracker", 2024, 5);
		v.exibirDetalhes();
		
		System.out.println("\n[Moto]");
		v = new Moto("Yamaha", "CG", 2024, true);
		v.exibirDetalhes();
	}
}
