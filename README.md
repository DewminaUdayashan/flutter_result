# flutter_result

A simple and lightweight package that provides a `Result` type for handling success and error cases in Flutter and Dart. This package is inspired by the `Either` type in the [dartz](https://pub.dev/packages/dartz) package.

## Features

- Simple and lightweight `Result` type
- Supports both success and error cases
- Easy to integrate into existing Flutter and Dart projects

## Installation

To install this package, add the following dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter_result: ^0.0.1
```

Then run flutter pub get to download the package.

## Usage

Here's an example of how to use the Result type in your code:

```dart
import 'package:result_type/result_type.dart';

Result<String, Exception> getData() {
  try {
    // fetch data from the server
    return Result.success('data');
  } catch (e) {
    return Result.error(Exception('Failed to fetch data'));
  }
}

void main() {
  final result = getData();
  result.open(
     (onSuccess) => print('Data : $onSuccess'),
     (onError) => print('Error : $onError'),
  );
}

```
In this example, the getData function returns a Result object that contains either a String value (in the case of success) or an Exception object (in the case of an error). The open method is then used to handle each case separately.

## Contributing

To report bugs, suggest new features, or contribute code to this package, please open an issue or a pull request on Github.

## License

This package is released under the [MIT License](https://github.com/DewminaUdayashan/flutter_result/blob/master/LICENSE).

