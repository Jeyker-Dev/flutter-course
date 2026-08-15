void main() {
  // 1. Uso de Enumeraciones
  // Las enums nos dan seguridad de tipos, evitando errores de dedo como "nuclear " (con espacio)
  final windPlant = WindPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant(energyLeft: 1000);

  print('Viento: ${chargePhone(windPlant)}');
  print('Nuclear: ${chargePhone(nuclearPlant)}');
}

// Una función que recibe la clase abstracta (el contrato)
// No le importa si es de viento o nuclear, solo que sea una EnergyPlant.
double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('No hay suficiente energía');
  }
  return plant.energyLeft - 10;
}

// ==========================================
// 1. ENUMERACIONES (enum)
// ==========================================
// Sirven para definir un conjunto de valores constantes con nombre.
// Hacen el código mucho más legible y menos propenso a errores.
enum PlantType { nuclear, wind, water }

// ==========================================
// 2. CLASES ABSTRACTAS (abstract class)
// ==========================================
// - No se pueden instanciar directamente (no puedes hacer: new EnergyPlant()).
// - Sirven como "moldes" o "contratos" para otras clases.
// - Definen qué debe tener una clase, pero no siempre cómo lo hace.
abstract class EnergyPlant {
  double energyLeft;
  final PlantType type; // Usamos nuestro Enum aquí

  EnergyPlant({
    required this.energyLeft,
    required this.type
  });

  // Método abstracto: no tiene cuerpo, las clases que hereden DEBEN implementarlo.
  void consumeEnergy(double amount);
}

// --- Clases Concretas (que implementan la abstracta) ---

class WindPlant extends EnergyPlant {
  // Al extender, heredamos las propiedades y el constructor
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wind);

  // Estamos obligados a implementar este método
  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;
  
  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5); // La nuclear es más eficiente
  }
}
