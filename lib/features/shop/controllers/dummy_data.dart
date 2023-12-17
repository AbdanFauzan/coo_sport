import 'package:coo_sport/features/personalization/models/address_model.dart';
import 'package:coo_sport/features/personalization/models/user_model.dart';

import '../../../routes/routes.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/image_strings.dart';
import '../models/banner_model.dart';
import '../models/brand_category_model.dart';
import '../models/brand_model.dart';
import '../models/cart_item_model.dart';
import '../models/cart_model.dart';
import '../models/category_model.dart';
import '../models/order_model.dart';
import '../models/product_attribute_model.dart';
import '../models/product_category_model.dart';
import '../models/product_model.dart';
import '../models/product_review_model.dart';
import '../models/product_variation_model.dart';

class TDummyData {
  /// -- Banners
  static final List<BannerModel> banners = [
    BannerModel(
        imageUrl: TImages.banner1, targetScreen: TRoutes.order, active: false),
    BannerModel(
        imageUrl: TImages.banner2, targetScreen: TRoutes.cart, active: true),
    BannerModel(
        imageUrl: TImages.banner3,
        targetScreen: TRoutes.favourites,
        active: true),
    BannerModel(
        imageUrl: TImages.banner4, targetScreen: TRoutes.search, active: true),
    BannerModel(
        imageUrl: TImages.banner5,
        targetScreen: TRoutes.settings,
        active: true),
    BannerModel(
        imageUrl: TImages.banner6,
        targetScreen: TRoutes.userAddress,
        active: true),
    BannerModel(
        imageUrl: TImages.banner8,
        targetScreen: TRoutes.checkout,
        active: false),
  ];

  /// -- User
  static final UserModel user = UserModel(
    firstName: 'Coding',
    lastName: 'with T',
    email: 'support@codingwithT.com',
    phoneNumber: '+14155552671',
    profilePicture: TImages.user,
    addresses: [
      AddressModel(
        id: '1',
        name: 'Abdan',
        phoneNumber: '+923178059528',
        street: '82356 Timmy Coves',
        city: 'South Liana',
        state: 'Maine',
        postalCode: '87665',
        country: 'USA',
      ),
      AddressModel(
        id: '6',
        name: 'Ahmad Abdul',
        phoneNumber: '+1234567890',
        street: '123 Main Street',
        city: 'New York',
        state: 'New York',
        postalCode: '10001',
        country: 'United States',
      ),
      AddressModel(
        id: '2',
        name: 'Kobo Kanaeru',
        phoneNumber: '+9876543210',
        street: '456 Elm Avenue',
        city: 'Los Angeles',
        state: 'California',
        postalCode: '90001',
        country: 'United States',
      ),
      AddressModel(
        id: '3',
        name: 'Taimoor Sikander',
        phoneNumber: '+923178059528',
        street: 'Street 35',
        city: 'Islamabad',
        state: 'Federal',
        postalCode: '48000',
        country: 'Pakistan',
      ),
      AddressModel(
        id: '4',
        name: 'Maria Garcia',
        phoneNumber: '+5412345678',
        street: '789 Oak Road',
        city: 'Buenos Aires',
        state: 'Buenos Aires',
        postalCode: '1001',
        country: 'Argentina',
      ),
      AddressModel(
        id: '5',
        name: 'Liam Johnson',
        phoneNumber: '+447890123456',
        street: '10 Park Lane',
        city: 'London',
        state: 'England',
        postalCode: 'SW1A 1AA',
        country: 'United Kingdom',
      )
    ],
    username: '',
    id: '',
  );

  /// -- Cart
  static final CartModel cart = CartModel(
    cartId: '001',
    items: [
      CartItemModel(
        productId: '001',
        variationId: '1',
        quantity: 1,
        title: products[0].title,
        image: products[0].thumbnail,
        brandName: products[0].brand!.name,
        price: products[0].productVariations![0].price,
        selectedVariation: products[0].productVariations![0].attributeValues,
      ),
      CartItemModel(
        productId: '002',
        variationId: '',
        quantity: 1,
        title: products[1].title,
        image: products[1].thumbnail,
        brandName: products[1].brand!.name,
        price: products[1].price,
        selectedVariation: products[1].productVariations != null
            ? products[1].productVariations![1].attributeValues
            : {},
      ),
    ],
  );

  /// -- Order
  static final List<OrderModel> orders = [
    OrderModel(
        id: 'CWT0012',
        status: OrderStatus.processing,
        items: cart.items,
        totalAmount: 265,
        orderDate: DateTime(2023, 09, 1),
        deliveryDate: DateTime(2023, 09, 9)),
    OrderModel(
        id: 'CWT0025',
        status: OrderStatus.shipped,
        items: cart.items,
        totalAmount: 369,
        orderDate: DateTime(2023, 10, 2),
        deliveryDate: DateTime(2023, 10, 6)),
    OrderModel(
        id: 'CWT0152',
        status: OrderStatus.delivered,
        items: cart.items,
        totalAmount: 254,
        orderDate: DateTime(2023, 11, 3),
        deliveryDate: DateTime(2023, 11, 8)),
    OrderModel(
        id: 'CWT0265',
        status: OrderStatus.delivered,
        items: cart.items,
        totalAmount: 355,
        orderDate: DateTime(2023, 12, 20),
        deliveryDate: DateTime(2023, 12, 25)),
    OrderModel(
        id: 'CWT1536',
        status: OrderStatus.delivered,
        items: cart.items,
        totalAmount: 115,
        orderDate: DateTime(2023, 12, 25),
        deliveryDate: DateTime(2024, 01, 1)),
  ];

