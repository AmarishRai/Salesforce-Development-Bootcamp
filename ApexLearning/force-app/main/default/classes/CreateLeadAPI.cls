@RESTResource(urlMapping='/CreateLead')
global with sharing class CreateLeadAPI {
    @HTTPPost
    global static String creatingLeadRecord(){
        RestRequest request=RestContext.request;
        RestResponse response=RestContext.response;
        String arr=request.requestBody.toString();
        System.debug('Body is: '+arr); 
        return 'Hey';
    }
    
}
