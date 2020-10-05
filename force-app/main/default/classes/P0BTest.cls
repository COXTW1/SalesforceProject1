@isTest
private class P0BTest {
/*
    @isTest
    public static void nFibonacciTest(){
        system.assertEquals(55, Project0B.nFibonacci(10));
        system.assertEquals(1, Project0B.nFibonacci(1));
        system.assertEquals(1, Project0B.nFibonacci(2));
        system.assertEquals(0, Project0B.nFibonacci(0));
    }
    
    @isTest
    public static void sortListTest(){
        List<Integer> list1 = new List<Integer> {2,4,5,1,3,1};
        List<Integer> list2 = new List<Integer> {5,4,3,2,1};
            
        List<Integer> sortedList1 = new List<Integer> {1,1,2,3,4,5};
        List<Integer> sortedList2 = new List<Integer> {1,2,3,4,5};
        
        system.assertEquals(sortedList1, Project0B.sortList(list1));
        system.assertEquals(sortedList2, Project0B.sortList(list2));
    }
    
    @isTest
    public static void nFactorialTest(){
        System.assertEquals(1, Project0B.nFactorial(0));
        System.assertEquals(1, Project0B.nFactorial(1));
        System.assertEquals(6, Project0B.nFactorial(3));
    }
    
    @isTest
    public static void rotateLeftNTimesTest() {
        
        List<Integer> theList = new List<Integer> {1,2,3,4,5};
            
        List<Integer> rotatedList1 = new List<Integer> {2,3,4,5,1};
        List<Integer> rotatedList6 = new List<Integer> {2,3,4,5,1};
        List<Integer> rotatedList3 = new List<Integer> {4,5,1,2,3};
            
        
        System.assertEquals(rotatedList1, Project0B.rotateLeftNTimes(theList, 1));
        System.assertEquals(rotatedList6, Project0B.rotateLeftNTimes(theList, 6));
        System.assertEquals(rotatedList3, Project0B.rotateLeftNTimes(theList, 3));
    }
    
    @isTest
    public static void bracketsAreBalancedTest(){
        String bracket1 ='()';
        String bracket2 ='()()';
        String bracket3 ='(())';
        String bracket4 ='({[]})';
        String bracket5 ='(';
        String bracket6 =')';
        String bracket7 ='(()';
        String bracket8 ='([)]';
        
        System.assertEquals(true,  Project0B.bracketsAreBalanced(bracket1));        
        System.assertEquals(true,  Project0B.bracketsAreBalanced(bracket2));        
        System.assertEquals(true,  Project0B.bracketsAreBalanced(bracket3));        
        System.assertEquals(true,  Project0B.bracketsAreBalanced(bracket4));        
        System.assertEquals(false, Project0B.bracketsAreBalanced(bracket5));        
        System.assertEquals(false, Project0B.bracketsAreBalanced(bracket6));        
        System.assertEquals(false, Project0B.bracketsAreBalanced(bracket7));        
        System.assertEquals(false, Project0B.bracketsAreBalanced(bracket8));
    }
    
    
    public static void testPastDueOpps(){
        Project0B.closePastDueOpportunities();
        Opportunity testOpp = [SELECT name, stagename FROM Opportunity WHERE name LIKE 'testOpp%' LIMIT 1];
        System.assertEquals('Closed Lost', testOpp.StageName);
    }
    
    @isTest
    public static void nFibonacciNegativeTest(){
        boolean errorCaught = false;
        try{
            Project0B.nFibonacci(-3);
        } catch(nFibonacciException e){
            System.debug(e.getMessage());
            errorCaught = true;
        }
        System.assert(errorCaught);
        }

    
    @testSetup
    static void makeData(){
        List<Opportunity> newOpps = TestDataFactory.createOpportunity(10, Date.newInstance(2011, 1, 1), 'testOpp');
        insert newOpps;
    }
    */
}