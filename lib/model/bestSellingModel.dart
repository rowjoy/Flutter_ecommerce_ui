class ShopcardModel {
  String? prodectimage;
  String? prodectname;
  String? prodectdels;
  String? prodectprice;
  String? tag;

  ShopcardModel({
    this.prodectimage,
    this.prodectname,
    this.prodectdels,
    this.prodectprice,
    this.tag,
  });
}

List<ShopcardModel> data = [
  ShopcardModel(
    tag: 'Arrivals',
    prodectimage: 'images/pro7.png',
    prodectname: 'Arrivals',
    prodectdels:
        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of',
    prodectprice: '\$100',
  ),
  ShopcardModel(
    tag: 'Modern',
    prodectimage: 'images/pro2.png',
    prodectname: 'Modern',
    prodectdels:
        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of',
    prodectprice: '\$1000',
  ),
  ShopcardModel(
    tag: 'Saympbo',
    prodectimage: 'images/pro3.png',
    prodectname: 'Saympbo',
    prodectdels:
        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of',
    prodectprice: '\$500',
  ),
  ShopcardModel(
    tag: 'Hair wash',
    prodectimage: 'images/pro4.png',
    prodectname: 'Hair wash',
    prodectdels:
        'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text',
    prodectprice: '\$600',
  ),
  ShopcardModel(
    tag: 'Refresh',
    prodectimage: 'images/pro5.png',
    prodectname: 'Refresh',
    prodectdels:
        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum',
    prodectprice: '\$300',
  ),
  ShopcardModel(
    tag: 'Bag',
    prodectimage: 'images/pro6.png',
    prodectname: 'Bag',
    prodectdels:
        'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum',
    prodectprice: '\$200',
  ),
];
