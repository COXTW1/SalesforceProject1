public class ContactTriggerHandler {
    
    public static void checkForMatchingAccounts(List<Contact> contactList){
        
        List<Account> accList = [SELECT Name, BillingStreet, BillingCity, BillingPostalCode, Id FROM Account];
        
        for(Contact currentContact : contactList){
            if(currentContact.AccountId != NULL){
                System.debug('Contact does have an account associated with it.');
                break;
            }
            for(Account currentAccount : accList){
                if(currentContact.FirstName == currentAccount.Name && currentContact.MailingCity == currentAccount.BillingCity && currentContact.MailingStreet == currentAccount.BillingStreet) {
                    currentContact.AccountId = currentAccount.Id;
                System.debug('Linking contact with its matching account.');
                }
            }
        }   
    }
}