// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecomm/features/cart/bloc/cart_bloc.dart';
import 'package:ecomm/features/wishlist/bloc/wishlist_bloc.dart';
import 'package:flutter/material.dart';

import 'package:ecomm/features/home/bloc/home_bloc.dart';
import 'package:ecomm/features/home/models/home_product_data_model.dart';

class WishlistTileWidget extends StatelessWidget {
  final ProductDataModel productDataModel;
  final WishlistBloc wishlistBloc;
  const WishlistTileWidget({
    Key? key,
    required this.productDataModel,
    required this.wishlistBloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.maxFinite,
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(productDataModel.imageUrl),
                ),
                borderRadius: BorderRadius.circular(5)),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            productDataModel.name,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(productDataModel.description),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$" + productDataModel.price.toString(),
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  // IconButton(
                  //     onPressed: () {
                  //       // cartBloc.add(HomeProductWishlistButtonClickedEvent(
                  //       //     clickedProduct: productDataModel));
                  //     },
                  //     icon: Icon(Icons.favorite_border)),
                  IconButton(
                      color: Colors.red,
                      onPressed: () {
                        wishlistBloc.add(WishlistRemoveFromCartEvent(
                            productDataModel: productDataModel));
                      },
                      icon: Icon(Icons.delete_outline))
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
