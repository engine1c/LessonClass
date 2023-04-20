//20/04/23

abstract class Vehicle{
  final String m;
  final double f1;
  double? f2 =0;

  static const double pi = 3.14;

  String showInfo() {
    return '$m: $f2 of $f1 (critical: $cfl)';
  }

  double get  cfl => f1*0.1;

  set nfr(double val)=> f2 = val;

  Vehicle({required this.m, required this.f1, required this.f2});

  Vehicle.fromMap(Map<String,String> map)
  :
    m = map['m']!,
    f1 =double.parse( map['f1']! ),
    f2 =double.parse( map['f2']! );

 static void sayHello(){
    // ignore: use_function_type_syntax_for_parameters
    print("say Hello!!!");
  }

}



class Car extends Vehicle{

  final int _seats;
  Car(this._seats, Map<String,String> map): super.fromMap(map);

@override
  void move() {
    print('-Car-Car-Car');
  }
}

class Rocket extends Object with SpaceShip  implements Vehicle{
  late final String m;
  late final double f1;
  double? f2 =0;
  
  Rocket(this.m, this. f1, this. f2);

  double get  cfl => f1*0.3;

  set nfr(double val)=> f2 = val;

   String showInfo() => "The ROcket....${f2!/f1*100}% of fuel";

   void move(){
    print('I can fly!!!!');

  call(String mas){
  print(mas);
}

   }
  }

  mixin SpaceShip{
bool is1 = false;
void leavOrbit(){
  print('____leavOrbit');
}
  }
class Color{
  final int clr;
 const Color({required this.clr});
}

void main() {
  //var vehicle = Vehicle(m:'BMW-5', f1:65 ,f2:7);

  //vehicle.NFR = 8;

  //print(vehicle.showInfo());

  //var vehicle2 = Vehicle.fromMap({'m':'AUDI','f1':'70','f2':'12'});

   //print(vehicle2.showInfo() ); 
var rocket = Rocket('NASA',5000,3000);
print(rocket.showInfo());
rocket.move();
rocket.leavOrbit(); 
var color = const Color(clr: 0xffffffffff);
//rocket('qqqqq');

    //print( (Vehicle.pi) ); 

     //(Vehicle.sayHello()) ; 

    var wf = WannabeFunction();
    var out = wf('Привет', 'there,', 'gang');
    print(out);
}

class WannabeFunction {
  String call(String a, String b, String c) => '$a $b $c!';
}
