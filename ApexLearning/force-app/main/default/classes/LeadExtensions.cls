public  class LeadExtensions {
    public List<Lead> lLeads{get;set;} 
    public LeadExtensions(Apexpages.StandardController s) {
        lLeads=[select Name, Status from Lead Order by Name];
    }
}
