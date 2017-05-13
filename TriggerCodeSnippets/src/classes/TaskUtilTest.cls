/**************************************************************************************************
 * Class : TaskUtil
 * Created By : Twinkle Panjabi
 --------------------------------------------------------------------------------------------------
 * Description : Test Class to test the functionality of TaskUtil
 * Test Class : TaskUtilTest
 --------------------------------------------------------------------------------------------------
 * Version History:
 * Version  Developer Name    Date          Detail Features
 * 1.0      Twinkle Panjabi   14/11/2016    Initial Development
 **************************************************************************************************/
 
@isTest
private class TaskUtilTest {

    /**
     * Method to test the getTaskPriority method 
     * with Normal priority
     */
    testmethod static void testTaskPriority() {
        Test.startTest();
            String pri = TaskUtil.getTaskPriority('NY');
        Test.stopTest();
        System.assertEquals('Normal', pri);
    }

    /**
     * Method to test the getTaskPriority method 
     * with High priority
     */
    testmethod static void testTaskHighPriority() {
        Test.startTest();
            String pri = TaskUtil.getTaskPriority('CA');
        Test.stopTest();
        System.assertEquals('High', pri);
    }

    /**
     * Method to test the getTaskPriority method 
     * with invalid State Name
     */
    /*testmethod static void testTaskPriorityInvalid() {
        Test.startTest();
            String pri = TaskUtil.getTaskPriority('Montana');
        Test.stopTest();
        System.assertEquals(null, pri);
    }*/
}