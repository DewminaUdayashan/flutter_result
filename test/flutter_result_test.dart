import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_result/flutter_result.dart';

void main() {
  group('Result tests', () {
    test('Test successful result', () {
      final result = Result<int, String>.success(42);
      expect(result.isSuccess, true);
      expect(result.value, 42);
      expect(result.errorMessage, null);

      final value = result.open<int>((value) => value!, (error) => throw Exception(error));
      expect(value, 42);
    });

    test('Test error result', () {
      final result = Result<int, String>.error('Something went wrong');
      expect(result.isSuccess, false);
      expect(result.value, null);
      expect(result.errorMessage, 'Something went wrong');
      expect(() => result.open<int>((onSuccess) => onSuccess!, (onError) => throw Exception(onError)), throwsException);
    });
  });
}
