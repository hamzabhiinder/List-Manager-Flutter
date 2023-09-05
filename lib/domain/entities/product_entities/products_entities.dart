class Product {
  Product({
    this.id,
    this.name,
    this.slug,
    this.permalink,
    this.dateCreated,
    this.dateCreatedGmt,
    this.dateModified,
    this.dateModifiedGmt,
    this.type,
    this.status,
    this.featured,
    this.catalogVisibility,
    this.description,
    this.shortDescription,
    this.sku,
    this.price,
    this.regularPrice,
    this.salePrice,
    this.dateOnSaleFrom,
    this.dateOnSaleFromGmt,
    this.dateOnSaleTo,
    this.dateOnSaleToGmt,
    this.onSale,
    this.purchasable,
    this.totalSales,
    this.virtual,
    this.downloadable,
    this.downloadLimit,
    this.downloadExpiry,
    this.externalUrl,
    this.buttonText,
    this.taxStatus,
    this.taxClass,
    this.manageStock,
    this.stockQuantity,
    this.backorders,
    this.backordersAllowed,
    this.backordered,
    this.lowStockAmount,
    this.soldIndividually,
    this.weight,
    this.dimensions,
    this.shippingRequired,
    this.shippingTaxable,
    this.shippingClass,
    this.shippingClassId,
    this.reviewsAllowed,
    this.averageRating,
    this.ratingCount,
    this.parentId,
    this.purchaseNote,
    this.categories,
    this.tags,
    this.images,
    this.attributes,
    this.variations,
    this.menuOrder,
    this.priceHtml,
    this.relatedIds,
    this.metaData,
    this.stockStatus,
    this.hasOptions,
    this.translations,
    this.lang,
    this.links,
  });

  Product.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    permalink = json['permalink'];
    dateCreated = json['date_created'];
    dateCreatedGmt = json['date_created_gmt'];
    dateModified = json['date_modified'];
    dateModifiedGmt = json['date_modified_gmt'];
    type = json['type'];
    status = json['status'];
    featured = json['featured'];
    catalogVisibility = json['catalog_visibility'];
    description = json['description'];
    shortDescription = json['short_description'];
    sku = json['sku'];
    price = json['price'];
    regularPrice = json['regular_price'];
    salePrice = json['sale_price'];
    dateOnSaleFrom = json['date_on_sale_from'];
    dateOnSaleFromGmt = json['date_on_sale_from_gmt'];
    dateOnSaleTo = json['date_on_sale_to'];
    dateOnSaleToGmt = json['date_on_sale_to_gmt'];
    onSale = json['on_sale'];
    purchasable = json['purchasable'];
    totalSales = json['total_sales'];
    virtual = json['virtual'];
    downloadable = json['downloadable'];
    downloadLimit = json['download_limit'];
    downloadExpiry = json['download_expiry'];
    externalUrl = json['external_url'];
    buttonText = json['button_text'];
    taxStatus = json['tax_status'];
    taxClass = json['tax_class'];
    manageStock = json['manage_stock'];
    stockQuantity = json['stock_quantity'];
    backorders = json['backorders'];
    backordersAllowed = json['backorders_allowed'];
    backordered = json['backordered'];
    lowStockAmount = json['low_stock_amount'];
    soldIndividually = json['sold_individually'];
    weight = json['weight'];
    dimensions = json['dimensions'] != null
        ? Dimensions.fromJson(json['dimensions'])
        : null;
    shippingRequired = json['shipping_required'];
    shippingTaxable = json['shipping_taxable'];
    shippingClass = json['shipping_class'];
    shippingClassId = json['shipping_class_id'];
    reviewsAllowed = json['reviews_allowed'];
    averageRating = json['average_rating'];
    ratingCount = json['rating_count'];
    parentId = json['parent_id'];
    purchaseNote = json['purchase_note'];
    if (json['categories'] != null) {
      categories = [];
      json['categories'].forEach((v) {
        categories?.add(Categories.fromJson(v));
      });
    }
    if (json['tags'] != null) {
      tags = [];
      json['tags'].forEach((v) {
        tags?.add(Tags.fromJson(v));
      });
    }
    if (json['images'] != null) {
      images = [];
      json['images'].forEach((v) {
        images?.add(Images.fromJson(v));
      });
    }
    if (json['attributes'] != null) {
      attributes = [];
      json['attributes'].forEach((v) {
        attributes?.add(Attributes.fromJson(v));
      });
    }
    variations =
        json['variations'] != null ? json['variations'].cast<num>() : [];
    menuOrder = json['menu_order'];
    priceHtml = json['price_html'];
    relatedIds =
        json['related_ids'] != null ? json['related_ids'].cast<num>() : [];
    stockStatus = json['stock_status'];
    hasOptions = json['has_options'];
    translations = json['translations'] != null
        ? Translations.fromJson(json['translations'])
        : null;
    lang = json['lang'];
    links = json['_links'] != null ? Links.fromJson(json['_links']) : null;
  }
  num? id;
  String? name;
  String? slug;
  String? permalink;
  String? dateCreated;
  String? dateCreatedGmt;
  String? dateModified;
  String? dateModifiedGmt;
  String? type;
  String? status;
  bool? featured;
  String? catalogVisibility;
  String? description;
  String? shortDescription;
  String? sku;
  String? price;
  String? regularPrice;
  String? salePrice;
  dynamic dateOnSaleFrom;
  dynamic dateOnSaleFromGmt;
  dynamic dateOnSaleTo;
  dynamic dateOnSaleToGmt;
  bool? onSale;
  bool? purchasable;
  num? totalSales;
  bool? virtual;
  bool? downloadable;
  num? downloadLimit;
  num? downloadExpiry;
  String? externalUrl;
  String? buttonText;
  String? taxStatus;
  String? taxClass;
  bool? manageStock;
  num? stockQuantity;
  String? backorders;
  bool? backordersAllowed;
  bool? backordered;
  dynamic lowStockAmount;
  bool? soldIndividually;
  String? weight;
  Dimensions? dimensions;
  bool? shippingRequired;
  bool? shippingTaxable;
  String? shippingClass;
  num? shippingClassId;
  bool? reviewsAllowed;
  String? averageRating;
  num? ratingCount;
  num? parentId;
  String? purchaseNote;
  List<Categories>? categories;
  List<Tags>? tags;
  List<Images>? images;
  List<Attributes>? attributes;
  List<num>? variations;
  num? menuOrder;
  String? priceHtml;
  List<num>? relatedIds;
  List<MetaData>? metaData;
  String? stockStatus;
  bool? hasOptions;
  Translations? translations;
  String? lang;
  Links? links;
  Product copyWith({
    num? id,
    String? name,
    String? slug,
    String? permalink,
    String? dateCreated,
    String? dateCreatedGmt,
    String? dateModified,
    String? dateModifiedGmt,
    String? type,
    String? status,
    bool? featured,
    String? catalogVisibility,
    String? description,
    String? shortDescription,
    String? sku,
    String? price,
    String? regularPrice,
    String? salePrice,
    dynamic dateOnSaleFrom,
    dynamic dateOnSaleFromGmt,
    dynamic dateOnSaleTo,
    dynamic dateOnSaleToGmt,
    bool? onSale,
    bool? purchasable,
    num? totalSales,
    bool? virtual,
    bool? downloadable,
    List<dynamic>? downloads,
    num? downloadLimit,
    num? downloadExpiry,
    String? externalUrl,
    String? buttonText,
    String? taxStatus,
    String? taxClass,
    bool? manageStock,
    num? stockQuantity,
    String? backorders,
    bool? backordersAllowed,
    bool? backordered,
    dynamic lowStockAmount,
    bool? soldIndividually,
    String? weight,
    Dimensions? dimensions,
    bool? shippingRequired,
    bool? shippingTaxable,
    String? shippingClass,
    num? shippingClassId,
    bool? reviewsAllowed,
    String? averageRating,
    num? ratingCount,
    List<dynamic>? upsellIds,
    List<dynamic>? crossSellIds,
    num? parentId,
    String? purchaseNote,
    List<Categories>? categories,
    List<Tags>? tags,
    List<Images>? images,
    List<Attributes>? attributes,
    List<dynamic>? defaultAttributes,
    List<num>? variations,
    List<dynamic>? groupedProducts,
    num? menuOrder,
    String? priceHtml,
    List<num>? relatedIds,
    List<MetaData>? metaData,
    String? stockStatus,
    bool? hasOptions,
    Translations? translations,
    String? lang,
    Links? links,
  }) =>
      Product(
        id: id ?? this.id,
        name: name ?? this.name,
        slug: slug ?? this.slug,
        permalink: permalink ?? this.permalink,
        dateCreated: dateCreated ?? this.dateCreated,
        dateCreatedGmt: dateCreatedGmt ?? this.dateCreatedGmt,
        dateModified: dateModified ?? this.dateModified,
        dateModifiedGmt: dateModifiedGmt ?? this.dateModifiedGmt,
        type: type ?? this.type,
        status: status ?? this.status,
        featured: featured ?? this.featured,
        catalogVisibility: catalogVisibility ?? this.catalogVisibility,
        description: description ?? this.description,
        shortDescription: shortDescription ?? this.shortDescription,
        sku: sku ?? this.sku,
        price: price ?? this.price,
        regularPrice: regularPrice ?? this.regularPrice,
        salePrice: salePrice ?? this.salePrice,
        dateOnSaleFrom: dateOnSaleFrom ?? this.dateOnSaleFrom,
        dateOnSaleFromGmt: dateOnSaleFromGmt ?? this.dateOnSaleFromGmt,
        dateOnSaleTo: dateOnSaleTo ?? this.dateOnSaleTo,
        dateOnSaleToGmt: dateOnSaleToGmt ?? this.dateOnSaleToGmt,
        onSale: onSale ?? this.onSale,
        purchasable: purchasable ?? this.purchasable,
        totalSales: totalSales ?? this.totalSales,
        virtual: virtual ?? this.virtual,
        downloadable: downloadable ?? this.downloadable,
        downloadLimit: downloadLimit ?? this.downloadLimit,
        downloadExpiry: downloadExpiry ?? this.downloadExpiry,
        externalUrl: externalUrl ?? this.externalUrl,
        buttonText: buttonText ?? this.buttonText,
        taxStatus: taxStatus ?? this.taxStatus,
        taxClass: taxClass ?? this.taxClass,
        manageStock: manageStock ?? this.manageStock,
        stockQuantity: stockQuantity ?? this.stockQuantity,
        backorders: backorders ?? this.backorders,
        backordersAllowed: backordersAllowed ?? this.backordersAllowed,
        backordered: backordered ?? this.backordered,
        lowStockAmount: lowStockAmount ?? this.lowStockAmount,
        soldIndividually: soldIndividually ?? this.soldIndividually,
        weight: weight ?? this.weight,
        dimensions: dimensions ?? this.dimensions,
        shippingRequired: shippingRequired ?? this.shippingRequired,
        shippingTaxable: shippingTaxable ?? this.shippingTaxable,
        shippingClass: shippingClass ?? this.shippingClass,
        shippingClassId: shippingClassId ?? this.shippingClassId,
        reviewsAllowed: reviewsAllowed ?? this.reviewsAllowed,
        averageRating: averageRating ?? this.averageRating,
        ratingCount: ratingCount ?? this.ratingCount,
        parentId: parentId ?? this.parentId,
        purchaseNote: purchaseNote ?? this.purchaseNote,
        categories: categories ?? this.categories,
        tags: tags ?? this.tags,
        images: images ?? this.images,
        attributes: attributes ?? this.attributes,
        variations: variations ?? this.variations,
        menuOrder: menuOrder ?? this.menuOrder,
        priceHtml: priceHtml ?? this.priceHtml,
        relatedIds: relatedIds ?? this.relatedIds,
        metaData: metaData ?? this.metaData,
        stockStatus: stockStatus ?? this.stockStatus,
        hasOptions: hasOptions ?? this.hasOptions,
        translations: translations ?? this.translations,
        lang: lang ?? this.lang,
        links: links ?? this.links,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['slug'] = slug;
    map['permalink'] = permalink;
    map['date_created'] = dateCreated;
    map['date_created_gmt'] = dateCreatedGmt;
    map['date_modified'] = dateModified;
    map['date_modified_gmt'] = dateModifiedGmt;
    map['type'] = type;
    map['status'] = status;
    map['featured'] = featured;
    map['catalog_visibility'] = catalogVisibility;
    map['description'] = description;
    map['short_description'] = shortDescription;
    map['sku'] = sku;
    map['price'] = price;
    map['regular_price'] = regularPrice;
    map['sale_price'] = salePrice;
    map['date_on_sale_from'] = dateOnSaleFrom;
    map['date_on_sale_from_gmt'] = dateOnSaleFromGmt;
    map['date_on_sale_to'] = dateOnSaleTo;
    map['date_on_sale_to_gmt'] = dateOnSaleToGmt;
    map['on_sale'] = onSale;
    map['purchasable'] = purchasable;
    map['total_sales'] = totalSales;
    map['virtual'] = virtual;
    map['downloadable'] = downloadable;
    map['download_limit'] = downloadLimit;
    map['download_expiry'] = downloadExpiry;
    map['external_url'] = externalUrl;
    map['button_text'] = buttonText;
    map['tax_status'] = taxStatus;
    map['tax_class'] = taxClass;
    map['manage_stock'] = manageStock;
    map['stock_quantity'] = stockQuantity;
    map['backorders'] = backorders;
    map['backorders_allowed'] = backordersAllowed;
    map['backordered'] = backordered;
    map['low_stock_amount'] = lowStockAmount;
    map['sold_individually'] = soldIndividually;
    map['weight'] = weight;
    if (dimensions != null) {
      map['dimensions'] = dimensions?.toJson();
    }
    map['shipping_required'] = shippingRequired;
    map['shipping_taxable'] = shippingTaxable;
    map['shipping_class'] = shippingClass;
    map['shipping_class_id'] = shippingClassId;
    map['reviews_allowed'] = reviewsAllowed;
    map['average_rating'] = averageRating;
    map['rating_count'] = ratingCount;
    map['parent_id'] = parentId;
    map['purchase_note'] = purchaseNote;
    if (categories != null) {
      map['categories'] = categories?.map((v) => v.toJson()).toList();
    }
    if (tags != null) {
      map['tags'] = tags?.map((v) => v.toJson()).toList();
    }
    if (images != null) {
      map['images'] = images?.map((v) => v.toJson()).toList();
    }
    if (attributes != null) {
      map['attributes'] = attributes?.map((v) => v.toJson()).toList();
    }
    map['variations'] = variations;
    map['menu_order'] = menuOrder;
    map['price_html'] = priceHtml;
    map['related_ids'] = relatedIds;
    if (metaData != null) {
      map['meta_data'] = metaData?.map((v) => v.toJson()).toList();
    }
    map['stock_status'] = stockStatus;
    map['has_options'] = hasOptions;
    if (translations != null) {
      map['translations'] = translations?.toJson();
    }
    map['lang'] = lang;
    if (links != null) {
      map['_links'] = links?.toJson();
    }
    return map;
  }
}

