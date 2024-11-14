class Signupscreen extends StatelessWidget
{
  TextEditingController mycontroller = TextEditingController();
  Signupscreen({super.key});
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
       body: Column
       (
         children:
         [
           TextFormField
             (
             controller: mycontroller,
             decoration: InputDecoration
               (
                 hintText: "Email",
                 border: OutlineInputBorder
                   (
                     borderRadius: BorderRadius.circular(10)
                 )
             ),
           ),
           TextFormField
             (
             controller: mycontroller,
             decoration: InputDecoration
               (
                 hintText: "Password",
                 border: OutlineInputBorder
                   (
                     borderRadius: BorderRadius.circular(10)
                 )
             ),
           ),
         ],
       )
    );
  }
}