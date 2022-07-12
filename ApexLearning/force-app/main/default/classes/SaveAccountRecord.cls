public class SaveAccountRecord {
     public SaveAccountRecord() {

     }
    public  String name{get;set;}
    public Integer numberOfEmployees{get;set;}
    public String type{get;set;}
    public String rating{get;set;}
    public String conName{get;set;}
    public String conEmail{get;set;}


    public Pagereference saveNewRecord(){
        Account newAccount=new Account();
        newAccount.Name=name;
        newAccount.Type=type;
        newAccount.Rating=rating;
        newAccount.NumberOfEmployees=numberOfEmployees;
        insert newAccount;
        Contact newCon=new Contact(LastName=conName,Email=conEmail,AccountId=newAccount.Id);
        insert newCon;
        Pagereference pf=new Pagereference('/apex/AccountViewPage');
        return pf;
    }

}
