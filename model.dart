

class Model {


  String? image;
  String? text;


  Model(this.image, this.text);
}


List Model1 =ModelData.map((e)=> Model(e['image'],e['text'])).toList();


var ModelData =[

     {'image':'assets/aa.jpg','text':'mobile'},
     {'image':'assets/bb.jpg','text':'mobile'},
     {'image':'assets/cc.jpg','text':'mobile'},
     {'image':'assets/dd.jpg','text':'mobile'},
  {'image':'assets/dd.jpg','text':'mobile'},

];