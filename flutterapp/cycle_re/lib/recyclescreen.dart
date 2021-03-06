import 'dart:io';

import 'package:flutter/material.dart';

class RecycleScreen extends StatefulWidget {
  final String bin;

  RecycleScreen({this.bin});

  @override
  _RecycleScreen createState() => _RecycleScreen();
}

class _RecycleScreen extends State<RecycleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: new Text(widget.bin),
        backgroundColor: detCol(),
      ),
      body: Container(
        child:Column(
          children: <Widget>[
            new Container(
              child: new Text(prompt()),
            ),
            new Container(
              child: new Image.asset(img(), fit: BoxFit.cover),
            )
          ],)
      ),

    );
  }

  String img(){
    String img;

    switch (widget.bin) {
      case "trash":
        img = 'assets/images/trash.jpg';
        break;
      case "plastic":
      case "metal":
      case "glass":
        img = 'assets/images/metal.jpeg';
        break;
      case "paper":
      case "cardboard":
        img = 'assets/images/paper.jpg';
        break;
    }
    return img;
  }

  //Determing the color based on the item result
  Color detCol() {
    Color color;

    switch (widget.bin) {
      case "trash":
        color = Colors.black;
        break;
      case "plastic":
      case "metal":
      case "glass":
        color = Colors.lightGreen;
        break;
      case "paper":
      case "cardboard":
        color = Colors.lightBlue;
        break;
    }
    return color;
  }

  String prompt() {
    String prompt;
    switch (widget.bin) {
      case "trash":
        prompt = " ---> Throw into Trash bin\n\n"
        + "* We recycle over 70% of the waste we generate in the unincorporated area, meaning only 30% gets buried in landfills. Unfortunately, this is still a lot of trash. In fact, the amount of trash disposed of today is roughly the same as it was ten years ago,\n\n"
        + "* Despite the fact that recycling has increased. This means that even though our community is recycling more, each person on average throws away more trash and recycling than they did before\n\n"
        + "* How do we stop trash?\n"
        + "- Buying recycled-content products and choosing products that have less packaging are also great ways to cut the amount of trash you generate";
        break;
      case "metal":
        prompt = " ---> Throw into plastic/metal/glass bin\n\n"
        + "* Metal is just one of many materials we use daily in our lives and its really worth recycling when it has served its purpose.\n"
        + "* The type of objects that can be recycled includes aluminum and steel cans, electrical appliances, silverware, office desks and chairs, old household pots and pans, school or sports lockers. safety boots or zippers, the list is endless\n"
        + "* Metal recycling is good for the national economy and the environment e.g. increased local employment and reduced emissions.\n"
        + "- Scrap metals are refashioned for use in creating bikes, cars, aircraft and other modes of transportation\n"
        + "Our mission is to create a sustainable environment in the society. By using our app, you have helped us to move forward to a more sustainable society. Thank you!";
        break;        
      case "glass":
      case "plastic":
        prompt = " ---> Throw into plastic/metal/glass bin\n\n"
        + "* Plastics that can be recycled are first sorted, shredded and rid of impurities like paper.\n\n"
        + "* The shreds are then melted and formed into pellets, which can be made into other products.\n\n"
        + "* How do we stop using plastic?:\n"
        + "- The best solutions for our plastic problem are still to reduce our use of them, and to reuse and recycle whenever possible. More policies that ban plastic bag use,\n"
        + "- Require bottle deposits and expand recycling would help. But millions of tons of plastic waste still sit in landfills around the country\n"
        + "- Technologies that are able to tap this waste as a resource can offer multiple benefits, helping to clean up the environment, lessen our dependence on foreign oil,\n"
        + "- Decrease our use of non-renewable virgin resources, reduce greenhouse gas emissions, and generate energy";
        break;
      case "paper":
      case "cardboard":
        prompt = " ---> Throw into paper/cardboard bin\n\n"
        + "* Each year, over 400 million metric tons of paper and cardboard is produced globally, with over half of production originating from China, the United States, and Japan.\n\n"
        + "* Each metric ton (1,000 kilograms) of recycled paper can save approximately:\n"
        + "- 19 trees that can absorb 127 kilograms of carbon dioxide from the atmosphere each year\n"
        + "- 1,500 liters of oil"
        + "- 2.68 cubic meters of landfill space"
        + "- 4,400 kilowatts of energy"
        + "- 29,000 liters of water"
        + "Our mission is to create a sustainable environment in the society. By using our app, you have helped us to move forward to a more sustainable society. Thank you!";
        break;
    }
    return prompt;
  }
}
