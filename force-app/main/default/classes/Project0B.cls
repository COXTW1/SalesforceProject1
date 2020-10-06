/////////////////////////////////////////////////////////////////
// Name: Project 0 Bravo
// Author: Craig Hafer (craig.hafer@reveture.net)
// Date: 9/15/2020
// Description: Series of apex methods to demonstrate
// basic understanding of coding concepts.
//
/////////////////////////////////////////////////////////////////

public class Project0B {
    /************************************/
    /* Returns the Nth Fibonacci number */
    /************************************/
    public static Integer nFibonacci( Integer n ){
        
        Integer Fibonacci = 0;       // Current Number in the Sequence
        Integer oldFibonacci = 0;    // Previous Number in the Sequence
        Integer olderFibonacci = 0;  // 2nd Previous Number in the Sequence
        
        // Loop through as many fibonacci numbers as requested.
        for(Integer i = 0; i < n; i++){
            // Seeding the start of the sequence, so long as you aren't asking for 0th Fibonacci Number.
            if(i == 0 && n != 0)
                olderFibonacci = 1;
            
            // Shuffling down the Fibonacci Sequence.
            else{
                olderFibonacci = oldFibonacci;
            	oldFibonacci = Fibonacci;
            }
            // Getting the new number in the sequence, based on the previous 2 before it.
            Fibonacci = oldFibonacci + olderFibonacci;
        }
        return Fibonacci;

        /*
        ////////////////////////
        // Recursive Version. //
        ////////////////////////
        
        // If you are at the 'beginning' of the Fibonacci Sequence return 1 unless you entered a 0.
        if(n == 0 || n == 1){
            return n;
        } 
        // Otherwise add the total of the two fibonacci numbers before, calling the function again.
        else {
            return (nFibonacci(n-1) + nFibonacci(n - 2));
        }*/
    }
    
    /**********************************************************/
    /* Returns a sorted list of Integers into ascending order */
    /**********************************************************/
    public static List<Integer> sortList( List<Integer> intList ){
        
        // First we must clone the list, not assign it. Otherwise you will be manipulating one list they both point to.
        List<Integer> newList = intList.clone();
        Integer temp = 0; // Temporary variable used to swap places.
        
        // Sort through the entire list (Using a bubble sort)
         
        // Keep track of how many times you have been through the loop of numbers in the list.
        for(Integer outerIndex = 0; outerIndex < newList.size(); outerIndex++){
            // Go through each number inside the list, skipping the last number to avoid indexes that are out of range.
            for(Integer innerIndex = 0; innerIndex < newList.size() - 1; innerIndex++){
                // Compare the number, to the number following it. Swapping them if they are out of order.
                if(newList[innerIndex] > newList[innerIndex + 1]){
                    temp = newList[innerIndex + 1];
                    newList[innerIndex + 1] = newList[innerIndex];
                    newList[innerIndex] = temp;
                }
            }
        }
        
        //////////////////////////
        // Explanation Purposes //
        //                      //
        //     Outer Index      //
        //          v           //
        // List: {1,2,3,5,4}    //
        //              ^       //
        //          Inner Index //
        //////////////////////////
        
        return newList;
    }
   
    /******************************/
    /* Returns the Factorial of N */
    /******************************/
    public static Integer nFactorial( Integer n){
        Integer newFactor; // Next factor you will be multiplying by.
        Integer totalFactorial = 1; // Total number of the factorial calculated so far. 
        							// NOTE: Starts at 1 so that you don't multiply by 0
        
		// Loop through every integer up to the input N, multiplying it by the total accumulated so far.       
        for(Integer i = 1; i <= n; i++){
            newFactor = i;
            totalFactorial *= newFactor;
        }
        
        return totalFactorial;
    }
    
    /****************************/
    /* Rotates a list n indexes */
    /****************************/
    public static List<Integer> rotateLeftNTimes( List<Integer> nList, Integer n){
        
        // First we must clone the list, not assign it. Otherwise you will be manipulating one list they both point to.
        List<Integer> newList = nList.clone();
        
        Integer rotationAmount; // Amount of characters the list is to be rotated by.
        Integer temp;           // Temporary variable used to store the left edge number.
        
        // Check the list to see if it even needs to be rotated, Otherwise proceed to rotating the list.
        if(n == newList.size() || newList.size() <= 1){
            return newList;
        }
        else{
            // Check to see how many times we actually need to rotate, since every full loop is unneccesary.
            if(n > newList.size()){
            	rotationAmount = Math.mod(n, newList.size());
            }else{
                rotationAmount = n;
            }
            
            // Loop through the list as many times as requested.
            for(Integer iterationAmount = 0; iterationAmount < rotationAmount; iterationAmount++) {    
                
                // Save the left end number so it doesn't get lost.
            	temp = newList[0];
                for(Integer currentIndex = 0; currentIndex < newList.size(); currentIndex++){
                    // If you are at the right end, replace it with your saved left end number.
                	if(currentIndex == newList.size() - 1){
                    	newList[currentIndex] = temp;
                    // Otherwise, replace the current number, with the next number.
                    }else{
                    	newList[currentIndex] = newList[currentIndex+1];
                    }
               	}
             }
         }
            return newList;
        }
                    
