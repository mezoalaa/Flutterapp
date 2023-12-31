import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(LineAwesomeIcons.angle_left),
        ),
        title: Text("Profile", style: Theme.of(context).textTheme.headline6),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(isDark ? LineAwesomeIcons.sun : LineAwesomeIcons.moon),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                width: 120,
                height: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image(image: AssetImage('assets/mazen.jpg')),
                ),
              ),
              SizedBox(height: 10),
              Text("Mazen Alaa", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text("Mazenalaa@gmail.com", style: TextStyle(fontSize: 15)),
              SizedBox(height: 20),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepOrangeAccent,
                    onPrimary: Colors.white,
                    shape: StadiumBorder(),
                  ),
                  child: Text("Button Text"),

                ),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(),
              SizedBox(
                height: 10,
              ),
              NewWidget(title: "Settings", icon: LineAwesomeIcons.cog,onPress: (){}, ),
              NewWidget(title: "Billing Details", icon: LineAwesomeIcons.wallet,onPress: (){}, ),
              NewWidget(title: "User Management", icon: LineAwesomeIcons.user_check,onPress: (){}, ),
              Divider(color: Colors.grey),
              SizedBox(height: 10),
              NewWidget(title: "Information", icon: LineAwesomeIcons.info,onPress: (){}, ),
              NewWidget(title: "Logout", icon: LineAwesomeIcons.alternate_sign_out, textColor:Colors.red,endIcon: false,onPress: (){}, ),





            ],
          ),
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
    required this.title,
    required this.icon,
    required this.onPress,
    this.endIcon=true,
    this.textColor,

  }) : super(key: key);
  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color ? textColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap:onPress,
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.blueAccent.withOpacity(.1),

        ),
        child: Icon(LineAwesomeIcons.cog, color: Colors.blue,),
      ),
      title: Text(title,style:Theme.of(context).textTheme.bodyText1?.apply(color: textColor)),
      trailing: endIcon?Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.blueAccent.withOpacity(.1),

        ),
        child: Icon(icon , color: Colors.grey,)
      ) :null,
    );
  }
}
