public class MailTriggerHandler {
    
    public static void CheckApprovalLock(List<Mail__c> appList){
    
    for(Mail__c m : appList){
        if(Approval.isLocked(m.id)){
            m.addError('Record is Locked');
        }
    }
        
    }
    
    public static void CheckDateIfMissing(List<Mail__c> mailList) {
        for(Mail__c m : mailList){
            if(m.Missing__c == true && m.CreatedDate.addDays(730) >= Date.today()){
                m.addError('Records must be maintained for missing mail for no less than two years.');
            }
        }
    }

    public static void generateTrackingCode(List<Mail__c> mailList) {
        String generatedCode = '';
        Integer randomNumber;
        
        for(Mail__c mail : mailList){
        	for(Integer x = 0; x < 5; x++){
            	randomNumber = Integer.valueof((Math.random() * 99));
            	if(randomNumber < 10){
                	randomNumber += 15;
            	}
            	generatedCode += randomNumber;
        	}
            mail.Tracking__c = generatedCode;
        }
    }
}