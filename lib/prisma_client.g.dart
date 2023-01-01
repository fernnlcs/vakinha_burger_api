// GENERATED CODE - DO NOT MODIFY BY HAND

part of prisma.client;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AggregateUser _$AggregateUserFromJson(Map<String, dynamic> json) =>
    AggregateUser(
      $count: json['_count'] == null
          ? null
          : UserCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : UserAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : UserSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : UserMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : UserMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AggregateUserToJson(AggregateUser instance) =>
    <String, dynamic>{
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

UserGroupByOutputType _$UserGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UserGroupByOutputType(
      id: json['id'] as int,
      email: json['email'] as String,
      name: json['name'] as String,
      password: json['password'] as String,
      $count: json['_count'] == null
          ? null
          : UserCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : UserAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : UserSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : UserMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : UserMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserGroupByOutputTypeToJson(
        UserGroupByOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'password': instance.password,
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

AggregateProduct _$AggregateProductFromJson(Map<String, dynamic> json) =>
    AggregateProduct(
      $count: json['_count'] == null
          ? null
          : ProductCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : ProductAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : ProductSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : ProductMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : ProductMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AggregateProductToJson(AggregateProduct instance) =>
    <String, dynamic>{
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

ProductGroupByOutputType _$ProductGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    ProductGroupByOutputType(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      image: json['image'] as String?,
      $count: json['_count'] == null
          ? null
          : ProductCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : ProductAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : ProductSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : ProductMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : ProductMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductGroupByOutputTypeToJson(
        ProductGroupByOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'image': instance.image,
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

AggregateOrder _$AggregateOrderFromJson(Map<String, dynamic> json) =>
    AggregateOrder(
      $count: json['_count'] == null
          ? null
          : OrderCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : OrderAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : OrderSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : OrderMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : OrderMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AggregateOrderToJson(AggregateOrder instance) =>
    <String, dynamic>{
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

OrderGroupByOutputType _$OrderGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    OrderGroupByOutputType(
      id: json['id'] as int,
      user_id: json['user_id'] as int,
      transaction_id: json['transaction_id'] as String?,
      client_cpf: json['client_cpf'] as String?,
      delivery_address: json['delivery_address'] as String,
      status: json['status'] as String,
      $count: json['_count'] == null
          ? null
          : OrderCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : OrderAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : OrderSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : OrderMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : OrderMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderGroupByOutputTypeToJson(
        OrderGroupByOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'transaction_id': instance.transaction_id,
      'client_cpf': instance.client_cpf,
      'delivery_address': instance.delivery_address,
      'status': instance.status,
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

AggregateOrderItem _$AggregateOrderItemFromJson(Map<String, dynamic> json) =>
    AggregateOrderItem(
      $count: json['_count'] == null
          ? null
          : OrderItemCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : OrderItemAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : OrderItemSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : OrderItemMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : OrderItemMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AggregateOrderItemToJson(AggregateOrderItem instance) =>
    <String, dynamic>{
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

OrderItemGroupByOutputType _$OrderItemGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    OrderItemGroupByOutputType(
      id: json['id'] as int,
      quantity: json['quantity'] as int,
      order_id: json['order_id'] as int,
      product_id: json['product_id'] as int,
      $count: json['_count'] == null
          ? null
          : OrderItemCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : OrderItemAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : OrderItemSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : OrderItemMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : OrderItemMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderItemGroupByOutputTypeToJson(
        OrderItemGroupByOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'order_id': instance.order_id,
      'product_id': instance.product_id,
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

AffectedRowsOutput _$AffectedRowsOutputFromJson(Map<String, dynamic> json) =>
    AffectedRowsOutput(
      count: json['count'] as int,
    );

Map<String, dynamic> _$AffectedRowsOutputToJson(AffectedRowsOutput instance) =>
    <String, dynamic>{
      'count': instance.count,
    };

UserCountOutputType _$UserCountOutputTypeFromJson(Map<String, dynamic> json) =>
    UserCountOutputType(
      orders: json['orders'] as int,
    );

Map<String, dynamic> _$UserCountOutputTypeToJson(
        UserCountOutputType instance) =>
    <String, dynamic>{
      'orders': instance.orders,
    };

UserCountAggregateOutputType _$UserCountAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UserCountAggregateOutputType(
      id: json['id'] as int,
      email: json['email'] as int,
      name: json['name'] as int,
      password: json['password'] as int,
      $all: json['_all'] as int,
    );

Map<String, dynamic> _$UserCountAggregateOutputTypeToJson(
        UserCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'password': instance.password,
      '_all': instance.$all,
    };

UserAvgAggregateOutputType _$UserAvgAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UserAvgAggregateOutputType(
      id: (json['id'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$UserAvgAggregateOutputTypeToJson(
        UserAvgAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

UserSumAggregateOutputType _$UserSumAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UserSumAggregateOutputType(
      id: json['id'] as int?,
    );

Map<String, dynamic> _$UserSumAggregateOutputTypeToJson(
        UserSumAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

UserMinAggregateOutputType _$UserMinAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UserMinAggregateOutputType(
      id: json['id'] as int?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$UserMinAggregateOutputTypeToJson(
        UserMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'password': instance.password,
    };

UserMaxAggregateOutputType _$UserMaxAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UserMaxAggregateOutputType(
      id: json['id'] as int?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$UserMaxAggregateOutputTypeToJson(
        UserMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'password': instance.password,
    };

ProductCountOutputType _$ProductCountOutputTypeFromJson(
        Map<String, dynamic> json) =>
    ProductCountOutputType(
      orderedItems: json['orderedItems'] as int,
    );

Map<String, dynamic> _$ProductCountOutputTypeToJson(
        ProductCountOutputType instance) =>
    <String, dynamic>{
      'orderedItems': instance.orderedItems,
    };

ProductCountAggregateOutputType _$ProductCountAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    ProductCountAggregateOutputType(
      id: json['id'] as int,
      name: json['name'] as int,
      description: json['description'] as int,
      price: json['price'] as int,
      image: json['image'] as int,
      $all: json['_all'] as int,
    );

Map<String, dynamic> _$ProductCountAggregateOutputTypeToJson(
        ProductCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'image': instance.image,
      '_all': instance.$all,
    };

ProductAvgAggregateOutputType _$ProductAvgAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    ProductAvgAggregateOutputType(
      id: (json['id'] as num?)?.toDouble(),
      price: (json['price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ProductAvgAggregateOutputTypeToJson(
        ProductAvgAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
    };

ProductSumAggregateOutputType _$ProductSumAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    ProductSumAggregateOutputType(
      id: json['id'] as int?,
      price: (json['price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ProductSumAggregateOutputTypeToJson(
        ProductSumAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
    };

ProductMinAggregateOutputType _$ProductMinAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    ProductMinAggregateOutputType(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      image: json['image'] as String?,
    );

Map<String, dynamic> _$ProductMinAggregateOutputTypeToJson(
        ProductMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'image': instance.image,
    };

ProductMaxAggregateOutputType _$ProductMaxAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    ProductMaxAggregateOutputType(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      image: json['image'] as String?,
    );

Map<String, dynamic> _$ProductMaxAggregateOutputTypeToJson(
        ProductMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'image': instance.image,
    };

OrderCountOutputType _$OrderCountOutputTypeFromJson(
        Map<String, dynamic> json) =>
    OrderCountOutputType(
      items: json['items'] as int,
    );

Map<String, dynamic> _$OrderCountOutputTypeToJson(
        OrderCountOutputType instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

OrderCountAggregateOutputType _$OrderCountAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    OrderCountAggregateOutputType(
      id: json['id'] as int,
      user_id: json['user_id'] as int,
      transaction_id: json['transaction_id'] as int,
      client_cpf: json['client_cpf'] as int,
      delivery_address: json['delivery_address'] as int,
      status: json['status'] as int,
      $all: json['_all'] as int,
    );

Map<String, dynamic> _$OrderCountAggregateOutputTypeToJson(
        OrderCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'transaction_id': instance.transaction_id,
      'client_cpf': instance.client_cpf,
      'delivery_address': instance.delivery_address,
      'status': instance.status,
      '_all': instance.$all,
    };

OrderAvgAggregateOutputType _$OrderAvgAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    OrderAvgAggregateOutputType(
      id: (json['id'] as num?)?.toDouble(),
      user_id: (json['user_id'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$OrderAvgAggregateOutputTypeToJson(
        OrderAvgAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
    };

OrderSumAggregateOutputType _$OrderSumAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    OrderSumAggregateOutputType(
      id: json['id'] as int?,
      user_id: json['user_id'] as int?,
    );

Map<String, dynamic> _$OrderSumAggregateOutputTypeToJson(
        OrderSumAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
    };

OrderMinAggregateOutputType _$OrderMinAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    OrderMinAggregateOutputType(
      id: json['id'] as int?,
      user_id: json['user_id'] as int?,
      transaction_id: json['transaction_id'] as String?,
      client_cpf: json['client_cpf'] as String?,
      delivery_address: json['delivery_address'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$OrderMinAggregateOutputTypeToJson(
        OrderMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'transaction_id': instance.transaction_id,
      'client_cpf': instance.client_cpf,
      'delivery_address': instance.delivery_address,
      'status': instance.status,
    };

OrderMaxAggregateOutputType _$OrderMaxAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    OrderMaxAggregateOutputType(
      id: json['id'] as int?,
      user_id: json['user_id'] as int?,
      transaction_id: json['transaction_id'] as String?,
      client_cpf: json['client_cpf'] as String?,
      delivery_address: json['delivery_address'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$OrderMaxAggregateOutputTypeToJson(
        OrderMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'transaction_id': instance.transaction_id,
      'client_cpf': instance.client_cpf,
      'delivery_address': instance.delivery_address,
      'status': instance.status,
    };

OrderItemCountAggregateOutputType _$OrderItemCountAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    OrderItemCountAggregateOutputType(
      id: json['id'] as int,
      quantity: json['quantity'] as int,
      order_id: json['order_id'] as int,
      product_id: json['product_id'] as int,
      $all: json['_all'] as int,
    );

Map<String, dynamic> _$OrderItemCountAggregateOutputTypeToJson(
        OrderItemCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'order_id': instance.order_id,
      'product_id': instance.product_id,
      '_all': instance.$all,
    };

OrderItemAvgAggregateOutputType _$OrderItemAvgAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    OrderItemAvgAggregateOutputType(
      id: (json['id'] as num?)?.toDouble(),
      quantity: (json['quantity'] as num?)?.toDouble(),
      order_id: (json['order_id'] as num?)?.toDouble(),
      product_id: (json['product_id'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$OrderItemAvgAggregateOutputTypeToJson(
        OrderItemAvgAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'order_id': instance.order_id,
      'product_id': instance.product_id,
    };

OrderItemSumAggregateOutputType _$OrderItemSumAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    OrderItemSumAggregateOutputType(
      id: json['id'] as int?,
      quantity: json['quantity'] as int?,
      order_id: json['order_id'] as int?,
      product_id: json['product_id'] as int?,
    );

Map<String, dynamic> _$OrderItemSumAggregateOutputTypeToJson(
        OrderItemSumAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'order_id': instance.order_id,
      'product_id': instance.product_id,
    };

OrderItemMinAggregateOutputType _$OrderItemMinAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    OrderItemMinAggregateOutputType(
      id: json['id'] as int?,
      quantity: json['quantity'] as int?,
      order_id: json['order_id'] as int?,
      product_id: json['product_id'] as int?,
    );

Map<String, dynamic> _$OrderItemMinAggregateOutputTypeToJson(
        OrderItemMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'order_id': instance.order_id,
      'product_id': instance.product_id,
    };

OrderItemMaxAggregateOutputType _$OrderItemMaxAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    OrderItemMaxAggregateOutputType(
      id: json['id'] as int?,
      quantity: json['quantity'] as int?,
      order_id: json['order_id'] as int?,
      product_id: json['product_id'] as int?,
    );

Map<String, dynamic> _$OrderItemMaxAggregateOutputTypeToJson(
        OrderItemMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'order_id': instance.order_id,
      'product_id': instance.product_id,
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as int,
      email: json['email'] as String,
      name: json['name'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'password': instance.password,
    };

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      image: json['image'] as String?,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'image': instance.image,
    };

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
      id: json['id'] as int,
      user_id: json['user_id'] as int,
      transaction_id: json['transaction_id'] as String?,
      client_cpf: json['client_cpf'] as String?,
      delivery_address: json['delivery_address'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'transaction_id': instance.transaction_id,
      'client_cpf': instance.client_cpf,
      'delivery_address': instance.delivery_address,
      'status': instance.status,
    };

OrderItem _$OrderItemFromJson(Map<String, dynamic> json) => OrderItem(
      id: json['id'] as int,
      quantity: json['quantity'] as int,
      order_id: json['order_id'] as int,
      product_id: json['product_id'] as int,
    );

Map<String, dynamic> _$OrderItemToJson(OrderItem instance) => <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'order_id': instance.order_id,
      'product_id': instance.product_id,
    };
