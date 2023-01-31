
void main(List<String> arguments){
  final unCuadrado = Cuadrado();
  print('El área de unCuadrado es: ${unCuadrado.area}');
}

abstract class FiguraGeometrica{
  //Estableciendo lo qe debe contener una figura geométrica
  double? area;
  double calculaeArea();
}

class Cuadrado implements FiguraGeometrica{
  //Cuadrado hereda de FiguraGeometrica y debe implementar todo lo definido en la clase abstracta
  @override //Se está sobreescribiendo una variable que ya se declaró
  double? area;

  @override //Se está sobreescribiendo una variable que ya se declaró
  double calcularArea(){
    double lado = 12.5;
    return lado * lado;
  }
}
