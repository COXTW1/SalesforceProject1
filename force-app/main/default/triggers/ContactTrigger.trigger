trigger ContactTrigger on Contact (before insert, before update, before delete, after insert, after update, after delete, after undelete) {
    
        Switch on trigger.operationType {
        when AFTER_DELETE {
            
        }
        when AFTER_INSERT {
        }
        when AFTER_UNDELETE {
            
        }
        when AFTER_UPDATE {
            
        }
        when BEFORE_DELETE {
            
        }
        when BEFORE_INSERT {
            ContactTriggerHandler.checkForMatchingAccounts(Trigger.new);          
        }
        when BEFORE_UPDATE {
            
        }
    }
    
    
}