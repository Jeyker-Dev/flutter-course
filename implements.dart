void main() {
  final windPlant = WindPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant(energyLeft: 1000);

  print('Viento: ${chargePhone(windPlant)}');
  print('Nuclear: ${chargePhone(nuclearPlant)}');
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('No hay suficiente energía');
  }
  return plant.energyLeft - 10;
}

enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type;

  EnergyPlant({
    required this.energyLeft,
    required this.type
  });

  void consumeEnergy(double amount);
}

// ==========================================
// IMPLEMENTS
// ==========================================
// A diferencia de 'extends', 'implements' te obliga a re-escribir 
// TODO (propiedades y métodos) de la clase padre. 
// No heredas la lógica, solo el "contrato" o la estructura.

class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

class NuclearPlant implements EnergyPlant {
  // Con 'implements' estamos OBLIGADOS a declarar las propiedades otra vez
  @override
  double energyLeft;
  
  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({required this.energyLeft});

  // Y estamos obligados a definir la lógica de los métodos
  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}
