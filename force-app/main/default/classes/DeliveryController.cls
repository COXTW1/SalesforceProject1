public class DeliveryController {
     public List<Mail__c> deliveredMail;
    public deliveryController(){
        this.deliveredMail= [SELECT Name, Delivery_Status__c, Address__c, Tracking__c, Claim_Paid_Out__c, Missing__c
                 			FROM Mail__c WHERE Delivery_Status__c = 'Delivered' LIMIT 150];    
       	
    }  
     public List<Mail__c> getDeliveredMail(){
        
        return deliveredMail;
        
    }
    

}