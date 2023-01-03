String numero = '0';
num primeiroNumero = 0;
String operacao = '';
double resultado = 0;
int resultadoFormatado = 0;
String tecla = '';

class Calcular {
  void calcular(String tecla) {
    switch (tecla) {
      case '0':
      case '1':
      case '2':
      case '3':
      case '4':
      case '5':
      case '6':
      case '7':
      case '8':
      case '9':
      case ',':
        numero += tecla;

        numero = numero.replaceAll(',', '.');
        if (numero.contains(".")) {
          /*double numeroDouble = double.parse(numero);
          numero = numeroDouble.toString();
          */
        } else {
          int numeroInteiro = int.parse(numero);
          numero = numeroInteiro.toString();
        }
        numero = numero.replaceAll('.', ',');

        break;

      case '+':
      case '-':
      case 'x':
      case '÷':
        numero = numero.replaceAll(',', '.');
        operacao = tecla;
        //primeiroNumero = double.parse(numero);
        primeiroNumero = num.parse(numero);
        numero = numero.replaceAll('.', ',');
        numero = '0';

        break;

      case '=':

        /* if (operacao == '+') {
          //
          resultado = primeiroNumero + double.parse(numero);
          numero = resultado.toString();
          //});
        } */

        if (operacao == '÷') {
          if (double.parse(numero) * 1 == 0) {
            String erro = ('Erro divisão');
            numero = erro;
          }
        }

        if (operacao == '+') {
          resultado = primeiroNumero + double.parse(numero);
        }

        if (operacao == '-') {
          resultado = primeiroNumero - double.parse(numero);
        }

        if (operacao == 'x') {
          resultado = primeiroNumero * double.parse(numero);
        }

        if (operacao == '÷') {
          resultado = primeiroNumero / double.parse(numero);
        }

        numero = resultado.toString();

        break;

      case 'AC':
        numero = '0';

        break;

      case '<X':
        if (numero.isNotEmpty) {
          numero = numero.substring(0, numero.length - 1);
        }

        break;

      default:
        numero += tecla;

        break;
    }
  }
}
