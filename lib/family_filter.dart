import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FamilyFilter extends StatefulWidget {
  @override
  _FamilyFilterState createState() => _FamilyFilterState();
}

class _FamilyFilterState extends State<FamilyFilter> {

  List<String> snakeFamiliesTitle = [
   'Acrochordidae', 'Aniliidae', 'Anomalepidae', 'Anomochilidae', 'Atractspididae', 'Boidae', 'Bolyeridae', 'Colubridae', 'Cylindrphiidae', 'Elapidae', 'Leptotyphlopidae', 'Loxocemidae', 'Pythonidae', 'Tropidophiidae', 'Typhlopidae', 'Uropeltidae', 'Viperidae', 'Xenopeltidae',
  ];

  List<String> snakeFamiliesSubtitle = [
    '(File Snakes)', '(Coral Pipe Snakes)', '(Dawn Blind Snakes)', '(Dwarf Pipe Snakes)', '(Mole Vipers)', '(Boas)', '(Round Island Boas)', '(Colubrids)', '(Asian Pipe Snakes)', '(Cobras, Coral Snakes, Mambas, Kraits)', '(Slender Blind Snakes)', '(Mexican Burrowing Snakes)', '(Pythons)', '(Dwarf Boas)', '(Blind Snakes)', '(Shield/Short-Tailed Snakes)', '(Vipers, Pitvipers, Rattlesnakes)', '(Sunbeam Snake)',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('FAMILY',
              style: TextStyle(
                color: Colors.black,
              )),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
        ),
        body: Container(
            color: Colors.black,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 18,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(
                          color: Colors.white,
                          width: 1.0,
                        )),
                        child: ListTile(
                          trailing: Icon(
                          Icons.add_circle_outline,
                          color: Colors.white,
                          ),
                          subtitle: Text(snakeFamiliesSubtitle[index],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                          ),
                          title: Text(snakeFamiliesTitle[index],
                            style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          )),
                    ),
                  ));
                })));
  }
}
