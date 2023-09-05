class CartEntity {
  CartEntity({
    this.coupons,
    this.shippingRates,
    this.shippingAddress,
    this.billingAddress,
    this.items,
    this.itemsCount,
    this.itemsWeight,
    this.crossSells,
    this.needsPayment,
    this.needsShipping,
    this.hasCalculatedShipping,
    this.fees,
    this.totals,
    this.errors,
    this.paymentMethods,
    this.paymentRequirements,
    this.extensions,
  });

  CartEntity.fromJson(dynamic json) {
    if (json['shipping_rates'] != null) {
      shippingRates = [];
      json['shipping_rates'].forEach((v) {
        shippingRates?.add(ShippingDetails.fromJson(v));
      });
    }
    shippingAddress = json['shipping_address'] != null
        ? ShippingAddress.fromJson(json['shipping_address'])
        : null;
    billingAddress = json['billing_address'] != null
        ? BillingAddress.fromJson(json['billing_address'])
        : null;
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
    itemsCount = json['items_count'];
    itemsWeight = json['items_weight'];
    needsPayment = json['needs_payment'];
    needsShipping = json['needs_shipping'];
    hasCalculatedShipping = json['has_calculated_shipping'];
    totals = json['totals'] != null ? Totals.fromJson(json['totals']) : null;
    paymentMethods = json['payment_methods'] != null
        ? json['payment_methods'].cast<String>()
        : [];
    paymentRequirements = json['payment_requirements'] != null
        ? json['payment_requirements'].cast<String>()
        : [];
    extensions = json['extensions'];
  }
  List<dynamic>? coupons;
  List<ShippingDetails>? shippingRates;
  ShippingAddress? shippingAddress;
  BillingAddress? billingAddress;
  List<Items>? items;
  num? itemsCount;
  num? itemsWeight;
  List<dynamic>? crossSells;
  bool? needsPayment;
  bool? needsShipping;
  bool? hasCalculatedShipping;
  List<dynamic>? fees;
  Totals? totals;
  List<dynamic>? errors;
  List<String>? paymentMethods;
  List<String>? paymentRequirements;
  dynamic extensions;
  CartEntity copyWith({
    List<dynamic>? coupons,
    List<ShippingDetails>? shippingRates,
    ShippingAddress? shippingAddress,
    BillingAddress? billingAddress,
    List<Items>? items,
    num? itemsCount,
    num? itemsWeight,
    List<dynamic>? crossSells,
    bool? needsPayment,
    bool? needsShipping,
    bool? hasCalculatedShipping,
    List<dynamic>? fees,
    Totals? totals,
    List<dynamic>? errors,
    List<String>? paymentMethods,
    List<String>? paymentRequirements,
    dynamic extensions,
  }) =>
      CartEntity(
        coupons: coupons ?? this.coupons,
        shippingRates: shippingRates ?? this.shippingRates,
        shippingAddress: shippingAddress ?? this.shippingAddress,
        billingAddress: billingAddress ?? this.billingAddress,
        items: items ?? this.items,
        itemsCount: itemsCount ?? this.itemsCount,
        itemsWeight: itemsWeight ?? this.itemsWeight,
        crossSells: crossSells ?? this.crossSells,
        needsPayment: needsPayment ?? this.needsPayment,
        needsShipping: needsShipping ?? this.needsShipping,
        hasCalculatedShipping:
            hasCalculatedShipping ?? this.hasCalculatedShipping,
        fees: fees ?? this.fees,
        totals: totals ?? this.totals,
        errors: errors ?? this.errors,
        paymentMethods: paymentMethods ?? this.paymentMethods,
        paymentRequirements: paymentRequirements ?? this.paymentRequirements,
        extensions: extensions ?? this.extensions,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (coupons != null) {
      map['coupons'] = coupons?.map((v) => v.toJson()).toList();
    }
    if (shippingRates != null) {
      map['shipping_rates'] = shippingRates?.map((v) => v.toJson()).toList();
    }
    if (shippingAddress != null) {
      map['shipping_address'] = shippingAddress?.toJson();
    }
    if (billingAddress != null) {
      map['billing_address'] = billingAddress?.toJson();
    }
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }
    map['items_count'] = itemsCount;
    map['items_weight'] = itemsWeight;
    if (crossSells != null) {
      map['cross_sells'] = crossSells?.map((v) => v.toJson()).toList();
    }
    map['needs_payment'] = needsPayment;
    map['needs_shipping'] = needsShipping;
    map['has_calculated_shipping'] = hasCalculatedShipping;
    if (fees != null) {
      map['fees'] = fees?.map((v) => v.toJson()).toList();
    }
    if (totals != null) {
      map['totals'] = totals?.toJson();
    }
    if (errors != null) {
      map['errors'] = errors?.map((v) => v.toJson()).toList();
    }
    map['payment_methods'] = paymentMethods;
    map['payment_requirements'] = paymentRequirements;
    map['extensions'] = extensions;
    return map;
  }
}