class Links {
  Links({
    this.self,
    this.collection,
  });

  Links.fromJson(dynamic json) {
    if (json['self'] != null) {
      self = [];
      json['self'].forEach((v) {
        self?.add(Self.fromJson(v));
      });
    }
    if (json['collection'] != null) {
      collection = [];
      json['collection'].forEach((v) {
        collection?.add(Collection.fromJson(v));
      });
    }
  }
  List<Self>? self;
  List<Collection>? collection;
  Links copyWith({
    List<Self>? self,
    List<Collection>? collection,
  }) =>
      Links(
        self: self ?? this.self,
        collection: collection ?? this.collection,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (self != null) {
      map['self'] = self?.map((v) => v.toJson()).toList();
    }
    if (collection != null) {
      map['collection'] = collection?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Collection {
  Collection({
    this.href,
  });

  Collection.fromJson(dynamic json) {
    href = json['href'];
  }
  String? href;
  Collection copyWith({
    String? href,
  }) =>
      Collection(
        href: href ?? this.href,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['href'] = href;
    return map;
  }
}

class Self {
  Self({
    this.href,
  });

  Self.fromJson(dynamic json) {
    href = json['href'];
  }
  String? href;
  Self copyWith({
    String? href,
  }) =>
      Self(
        href: href ?? this.href,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['href'] = href;
    return map;
  }
}

class Translations {
  Translations({
    this.en,
    this.th,
  });

  Translations.fromJson(dynamic json) {
    en = json['en'];
    th = json['th'];
  }
  String? en;
  String? th;
  Translations copyWith({
    String? en,
    String? th,
  }) =>
      Translations(
        en: en ?? this.en,
        th: th ?? this.th,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['en'] = en;
    map['th'] = th;
    return map;
  }
}

class MetaData {
  MetaData({
    this.id,
    this.key,
    this.value,
  });

  MetaData.fromJson(dynamic json) {
    id = json['id'];
    key = json['key'];
    value = json['value'];
  }
  num? id;
  String? key;
  String? value;
  MetaData copyWith({
    num? id,
    String? key,
    String? value,
  }) =>
      MetaData(
        id: id ?? this.id,
        key: key ?? this.key,
        value: value ?? this.value,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['key'] = key;
    map['value'] = value;
    return map;
  }
}

class Attributes {
  Attributes({
    this.id,
    this.name,
    this.position,
    this.visible,
    this.variation,
    this.options,
  });

  Attributes.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    position = json['position'];
    visible = json['visible'];
    variation = json['variation'];
    options = json['options'] != null ? json['options'].cast<String>() : [];
  }
  num? id;
  String? name;
  num? position;
  bool? visible;
  bool? variation;
  List<String>? options;
  Attributes copyWith({
    num? id,
    String? name,
    num? position,
    bool? visible,
    bool? variation,
    List<String>? options,
  }) =>
      Attributes(
        id: id ?? this.id,
        name: name ?? this.name,
        position: position ?? this.position,
        visible: visible ?? this.visible,
        variation: variation ?? this.variation,
        options: options ?? this.options,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['position'] = position;
    map['visible'] = visible;
    map['variation'] = variation;
    map['options'] = options;
    return map;
  }
}

class Images {
  Images({
    this.id,
    this.dateCreated,
    this.dateCreatedGmt,
    this.dateModified,
    this.dateModifiedGmt,
    this.src,
    this.name,
    this.alt,
  });

  Images.fromJson(dynamic json) {
    id = json['id'];
    dateCreated = json['date_created'];
    dateCreatedGmt = json['date_created_gmt'];
    dateModified = json['date_modified'];
    dateModifiedGmt = json['date_modified_gmt'];
    src = json['src'];
    name = json['name'];
    alt = json['alt'];
  }
  num? id;
  String? dateCreated;
  String? dateCreatedGmt;
  String? dateModified;
  String? dateModifiedGmt;
  String? src;
  String? name;
  String? alt;
  Images copyWith({
    num? id,
    String? dateCreated,
    String? dateCreatedGmt,
    String? dateModified,
    String? dateModifiedGmt,
    String? src,
    String? name,
    String? alt,
  }) =>
      Images(
        id: id ?? this.id,
        dateCreated: dateCreated ?? this.dateCreated,
        dateCreatedGmt: dateCreatedGmt ?? this.dateCreatedGmt,
        dateModified: dateModified ?? this.dateModified,
        dateModifiedGmt: dateModifiedGmt ?? this.dateModifiedGmt,
        src: src ?? this.src,
        name: name ?? this.name,
        alt: alt ?? this.alt,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['date_created'] = dateCreated;
    map['date_created_gmt'] = dateCreatedGmt;
    map['date_modified'] = dateModified;
    map['date_modified_gmt'] = dateModifiedGmt;
    map['src'] = src;
    map['name'] = name;
    map['alt'] = alt;
    return map;
  }
}

class Tags {
  Tags({
    this.id,
    this.name,
    this.slug,
  });

  Tags.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
  }
  num? id;
  String? name;
  String? slug;
  Tags copyWith({
    num? id,
    String? name,
    String? slug,
  }) =>
      Tags(
        id: id ?? this.id,
        name: name ?? this.name,
        slug: slug ?? this.slug,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['slug'] = slug;
    return map;
  }
}

class Categories {
  Categories({
    this.id,
    this.name,
    this.slug,
  });

  Categories.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
  }
  num? id;
  String? name;
  String? slug;
  Categories copyWith({
    num? id,
    String? name,
    String? slug,
  }) =>
      Categories(
        id: id ?? this.id,
        name: name ?? this.name,
        slug: slug ?? this.slug,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['slug'] = slug;
    return map;
  }
}

class Dimensions {
  Dimensions({
    this.length,
    this.width,
    this.height,
  });

  Dimensions.fromJson(dynamic json) {
    length = json['length'];
    width = json['width'];
    height = json['height'];
  }
  String? length;
  String? width;
  String? height;
  Dimensions copyWith({
    String? length,
    String? width,
    String? height,
  }) =>
      Dimensions(
        length: length ?? this.length,
        width: width ?? this.width,
        height: height ?? this.height,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['length'] = length;
    map['width'] = width;
    map['height'] = height;
    return map;
  }
}
