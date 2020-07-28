import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture
});
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.5,
        backgroundColor: Colors.green,
        title: Text('ShopApp'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){})
        ],
      ),

      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white70,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(
                    widget.product_detail_name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text(
                          "\$${widget.product_detail_old_price}",
                          style: TextStyle(color:Colors.grey, decoration: TextDecoration.lineThrough),)
                      ),
                      Expanded(
                        child: new Text(
                          "\$${widget.product_detail_new_price}",
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
                      ),
                    ]
                  )
                ),
              ),

            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(onPressed: (){
                  showDialog(
                    context: context,
                    builder: (context){
                      return new AlertDialog(
                        title: new Text("Size"),
                        content: new Text("Choose the Size"),
                        actions: <Widget>[
                          new MaterialButton(
                            onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                            child: new Text("close"),
                          )
                        ],
                      );
                    });
                },
                color: Colors.white,
                textColor:Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text("Size"),
                    ),
                    Expanded(
                      child: new Icon(Icons.arrow_drop_down),
                    ),
                  ],
                )
                )
              ),

              Expanded(
                  child: MaterialButton(onPressed: (){
                    showDialog(
                        context: context,
                        builder: (context){
                          return new AlertDialog(
                            title: new Text("Color"),
                            content: new Text("Choose a Color"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: (){
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("close"),
                              )
                            ],
                          );
                        });
                  },
                      color: Colors.white,
                      textColor:Colors.grey,
                      elevation: 0.2,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: new Text("Color"),
                          ),
                          Expanded(
                            child: new Icon(Icons.arrow_drop_down),
                          ),
                        ],
                      )
                  )
              ),

              Expanded(
                  child: MaterialButton(onPressed: (){
                    showDialog(
                        context: context,
                        builder: (context){
                          return new AlertDialog(
                            title: new Text("Quantity"),
                            content: new Text("Choose the Quantity"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: (){
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("close"),
                              )
                            ],
                          );
                        });
                  },
                      color: Colors.white,
                      textColor:Colors.grey,
                      elevation: 0.2,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: new Text("Qty"),
                          ),
                          Expanded(
                            child: new Icon(Icons.arrow_drop_down),
                          ),
                        ],
                      )
                  )
              ),
            ],
          ),

          Row(
            children: <Widget>[
              Expanded(
                  child: MaterialButton(onPressed: (){},
                      color: Colors.red,
                      textColor:Colors.white,
                      elevation: 0.2,
                      child: new Text("Buy Now")
                  )
              ),
              new IconButton(icon: Icon(Icons.add_shopping_cart, color: Colors.red), onPressed: (){}),
              new IconButton(icon: Icon(Icons.favorite_border, color: Colors.red), onPressed: (){}),
            ],
          ),

          Divider(),

          new ListTile(
            title: new Text("Product details"),
            subtitle: new Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In eget porta mauris. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent at dolor mauris. Suspendisse consectetur est id nisl aliquet, et mattis odio cursus. Suspendisse pellentesque id elit vel porta. Ut eu venenatis justo. Donec dictum molestie lacus, ut auctor erat iaculis at. Fusce sed commodo dolor. Sed fringilla interdum erat eu dignissim. Nullam semper sed ipsum sit amet sollicitudin. Duis ut lacus at justo facilisis aliquam et non ipsum. Sed quis sem quis erat lobortis porttitor. Sed bibendum tortor neque, non sodales enim accumsan at. Etiam rhoncus quam a augue placerat mattis. Vestibulum et elit porttitor, mattis ex eu, tempus nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos."),
          ),

          Divider(),

          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product Name", style: TextStyle(color: Colors.grey)),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text(widget.product_detail_name),
              )
            ],
          ),

          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product Brand", style: TextStyle(color: Colors.grey)),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text("Brand X"),
              )
            ],
          ),

          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product Condition", style: TextStyle(color: Colors.grey)),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text("New"),
              )
            ],
          )

        ],
      ),
    );
  }
}
