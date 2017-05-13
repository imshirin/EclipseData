/**************************************************************************************************
 * Class : AddRelatedRecordController
 * Created By : Twinkle Panjabi
 --------------------------------------------------------------------------------------------------
 * Description : Add Opportunity to the account record on insert or update if not present
 * Test Class : 
 --------------------------------------------------------------------------------------------------
 * Version History:
 * Version  Developer Name    Date          Detail Features
 * 1.0      Twinkle Panjabi   14/11/2016    Initial Development
 **************************************************************************************************/
public with sharing class AddRelatedRecordController {

    /**
     * Method to check whether the account has related opporuntity
     * if not then create one record related to opporunity
     *
     * @param: accountList: List of new accounts 
     */
    public static Void checkAndCreateOpporunity(List<Account> accountList) {

        List<Opportunity> oppList = new List<Opportunity>();

        // Get the related opportunities for the accounts in this trigger
        Map<Id,Account> acctsWithOpps = new Map<Id,Account>(
        [SELECT Id,(SELECT Id FROM Opportunities) FROM Account WHERE Id IN :accountList]);

        // Add an opportunity for each account if it doesn't already have one.
        // Iterate through each account.
        for(Account a : accountList) {
            // Check if the account already has a related opportunity.
            if (acctsWithOpps.get(a.Id).Opportunities.size() == 0) {
                // If it doesn't, add a default opportunity
                oppList.add(new Opportunity(Name=a.Name + ' Opportunity',
                                       StageName='Prospecting',
                                       CloseDate=System.today().addMonths(1),
                                       AccountId=a.Id));
            }
        }

        if (oppList.size() > 0) {
            insert oppList;
        }
    }
}