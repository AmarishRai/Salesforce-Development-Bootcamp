@RESTResource(urlMapping='/CreateLead')
global with sharing class CreateLeadAPI {
    @HTTPPost
    global static String creatingLeadRecord(){
        String fieldName,fieldValue,fName,lName,company;
        RestRequest request=RestContext.request;
        RestResponse response=RestContext.response;
        String arr=request.requestBody.toString();
        System.debug('Body is: '+arr); 
        JSONParser jParser=JSON.createParser(arr);
        while (jParser.nextToken()!=null) {
                fieldName=jParser.getCurrentName();
                fieldValue=jParser.getText();
                if(fieldName=='FirstName'){
                    fName=fieldValue;
                }
                else if(fieldName=='LastName'){
                    lName=fieldValue;
                }
                else if(fieldName=='Company'){
                 
                company=fieldValue;
                }
            }
            
        
        Lead l=new Lead(FirstName=fName,LastName=lName,Company=company);
        insert l;
        return l.Id;
    }
    
}
