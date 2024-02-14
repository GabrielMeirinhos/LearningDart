// Exercitando Orientação a Objeto 
main (){
  Alimento cafe = Alimento("Café", 1, "Marrom");
  Fruta acerola = Fruta("Acerola", 5, "Vermelha", "Doce/Amargo", 10, false);
  Citricas limao = Citricas("Limão", 50, "Amarelo", "Azedo", 15, false, 56);
  Raiz macaxeira = Raiz("Macaxeira", 1500, "Marrom", true);

  cafe.descricao();
  acerola.descricao();
  limao.descricao();
  macaxeira.descricao();
  acerola.estaMadura(5);
  limao.existeRefri(true);
  macaxeira.cozinhar(true);
}
class Alimento{
  String nome;
  int peso;
  String cor;

  //Construtor
  Alimento(this.nome ,this.peso ,this.cor);

  void descricao(){
    print("O seu alimento é $nome, pesa $peso gramas e tem a cor $cor.");
  }
}
class Fruta extends Alimento{
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(String nome, int peso, String cor,this.sabor, this.diasDesdeColheita, this.isMadura):super(nome, peso, cor);

  void estaMadura(int diasParaMadura){
    isMadura = diasDesdeColheita >= diasParaMadura;
  }
}
class Citricas extends Fruta{
  int nivelAzedo;

  Citricas(String nome, int peso, String cor,String sabor, int diasDesdeColheita, bool? isMadura, this.nivelAzedo)
  :  super(nome, peso, cor, sabor, diasDesdeColheita, isMadura);

  void existeRefri(bool existe){
    if(existe){
      print("Existe refri de $nome!");
    }
    else{
      print("Não existe refri de $nome");
    }
  }
}
class Nozes extends Fruta{
  double porcentagemOleoNatural;

  Nozes(String nome, int peso, String cor,String sabor, int diasDesdeColheita, bool? isMadura, this.porcentagemOleoNatural)
  :  super(nome, peso, cor, sabor, diasDesdeColheita, isMadura);
}
class Raiz extends Alimento{
  bool? precisaCozinhar;

  Raiz(String nome, int peso, String cor,this.precisaCozinhar):super(nome, peso, cor);
  
  void cozinhar(bool precisaCozinhar){
    if(precisaCozinhar){
      print("Cozinhado!");
    }
    else{
      print("Não precisa cozinhar!");
    }
  }
}
