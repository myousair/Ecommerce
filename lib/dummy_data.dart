import 'package:minimart/features/shop/models/banner_model.dart';
import 'package:minimart/features/shop/models/brand_model.dart';
import 'package:minimart/features/shop/models/category_model.dart';
import 'package:minimart/features/shop/models/product_attribute_model.dart';
import 'package:minimart/features/shop/models/product_model.dart';
import 'package:minimart/features/shop/models/product_variation_model.dart';
import 'package:minimart/routes/routes.dart';
import 'package:minimart/utils/constants/image_string.dart';

class DummyData {
  static final List<BannerModel> banners = [
    BannerModel(
        active: true,
        targetScreen: Routes.order,
        imageUrl: 'assets/images/banners/banner-and-eCommerce.jpg'),
    BannerModel(
        active: true,
        targetScreen: Routes.order,
        imageUrl: 'assets/images/banners/img_ad_banner.png'),
    BannerModel(
        active: true,
        targetScreen: Routes.order,
        imageUrl:
            'assets/images/banners/summer-fashion-sale-banner-design-template-62077c541db2b288dbccd6d9d1c9af3d_screen.jpg'),
  ];

  static final List<CategoryModel> categories = [
    CategoryModel(
        id: '1', image: Timage.gadgets, name: 'Gadgets', isFeatured: true),
    CategoryModel(
        id: '2', image: Timage.homedecor, name: 'HomeDecor', isFeatured: true),
    CategoryModel(
        id: '3', image: Timage.jewellery, name: 'Jewellery', isFeatured: true),
    CategoryModel(
        id: '4', image: Timage.cosmetics, name: 'Cosmetics', isFeatured: true),
    CategoryModel(
        id: '5', image: Timage.kitchen, name: 'Kitchen', isFeatured: true),
    CategoryModel(
        id: '6', image: Timage.watches, name: 'Watches', isFeatured: true),
    CategoryModel(
        id: '7', image: Timage.hairtools, name: 'HairTools', isFeatured: true),
    CategoryModel(
        id: '8', image: Timage.organizer, name: 'Organizer', isFeatured: true),
    CategoryModel(
        id: '9', image: Timage.purse, name: 'Purse', isFeatured: true),
    CategoryModel(
        id: '10', image: Timage.traveling, name: 'Traveling', isFeatured: true),
    CategoryModel(
        id: '11', image: Timage.bottles, name: 'Bottles', isFeatured: true),

    // sub categories

    // CategoryModel(
    //     id: '12',
    //     image: Timage.gadgets,
    //     name: 'New Gadgets',
    //     isFeatured: false,
    //     parentId: '1'),
    // CategoryModel(
    //     id: '13',
    //     image: Timage.gadgets,
    //     name: 'Geadgets',
    //     isFeatured: false,
    //     parentId: '1'),
    // CategoryModel(
    //     id: '14',
    //     image: Timage.gadgets,
    //     name: 'Gadget',
    //     isFeatured: false,
    //     parentId: '1'),

    // CategoryModel(
    //     id: '15',
    //     image: Timage.homedecor,
    //     name: 'HomeDecor',
    //     isFeatured: false,
    //     parentId: '2'),
    // CategoryModel(
    //     id: '16',
    //     image: Timage.homedecor,
    //     name: 'HomeDecor',
    //     isFeatured: false,
    //     parentId: '2'),
    // CategoryModel(
    //     id: '17',
    //     image: Timage.homedecor,
    //     name: 'HomeDecor',
    //     isFeatured: false,
    //     parentId: '2'),

    // CategoryModel(
    //     id: '18',
    //     image: Timage.jewellery,
    //     name: 'HomeDecor',
    //     isFeatured: false,
    //     parentId: '3'),
    // CategoryModel(
    //     id: '19',
    //     image: Timage.jewellery,
    //     name: 'HomeDecor',
    //     isFeatured: false,
    //     parentId: '3'),
    // CategoryModel(
    //     id: '20',
    //     image: Timage.jewellery,
    //     name: 'HomeDecor',
    //     isFeatured: false,
    //     parentId: '3'),

    // CategoryModel(
    //     id: '21',
    //     image: Timage.cosmetics,
    //     name: 'HomeDecor',
    //     isFeatured: false,
    //     parentId: '4'),
    // CategoryModel(
    //     id: '22',
    //     image: Timage.cosmetics,
    //     name: 'HomeDecor',
    //     isFeatured: false,
    //     parentId: '4'),
    // CategoryModel(
    //     id: '23',
    //     image: Timage.cosmetics,
    //     name: 'HomeDecor',
    //     isFeatured: false,
    //     parentId: '4'),

    // CategoryModel(
    //     id: '24',
    //     image: Timage.kitchen,
    //     name: 'HomeDecor',
    //     isFeatured: false,
    //     parentId: '5'),
    // CategoryModel(
    //     id: '25',
    //     image: Timage.kitchen,
    //     name: 'HomeDecor',
    //     isFeatured: false,
    //     parentId: '5'),
    // CategoryModel(
    //     id: '26',
    //     image: Timage.kitchen,
    //     name: 'HomeDecor',
    //     isFeatured: false,
    //     parentId: '5'),

    // CategoryModel(
    //     id: '27',
    //     image: Timage.watches,
    //     name: 'HomeDecor',
    //     isFeatured: false,
    //     parentId: '6'),
    // CategoryModel(
    //     id: '28',
    //     image: Timage.watches,
    //     name: 'HomeDecor',
    //     isFeatured: false,
    //     parentId: '6'),
    // CategoryModel(
    //     id: '29',
    //     image: Timage.watches,
    //     name: 'HomeDecor',
    //     isFeatured: false,
    //     parentId: '6'),

    // CategoryModel(
    //     id: '30',
    //     image: Timage.hairtools,
    //     name: 'HomeDecor',
    //     isFeatured: false,
    //     parentId: '7'),
    // CategoryModel(
    //     id: '31',
    //     image: Timage.hairtools,
    //     name: 'HomeDecor',
    //     isFeatured: false,
    //     parentId: '7'),
    // CategoryModel(
    //     id: '32',
    //     image: Timage.hairtools,
    //     name: 'HomeDecor',
    //     isFeatured: false,
    //     parentId: '7'),

    // CategoryModel(
    //     id: '33',
    //     image: Timage.organizer,
    //     name: 'HomeDecor',
    //     isFeatured: false,
    //     parentId: '8'),
    // CategoryModel(
    //     id: '34',
    //     image: Timage.organizer,
    //     name: 'HomeDecor',
    //     isFeatured: false,
    //     parentId: '8'),
    // CategoryModel(
    //     id: '35',
    //     image: Timage.organizer,
    //     name: 'HomeDecor',
    //     isFeatured: false,
    //     parentId: '8'),

    // CategoryModel(
    //     id: '36',
    //     image: Timage.purse,
    //     name: 'HomeDecor',
    //     isFeatured: false,
    //     parentId: '9'),
    // CategoryModel(
    //     id: '37',
    //     image: Timage.purse,
    //     name: 'HomeDecor',
    //     isFeatured: false,
    //     parentId: '9'),
    // CategoryModel(
    //     id: '38',
    //     image: Timage.purse,
    //     name: 'HomeDecor',
    //     isFeatured: false,
    //     parentId: '9'),

    // CategoryModel(
    //     id: '39',
    //     image: Timage.traveling,
    //     name: 'HomeDecor',
    //     isFeatured: false,
    //     parentId: '10'),
    // CategoryModel(
    //     id: '40',
    //     image: Timage.traveling,
    //     name: 'HomeDecor',
    //     isFeatured: false,
    //     parentId: '10'),
    // CategoryModel(
    //     id: '41',
    //     image: Timage.traveling,
    //     name: 'HomeDecor',
    //     isFeatured: false,
    //     parentId: '10'),

    // CategoryModel(
    //     id: '42',
    //     image: Timage.purse,
    //     name: 'HomeDecor',
    //     isFeatured: false,
    //     parentId: '11'),
    // CategoryModel(
    //     id: '43',
    //     image: Timage.purse,
    //     name: 'HomeDecor',
    //     isFeatured: false,
    //     parentId: '11'),
    // CategoryModel(
    //     id: '44',
    //     image: Timage.purse,
    //     name: 'HomeDecor',
    //     isFeatured: false,
    //     parentId: '11'),
  ];