    /***********************************************/
    /* Checks if brackets in a string are balanced */
    /***********************************************/
    public static Boolean bracketsAreBalanced( String s ){
        
        List<Integer> counter = new List<Integer>{0,0,0}; // 0:() 1:{} 2:[] Used to keep track of open brackets.
        String character = ''; // Current character as you loop through a string.
        List<String> bracketStack = new List<String>(); // Virtual stack used for 'pushing' and 'popping' brackets.
        
        // Loop through the string, looking at each character.
        for(Integer iterator = 0; iterator < s.length(); iterator++){
            character = s.substring(iterator, iterator + 1);
            
            // If the character opens a bracket, add one to its counter and 'Push' it onto the virtual stack.
            switch on character{
                when '('{
                    counter[0]++;
                    bracketStack.add('(');
                }
                when '{'{
                    counter[1]++;
                    bracketStack.add('{');
                }
                when '['{
                    counter[2]++;
                    bracketStack.add('[');
                }
                
                // If the character is a closing bracket, decrement its counter by one, then 'Pop' the stack to make sure it is in proper sequence, 
                // and if it is continue on with the program. If it isn't, your brackets aren't balanced. (Return false)
                when ')'{
                    if(bracketStack.size() == 0){
                        return false;
                    }
                    
                    counter[0]--;
                    if(bracketStack[bracketStack.size() - 1] != '('){
                        return false;
                    } else {
                        bracketStack.remove(bracketStack.size() - 1);
                    }
                }
                when '}'{
                    if(bracketStack.size() == 0){
                        return false;
                    }
                        
                    counter[1]--;
                    if(bracketStack[bracketStack.size() - 1] != '{'){
                        return false;
                    } else {
                        bracketStack.remove(bracketStack.size() - 1);
                    }
                }
                when ']'{
                    if(bracketStack.size() == 0){
                        return false;
                    }
                        
                    counter[2]--;
                    if(bracketStack[bracketStack.size() - 1] != '['){
                        return false;
                    } else {
                        bracketStack.remove(bracketStack.size() - 1);
                    }
                }
            }
        }

        // Check the counters to make sure there aren't extra opening brackets.
        if(counter[0] == 0 && counter[1] == 0 && counter[2] == 0){
            return true;
        } else
            return false;        
    }

    /****************************************************************/    
    /* Retrieves a list of all accounts and updates those accounts. */
    /****************************************************************/
    public static void updateAccountSize( ){
        /*
        // Select the fields needed for updating on Accounts.
        List<Account> accountList = [SELECT NumberOfEmployees, Size__c FROM Account];
        
        // Loop through all accounts, checking their numbe of employees and updating their size accordingly.
        for(Account currentAccount : accountList){
            if(currentAccount.NumberOfEmployees > 0 && currentAccount.NumberOfEmployees <= 1000){
                currentAccount.Size__c = 'Small';
            } else if(currentAccount.NumberOfEmployees > 1000 && currentAccount.NumberOfEmployees <= 10000){
                currentAccount.Size__c = 'Medium';
            } else if(currentAccount.NumberOfEmployees > 10000){
                currentAccount.Size__c = 'Large';
            }
        }
        
        // Push the update onto the database.
        update accountList;*/
    }
    
    /******************************************/
    /* Finds all Leads in CA and closes them. */
    /******************************************/
    public static void updateCALeads( ){
        
        // Get a list of all the leads in the database
        List<Lead> leads = [SELECT Address, Description, Status FROM Lead];
            
            // Loop through the leads, closing any located in California and updating their descriptions.
            for(Lead currentLead : leads){
                if(currentLead.Address.getState() == 'CA'){
                    currentLead.Status = 'Closed - Not Converted';
                    currentLead.Description = 'We are no longer doing business in California.';
                }
            }
        
        // Push the update onto the database.
        update leads;
    }
    
    /***************************************************************************************/
    /* Finds all Opportunities which have already passed their Close Date and Closes them. */
    /***************************************************************************************/
    public static void closePastDueOpportunities( ){
        
        // Get a list of all the opportunities in the database.
        List<Opportunity> opportunities = [SELECT CloseDate, StageName FROM Opportunity];
        
        // Loop through the opportunities, marking any that passed due to Closed - Lost.
        for(Opportunity currentOpportunity : opportunities){
            if(currentOpportunity.CloseDate < Date.today() && currentOpportunity.StageName != 'Closed Won'){
                currentOpportunity.StageName = 'Closed Lost';
            }
        }
        
        // Push the update to the database.
        update opportunities;
    }
}