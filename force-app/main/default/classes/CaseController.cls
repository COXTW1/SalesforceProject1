public class CaseController {
    public String nameCase {get;set;}
    public List<Case> matchingCase{get;set;}
    public String errorMessage {get;set;}
    
    public void returnMatchingCases(){
        try{
            String queryString = 'SELECT Id, Contact.name FROM Case';
            String n;
            if(this.nameCase!=null){
                n = '%'+this.nameCase+'%';
                queryString += ' WHERE Contact.Name LIKE :n';
            }
            this.matchingCase = Database.query(queryString);
            System.debug(this.matchingCase);
            
        }
        catch(Exception e){
            this.errorMessage = 'Please enter a name in the above text box.';
            this.matchingCase = new List<Case>();
        }
    }

}