class Totals {
  Totals({
    this.totalItems,
    this.totalItemsTax,
    this.totalFees,
    this.totalFeesTax,
    this.totalDiscount,
    this.totalDiscountTax,
    this.totalShipping,
    this.totalShippingTax,
    this.totalPrice,
    this.totalTax,
    this.taxLines,
    this.currencyCode,
    this.currencySymbol,
    this.currencyMinorUnit,
    this.currencyDecimalSeparator,
    this.currencyThousandSeparator,
    this.currencyPrefix,
    this.currencySuffix,
  });

  Totals.fromJson(dynamic json) {
    totalItems = json['total_items'];
    totalItemsTax = json['total_items_tax'];
    totalFees = json['total_fees'];
    totalFeesTax = json['total_fees_tax'];
    totalDiscount = json['total_discount'];
    totalDiscountTax = json['total_discount_tax'];
    totalShipping = json['total_shipping'];
    totalShippingTax = json['total_shipping_tax'];
    totalPrice = json['total_price'];
    totalTax = json['total_tax'];
    currencyCode = json['currency_code'];
    currencySymbol = json['currency_symbol'];
    currencyMinorUnit = json['currency_minor_unit'];
    currencyDecimalSeparator = json['currency_decimal_separator'];
    currencyThousandSeparator = json['currency_thousand_separator'];
    currencyPrefix = json['currency_prefix'];
    currencySuffix = json['currency_suffix'];
  }
  String? totalItems;
  String? totalItemsTax;
  String? totalFees;
  String? totalFeesTax;
  String? totalDiscount;
  String? totalDiscountTax;
  String? totalShipping;
  String? totalShippingTax;
  String? totalPrice;
  String? totalTax;
  List<dynamic>? taxLines;
  String? currencyCode;
  String? currencySymbol;
  num? currencyMinorUnit;
  String? currencyDecimalSeparator;
  String? currencyThousandSeparator;
  String? currencyPrefix;
  String? currencySuffix;
  Totals copyWith({
    String? totalItems,
    String? totalItemsTax,
    String? totalFees,
    String? totalFeesTax,
    String? totalDiscount,
    String? totalDiscountTax,
    String? totalShipping,
    String? totalShippingTax,
    String? totalPrice,
    String? totalTax,
    List<dynamic>? taxLines,
    String? currencyCode,
    String? currencySymbol,
    num? currencyMinorUnit,
    String? currencyDecimalSeparator,
    String? currencyThousandSeparator,
    String? currencyPrefix,
    String? currencySuffix,
  }) =>
      Totals(
        totalItems: totalItems ?? this.totalItems,
        totalItemsTax: totalItemsTax ?? this.totalItemsTax,
        totalFees: totalFees ?? this.totalFees,
        totalFeesTax: totalFeesTax ?? this.totalFeesTax,
        totalDiscount: totalDiscount ?? this.totalDiscount,
        totalDiscountTax: totalDiscountTax ?? this.totalDiscountTax,
        totalShipping: totalShipping ?? this.totalShipping,
        totalShippingTax: totalShippingTax ?? this.totalShippingTax,
        totalPrice: totalPrice ?? this.totalPrice,
        totalTax: totalTax ?? this.totalTax,
        taxLines: taxLines ?? this.taxLines,
        currencyCode: currencyCode ?? this.currencyCode,
        currencySymbol: currencySymbol ?? this.currencySymbol,
        currencyMinorUnit: currencyMinorUnit ?? this.currencyMinorUnit,
        currencyDecimalSeparator:
            currencyDecimalSeparator ?? this.currencyDecimalSeparator,
        currencyThousandSeparator:
            currencyThousandSeparator ?? this.currencyThousandSeparator,
        currencyPrefix: currencyPrefix ?? this.currencyPrefix,
        currencySuffix: currencySuffix ?? this.currencySuffix,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['total_items'] = totalItems;
    map['total_items_tax'] = totalItemsTax;
    map['total_fees'] = totalFees;
    map['total_fees_tax'] = totalFeesTax;
    map['total_discount'] = totalDiscount;
    map['total_discount_tax'] = totalDiscountTax;
    map['total_shipping'] = totalShipping;
    map['total_shipping_tax'] = totalShippingTax;
    map['total_price'] = totalPrice;
    map['total_tax'] = totalTax;
    if (taxLines != null) {
      map['tax_lines'] = taxLines?.map((v) => v.toJson()).toList();
    }
    map['currency_code'] = currencyCode;
    map['currency_symbol'] = currencySymbol;
    map['currency_minor_unit'] = currencyMinorUnit;
    map['currency_decimal_separator'] = currencyDecimalSeparator;
    map['currency_thousand_separator'] = currencyThousandSeparator;
    map['currency_prefix'] = currencyPrefix;
    map['currency_suffix'] = currencySuffix;
    return map;
  }
}

