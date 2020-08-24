import 'package:cpfcnpj/cpfcnpj.dart';
import 'package:cpfcnpj/src/cpfcnpj.dart';

main() {

  // Validar CPF
  if (CPF.isValid("123.717.730-86")) {
    print("Este CPF é válido.");
  } else {
    print("Este CPF é inválido.");
  }

  // Validar CNPJ
  if (CNPJ.isValid("43.814.971/0001-89")) {
    print("Este CNPJ é válido.");
  } else {
    print("Este CNPJ é inválido.");
  }

  // Formatar CPF complete
  print('Formatar CPF complete');
  print(CPF.format("1")); // 1
  print(CPF.format("12")); // 12
  print(CPF.format("123")); // 123
  print(CPF.format("1237")); // 1237
  print(CPF.format("12371")); // 12371
  print(CPF.format("123717")); // 123717
  print(CPF.format("1237177")); // 1237177
  print(CPF.format("12371773")); // 12371773
  print(CPF.format("123717730")); // 123717730
  print(CPF.format("1237177308")); // 1237177308
  print(CPF.format("12371773085")); // 123.717.730-85
  print(CPF.format("123717730854")); // 123717730854

  // Formatar CPF incomplete
  print('Formatar CPF incomplete');
  print(CPF.format("1", onlyComplete: false)); // 1
  print(CPF.format("12", onlyComplete: false)); // 12
  print(CPF.format("123", onlyComplete: false)); // 123
  print(CPF.format("1237", onlyComplete: false)); // 123.7
  print(CPF.format("12371", onlyComplete: false)); // 123.71
  print(CPF.format("123717", onlyComplete: false)); // 123.717
  print(CPF.format("1237177", onlyComplete: false)); // 123.717.7
  print(CPF.format("12371773", onlyComplete: false)); // 123.717.73
  print(CPF.format("123717730", onlyComplete: false)); // 123.717.730
  print(CPF.format("1237177308", onlyComplete: false)); // 123.717.730-8
  print(CPF.format("12371773085", onlyComplete: false)); // 123.717.730-85
  print(CPF.format("123717730854", onlyComplete: false)); // 123.717.730-854
  print(CPF.format("1237177308543", onlyComplete: false)); // 123.717.730-8543

  // Formatar CNPJ complete
  print('Formatar CNPJ complete');
  print(CNPJ.format("4")); // 4
  print(CNPJ.format("43")); // 43
  print(CNPJ.format("438")); // 438
  print(CNPJ.format("4381")); // 4381
  print(CNPJ.format("43814")); // 43814
  print(CNPJ.format("438149")); // 438149
  print(CNPJ.format("4381497")); // 4381497
  print(CNPJ.format("43814971")); // 43814971
  print(CNPJ.format("438149710")); // 438149710
  print(CNPJ.format("4381497100")); // 4381497100
  print(CNPJ.format("43814971000")); // 43814971000
  print(CNPJ.format("438149710001")); // 438149710001
  print(CNPJ.format("4381497100018")); // 4381497100018
  print(CNPJ.format("43814971000188")); // 43.814.971/0001-88
  print(CNPJ.format("438149710001887")); // 438149710001887
  print('');

  // Formatar CNPJ incomplete
  print('Formatar CNPJ incomplete');
  print(CNPJ.format("4", onlyComplete: false)); // 4
  print(CNPJ.format("43", onlyComplete: false)); // 43
  print(CNPJ.format("438", onlyComplete: false)); // 43.8
  print(CNPJ.format("4381", onlyComplete: false)); // 43.81
  print(CNPJ.format("43814", onlyComplete: false)); // 43.814
  print(CNPJ.format("438149", onlyComplete: false)); // 43.814.9
  print(CNPJ.format("4381497", onlyComplete: false)); // 43.814.97
  print(CNPJ.format("43814971", onlyComplete: false)); // 43.814.971
  print(CNPJ.format("438149710", onlyComplete: false)); // 43.814.971/0
  print(CNPJ.format("4381497100", onlyComplete: false)); // 43.814.971/00
  print(CNPJ.format("43814971000", onlyComplete: false)); // 43.814.971/000
  print(CNPJ.format("438149710001", onlyComplete: false)); // 43.814.971/0001
  print(CNPJ.format("4381497100018", onlyComplete: false)); // 43.814.971/0001-8
  print(CNPJ.format("43814971000188", onlyComplete: false)); // 43.814.971/0001-88
  print(CNPJ.format("438149710001887", onlyComplete: false)); // 43.814.971/0001-887

  print('\n Formatar CPF CNPJ');
  print(CPFCNPJ.format("1237177308")); // 1237177308
  print(CPFCNPJ.format("12371773085")); // 123.717.730-85
  print(CPFCNPJ.format("123717730854")); // 123717730854
  print(CPFCNPJ.format("1237177308", onlyComplete: false)); // 123.717.730-8
  print(CPFCNPJ.format("12371773085", onlyComplete: false)); // 123.717.730-85
  print(CPFCNPJ.format("123717730854", onlyComplete: false)); // 12.371.773/0854
  print(CPFCNPJ.format("4381497100018")); // 4381497100018
  print(CPFCNPJ.format("43814971000188")); // 43.814.971/0001-88
  print(CPFCNPJ.format("438149710001887")); // 438149710001887
  print(CPFCNPJ.format("4381497100018", onlyComplete: false)); // 43.814.971/0001-8
  print(CPFCNPJ.format("43814971000188", onlyComplete: false)); // 43.814.971/0001-88
  print(CPFCNPJ.format("438149710001887", onlyComplete: false)); // 43.814.971/0001-887

}
