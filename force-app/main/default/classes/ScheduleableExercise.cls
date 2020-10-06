global class ScheduleableExercise implements Schedulable {

    global void execute(SchedulableContext sc) {
        Contact c = new Contact();
        c.LastName='New Contact';
        insert c;
    }
    
}