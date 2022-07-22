@RESTResource(urlMapping='/getDetails')
global with sharing class GetAccountDetailAPI {
    @HTTPPost
    global static String GetAccountDetail(){
        String result,objName,id;
        RestRequest request=RestContext.request;
        RestResponse response=RestContext.response;
        String reqBody=request.requestBody.toString();
        JSONParser jParser=JSON.createParser(reqBody);
        while (jParser.nextToken()!=null) {
            if (jParser.getCurrentToken()!=JSONToken.END_OBJECT) {
            if(jParser.getCurrentName()=='Object Name')
            {
                objName=jParser.getText();   
            }
            if(jParser.getCurrentName()=='Id')
            {
                id=jParser.getText();   
            }
        }
        }
        List<Account>lstAccount=[SELECT Id,Name,NumberOfEmployees FROM Account WHERE ID =: id];
        for(Account newObj: lstAccount){
            result='Id - '+newObj.Id+' Name -'+newObj.Name+'Number Of Employees '+newObj.NumberOfEmployees;
        }
        return result;
    }
}