class Items {
  Items({
    this.key,
    this.id,
    this.quantity,
    this.quantityLimits,
    this.name,
    this.shortDescription,
    this.description,
    this.sku,
    this.lowStockRemaining,
    this.backordersAllowed,
    this.showBackorderBadge,
    this.soldIndividually,
    this.permalink,
    this.images,
    this.variation,
    this.itemData,
    this.prices,
    this.totals,
    this.catalogVisibility,
    this.extensions,
  });

  Items.fromJson(dynamic json) {
    key = json['key'];
    id = json['id'];
    quantity = json['quantity'];
    quantityLimits = json['quantity_limits'] != null
        ? QuantityLimits.fromJson(json['quantity_limits'])
        : null;
    name = json['name'];
    shortDescription = json['short_description'];
    description = json['description'];
    sku = json['sku'];
    lowStockRemaining = json['low_stock_remaining'];
    backordersAllowed = json['backorders_allowed'];
    showBackorderBadge = json['show_backorder_badge'];
    soldIndividually = json['sold_individually'];
    permalink = json['permalink'];
    if (json['images'] != null) {
      images = [];
      json['images'].forEach((v) {
        images?.add(Images.fromJson(v));
      });
    }
    if (json['variation'] != null) {
      variation = [];
      json['variation'].forEach((v) {
        variation?.add(Variation.fromJson(v));
      });
    }
    prices = json['prices'] != null ? Prices.fromJson(json['prices']) : null;
    totals = json['totals'] != null ? SubTotals.fromJson(json['totals']) : null;
    catalogVisibility = json['catalog_visibility'];
    extensions = json['extensions'];
  }
  String? key;
  num? id;
  num? quantity;
  QuantityLimits? quantityLimits;
  String? name;
  String? shortDescription;
  String? description;
  String? sku;
  num? lowStockRemaining;
  bool? backordersAllowed;
  bool? showBackorderBadge;
  bool? soldIndividually;
  String? permalink;
  List<Images>? images;
  List<Variation>? variation;
  List<dynamic>? itemData;
  Prices? prices;
  SubTotals? totals;
  String? catalogVisibility;
  dynamic extensions;
  Items copyWith({
    String? key,
    num? id,
    num? quantity,
    QuantityLimits? quantityLimits,
    String? name,
    String? shortDescription,
    String? description,
    String? sku,
    num? lowStockRemaining,
    bool? backordersAllowed,
    bool? showBackorderBadge,
    bool? soldIndividually,
    String? permalink,
    List<Images>? images,
    List<Variation>? variation,
    List<dynamic>? itemData,
    Prices? prices,
    SubTotals? totals,
    String? catalogVisibility,
    dynamic extensions,
  }) =>
      Items(
        key: key ?? this.key,
        id: id ?? this.id,
        quantity: quantity ?? this.quantity,
        quantityLimits: quantityLimits ?? this.quantityLimits,
        name: name ?? this.name,
        shortDescription: shortDescription ?? this.shortDescription,
        description: description ?? this.description,
        sku: sku ?? this.sku,
        lowStockRemaining: lowStockRemaining ?? this.lowStockRemaining,
        backordersAllowed: backordersAllowed ?? this.backordersAllowed,
        showBackorderBadge: showBackorderBadge ?? this.showBackorderBadge,
        soldIndividually: soldIndividually ?? this.soldIndividually,
        permalink: permalink ?? this.permalink,
        images: images ?? this.images,
        variation: variation ?? this.variation,
        itemData: itemData ?? this.itemData,
        prices: prices ?? this.prices,
        totals: totals ?? this.totals,
        catalogVisibility: catalogVisibility ?? this.catalogVisibility,
        extensions: extensions ?? this.extensions,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['id'] = id;
    map['quantity'] = quantity;
    if (quantityLimits != null) {
      map['quantity_limits'] = quantityLimits?.toJson();
    }
    map['name'] = name;
    map['short_description'] = shortDescription;
    map['description'] = description;
    map['sku'] = sku;
    map['low_stock_remaining'] = lowStockRemaining;
    map['backorders_allowed'] = backordersAllowed;
    map['show_backorder_badge'] = showBackorderBadge;
    map['sold_individually'] = soldIndividually;
    map['permalink'] = permalink;
    if (images != null) {
      map['images'] = images?.map((v) => v.toJson()).toList();
    }
    if (variation != null) {
      map['variation'] = variation?.map((v) => v.toJson()).toList();
    }
    if (itemData != null) {
      map['item_data'] = itemData?.map((v) => v.toJson()).toList();
    }
    if (prices != null) {
      map['prices'] = prices?.toJson();
    }
    if (totals != null) {
      map['totals'] = totals?.toJson();
    }
    map['catalog_visibility'] = catalogVisibility;
    map['extensions'] = extensions;
    return map;
  }
}