  static final List<ProductModel> products = [
    ProductModel(
      id: '001',
      title: 'M88 Airpords With Charger',
      stock: 15,
      price: 1750,
      isFeatured: true,
      thumbnail: Timage.imageProduct4,
      description: 'M88 Airpods with Charger',
      brand: BrandModel(
          id: '1',
          image: Timage.gadgets,
          name: 'Airpods',
          productsCount: 100,
          isFeatured: true),
      images: [Timage.gadgets, Timage.gadgets, Timage.gadgets, Timage.gadgets],
      salePrice: 30,
      sku: 'ABC456',
      categoryId: '1',
      productAttributes: [
        ProductAttributeModel(name: 'Color', values: ['Green', 'Black', 'Red']),
        ProductAttributeModel(
            name: 'Size', values: ['EU 30', 'EU 40', 'EU 50']),
      ],
      productVariations: [
        ProductVariationModel(
          id: '1',
          stock: 20,
          price: 1750,
          salePrice: 1650,
          image: Timage.gadgets,
          description: 'This is the best Airpods for everyone.',
          attributeValues: {'Color': 'Black', 'Size': 'EU 34'},
        ),
        ProductVariationModel(
          id: '2',
          stock: 20,
          price: 1750,
          salePrice: 1650,
          image: Timage.gadgets,
          description: 'This is the best Airpods for everyone.',
          attributeValues: {'Color': 'Black', 'Size': 'EU 34'},
        ),
        ProductVariationModel(
          id: '3',
          stock: 20,
          price: 1750,
          salePrice: 1650,
          image: Timage.gadgets,
          description: 'This is the best Airpods for everyone.',
          attributeValues: {'Color': 'Black', 'Size': 'EU 34'},
        ),
        ProductVariationModel(
          id: '4',
          stock: 20,
          price: 1750,
          salePrice: 1650,
          image: Timage.gadgets,
          description: 'This is the best Airpods for everyone.',
          attributeValues: {'Color': 'Black', 'Size': 'EU 34'},
        ),
        ProductVariationModel(
          id: '5',
          stock: 20,
          price: 1750,
          salePrice: 1650,
          image: Timage.gadgets,
          description: 'This is the best Airpods for everyone.',
          attributeValues: {'Color': 'Black', 'Size': 'EU 34'},
        ),
        ProductVariationModel(
          id: '6',
          stock: 20,
          price: 1750,
          salePrice: 1650,
          image: Timage.gadgets,
          description: 'This is the best Airpods for everyone.',
          attributeValues: {'Color': 'Black', 'Size': 'EU 34'},
        ),
      ],
      productType: 'ProductType.variable',
    ),
    ProductModel(
      id: '002',
      title: 'Necklaces',
      stock: 10,
      price: 30,
      thumbnail: Timage.jewellery,
      description: 'This is the best Airpods for everyone.',
      brand: BrandModel(
          id: '1',
          image: Timage.gadgets,
          name: 'Airpods',
          productsCount: 100,
          isFeatured: true),
      images: [Timage.gadgets, Timage.gadgets, Timage.gadgets, Timage.gadgets],
      salePrice: 30,
      sku: 'ABC456',
      categoryId: '1',
      productAttributes: [
        ProductAttributeModel(name: 'Color', values: ['Green', 'Black', 'Red']),
        ProductAttributeModel(
            name: 'Size', values: ['EU 30', 'EU 40', 'EU 50']),
      ],
      productType: 'ProductType.single',
    )
  ];
}
