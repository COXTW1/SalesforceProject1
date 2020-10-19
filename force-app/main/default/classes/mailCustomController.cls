public class mailCustomController {
	
    public List<Mail__c> mailNotDelivered;	//a list of objects for the packages that have not been delivered yet
    public List<Mail__c> mailDelivered;	//a list of objects for the packages that have been delivered
    
    
    /*
     * Method Name: mailCustomController
     * 
     * Author: Taylor Cox
     * 
     * Date Created: 7/OCT/2020
     * 
     * Last Modified By: Taylor Cox
     * 
     * Date Last Mosified: 7/OCT/2020
     * 
     * Returns: N/A
     * 
     * Parameters: N/A
     * 
     * Description: Non-parameterized constructor for the mailCustomController Class
	*/
    public mailCustomController(){
        this.mailNotDelivered = [
            						SELECT Name, Delivery_Status__c, Address__c, Tracking__c, 
                                 		Claim_Paid_Out__c, Missing__c, Insurance__c
                                    FROM Mail__c
                                    WHERE Delivery_Status__c IN ('Shipped', 'In Transit')
                                	ORDER BY Delivery_Status__c DESC
                                 	LIMIT 150
                                ];
        
       
       	this.mailDelivered = [
            					SELECT Name, Delivery_Status__c, Address__c, Tracking__c, 
                              		Claim_Paid_Out__c, Missing__c, Insurance__c
                         		FROM Mail__c
                             	WHERE Delivery_Status__c = 'Delivered'
                             	LIMIT 150
                             ];
    }
    
    
    /*
     * Method Name: getMailNotDelivered
     * 
     * Author: Taylor Cox
     * 
     * Date Created: 7/OCT/2020
     * 
     * Last Modified By: Taylor Cox
     * 
     * Date Last Mosified: 7/OCT/2020
     * 
     * Returns: mailNotDelivered - The private attribute for the list of mail that has not been delivered
     * 
     * Parameters: N/A
     * 
     * Description: Returns a list of mail objects that were marked as "Shipped" or "In Transit" 
	*/
    public List<Mail__c> getMailNotDelivered(){
        return mailNotDelivered;
    }
    
    /*
     * Method Name: getMailDelivered
     * 
     * Author: Taylor Cox
     * 
     * Date Created: 7/OCT/2020
     * 
     * Last Modified By: Taylor Cox
     * 
     * Date Last Mosified: 7/OCT/2020
     * 
     * Returns: mailDelivered - The private attribute for the list of mail delivered
     * 
     * Parameters: N/A
     * 
     * Description: Returns a list of mail objects that were marked as "Delivered" 
	*/
    public List<Mail__c> getMailDelivered(){ 
        return mailDelivered;
    }
}