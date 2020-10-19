public class TrackingController {
	public String trackingNum {get;set;}
    public List<Mail__c> mail {get; set;}
    public String errorMessage {get;set;}
    
    
    public void returnMail(){
        try{
            String queryString = 'SELECT Name, Tracking__c, Address__c, Delivery_Status__c FROM Mail__c';
            String n;
            if(this.trackingNum!=null){
                n = '%'+this.trackingNum+'%';
                queryString += ' WHERE Tracking__c LIKE :n LIMIT 10';
            }
            this.mail = Database.query(queryString);
            System.debug(this.mail);
            
        }
        catch(Exception e){
            this.errorMessage = 'Please enter a valid tracking number in the above text box.';
            this.mail = new List<Mail__c>();
        }
    }
}