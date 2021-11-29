import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sewistic_app/models/product/product.dart';
import 'package:sewistic_app/screens/core/product/product_details/product_options.dart';
import 'package:sewistic_app/shared/constants.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({@required this.product});

  final Product product;

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  Icon _wishlist;

  @override
  void initState() {
    super.initState();
    _wishlist = Icon(
      Icons.favorite_border,
      color: Colors.grey[500],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Column(
        children: [
          _mainBody(),
          _orderControls(),
        ],
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: const Text(
        'Product Details',
        style: TextStyle(color: Colors.black),
      ),
      iconTheme: IconTheme.of(context),
      backgroundColor: Colors.white,
      elevation: 2,
    );
  }

  Widget _mainBody() {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              _imageSlider(widget.product.image),
              _detailCard(widget.product),
            ],
          ),
        ),
      ),
    );
  }

  Widget _imageSlider(String image) {
    return Container(
      child: Card(
        elevation: Constants.CARD_ELEVATION,
        child: CarouselSlider(
          items: [
            Image.network(image),
          ],
          options: CarouselOptions(
            autoPlay: true,
            height: 250,
            enlargeCenterPage: true,
            autoPlayInterval: const Duration(seconds: 3),
          ),
        ),
      ),
    );
  }

  Widget _detailCard(Product product) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: Constants.CARD_ELEVATION,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text(
                product.name,
                style: Theme.of(context).textTheme.headline5.copyWith(
                      color: Colors.black,
                      fontSize: 30.0,
                    ),
              ),
              const SizedBox(height: 10),
              Text('Rs.' + product.price,
                  style: Theme.of(context).textTheme.headline2),
              const SizedBox(
                height: 16,
              ),
              Text(
                product.description_short,
                style: TextStyle(color: Colors.grey[500]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _orderControls() {
    return SizedBox(
      height: 60,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              padding: const EdgeInsets.only(left: 12),
              icon: _wishlist,
              onPressed: () {
                setState(() {
                  _wishlist = const Icon(
                    Icons.favorite,
                    color: Colors.pink,
                  );
                });
              },
              iconSize: 30,
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: FlatButton(
                height: 45,
                color: Theme.of(context).primaryColor,
                child: const Text(
                  'Order This Design',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                onPressed: () =>
                    orderOptions(context, widget.product.designTypes),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