class SubTotals {
  SubTotals({
    this.lineSubtotal,
    this.lineSubtotalTax,
    this.lineTotal,
    this.lineTotalTax,
    this.currencyCode,
    this.currencySymbol,
    this.currencyMinorUnit,
    this.currencyDecimalSeparator,
    this.currencyThousandSeparator,
    this.currencyPrefix,
    this.currencySuffix,
  });

  SubTotals.fromJson(dynamic json) {
    lineSubtotal = json['line_subtotal'];
    lineSubtotalTax = json['line_subtotal_tax'];
    lineTotal = json['line_total'];
    lineTotalTax = json['line_total_tax'];
    currencyCode = json['currency_code'];
    currencySymbol = json['currency_symbol'];
    currencyMinorUnit = json['currency_minor_unit'];
    currencyDecimalSeparator = json['currency_decimal_separator'];
    currencyThousandSeparator = json['currency_thousand_separator'];
    currencyPrefix = json['currency_prefix'];
    currencySuffix = json['currency_suffix'];
  }
  String? lineSubtotal;
  String? lineSubtotalTax;
  String? lineTotal;
  String? lineTotalTax;
  String? currencyCode;
  String? currencySymbol;
  num? currencyMinorUnit;
  String? currencyDecimalSeparator;
  String? currencyThousandSeparator;
  String? currencyPrefix;
  String? currencySuffix;
  SubTotals copyWith({
    String? lineSubtotal,
    String? lineSubtotalTax,
    String? lineTotal,
    String? lineTotalTax,
    String? currencyCode,
    String? currencySymbol,
    num? currencyMinorUnit,
    String? currencyDecimalSeparator,
    String? currencyThousandSeparator,
    String? currencyPrefix,
    String? currencySuffix,
  }) =>
      SubTotals(
        lineSubtotal: lineSubtotal ?? this.lineSubtotal,
        lineSubtotalTax: lineSubtotalTax ?? this.lineSubtotalTax,
        lineTotal: lineTotal ?? this.lineTotal,
        lineTotalTax: lineTotalTax ?? this.lineTotalTax,
        currencyCode: currencyCode ?? this.currencyCode,
        currencySymbol: currencySymbol ?? this.currencySymbol,
        currencyMinorUnit: currencyMinorUnit ?? this.currencyMinorUnit,
        currencyDecimalSeparator:
            currencyDecimalSeparator ?? this.currencyDecimalSeparator,
        currencyThousandSeparator:
            currencyThousandSeparator ?? this.currencyThousandSeparator,
        currencyPrefix: currencyPrefix ?? this.currencyPrefix,
        currencySuffix: currencySuffix ?? this.currencySuffix,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['line_subtotal'] = lineSubtotal;
    map['line_subtotal_tax'] = lineSubtotalTax;
    map['line_total'] = lineTotal;
    map['line_total_tax'] = lineTotalTax;
    map['currency_code'] = currencyCode;
    map['currency_symbol'] = currencySymbol;
    map['currency_minor_unit'] = currencyMinorUnit;
    map['currency_decimal_separator'] = currencyDecimalSeparator;
    map['currency_thousand_separator'] = currencyThousandSeparator;
    map['currency_prefix'] = currencyPrefix;
    map['currency_suffix'] = currencySuffix;
    return map;
  }
}

