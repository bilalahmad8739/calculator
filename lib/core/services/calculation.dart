import 'package:math_expressions/math_expressions.dart';

class Calculation {
  static equalpress(userinput, result) {
    String finaluserinput = userinput.replaceAll('x', '*');
    Parser p = Parser();
    Expression expression = p.parse(finaluserinput);

    ContextModel contextModel = ContextModel();

    double eval = expression.evaluate(EvaluationType.REAL, contextModel);

    result = eval.toString();
    return result;
  }
}
