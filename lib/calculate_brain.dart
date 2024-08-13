import 'dart:math';

class CalculateBrain {
  double? bmi;  // Changed the type to double? to allow nullability

  CalculateBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  String calculateBMI() {
    bmi = weight / pow(height / 100, 2);
    return bmi!.toStringAsFixed(1);  // Use bmi! to assert that bmi is non-null
  }

  String getResult() {
    if (bmi == null) {
      calculateBMI();  // Ensure bmi is calculated if it's null
    }
    
    if (bmi! >= 25) {
      return 'Waa Cayilanthy';
    } else if (bmi! > 18.5) {
      return 'Caadi ba tahy';
    } else {
      return 'Waa Misaan Yartahy';
    }
  }

  String getInterPretion() {
    if (bmi == null) {
      calculateBMI();  // Ensure bmi is calculated if it's null
    }

    if (bmi! >= 25) {
      return 'Jirkaga waxa saaran hilib mrka jimicsi samey.';
    } else if (bmi! > 18.5) {
      return 'Waxa ledahy jir caadi howl wngsn';
    } else {
      return 'jirkaaga aad bu uhoseyaa mrka cunto fcn cun.';
    }
  }
}