  /// -- List of all Categories
  static final List<CategoryModel> categories = [
    CategoryModel(
        id: '1', image: TImages.ballIcon, name: 'Ball', isFeatured: true),
    CategoryModel(
        id: '2', image: TImages.bycicleIcon, name: 'Bycicle', isFeatured: true),
    CategoryModel(
        id: '3', image: TImages.gymIcon, name: 'Gym', isFeatured: true),
    CategoryModel(
        id: '4',
        image: TImages.sportwearIcon,
        name: 'Clothes',
        isFeatured: true),
    CategoryModel(
        id: '5',
        image: TImages.shoeIcon,
        name: 'Shoes Sport',
        isFeatured: true),

    ///subcategories
    ///Ball
    CategoryModel(
        id: '8',
        image: TImages.ballIcon,
        name: 'Football',
        parentId: '1',
        isFeatured: false),
    CategoryModel(
        id: '9',
        image: TImages.ballIcon,
        name: 'Volley Ball',
        parentId: '1',
        isFeatured: false),
    CategoryModel(
        id: '10',
        image: TImages.ballIcon,
        name: 'Basket Ball',
        parentId: '1',
        isFeatured: false),

    //Bycicle
    CategoryModel(
        id: '11',
        image: TImages.bycicleIcon,
        name: 'Adult Bycicle',
        parentId: '2',
        isFeatured: false),
    CategoryModel(
        id: '12',
        image: TImages.bycicleIcon,
        name: 'Children Bycicle',
        parentId: '2',
        isFeatured: false),
    CategoryModel(
        id: '13',
        image: TImages.bycicleIcon,
        name: 'Office furniture',
        parentId: '2',
        isFeatured: false),

    //Gym
    CategoryModel(
        id: '14',
        image: TImages.gymIcon,
        name: 'Dumble',
        parentId: '3',
        isFeatured: false),
    CategoryModel(
        id: '15',
        image: TImages.gymIcon,
        name: 'Matras',
        parentId: '3',
        isFeatured: false),

    CategoryModel(
        id: '16',
        image: TImages.gymIcon,
        name: 'Treadmill',
        parentId: '3',
        isFeatured: false),

    ///Shirt
    CategoryModel(
        id: '17',
        image: TImages.sportwearIcon,
        name: 'Shirts',
        parentId: '4',
        isFeatured: false),

    CategoryModel(
        id: '18',
        image: TImages.sportwearIcon,
        name: 'Track Suit',
        parentId: '4',
        isFeatured: false),

    //shoes
    CategoryModel(
        id: '19',
        image: TImages.ballIcon,
        name: 'Futsal Shoes',
        parentId: '5',
        isFeatured: false),
    CategoryModel(
        id: '20',
        image: TImages.ballIcon,
        name: 'Jogging Shoes',
        parentId: '5',
        isFeatured: false),
    CategoryModel(
        id: '21',
        image: TImages.ballIcon,
        name: 'Basket Shoes',
        parentId: '5',
        isFeatured: false),
  ];

  /// -- List of all Brands
  static final List<BrandModel> brands = [
    BrandModel(
        id: '1',
        image: TImages.nikeLogo,
        name: 'Nike',
        productsCount: 265,
        isFeatured: true),
    BrandModel(
        id: '2',
        image: TImages.adidasLogo,
        name: 'Adidas',
        productsCount: 95,
        isFeatured: true),
    BrandModel(
        id: '3',
        image: TImages.mikasaLogo,
        name: 'Mikasa',
        productsCount: 36,
        isFeatured: false),
    BrandModel(
        id: '4',
        image: TImages.ikeaLogo,
        name: 'Polygon',
        productsCount: 36,
        isFeatured: false),
    BrandModel(
        id: '5',
        image: TImages.appleLogo,
        name: 'Specs',
        productsCount: 16,
        isFeatured: true),
    BrandModel(
        id: '6',
        image: TImages.acerlogo,
        name: 'United',
        productsCount: 36,
        isFeatured: false),
  ];

  /// -- List of all Brand Categories
  static final List<BrandCategoryModel> brandCategory = [
    BrandCategoryModel(brandId: '1', categoryId: '1'),
    BrandCategoryModel(brandId: '1', categoryId: '2'),
    BrandCategoryModel(brandId: '1', categoryId: '3'),
    BrandCategoryModel(brandId: '2', categoryId: '3'),
    BrandCategoryModel(brandId: '2', categoryId: '4'),
    BrandCategoryModel(brandId: '2', categoryId: '5'),
    BrandCategoryModel(brandId: '3', categoryId: '6'),
    BrandCategoryModel(brandId: '3', categoryId: '7'),
    BrandCategoryModel(brandId: '3', categoryId: '8'),
    BrandCategoryModel(brandId: '4', categoryId: '9'),
    BrandCategoryModel(brandId: '4', categoryId: '10'),
    BrandCategoryModel(brandId: '4', categoryId: '11'),
    BrandCategoryModel(brandId: '5', categoryId: '12'),
    BrandCategoryModel(brandId: '5', categoryId: '13'),
    BrandCategoryModel(brandId: '5', categoryId: '14'),
    BrandCategoryModel(brandId: '6', categoryId: '15'),
    BrandCategoryModel(brandId: '6', categoryId: '16'),
    BrandCategoryModel(brandId: '6', categoryId: '17'),
  ];

  /// -- List of all Product Categories
  static final List<ProductCategoryModel> productCategories = [
    ProductCategoryModel(productId: '001', categoryId: '1'),
    ProductCategoryModel(productId: '001', categoryId: '1'),
    ProductCategoryModel(productId: '002', categoryId: '1'),
    ProductCategoryModel(productId: '002', categoryId: '1'),
    ProductCategoryModel(productId: '004', categoryId: '1'),
    ProductCategoryModel(productId: '004', categoryId: '2'),

    ProductCategoryModel(productId: '003', categoryId: '2'),
    ProductCategoryModel(productId: '005', categoryId: '2'),
    ProductCategoryModel(productId: '005', categoryId: '2'),

    ProductCategoryModel(productId: '006', categoryId: '3'),
    ProductCategoryModel(productId: '006', categoryId: '3'),
    ProductCategoryModel(productId: '007', categoryId: '3'),
    ProductCategoryModel(productId: '007', categoryId: '3'),
    ProductCategoryModel(productId: '008', categoryId: '3'),
    ProductCategoryModel(productId: '008', categoryId: '3'),
    ProductCategoryModel(productId: '009', categoryId: '3'),
    ProductCategoryModel(productId: '009', categoryId: '3'),
    ProductCategoryModel(productId: '010', categoryId: '3'),
    ProductCategoryModel(productId: '010', categoryId: '3'),

    ProductCategoryModel(productId: '011', categoryId: '4'),
    ProductCategoryModel(productId: '011', categoryId: '4'),
    ProductCategoryModel(productId: '012', categoryId: '4'),
    ProductCategoryModel(productId: '012', categoryId: '4'),

    ProductCategoryModel(productId: '013', categoryId: '5'),
    ProductCategoryModel(productId: '013', categoryId: '5'),
    ProductCategoryModel(productId: '014', categoryId: '5'),
    ProductCategoryModel(productId: '014', categoryId: '5'),

    ProductCategoryModel(productId: '015', categoryId: '6'),
    ProductCategoryModel(productId: '015', categoryId: '6'),
    ProductCategoryModel(productId: '016', categoryId: '6'),
    ProductCategoryModel(productId: '016', categoryId: '6'),

    ProductCategoryModel(productId: '040', categoryId: '6'),
    ProductCategoryModel(productId: '040', categoryId: '6'),
    ProductCategoryModel(productId: '006', categoryId: '6'),
    ProductCategoryModel(productId: '007', categoryId: '6'),

    ProductCategoryModel(productId: '014', categoryId: '6'),
    ProductCategoryModel(productId: '014', categoryId: '6'),
    ProductCategoryModel(productId: '015', categoryId: '6'),
    ProductCategoryModel(productId: '015', categoryId: '6'),
    ProductCategoryModel(productId: '016', categoryId: '6'),
    ProductCategoryModel(productId: '016', categoryId: '6'),
    ProductCategoryModel(productId: '017', categoryId: '6'),
    ProductCategoryModel(productId: '017', categoryId: '6'),

    ProductCategoryModel(productId: '018', categoryId: '6'),
    ProductCategoryModel(productId: '018', categoryId: '6'),

    ProductCategoryModel(productId: '019', categoryId: '6'),
    ProductCategoryModel(productId: '019', categoryId: '6'),
    ProductCategoryModel(productId: '020', categoryId: '6'),
    ProductCategoryModel(productId: '020', categoryId: '6'),
    ProductCategoryModel(productId: '021', categoryId: '6'),
    ProductCategoryModel(productId: '021', categoryId: '6'),
    ProductCategoryModel(productId: '022', categoryId: '6'),
    ProductCategoryModel(productId: '022', categoryId: '6'),

    ProductCategoryModel(productId: '023', categoryId: '6'),
    ProductCategoryModel(productId: '023', categoryId: '6'),
    ProductCategoryModel(productId: '024', categoryId: '6'),
    ProductCategoryModel(productId: '024', categoryId: '6'),

    ProductCategoryModel(productId: '025', categoryId: '6'),
    ProductCategoryModel(productId: '025', categoryId: '6'),
    ProductCategoryModel(productId: '026', categoryId: '6'),
    ProductCategoryModel(productId: '026', categoryId: '6'),

    ProductCategoryModel(productId: '027', categoryId: '6'),
    ProductCategoryModel(productId: '027', categoryId: '6'),
    ProductCategoryModel(productId: '028', categoryId: '6'),
    ProductCategoryModel(productId: '028', categoryId: '6'),

    //040 after product 005
  ];

