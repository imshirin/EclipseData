/**************************************************************************************************
 * Class : TaskUtil
 * Created By : Twinkle Panjabi
 --------------------------------------------------------------------------------------------------
 * Description : Controller to take Fahrenheit temperature and returns the Celsius equivalent.
 * Test Class : TaskUtilTest
 --------------------------------------------------------------------------------------------------
 * Version History:
 * Version  Developer Name    Date          Detail Features
 * 1.0      Twinkle Panjabi   14/11/2016    Initial Development
 **************************************************************************************************/
public class TemperatureConverter {

    /**
     * Method to take a Fahrenheit temperature and returns the Celsius equivalent.
     *
     * @return: fh : Fahrenheit temperature  in decimal
     */
    public static Decimal FahrenheitToCelsius(Decimal fahrenheit) {
        Decimal celsius = (fahrenheit - 32) * 5/9;
        return celsius.setScale(2);
    }
}