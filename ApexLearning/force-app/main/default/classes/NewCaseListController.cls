public with sharing class NewCaseListController {
   public List<Case> getNewCases(){
    return [SELECt ID,CaseNumber FROM Case WHERE status =:'NEW' ];
   }
}