class Prices {
  Prices({
    this.price,
    this.regularPrice,
    this.salePrice,
    this.priceRange,
    this.currencyCode,
    this.currencySymbol,
    this.currencyMinorUnit,
    this.currencyDecimalSeparator,
    this.currencyThousandSeparator,
    this.currencyPrefix,
    this.currencySuffix,
    this.rawPrices,
  });

  Prices.fromJson(dynamic json) {
    price = json['price'];
    regularPrice = json['regular_price'];
    salePrice = json['sale_price'];
    priceRange = json['price_range'];
    currencyCode = json['currency_code'];
    currencySymbol = json['currency_symbol'];
    currencyMinorUnit = json['currency_minor_unit'];
    currencyDecimalSeparator = json['currency_decimal_separator'];
    currencyThousandSeparator = json['currency_thousand_separator'];
    currencyPrefix = json['currency_prefix'];
    currencySuffix = json['currency_suffix'];
    rawPrices = json['raw_prices'] != null
        ? RawPrices.fromJson(json['raw_prices'])
        : null;
  }
  String? price;
  String? regularPrice;
  String? salePrice;
  dynamic priceRange;
  String? currencyCode;
  String? currencySymbol;
  num? currencyMinorUnit;
  String? currencyDecimalSeparator;
  String? currencyThousandSeparator;
  String? currencyPrefix;
  String? currencySuffix;
  RawPrices? rawPrices;
  Prices copyWith({
    String? price,
    String? regularPrice,
    String? salePrice,
    dynamic priceRange,
    String? currencyCode,
    String? currencySymbol,
    num? currencyMinorUnit,
    String? currencyDecimalSeparator,
    String? currencyThousandSeparator,
    String? currencyPrefix,
    String? currencySuffix,
    RawPrices? rawPrices,
  }) =>
      Prices(
        price: price ?? this.price,
        regularPrice: regularPrice ?? this.regularPrice,
        salePrice: salePrice ?? this.salePrice,
        priceRange: priceRange ?? this.priceRange,
        currencyCode: currencyCode ?? this.currencyCode,
        currencySymbol: currencySymbol ?? this.currencySymbol,
        currencyMinorUnit: currencyMinorUnit ?? this.currencyMinorUnit,
        currencyDecimalSeparator:
            currencyDecimalSeparator ?? this.currencyDecimalSeparator,
        currencyThousandSeparator:
            currencyThousandSeparator ?? this.currencyThousandSeparator,
        currencyPrefix: currencyPrefix ?? this.currencyPrefix,
        currencySuffix: currencySuffix ?? this.currencySuffix,
        rawPrices: rawPrices ?? this.rawPrices,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['price'] = price;
    map['regular_price'] = regularPrice;
    map['sale_price'] = salePrice;
    map['price_range'] = priceRange;
    map['currency_code'] = currencyCode;
    map['currency_symbol'] = currencySymbol;
    map['currency_minor_unit'] = currencyMinorUnit;
    map['currency_decimal_separator'] = currencyDecimalSeparator;
    map['currency_thousand_separator'] = currencyThousandSeparator;
    map['currency_prefix'] = currencyPrefix;
    map['currency_suffix'] = currencySuffix;
    if (rawPrices != null) {
      map['raw_prices'] = rawPrices?.toJson();
    }
    return map;
  }
}

class RawPrices {
  RawPrices({
    this.precision,
    this.price,
    this.regularPrice,
    this.salePrice,
  });

  RawPrices.fromJson(dynamic json) {
    precision = json['precision'];
    price = json['price'];
    regularPrice = json['regular_price'];
    salePrice = json['sale_price'];
  }
  num? precision;
  String? price;
  String? regularPrice;
  String? salePrice;
  RawPrices copyWith({
    num? precision,
    String? price,
    String? regularPrice,
    String? salePrice,
  }) =>
      RawPrices(
        precision: precision ?? this.precision,
        price: price ?? this.price,
        regularPrice: regularPrice ?? this.regularPrice,
        salePrice: salePrice ?? this.salePrice,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['precision'] = precision;
    map['price'] = price;
    map['regular_price'] = regularPrice;
    map['sale_price'] = salePrice;
    return map;
  }
}

class Variation {
  Variation({
    this.attribute,
    this.value,
  });

