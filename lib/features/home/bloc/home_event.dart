// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class HomeInitialEvent extends HomeEvent {}

// Event noocee ah ayaa dhacaa hadii wishlist button click lasiiyo
class HomeProductWishlistButtonClickedEvent extends HomeEvent {
  final ProductDataModel clickedProduct;
  HomeProductWishlistButtonClickedEvent({
    required this.clickedProduct,
  });
}

// Event noocee ah ayaa dhacaa hadii cart button click lasiiyo
class HomeProductCartButtonClickedEvent extends HomeEvent {
  final ProductDataModel clickedProduct;
  HomeProductCartButtonClickedEvent({
    required this.clickedProduct,
  });
}

// hadii wishlist button click lasiiyo halkee na geynaa

class HomeWishlistButtonNavigateEvent extends HomeEvent {}

// hadii cart button click lasiiyo halkee na geynaa

class HomeCartButtonNavigateEvent extends HomeEvent {}
