




class SecureStorage1{

  final SecureStorage1 storage= SecureStorage1();




  writeSecureData(String key,String value)
 async {

    await storage.writeSecureData(key, value);
    print('writing')  ;


  }

  readSecureData( String key)
  async{
    String value=await storage.readSecureData(key)?? "No Data Found";
    return value;




  }






}