  Variation.fromJson(dynamic json) {
    attribute = json['attribute'];
    value = json['value'];
  }
  String? attribute;
  String? value;
  Variation copyWith({
    String? attribute,
    String? value,
  }) =>
      Variation(
        attribute: attribute ?? this.attribute,
        value: value ?? this.value,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['attribute'] = attribute;
    map['value'] = value;
    return map;
  }
}

class Images {
  Images({
    this.id,
    this.src,
    this.thumbnail,
    this.srcset,
    this.sizes,
    this.name,
    this.alt,
  });

  Images.fromJson(dynamic json) {
    id = json['id'];
    src = json['src'];
    thumbnail = json['thumbnail'];
    srcset = json['srcset'];
    sizes = json['sizes'];
    name = json['name'];
    alt = json['alt'];
  }
  num? id;
  String? src;
  String? thumbnail;
  String? srcset;
  String? sizes;
  String? name;
  String? alt;
  Images copyWith({
    num? id,
    String? src,
    String? thumbnail,
    String? srcset,
    String? sizes,
    String? name,
    String? alt,
  }) =>
      Images(
        id: id ?? this.id,
        src: src ?? this.src,
        thumbnail: thumbnail ?? this.thumbnail,
        srcset: srcset ?? this.srcset,
        sizes: sizes ?? this.sizes,
        name: name ?? this.name,
        alt: alt ?? this.alt,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['src'] = src;
    map['thumbnail'] = thumbnail;
    map['srcset'] = srcset;
    map['sizes'] = sizes;
    map['name'] = name;
    map['alt'] = alt;
    return map;
  }
}

class QuantityLimits {
  QuantityLimits({
    this.minimum,
    this.maximum,
    this.multipleOf,
    this.editable,
  });

  QuantityLimits.fromJson(dynamic json) {
    minimum = json['minimum'];
    maximum = json['maximum'];
    multipleOf = json['multiple_of'];
    editable = json['editable'];
  }
  num? minimum;
  num? maximum;
  num? multipleOf;
  bool? editable;
  QuantityLimits copyWith({
    num? minimum,
    num? maximum,
    num? multipleOf,
    bool? editable,
  }) =>
      QuantityLimits(
        minimum: minimum ?? this.minimum,
        maximum: maximum ?? this.maximum,
        multipleOf: multipleOf ?? this.multipleOf,
        editable: editable ?? this.editable,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['minimum'] = minimum;
    map['maximum'] = maximum;
    map['multiple_of'] = multipleOf;
    map['editable'] = editable;
    return map;
  }
}

class BillingAddress {
  BillingAddress({
    this.firstName,
    this.lastName,
    this.company,
    this.address1,
    this.address2,
    this.city,
    this.state,
    this.postcode,
    this.country,
    this.email,
    this.phone,
  });

  BillingAddress.fromJson(dynamic json) {
    firstName = json['first_name'];
    lastName = json['last_name'];
    company = json['company'];
    address1 = json['address_1'];
    address2 = json['address_2'];
    city = json['city'];
    state = json['state'];
    postcode = json['postcode'];
    country = json['country'];
    email = json['email'];
    phone = json['phone'];
  }
  String? firstName;
  String? lastName;
  String? company;
  String? address1;
  String? address2;
  String? city;
  String? state;
  String? postcode;
  String? country;
  String? email;
  String? phone;
  BillingAddress copyWith({
    String? firstName,
    String? lastName,
    String? company,
    String? address1,
    String? address2,
    String? city,
    String? state,
    String? postcode,
    String? country,
    String? email,
    String? phone,
  }) =>
      BillingAddress(
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        company: company ?? this.company,
        address1: address1 ?? this.address1,
        address2: address2 ?? this.address2,
        city: city ?? this.city,
        state: state ?? this.state,
        postcode: postcode ?? this.postcode,
        country: country ?? this.country,
        email: email ?? this.email,
        phone: phone ?? this.phone,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['first_name'] = firstName;
    map['last_name'] = lastName;
    map['company'] = company;
    map['address_1'] = address1;
    map['address_2'] = address2;
    map['city'] = city;
    map['state'] = state;
    map['postcode'] = postcode;
    map['country'] = country;
    map['email'] = email;
    map['phone'] = phone;
    return map;
  }
}

class ShippingAddress {
  ShippingAddress({
    this.firstName,
    this.lastName,
    this.company,
    this.address1,
    this.address2,
    this.city,
    this.state,
    this.postcode,
    this.country,
    this.phone,
  });