  /// -- List of all Products
  static final List<ProductModel> products = [
    ProductModel(
      id: '001',
      title: 'Mikasa Football',
      stock: 15,
      price: 135,
      isFeatured: true,
      thumbnail: TImages.productImage1,
      description: 'Mikasa Football',
      brand: BrandModel(
          id: '1',
          image: TImages.nikeLogo,
          name: 'Nike',
          productsCount: 265,
          isFeatured: true),
      images: [
        TImages.productImage1,
        TImages.productImage23,
        TImages.productImage21,
        //TImages.productImage9
      ],
      salePrice: 30,
      sku: 'ABR4568',
      categoryId: '8',
      productAttributes: [
        ProductAttributeModel(name: 'Color', values: ['Black']),
        ProductAttributeModel(
            name: 'Size', values: ['EU 30', 'EU 32', 'EU 34']),
      ],
      productVariations: [
        ProductVariationModel(
            id: '1',
            stock: 34,
            price: 134,
            salePrice: 122.6,
            image: TImages.productImage1,
            description:
                'This is a Product description for Green Nike sports shoe.',
            attributeValues: {'Color': 'Green', 'Size': 'EU 34'}),
        ProductVariationModel(
            id: '2',
            stock: 15,
            price: 132,
            image: TImages.productImage23,
            attributeValues: {'Color': 'Black', 'Size': 'EU 32'}),
        ProductVariationModel(
            id: '3',
            stock: 0,
            price: 234,
            image: TImages.productImage23,
            attributeValues: {'Color': 'Black', 'Size': 'EU 34'}),
        ProductVariationModel(
            id: '4',
            stock: 222,
            price: 232,
            image: TImages.productImage1,
            attributeValues: {'Color': 'Green', 'Size': 'EU 32'}),
        ProductVariationModel(
            id: '5',
            stock: 0,
            price: 334,
            image: TImages.productImage21,
            attributeValues: {'Color': 'Red', 'Size': 'EU 34'}),
        ProductVariationModel(
            id: '6',
            stock: 11,
            price: 332,
            image: TImages.productImage21,
            attributeValues: {'Color': 'Red', 'Size': 'EU 32'}),
      ],
      productType: 'ProductType.variable',
    ),
    ProductModel(
      id: '002',
      title: 'Mikasa Volley Ball',
      stock: 15,
      price: 135,
      isFeatured: true,
      thumbnail: TImages.productImage78,
      description: 'Mikasa Volley Ball',
      brand: BrandModel(
          id: '3',
          image: TImages.nikeLogo,
          name: 'Nike',
          productsCount: 265,
          isFeatured: true),
      images: [
        TImages.productImage78,
        TImages.productImage79,
        TImages.productImage80,
        //TImages.productImage9
      ],
      salePrice: 30,
      sku: 'ABR4568',
      categoryId: '9',
      productAttributes: [
        ProductAttributeModel(name: 'Color', values: ['Black']),
        ProductAttributeModel(
            name: 'Size', values: ['EU 30', 'EU 32', 'EU 34']),
      ],
      productType: 'ProductType.variable',
    ),
    ProductModel(
      id: '003',
      title: 'Adidas Football',
      stock: 15,
      price: 135,
      isFeatured: false,
      thumbnail: TImages.productImage81,
      description: 'Adidas Football',
      brand: BrandModel(
          id: '2',
          image: TImages.nikeLogo,
          name: 'Nike',
          productsCount: 265,
          isFeatured: false),
      images: [
        TImages.productImage82,
        TImages.productImage83,
        TImages.productImage84,
        //TImages.productImage9
      ],
      salePrice: 30,
      sku: 'ABR4568',
      categoryId: '8',
      productAttributes: [
        ProductAttributeModel(name: 'Color', values: ['Black']),
        ProductAttributeModel(
            name: 'Size', values: ['EU 30', 'EU 32', 'EU 34']),
      ],
      productType: 'ProductType.variable',
    ),
    ProductModel(
      id: '004',
      title: 'Adidas Volley Ball',
      stock: 15,
      price: 135,
      isFeatured: false,
      thumbnail: TImages.productImage85,
      description: 'Adidas Volley Ball',
      brand: BrandModel(
          id: '2',
          image: TImages.nikeLogo,
          name: 'Nike',
          productsCount: 265,
          isFeatured: false),
      images: [
        TImages.productImage85,
        TImages.productImage86,
        TImages.productImage87,
        //TImages.productImage9
      ],
      salePrice: 30,
      sku: 'ABR4568',
      categoryId: '9',
      productAttributes: [
        ProductAttributeModel(name: 'Color', values: ['White', 'Red']),
      ],
      productVariations: [
        ProductVariationModel(
            id: '1',
            stock: 34,
            price: 134,
            salePrice: 122.6,
            image: TImages.productImage86,
            description:
                'This is a Product description for Green Nike sports shoe.',
            attributeValues: {'Color': 'White'}),
        ProductVariationModel(
            id: '2',
            stock: 15,
            price: 132,
            image: TImages.productImage87,
            attributeValues: {'Color': 'Red'}),
      ],
      productType: 'ProductType.variable',
    ),
    ProductModel(
      id: '005',
      title: 'Adidas Basket Ball',
      stock: 15,
      price: 135,
      isFeatured: false,
      thumbnail: TImages.productImage88,
      description: 'Adidas Basket Ball',
      brand: BrandModel(
          id: '2',
          image: TImages.nikeLogo,
          name: 'Nike',
          productsCount: 265,
          isFeatured: true),
      images: [
        TImages.productImage88,
        TImages.productImage89,
        TImages.productImage90,
        TImages.productImage91,
        TImages.productImage92,
        //TImages.productImage9
      ],
      salePrice: 30,
      sku: 'ABR4568',
      categoryId: '10',
      productAttributes: [
        ProductAttributeModel(name: 'Color', values: ['Brown']),
      ],
      productVariations: [
        ProductVariationModel(
            id: '1',
            stock: 34,
            price: 134,
            salePrice: 122.6,
            image: TImages.productImage92,
            description:
                'This is a Product description for Green Nike sports shoe.',
            attributeValues: {'Color': 'Brown'}),
      ],
      productType: 'ProductType.variable',
    ),
    ProductModel(
      id: '006',
      title: 'STRATTOS S3',
      stock: 15,
      price: 135,
      isFeatured: false,
      thumbnail: TImages.productImage93,
      description: 'STRATTOS S3',
      brand: BrandModel(
          id: '1',
          image: TImages.polygonlogo,
          name: 'Polygon',
          productsCount: 265,
          isFeatured: true),
      images: [
        TImages.productImage93,
        TImages.productImage94,

        //TImages.productImage9
      ],
      salePrice: 30,
      sku: 'ABR4568',
      categoryId: '11',
      productAttributes: [
        ProductAttributeModel(name: 'Color', values: ['Red', 'Black']),
      ],
      productVariations: [
        ProductVariationModel(
            id: '1',
            stock: 34,
            price: 134,
            salePrice: 122.6,
            image: TImages.productImage93,
            description:
                'This is a Product description for Green Nike sports shoe.',
            attributeValues: {'Color': 'Red'}),
        ProductVariationModel(
            id: '2',
            stock: 34,
            price: 134,
            salePrice: 122.6,
            image: TImages.productImage94,
            description:
                'This is a Product description for Green Nike sports shoe.',
            attributeValues: {'Color': 'Black'}),
      ],
      productType: 'ProductType.variable',
    ),
    ProductModel(
      id: '007',
      title: 'STRATTOS S5',
      stock: 15,
      price: 135,
      isFeatured: false,
      thumbnail: TImages.productImage95,
      description: 'STRATTOS S5',
      brand: BrandModel(
          id: '1',
          image: TImages.polygonlogo,
          name: 'Polygon',
          productsCount: 265,
          isFeatured: true),
      images: [
        TImages.productImage95,
        TImages.productImage96,
        TImages.productImage97,
        TImages.productImage98,

        //TImages.productImage9
      ],
      salePrice: 30,
      sku: 'ABR4568',
      categoryId: '11',
      productAttributes: [
        ProductAttributeModel(name: 'Color', values: ['White']),
      ],
      productVariations: [
        ProductVariationModel(
            id: '1',
            stock: 34,
            price: 134,
            salePrice: 122.6,
            image: TImages.productImage95,
            description:
                'This is a Product description for Green Nike sports shoe.',
            attributeValues: {'Color': 'White'}),
      ],
      productType: 'ProductType.variable',
    ),
    ProductModel(
      id: '008',
      title: 'SISKIU T6E',
      stock: 15,
      price: 135,
      isFeatured: false,
      thumbnail: TImages.productImage99,
      description: 'SISKIU T6E',
      brand: BrandModel(
          id: '1',
          image: TImages.polygonlogo,
          name: 'Polygon',
          productsCount: 265,
          isFeatured: true),
      images: [
        TImages.productImage99,
        TImages.productImage100,
        TImages.productImage101,
        TImages.productImage102,

        //TImages.productImage9
      ],
      salePrice: 30,
      sku: 'ABR4568',
      categoryId: '11',
      productAttributes: [
        ProductAttributeModel(name: 'Color', values: ['Grey']),
      ],
      productVariations: [
        ProductVariationModel(
            id: '1',
            stock: 34,
            price: 134,
            salePrice: 122.6,
            image: TImages.productImage99,
            description:
                'This is a Product description for Green Nike sports shoe.',
            attributeValues: {'Color': 'Grey'}),
      ],
      productType: 'ProductType.variable',
    ),
    ProductModel(
      id: '009',
      title: 'TUSKAR',
      stock: 15,
      price: 135,
      isFeatured: false,
      thumbnail: TImages.productImage103,
      description: 'TUSKAR',
      brand: BrandModel(
          id: '1',
          image: TImages.unitedlogo,
          name: 'United',
          productsCount: 265,
          isFeatured: true),
      images: [
        TImages.productImage103,
        TImages.productImage104,

        //TImages.productImage9
      ],
      salePrice: 30,
      sku: 'ABR4568',
      categoryId: '12',
      productAttributes: [
        ProductAttributeModel(name: 'Color', values: ['Black', 'Blue']),
      ],
      productVariations: [
        ProductVariationModel(
            id: '1',
            stock: 34,
            price: 134,
            salePrice: 122.6,
            image: TImages.productImage103,
            description: 'This is a Product description for Tuskar Bycycle.',
            attributeValues: {'Color': 'Black'}),
        ProductVariationModel(
            id: '2',
            stock: 34,
            price: 134,
            salePrice: 122.6,
            image: TImages.productImage104,
            description: 'This is a Product description for Tuskar Bycicle.',
            attributeValues: {'Color': 'Blue'}),
      ],
      productType: 'ProductType.variable',
    ),
    ProductModel(
      id: '010',
      title: 'TRIFOLD 5D',
      stock: 15,
      price: 135,
      isFeatured: false,
      thumbnail: TImages.productImage105,
      description: 'TRIFOLD 5D',
      brand: BrandModel(
          id: '1',
          image: TImages.unitedlogo,
          name: 'United',
          productsCount: 265,
          isFeatured: true),
      images: [
        TImages.productImage105,
        TImages.productImage106,
        TImages.productImage107,
        TImages.productImage108,

        //TImages.productImage9
      ],
      salePrice: 30,
      sku: 'ABR4568',
      categoryId: '12',
      productAttributes: [
        ProductAttributeModel(name: 'Color', values: [
          'Black',
          'Blue',
          'Green',
          'Red',
        ]),
      ],
      productVariations: [
        ProductVariationModel(
            id: '1',
            stock: 34,
            price: 134,
            salePrice: 122.6,
            image: TImages.productImage105,
            description:
                'This is a Product description for TRIFOLD 5D Bycycle.',
            attributeValues: {'Color': 'Black'}),
        ProductVariationModel(
            id: '2',
            stock: 34,
            price: 134,
            salePrice: 122.6,
            image: TImages.productImage106,
            description:
                'This is a Product description for TRIFOLD 5D Bycicle.',
            attributeValues: {'Color': 'Blue'}),
        ProductVariationModel(
            id: '3',
            stock: 34,
            price: 134,
            salePrice: 122.6,
            image: TImages.productImage107,
            description:
                'This is a Product description for TRIFOLD 5D Bycycle.',
            attributeValues: {'Color': 'Green'}),
        ProductVariationModel(
            id: '4',
            stock: 34,
            price: 134,
            salePrice: 122.6,
            image: TImages.productImage108,
            description:
                'This is a Product description for TRIFOLD 5D Bycicle.',
            attributeValues: {'Color': 'Red'}),
      ],
      productType: 'ProductType.variable',
    ),
    ProductModel(
      id: '011',
      title: 'PVC Dumbbells Twin-Pack 1 kg',
      stock: 15,
      price: 135,
      isFeatured: false,
      thumbnail: TImages.productImage109,
      description: 'PVC Dumbbells Twin-Pack 1 kg',
      brand: BrandModel(
          id: '1',
          image: TImages.unitedlogo,
          name: 'PVC',
          productsCount: 265,
          isFeatured: true),
      images: [
        TImages.productImage109,
        TImages.productImage110,
        TImages.productImage111,

        //TImages.productImage9
      ],
      salePrice: 30,
      sku: 'ABR4568',
      categoryId: '14',
      productAttributes: [
        ProductAttributeModel(name: 'Color', values: ['Blue']),
      ],
      productVariations: [
        ProductVariationModel(
            id: '1',
            stock: 34,
            price: 134,
            salePrice: 122.6,
            image: TImages.productImage109,
            description:
                'This is a Product description for PVC Dumbbells Twin-Pack 1 kg.',
            attributeValues: {'Color': 'Cyan'}),
      ],
      productType: 'ProductType.variable',
    ),
    ProductModel(
      id: '012',
      title: 'Dumbbell Fitness Twin-Pack 3 kg',
      stock: 15,
      price: 135,
      isFeatured: false,
      thumbnail: TImages.productImage113,
      description: 'Dumbbell Fitness Twin-Pack 3 kg',
      brand: BrandModel(
          id: '1',
          image: TImages.unitedlogo,
          name: 'PVC',
          productsCount: 265,
          isFeatured: true),
      images: [
        TImages.productImage112,
        TImages.productImage113,
        TImages.productImage114,

        //TImages.productImage9
      ],
      salePrice: 30,
      sku: 'ABR4568',
      categoryId: '14',
      productAttributes: [
        ProductAttributeModel(name: 'Color', values: ['Black']),
      ],
      productVariations: [
        ProductVariationModel(
            id: '1',
            stock: 34,
            price: 134,
            salePrice: 122.6,
            image: TImages.productImage114,
            description:
                'This is a Product description for Dumbbell Fitness Twin-Pack 3 kg.',
            attributeValues: {'Color': 'Black'}),
      ],
      productType: 'ProductType.variable',
    ),
    ProductModel(
      id: '013',
      title: 'Matras Yoga Essential 4 mm',
      stock: 15,
      price: 135,
      isFeatured: false,
      thumbnail: TImages.productImage115,
      description: 'Matras Yoga Essential 4 mm',
      brand: BrandModel(
          id: '1',
          image: TImages.unitedlogo,
          name: 'Essential',
          productsCount: 265,
          isFeatured: true),
      images: [
        TImages.productImage115,
        TImages.productImage116,
        TImages.productImage117,
        TImages.productImage118,
      ],
      salePrice: 30,
      sku: 'ABR4568',
      categoryId: '15',
      productAttributes: [
        ProductAttributeModel(name: 'Color', values: ['Grey']),
      ],
      productVariations: [
        ProductVariationModel(
            id: '1',
            stock: 34,
            price: 134,
            salePrice: 122.6,
            image: TImages.productImage117,
            description:
                'This is a Product description for Matras Yoga Essential 4 mm.',
            attributeValues: {'Color': 'Grey'}),
      ],
      productType: 'ProductType.variable',
    ),
    ProductModel(
      id: '014',
      title: 'Matras Fitness Indoor dan Outdoor',
      stock: 15,
      price: 135,
      isFeatured: false,
      thumbnail: TImages.productImage119,
      description: 'Matras Fitness Indoor dan Outdoor',
      brand: BrandModel(
          id: '1',
          image: TImages.unitedlogo,
          name: 'Essential',
          productsCount: 265,
          isFeatured: true),
      images: [
        TImages.productImage119,
        TImages.productImage120,
        TImages.productImage121,
        TImages.productImage122,
      ],
      salePrice: 30,
      sku: 'ABR4568',
      categoryId: '15',
      productAttributes: [
        ProductAttributeModel(name: 'Color', values: ['Black']),
      ],
      productVariations: [
        ProductVariationModel(
            id: '1',
            stock: 34,
            price: 134,
            salePrice: 122.6,
            image: TImages.productImage119,
            description:
                'This is a Product description for Matras Fitness Indoor dan Outdoor.',
            attributeValues: {'Color': 'Black'}),
      ],
      productType: 'ProductType.variable',
    ),
    ProductModel(
      id: '015',
      title: 'ID 100 AC - MOTORIZER TREADMILL',
      stock: 15,
      price: 135,
      isFeatured: false,
      thumbnail: TImages.productImage123,
      description: 'ID 100 AC - MOTORIZER TREADMILL',
      brand: BrandModel(
          id: '1',
          image: TImages.unitedlogo,
          name: 'Treadmill',
          productsCount: 265,
          isFeatured: true),
      images: [
        TImages.productImage123,
      ],
      salePrice: 30,
      sku: 'ABR4568',
      categoryId: '16',
      productAttributes: [
        ProductAttributeModel(name: 'Color', values: ['Black']),
      ],
      productVariations: [
        ProductVariationModel(
            id: '1',
            stock: 34,
            price: 134,
            salePrice: 122.6,
            image: TImages.productImage123,
            description:
                'This is a Product description for ID 100 AC - MOTORIZER TREADMILL.',
            attributeValues: {'Color': 'Black'}),
      ],
      productType: 'ProductType.variable',
    ),
    ProductModel(
      id: '016',
      title: 'ID 8000 - MOTORIZER TREADMILL',
      stock: 15,
      price: 135,
      isFeatured: false,
      thumbnail: TImages.productImage124,
      description: 'ID 8000 - MOTORIZER TREADMILL',
      brand: BrandModel(
          id: '1',
          image: TImages.unitedlogo,
          name: 'Treadmill',
          productsCount: 265,
          isFeatured: true),
      images: [
        TImages.productImage124,
      ],
      salePrice: 30,
      sku: 'ABR4568',
      categoryId: '16',
      productAttributes: [
        ProductAttributeModel(name: 'Color', values: ['Black']),
      ],
      productVariations: [
        ProductVariationModel(
            id: '1',
            stock: 34,
            price: 134,
            salePrice: 122.6,
            image: TImages.productImage124,
            description:
                'This is a Product description for ID 8000 - MOTORIZER TREADMILL.',
            attributeValues: {'Color': 'Black'}),
      ],
      productType: 'ProductType.variable',
    ),
    ProductModel(
      id: '017',
      title: 'Blue T-shirt',
      stock: 15,
      price: 35,
      isFeatured: false,
      thumbnail: TImages.productImage69,
      description:
          'This is a Product description for Blue Nike Sleeve less vest. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '6', image: TImages.zaraLogo, name: 'ZARA'),
      images: [
        TImages.productImage68,
        TImages.productImage69,
        TImages.productImage5
      ],
      salePrice: 30,
      sku: 'ABR4568',
      categoryId: '17',
      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['32-33', '34-35']),
        ProductAttributeModel(
            name: 'Color', values: ['Dodger Blue', 'Blue', 'Slate Blue']),
      ],
      productVariations: [
        ProductVariationModel(
            id: '1',
            stock: 34,
            price: 134,
            salePrice: 122.6,
            image: TImages.productImage68,
            description: 'This is a Product description for 4 ...',
            attributeValues: {'Color': 'Dodger Blue', 'Size': '32-33'}),
        ProductVariationModel(
            id: '2',
            stock: 34,
            price: 134,
            salePrice: 122.6,
            image: TImages.productImage68,
            description: 'This is a Product description for 4 ...',
            attributeValues: {'Color': 'Dodger Blue', 'Size': '34-35'}),
        ProductVariationModel(
            id: '3',
            stock: 15,
            price: 132,
            image: TImages.productImage69,
            description: 'This is a Product description for 4 ...',
            attributeValues: {'Color': 'Blue', 'Size': ' 32-33'}),
        ProductVariationModel(
            id: '4',
            stock: 15,
            price: 132,
            image: TImages.productImage69,
            description: 'This is a Product description for 4 ...',
            attributeValues: {'Color': 'Blue', 'Size': ' 32-33'}),
        ProductVariationModel(
            id: '5',
            stock: 15,
            price: 132,
            image: TImages.productImage5,
            description: 'This is a Product description for 4 ...',
            attributeValues: {'Color': 'Slate Blue', 'Size': ' 32-33'}),
        ProductVariationModel(
            id: '6',
            stock: 15,
            price: 132,
            image: TImages.productImage5,
            description: 'This is a Product description for 4 ...',
            attributeValues: {'Color': 'Slate Blue', 'Size': ' 34-35'}),
      ],
      productType: 'ProductType.single',
    ),
    ProductModel(
      id: '018',
      title: 'Blue T-shirt',
      stock: 15,
      price: 35,
      isFeatured: false,
      thumbnail: TImages.productImage69,
      description:
          'This is a Product description for Blue Nike Sleeve less vest. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '6', image: TImages.zaraLogo, name: 'ZARA'),
      images: [
        TImages.productImage68,
        TImages.productImage69,
        TImages.productImage5
      ],
      salePrice: 30,
      sku: 'ABR4568',
      categoryId: '17',
      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['32-33', '34-35']),
        ProductAttributeModel(
            name: 'Color', values: ['Dodger Blue', 'Blue', 'Slate Blue']),
      ],
      productVariations: [
        ProductVariationModel(
            id: '1',
            stock: 34,
            price: 134,
            salePrice: 122.6,
            image: TImages.productImage68,
            description: 'This is a Product description for 4 ...',
            attributeValues: {'Color': 'Dodger Blue', 'Size': '32-33'}),
        ProductVariationModel(
            id: '2',
            stock: 34,
            price: 134,
            salePrice: 122.6,
            image: TImages.productImage68,
            description: 'This is a Product description for 4 ...',
            attributeValues: {'Color': 'Dodger Blue', 'Size': '34-35'}),
        ProductVariationModel(
            id: '3',
            stock: 15,
            price: 132,
            image: TImages.productImage69,
            description: 'This is a Product description for 4 ...',
            attributeValues: {'Color': 'Blue', 'Size': ' 32-33'}),
        ProductVariationModel(
            id: '4',
            stock: 15,
            price: 132,
            image: TImages.productImage69,
            description: 'This is a Product description for 4 ...',
            attributeValues: {'Color': 'Blue', 'Size': ' 32-33'}),
        ProductVariationModel(
            id: '5',
            stock: 15,
            price: 132,
            image: TImages.productImage5,
            description: 'This is a Product description for 4 ...',
            attributeValues: {'Color': 'Slate Blue', 'Size': ' 32-33'}),
        ProductVariationModel(
            id: '6',
            stock: 15,
            price: 132,
            image: TImages.productImage5,
            description: 'This is a Product description for 4 ...',
            attributeValues: {'Color': 'Slate Blue', 'Size': ' 34-35'}),
      ],
      productType: 'ProductType.single',
    ),
    ProductModel(
      id: '019',
      title: 'Nike Track suit red',
      stock: 15,
      price: 500,
      isFeatured: true,
      thumbnail: TImages.productImage26,
      description:
          'This is a Product description for Nike Track suit red. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '1', image: TImages.nikeLogo, name: 'Nike'),
      images: [
        TImages.productImage26,
        TImages.productImage24,
        TImages.productImage25,
        TImages.productImage27
      ],
      // salePrice: 400,
      sku: 'ABR4568',
      categoryId: '18',
      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
      ],
      productType: 'ProductType.single',
    ),
    ProductModel(
      id: '020',
      title: 'Nike Track suit Black',
      stock: 15,
      price: 200,
      thumbnail: TImages.productImage24,
      description:
          'This is a Product description for Nike Track suit Black. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '1', image: TImages.nikeLogo, name: 'Nike'),
      images: [
        TImages.productImage24,
        TImages.productImage26,
        TImages.productImage25,
        TImages.productImage27
      ],
      // salePrice: 400,
      sku: 'ABR4568',
      categoryId: '18',
      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
      ],
      productType: 'ProductType.single',
    ),
    ProductModel(
      id: '021',
      title: 'Nike Track suit Blue',
      stock: 15,
      price: 100,
      thumbnail: TImages.productImage25,
      description:
          'This is a Product description for Nike Track suit Blue. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '1', image: TImages.nikeLogo, name: 'Nike'),
      images: [
        TImages.productImage25,
        TImages.productImage24,
        TImages.productImage26,
        TImages.productImage27
      ],
      // salePrice: 400,
      sku: 'ABR4568',
      categoryId: '18',
      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
      ],
      productType: 'ProductType.single',
    ),
    ProductModel(
      id: '022',
      title: 'Nike Track suit Parrot Green',
      stock: 15,
      price: 350,
      thumbnail: TImages.productImage27,
      description:
          'This is a Product description for Nike Track suit Parrot Green. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '1', image: TImages.nikeLogo, name: 'Nike'),
      images: [
        TImages.productImage27,
        TImages.productImage24,
        TImages.productImage25,
        TImages.productImage26
      ],
      // salePrice: 400,
      sku: 'ABR4568',
      categoryId: '18',
      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
      ],
      productType: 'ProductType.single',
    ),
    ProductModel(
      id: '23',
      title: 'Sepatu Futsal Specs Original Lightspeed Reborn IN 402346 BNIB',
      stock: 15,
      price: 35,
      isFeatured: false,
      thumbnail: TImages.productImage125,
      description:
          'Sepatu Futsal Specs Original Lightspeed Reborn IN 402346 BNIB',
      brand: BrandModel(
          id: '1',
          image: TImages.nikeLogo,
          name: 'Nike',
          productsCount: 265,
          isFeatured: true),
      images: [
        TImages.productImage125,
        TImages.productImage126,
        TImages.productImage127,
        TImages.productImage128,
      ],
      salePrice: 30,
      sku: 'ABR4568',
      categoryId: '19',
      productAttributes: [
        ProductAttributeModel(name: 'Color', values: ['White']),
        ProductAttributeModel(name: 'Size', values: ['31', '32', '33']),
      ],
      productVariations: [
        ProductVariationModel(
            id: '1',
            stock: 16,
            price: 36,
            salePrice: 300,
            image: TImages.productImage125,
            description:
                'Sepatu Futsal Specs Original Lightspeed Reborn IN 402346 BNIB',
            attributeValues: {'Color': 'White', 'Size': '31'}),
        ProductVariationModel(
            id: '1',
            stock: 16,
            price: 36,
            salePrice: 300,
            image: TImages.productImage125,
            description:
                'Sepatu Futsal Specs Original Lightspeed Reborn IN 402346 BNIB',
            attributeValues: {'Color': 'White', 'Size': '32'}),
        ProductVariationModel(
            id: '1',
            stock: 16,
            price: 36,
            salePrice: 300,
            image: TImages.productImage125,
            description:
                'Sepatu Futsal Specs Original Lightspeed Reborn IN 402346 BNIB',
            attributeValues: {'Color': 'White', 'Size': '33'}),
      ],
      productType: 'ProductType.variable',
    ),
    ProductModel(
      id: '24',
      title: 'Sepatu Futsal Specs Coanda SV SUBS1 110400008 Original BNIB',
      stock: 15,
      price: 35,
      isFeatured: false,
      thumbnail: TImages.productImage129,
      description:
          'Sepatu Futsal Specs Original Lightspeed Reborn IN 402346 BNIB',
      brand: BrandModel(
          id: '1',
          image: TImages.nikeLogo,
          name: 'Nike',
          productsCount: 265,
          isFeatured: true),
      images: [
        TImages.productImage129,
        TImages.productImage130,
        TImages.productImage131,
        TImages.productImage132,
      ],
      salePrice: 30,
      sku: 'ABR4568',
      categoryId: '19',
      productAttributes: [
        ProductAttributeModel(name: 'Color', values: ['Blue']),
        ProductAttributeModel(name: 'Size', values: ['31', '32', '33']),
      ],
      productVariations: [
        ProductVariationModel(
            id: '1',
            stock: 16,
            price: 36,
            salePrice: 300,
            image: TImages.productImage131,
            description:
                'Sepatu Futsal Specs Original Lightspeed Reborn IN 402346 BNIB',
            attributeValues: {'Color': 'Blue', 'Size': '31'}),
        ProductVariationModel(
            id: '1',
            stock: 16,
            price: 36,
            salePrice: 300,
            image: TImages.productImage131,
            description:
                'Sepatu Futsal Specs Original Lightspeed Reborn IN 402346 BNIB',
            attributeValues: {'Color': 'Blue', 'Size': '32'}),
        ProductVariationModel(
            id: '1',
            stock: 16,
            price: 36,
            salePrice: 300,
            image: TImages.productImage131,
            description:
                'Sepatu Futsal Specs Original Lightspeed Reborn IN 402346 BNIB',
            attributeValues: {'Color': 'Blue', 'Size': '33'}),
      ],
      productType: 'ProductType.variable',
    ),
    ProductModel(
      id: '25',
      title:
          'Original New Arrival NIKE NIKE M2K TEKNO SP Mens Running Shoes Sneakers',
      stock: 15,
      price: 35,
      isFeatured: false,
      thumbnail: TImages.productImage133,
      description:
          'Original New Arrival NIKE NIKE M2K TEKNO SP Mens Running Shoes Sneakers',
      brand: BrandModel(
          id: '1',
          image: TImages.nikeLogo,
          name: 'Nike',
          productsCount: 265,
          isFeatured: true),
      images: [
        TImages.productImage133,
        TImages.productImage134,
        TImages.productImage135,
      ],
      salePrice: 30,
      sku: 'ABR4568',
      categoryId: '20',
      productAttributes: [
        ProductAttributeModel(name: 'Color', values: ['White']),
        ProductAttributeModel(name: 'Size', values: ['31', '32', '33']),
      ],
      productVariations: [
        ProductVariationModel(
            id: '1',
            stock: 16,
            price: 36,
            salePrice: 300,
            image: TImages.productImage135,
            description:
                'Original New Arrival NIKE NIKE M2K TEKNO SP Mens Running Shoes Sneakers',
            attributeValues: {'Color': 'White', 'Size': '31'}),
        ProductVariationModel(
            id: '1',
            stock: 16,
            price: 36,
            salePrice: 300,
            image: TImages.productImage135,
            description:
                'Original New Arrival NIKE NIKE M2K TEKNO SP Mens Running Shoes Sneakers',
            attributeValues: {'Color': 'White', 'Size': '32'}),
        ProductVariationModel(
            id: '1',
            stock: 16,
            price: 36,
            salePrice: 300,
            image: TImages.productImage135,
            description:
                'Original New Arrival NIKE NIKE M2K TEKNO SP Mens Running Shoes Sneakers',
            attributeValues: {'Color': 'White', 'Size': '33'}),
      ],
      productType: 'ProductType.variable',
    ),
    ProductModel(
      id: '26',
      title:
          'Original New Arrival Adidas CLIMAWARM Mens Running Shoes Sneakers',
      stock: 15,
      price: 35,
      isFeatured: false,
      thumbnail: TImages.productImage136,
      description:
          'Original New Arrival Adidas CLIMAWARM Mens Running Shoes Sneakers',
      brand: BrandModel(
          id: '1',
          image: TImages.adidasLogo,
          name: 'Adidas',
          productsCount: 265,
          isFeatured: true),
      images: [
        TImages.productImage136,
        TImages.productImage137,
        TImages.productImage138,
        TImages.productImage139,
      ],
      salePrice: 30,
      sku: 'ABR4568',
      categoryId: '20',
      productAttributes: [
        ProductAttributeModel(name: 'Color', values: ['Black']),
        ProductAttributeModel(name: 'Size', values: ['31', '32', '33']),
      ],
      productVariations: [
        ProductVariationModel(
            id: '1',
            stock: 16,
            price: 36,
            salePrice: 300,
            image: TImages.productImage136,
            description:
                'Original New Arrival Adidas CLIMAWARM Mens Running Shoes Sneakers',
            attributeValues: {'Color': 'Black', 'Size': '31'}),
        ProductVariationModel(
            id: '1',
            stock: 16,
            price: 36,
            salePrice: 300,
            image: TImages.productImage136,
            description:
                'Original New Arrival Adidas CLIMAWARM Mens Running Shoes Sneakers',
            attributeValues: {'Color': 'Black', 'Size': '32'}),
        ProductVariationModel(
            id: '1',
            stock: 16,
            price: 36,
            salePrice: 300,
            image: TImages.productImage136,
            description:
                'Original New Arrival Adidas CLIMAWARM Mens Running Shoes Sneakers',
            attributeValues: {'Color': 'Black', 'Size': '33'}),
      ],
      productType: 'ProductType.variable',
    ),
    ProductModel(
      id: '27',
      title: 'JA 1 NRG EP',
      stock: 15,
      price: 35,
      isFeatured: false,
      thumbnail: TImages.productImage140,
      description: 'JA 1 NRG EP',
      brand: BrandModel(
          id: '1',
          image: TImages.nikeLogo,
          name: 'Nike',
          productsCount: 265,
          isFeatured: true),
      images: [
        TImages.productImage140,
        TImages.productImage141,
        TImages.productImage142,
        TImages.productImage143,
      ],
      salePrice: 30,
      sku: 'ABR4568',
      categoryId: '21',
      productAttributes: [
        ProductAttributeModel(name: 'Color', values: ['Green']),
        ProductAttributeModel(name: 'Size', values: ['31', '32', '33']),
      ],
      productVariations: [
        ProductVariationModel(
            id: '1',
            stock: 16,
            price: 36,
            salePrice: 300,
            image: TImages.productImage140,
            description: 'JA 1 NRG EP',
            attributeValues: {'Color': 'Green', 'Size': '31'}),
        ProductVariationModel(
            id: '1',
            stock: 16,
            price: 36,
            salePrice: 300,
            image: TImages.productImage136,
            description: 'JA 1 NRG EP',
            attributeValues: {'Color': 'Green', 'Size': '32'}),
        ProductVariationModel(
            id: '1',
            stock: 16,
            price: 36,
            salePrice: 300,
            image: TImages.productImage136,
            description: 'JA 1 NRG EP',
            attributeValues: {'Color': 'Green', 'Size': '33'}),
      ],
      productType: 'ProductType.variable',
    ),
    ProductModel(
      id: '28',
      title: 'Nike Fly.By Mid 3',
      stock: 15,
      price: 35,
      isFeatured: false,
      thumbnail: TImages.productImage140,
      description: 'Nike Fly.By Mid 3',
      brand: BrandModel(
          id: '1',
          image: TImages.nikeLogo,
          name: 'Nike',
          productsCount: 265,
          isFeatured: true),
      images: [
        TImages.productImage140,
        TImages.productImage141,
        TImages.productImage142,
      ],
      salePrice: 30,
      sku: 'ABR4568',
      categoryId: '21',
      productAttributes: [
        ProductAttributeModel(name: 'Color', values: ['White']),
        ProductAttributeModel(name: 'Size', values: ['31', '32', '33']),
      ],
      productVariations: [
        ProductVariationModel(
            id: '1',
            stock: 16,
            price: 36,
            salePrice: 300,
            image: TImages.productImage140,
            description: 'Nike Fly.By Mid 3',
            attributeValues: {'Color': 'White', 'Size': '31'}),
        ProductVariationModel(
            id: '1',
            stock: 16,
            price: 36,
            salePrice: 300,
            image: TImages.productImage136,
            description: 'Nike Fly.By Mid 3',
            attributeValues: {'Color': 'White', 'Size': '32'}),
        ProductVariationModel(
            id: '1',
            stock: 16,
            price: 36,
            salePrice: 300,
            image: TImages.productImage136,
            description: 'Nike Fly.By Mid 3',
            attributeValues: {'Color': 'White', 'Size': '33'}),
      ],
      productType: 'ProductType.variable',
    ),
  ];

  /// -- Sorting Filters for search
  static final sortingFilters = [
    SortFilterModel(id: '1', name: 'Name'),
    SortFilterModel(id: '2', name: 'Lowest Price'),
    SortFilterModel(id: '3', name: 'Most Popular'),
    SortFilterModel(id: '4', name: 'Highest Price'),
    SortFilterModel(id: '5', name: 'Newest'),
    SortFilterModel(id: '6', name: 'Most Suitable'),
  ];

  /// -- Product Reviews
  static final List<ProductReviewModel> productReviews = [
    ProductReviewModel(
      id: '01',
      userId: '001',
      userName: 'Ahmad Abdul',
      rating: 4.5,
      timestamp: DateTime.now(),
      companyTimestamp: DateTime.now(),
      userImageUrl: TImages.userProfileImage2,
      comment:
          'The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly. Great job!',
      companyComment:
          'Thank you for your kind words, John! We are delighted to hear about your smooth experience with the app. We always strive to offer an intuitive interface for our users. Stay tuned for more updates!',
    ),
    ProductReviewModel(
      id: '02',
      userId: '002',
      userName: 'Kobo Kanaeru',
      rating: 3.5,
      timestamp: DateTime.now(),
      companyTimestamp: DateTime.now(),
      userImageUrl: TImages.userProfileImage1,
      comment:
          'I am genuinely impressed with the app design and the variety of products available. The filter and sort features have made shopping so much easier for me!',
      companyComment:
          'Thank you so much, Sophia! We are thrilled to hear you are enjoying the app and finding the features useful. Our goal is to make your shopping experience as efficient and pleasant as possible. Keep exploring, and happy shopping!',
    ),
    ProductReviewModel(
      id: '03',
      userId: '003',
      userName: 'Yanto',
      rating: 5,
      timestamp: DateTime.now(),
      companyTimestamp: DateTime.now(),
      userImageUrl: TImages.userProfileImage3,
      comment:
          'The app is pretty fast, and the product recommendations are on point! I would love to see more features in the future.',
      companyComment:
          'Thanks for the feedback, Alex! We are thrilled to hear you enjoyed the speed and recommendations. We are constantly working on introducing new features, so keep an eye out for the next update!',
    ),
  ];
}

class SortFilterModel {
  String id;
  String name;

  SortFilterModel({required this.id, required this.name});
}
