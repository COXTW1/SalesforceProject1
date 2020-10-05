public class CreateContact {
    
    public void createContact(){
		Contact contact = new Contact();
    
    	contact.FirstName = 'Ricardo';
    	contact.LastName = 'Lopez';
    	contact.MailingStreet = '1234 Street';
    	contact.MailingCity = 'City';
    	contact.MailingState = 'ST';
    	contact.MailingPostalCode = '12345';
    
    	insert contact;
    }
}