  ShippingAddress.fromJson(dynamic json) {
    firstName = json['first_name'];
    lastName = json['last_name'];
    company = json['company'];
    address1 = json['address_1'];
    address2 = json['address_2'];
    city = json['city'];
    state = json['state'];
    postcode = json['postcode'];
    country = json['country'];
    phone = json['phone'];
  }
  String? firstName;
  String? lastName;
  String? company;
  String? address1;
  String? address2;
  String? city;
  String? state;
  String? postcode;
  String? country;
  String? phone;
  ShippingAddress copyWith({
    String? firstName,
    String? lastName,
    String? company,
    String? address1,
    String? address2,
    String? city,
    String? state,
    String? postcode,
    String? country,
    String? phone,
  }) =>
      ShippingAddress(
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        company: company ?? this.company,
        address1: address1 ?? this.address1,
        address2: address2 ?? this.address2,
        city: city ?? this.city,
        state: state ?? this.state,
        postcode: postcode ?? this.postcode,
        country: country ?? this.country,
        phone: phone ?? this.phone,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['first_name'] = firstName;
    map['last_name'] = lastName;
    map['company'] = company;
    map['address_1'] = address1;
    map['address_2'] = address2;
    map['city'] = city;
    map['state'] = state;
    map['postcode'] = postcode;
    map['country'] = country;
    map['phone'] = phone;
    return map;
  }
}

class ShippingDetails {
  ShippingDetails({
    this.packageId,
    this.name,
    this.destination,
    this.items,
    this.shippingRates,
  });

