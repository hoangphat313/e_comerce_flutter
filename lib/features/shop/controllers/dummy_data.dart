import 'package:e_commerce/features/shop/models/banner_model.dart';
import 'package:e_commerce/features/shop/models/brand_model.dart';
import 'package:e_commerce/features/shop/models/category_model.dart';
import 'package:e_commerce/features/shop/models/product_attribute_model.dart';
import 'package:e_commerce/features/shop/models/product_model.dart';
import 'package:e_commerce/features/shop/models/product_variation_model.dart';
import 'package:e_commerce/routes/routes.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';

class TDummyData {
  //banner
  // static final List<BannerModel> banners = [
  //   BannerModel(
  //       imageUrl: TImages.banner1, targetScreen: TRoutes.order, active: false),
  //   BannerModel(
  //       imageUrl: TImages.banner2, targetScreen: TRoutes.cart, active: true),
  //   BannerModel(
  //       imageUrl: TImages.banner3,
  //       targetScreen: TRoutes.favourites,
  //       active: true),
  //   BannerModel(
  //       imageUrl: TImages.banner4, targetScreen: TRoutes.search, active: true),
  //   BannerModel(
  //       imageUrl: TImages.banner5,
  //       targetScreen: TRoutes.settings,
  //       active: true),
  //   BannerModel(
  //       imageUrl: TImages.banner6,
  //       targetScreen: TRoutes.userAddress,
  //       active: true),
  //   BannerModel(
  //       imageUrl: TImages.banner8,
  //       targetScreen: TRoutes.checkout,
  //       active: false),
  // ];
  //list of all product
  static final List<ProductModel> products = [
    ProductModel(
      id: '002',
      title: 'Adidas Football',
      stock: 15,
      price: 250000,
      thumbnail: TImages.productImage28,
      isFeatured: true,
      description: 'Adidas Football',
      brand: BrandModel(
          id: '2',
          name: 'Adidas',
          image: TImages.nikeLogo,
          productsCount: 246,
          isFeatured: true),
      images: [
        TImages.productImage1,
        TImages.productImage23,
        TImages.productImage21,
        TImages.productImage9
      ],
      salePrice: 180000,
      sku: 'ABR42566',
      categoryId: '2',
      productType: 'ProductType.single',
    ),
  ];
  //list all categories
  static final List<CategoryModel> categories = [
    CategoryModel(
        id: '1', name: 'Sport', image: TImages.sportIcon, isFeatured: true),
    CategoryModel(
        id: '5',
        name: 'Furniture',
        image: TImages.furnitureIcon,
        isFeatured: true),
    CategoryModel(
        id: '2',
        name: 'Electronics',
        image: TImages.electronicsIcon,
        isFeatured: true),
    CategoryModel(
        id: '3', name: 'Cloths', image: TImages.clothIcon, isFeatured: true),
    CategoryModel(
        id: '4', name: 'Animals', image: TImages.animalIcon, isFeatured: true),
    CategoryModel(
        id: '6', name: 'Shoes', image: TImages.shoeIcon, isFeatured: true),
    CategoryModel(
        id: '7',
        name: 'Cosmetics',
        image: TImages.cosmeticsIcon,
        isFeatured: true),
    CategoryModel(
        id: '14',
        name: 'Jewelery',
        image: TImages.jeweleryIcon,
        isFeatured: true),
    //sub categories
    CategoryModel(
        id: '8',
        name: 'Sport Shoes',
        parentId: '1',
        image: TImages.sportIcon,
        isFeatured: false),
    CategoryModel(
        id: '9',
        name: 'Track Suit',
        parentId: '1',
        image: TImages.sportIcon,
        isFeatured: false),
    CategoryModel(
        id: '10',
        name: 'Sport Equipments',
        parentId: '1',
        image: TImages.sportIcon,
        isFeatured: false),
    //furniture
    CategoryModel(
        id: '11',
        name: 'Laptop',
        image: TImages.furnitureIcon,
        parentId: '2',
        isFeatured: false),
    CategoryModel(
        id: '12',
        name: 'Kitchen Furniture',
        image: TImages.furnitureIcon,
        parentId: '5',
        isFeatured: false),
    CategoryModel(
        id: '13',
        name: 'Office Furniture',
        image: TImages.furnitureIcon,
        parentId: '5',
        isFeatured: false),
    //electronics
    CategoryModel(
        id: '14',
        name: 'Laptop',
        image: TImages.electronicsIcon,
        parentId: '2',
        isFeatured: false),
    CategoryModel(
        id: '15',
        name: 'Mobile',
        image: TImages.electronicsIcon,
        parentId: '2',
        isFeatured: false),
    //
    CategoryModel(
        id: '16',
        name: 'Shirts',
        image: TImages.clothIcon,
        parentId: '3',
        isFeatured: false),
  ];
}
