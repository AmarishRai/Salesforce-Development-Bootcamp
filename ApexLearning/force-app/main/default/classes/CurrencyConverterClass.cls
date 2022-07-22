public with sharing class CurrencyConverterClass {
public static Decimal convertCurrencyToINR(Decimal amount){
    Decimal convertedValue;
    HTTP h=new HTTP();
    HttpRequest request=new HttpRequest();
    request.setEndpoint('https://api.apilayer.com/fixer/convert?to=INR&from=USD&amount='+amount+'&apikey=qbYp2KHv6bZESaDy7XBm2SaxqlQSCOBQ');
    request.setMethod('GET');
    HttpResponse responce=h.send(request);
    Map<String,Object>josnBody=(Map<String,Object>)JSON.deserializeUntyped(responce.getBody());
    System.debug(josnBody);
    convertedValue=(Decimal)josnBody.get('result');
    System.debug(amount+'In INR '+convertedValue);
    return convertedValue;

}  
}