  ShippingDetails.fromJson(dynamic json) {
    packageId = json['package_id'];
    name = json['name'];
    destination = json['destination'] != null
        ? Destination.fromJson(json['destination'])
        : null;
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items?.add(ItemsInfo.fromJson(v));
      });
    }
    if (json['shipping_rates'] != null) {
      shippingRates = [];
      json['shipping_rates'].forEach((v) {
        shippingRates?.add(ShippingRates.fromJson(v));
      });
    }
  }
  num? packageId;
  String? name;
  Destination? destination;
  List<ItemsInfo>? items;
  List<ShippingRates>? shippingRates;
  ShippingDetails copyWith({
    num? packageId,
    String? name,
    Destination? destination,
    List<ItemsInfo>? items,
    List<ShippingRates>? shippingRates,
  }) =>
      ShippingDetails(
        packageId: packageId ?? this.packageId,
        name: name ?? this.name,
        destination: destination ?? this.destination,
        items: items ?? this.items,
        shippingRates: shippingRates ?? this.shippingRates,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['package_id'] = packageId;
    map['name'] = name;
    if (destination != null) {
      map['destination'] = destination?.toJson();
    }
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }
    if (shippingRates != null) {
      map['shipping_rates'] = shippingRates?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class ShippingRates {
  ShippingRates({
    this.rateId,
    this.name,
    this.description,
    this.deliveryTime,
    this.price,
    this.taxes,
    this.instanceId,
    this.methodId,
    this.metaData,
    this.selected,
    this.currencyCode,
    this.currencySymbol,
    this.currencyMinorUnit,
    this.currencyDecimalSeparator,
    this.currencyThousandSeparator,
    this.currencyPrefix,
    this.currencySuffix,
  });

  ShippingRates.fromJson(dynamic json) {
    rateId = json['rate_id'];
    name = json['name'];
    description = json['description'];
    deliveryTime = json['delivery_time'];
    price = json['price'];
    taxes = json['taxes'];
    instanceId = json['instance_id'];
    methodId = json['method_id'];
    if (json['meta_data'] != null) {
      metaData = [];
      json['meta_data'].forEach((v) {
        metaData?.add(MetaData.fromJson(v));
      });
    }
    selected = json['selected'];
    currencyCode = json['currency_code'];
    currencySymbol = json['currency_symbol'];
    currencyMinorUnit = json['currency_minor_unit'];
    currencyDecimalSeparator = json['currency_decimal_separator'];
    currencyThousandSeparator = json['currency_thousand_separator'];
    currencyPrefix = json['currency_prefix'];
    currencySuffix = json['currency_suffix'];
  }
  String? rateId;
  String? name;
  String? description;
  String? deliveryTime;
  String? price;
  String? taxes;
  num? instanceId;
  String? methodId;
  List<MetaData>? metaData;
  bool? selected;
  String? currencyCode;
  String? currencySymbol;
  num? currencyMinorUnit;
  String? currencyDecimalSeparator;
  String? currencyThousandSeparator;
  String? currencyPrefix;
  String? currencySuffix;
  ShippingRates copyWith({
    String? rateId,
    String? name,
    String? description,
    String? deliveryTime,
    String? price,
    String? taxes,
    num? instanceId,
    String? methodId,
    List<MetaData>? metaData,
    bool? selected,
    String? currencyCode,
    String? currencySymbol,
    num? currencyMinorUnit,
    String? currencyDecimalSeparator,
    String? currencyThousandSeparator,
    String? currencyPrefix,
    String? currencySuffix,
  }) =>
      ShippingRates(
        rateId: rateId ?? this.rateId,
        name: name ?? this.name,
        description: description ?? this.description,
        deliveryTime: deliveryTime ?? this.deliveryTime,
        price: price ?? this.price,
        taxes: taxes ?? this.taxes,
        instanceId: instanceId ?? this.instanceId,
        methodId: methodId ?? this.methodId,
        metaData: metaData ?? this.metaData,
        selected: selected ?? this.selected,
        currencyCode: currencyCode ?? this.currencyCode,
        currencySymbol: currencySymbol ?? this.currencySymbol,
        currencyMinorUnit: currencyMinorUnit ?? this.currencyMinorUnit,
        currencyDecimalSeparator:
            currencyDecimalSeparator ?? this.currencyDecimalSeparator,
        currencyThousandSeparator:
            currencyThousandSeparator ?? this.currencyThousandSeparator,
        currencyPrefix: currencyPrefix ?? this.currencyPrefix,
        currencySuffix: currencySuffix ?? this.currencySuffix,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['rate_id'] = rateId;
    map['name'] = name;
    map['description'] = description;
    map['delivery_time'] = deliveryTime;
    map['price'] = price;
    map['taxes'] = taxes;
    map['instance_id'] = instanceId;
    map['method_id'] = methodId;
    if (metaData != null) {
      map['meta_data'] = metaData?.map((v) => v.toJson()).toList();
    }
    map['selected'] = selected;
    map['currency_code'] = currencyCode;
    map['currency_symbol'] = currencySymbol;
    map['currency_minor_unit'] = currencyMinorUnit;
    map['currency_decimal_separator'] = currencyDecimalSeparator;
    map['currency_thousand_separator'] = currencyThousandSeparator;
    map['currency_prefix'] = currencyPrefix;
    map['currency_suffix'] = currencySuffix;
    return map;
  }
}

class MetaData {
  MetaData({
    this.key,
    this.value,
  });

  MetaData.fromJson(dynamic json) {
    key = json['key'];
    value = json['value'];
  }
  String? key;
  String? value;
  MetaData copyWith({
    String? key,
    String? value,
  }) =>
      MetaData(
        key: key ?? this.key,
        value: value ?? this.value,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }
}

class ItemsInfo {
  ItemsInfo({
    this.key,
    this.name,
    this.quantity,
  });

  ItemsInfo.fromJson(dynamic json) {
    key = json['key'];
    name = json['name'];
    quantity = json['quantity'];
  }
  String? key;
  String? name;
  num? quantity;
  ItemsInfo copyWith({
    String? key,
    String? name,
    num? quantity,
  }) =>
      ItemsInfo(
        key: key ?? this.key,
        name: name ?? this.name,
        quantity: quantity ?? this.quantity,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['name'] = name;
    map['quantity'] = quantity;
    return map;
  }
}

class Destination {
  Destination({
    this.address1,
    this.address2,
    this.city,
    this.state,
    this.postcode,
    this.country,
  });

  Destination.fromJson(dynamic json) {
    address1 = json['address_1'];
    address2 = json['address_2'];
    city = json['city'];
    state = json['state'];
    postcode = json['postcode'];
    country = json['country'];
  }
  String? address1;
  String? address2;
  String? city;
  String? state;
  String? postcode;
  String? country;
  Destination copyWith({
    String? address1,
    String? address2,
    String? city,
    String? state,
    String? postcode,
    String? country,
  }) =>
      Destination(
        address1: address1 ?? this.address1,
        address2: address2 ?? this.address2,
        city: city ?? this.city,
        state: state ?? this.state,
        postcode: postcode ?? this.postcode,
        country: country ?? this.country,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['address_1'] = address1;
    map['address_2'] = address2;
    map['city'] = city;
    map['state'] = state;
    map['postcode'] = postcode;
    map['country'] = country;
    return map;
  }
}
