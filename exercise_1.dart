import 'package:exercise_1/exercise_1.dart' as exercise_1;
import 'package:test/test.dart';

void main(List<String> arguments) {
  print('Hello world: ${exercise_1.calculate()}!');
  printNumber(1001);
  List a = [4, 3, 10, 9, 15, 7, 6, 5, 8];
  printSumOfNumberDivisibleBy3(a);
  countingNumbers(1001);

// Yêu cầu: In ra số hotline của lớp học trên.

  var classInformation = {
    "id": 12,
    "name": "Báo Flutter 1.2",
    "description": "Lớp học lập trình Flutter , hotline : 0349582808"
  };
  String infor = classInformation['description'];
  List hotLine = infor.split(' ');
  print("Hotline : " + hotLine[8].toString());
}

// Từ 1 đến 1000 in ra các số chẵn mà tổng các số đó không lớn hơn 400.

int printNumber(int number) {
  int sum = 2;
  print("Các số chẵn có tổng không quá 400 là :");
  for (int i = 2; i < number; i += 2) {
    sum = sum + i;
    {
      if (sum <= 400) print("$i");
    }
  }
}

// Cho một list : List list5 = [4, 3, 10, 9, 15, 7, 6, 5, 8]; In ra tổng các số chia hết cho 3.
int printSumOfNumberDivisibleBy3(List numberList) {
  int sum = 0;
  for (int number in numberList) {
    if (number % 3 == 0) sum = sum + number;
  }
  print("Tổng các số chia hết cho 3 trong List là : $sum");
}

//Từ. 1 đến 10000, Viết chương trình đếm xem có bao nhiêu chữ số chia hết cho 3 , bao nhiêu số chia hết cho 5

int countingNumbers(int number) {
  int n = 0;
  int m = 0;
  for (int i = 1; i < number; i++) {
    if (i % 3 == 0)
      n = n + 1;
    else if (i % 5 == 0) m = m + 1;
  }
  print("Có $n số chia hết cho 3");
  print("Có $m số chia hết cho 5");
}
