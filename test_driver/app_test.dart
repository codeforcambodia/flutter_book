import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main(){
  group("Counter App", (){
    
    final counterTextFind = find.text('0');
    final buttonFinder = find.text('Increment');

    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async{
      if (driver != null){
        driver.close();
      }
    });

    test("starts at 0", () async {
      expect(await driver.getText(counterTextFind), Duration(seconds: 1));
      await driver.tap(buttonFinder);
      expect(1, Duration(seconds: 1));
    });

    // test('increment the counter', () async {
    // });
    
  });
}