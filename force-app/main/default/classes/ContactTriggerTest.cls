@isTest
public class ContactTriggerTest {
    
    @isTest
    public static void Test(){
        List<Contact> contacts = [SELECT FirstName, MailingStreet, MailingCity FROM Contact];
        
        for(Contact currentContact : contacts){
            System.debug(currentContact);
        }
        
        ContactTriggerHandler.checkForMatchingAccounts(contacts);
    }
}