/**************************************************************************************************
 * Class : TaskUtil
 * Created By : Twinkle Panjabi
 --------------------------------------------------------------------------------------------------
 * Description : Controller to fetch the task priority
 * Test Class : TaskUtilTest
 --------------------------------------------------------------------------------------------------
 * Version History:
 * Version  Developer Name    Date          Detail Features
 * 1.0      Twinkle Panjabi   14/11/2016    Initial Development
 **************************************************************************************************/
public class TaskUtil {

    /** 
     * Method to get the Task Priority as per the 
     * State passed
     *
     * @param: leadState The state of the lead 
     *
     * @return : Priority according to the state passed
     */
    public static String getTaskPriority(String leadState) {

        // Validate input
        if (String.isBlank(leadState) || leadState.length() > 2) {
            return null;
        }

        String taskPriority;

        if (leadState == 'CA') {
             taskPriority = 'High'; 
        } else {
             taskPriority = 'Normal';
        }

        return taskPriority;
    }
}