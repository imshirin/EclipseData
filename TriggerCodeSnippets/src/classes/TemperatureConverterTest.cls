@isTest
private class TemperatureConverterTest {

    /**
     * Method to the conversion with warm range value
     */
    testmethod static void testWarmTemp() {
        Test.startTest();
            Decimal celsius = TemperatureConverter.FahrenheitToCelsius(70);
        Test.stopTest();
        System.assertEquals(21.11,celsius);
    }

    /**
     * Method to the conversion with freezing range value
     */
    testmethod static void testFreezingPoint() {
        Test.startTest();
            Decimal celsius = TemperatureConverter.FahrenheitToCelsius(32);
        Test.stopTest();
        System.assertEquals(0,celsius);
    }

    /**
     * Method to the conversion with Boiling Range value
     */
    testmethod static void testBoilingPoint() {
        Test.startTest();
            Decimal celsius = TemperatureConverter.FahrenheitToCelsius(212);
        Test.stopTest();
        System.assertEquals(100,celsius,'Boiling point temperature is not expected.');
    } 

    /**
     * Method to the conversion with Negative Range value
     */
    testmethod static void testNegativeTemp() {
        Test.startTest();
            Decimal celsius = TemperatureConverter.FahrenheitToCelsius(-10);
        Test.stopTest();
        System.assertEquals(-23.33,celsius);
    }
      
}