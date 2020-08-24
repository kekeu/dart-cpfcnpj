import 'package:cpfcnpj/src/cnpj.dart';
import 'package:cpfcnpj/src/cpf.dart';

class CPFCNPJ {

  // Formatar número de CPF e CNPJ
  static String format(String cpfCnpj, { bool onlyComplete = true }) {
    if (cpfCnpj == null) return null;
    // Obter somente os números
    var numeros = cpfCnpj.replaceAll(RegExp(r'[^0-9]'), '');
    if (numeros.length <= 11) {
      return CPF.format(cpfCnpj, onlyComplete: onlyComplete);
    } else {
      return CNPJ.format(cpfCnpj, onlyComplete: onlyComplete);
    }
  }

}