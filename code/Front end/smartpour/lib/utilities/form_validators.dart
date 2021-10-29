//String emailValidator(String value){
//  return value.isEmpty? "*Requred": "null";
//}
//String passwordValidator(String value){
//  return value.isEmpty? '*Requred': "null";
//}
String? emailValidator(String? value) {
  //Pattern emailpattern = r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}';
 // RegExp emailRegex =new RegExp(emailpattern);
  if(value!.isEmpty){
      return "Email can't be empty";
  }
  if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}').hasMatch(value)) {
          return "Enter correct email";
      }
      return null;
  }
  //if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}').hasMatch(value)) {
  //   return "Enter correct email";
  //}  

String? passwordValidator(String? value) {
  if (value!.isEmpty) {
    return "Password can't be empty";
  }
}