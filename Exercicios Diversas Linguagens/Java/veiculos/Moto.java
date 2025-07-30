public class Moto extends Veiculo {
  private boolean temPartidaEletrica;


  public Moto(String marca, String modelo, int ano, boolean temPartidaEletrica) {
      super(marca, modelo, ano);
      this.temPartidaEletrica = temPartidaEletrica;
  }


  @Override
  public void exibirDetalhes() {
      super.exibirDetalhes();
      System.out.println("Partida Elétrica: " + (temPartidaEletrica ? "Sim" : "Não"));
  }
}