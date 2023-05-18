String dayIndexToDayName(int index) {
  Map dayNames = {
    0: 'null',
    1: 'Lunes',
    2: 'Martes',
    3: 'Miercoles',
    4: 'Jueves',
    5: 'Viernes',
    6: 'Otras recetas',
  };
  return dayNames[index];
}