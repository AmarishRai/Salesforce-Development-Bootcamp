public class SearchAccounts {
    public List<Account> LstAccounts{get;set;}
    public String AccountToSearch{get;set;}
    public SearchAccounts() {
    
    }
    public void AccountRecordsResult()
    { 
        AccountToSearch=AccountToSearch+'%';
        LstAccounts=[SELECT Name,NumberOfEmployees FROM Account WHERE Name Like : AccountToSearch];
    }
}
