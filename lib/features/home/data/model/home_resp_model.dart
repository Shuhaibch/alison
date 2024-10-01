import 'dart:convert';

class HomeRespModel {
    final int? success;
    final String? message;
    final List<Banner>? banner1;
    final List<dynamic>? banner2;
    final List<Banner>? banner3;
    final List<Banner>? banner4;
    final List<dynamic>? banner5;
    final List<BestSeller>? recentviews;
    final List<BestSeller>? ourProducts;
    final List<BestSeller>? suggestedProducts;
    final List<BestSeller>? bestSeller;
    final List<BestSeller>? flashSail;
    final List<dynamic>? newarrivals;
    final List<Ory>? categories;
    final List<Ory>? topAccessories;
    final List<Featuredbrand>? featuredbrands;
    final int? cartcount;
    final int? wishlistcount;
    final Currency? currency;
    final int? notificationCount;

    HomeRespModel({
        this.success,
        this.message,
        this.banner1,
        this.banner2,
        this.banner3,
        this.banner4,
        this.banner5,
        this.recentviews,
        this.ourProducts,
        this.suggestedProducts,
        this.bestSeller,
        this.flashSail,
        this.newarrivals,
        this.categories,
        this.topAccessories,
        this.featuredbrands,
        this.cartcount,
        this.wishlistcount,
        this.currency,
        this.notificationCount,
    });

    HomeRespModel copyWith({
        int? success,
        String? message,
        List<Banner>? banner1,
        List<dynamic>? banner2,
        List<Banner>? banner3,
        List<Banner>? banner4,
        List<dynamic>? banner5,
        List<BestSeller>? recentviews,
        List<BestSeller>? ourProducts,
        List<BestSeller>? suggestedProducts,
        List<BestSeller>? bestSeller,
        List<BestSeller>? flashSail,
        List<dynamic>? newarrivals,
        List<Ory>? categories,
        List<Ory>? topAccessories,
        List<Featuredbrand>? featuredbrands,
        int? cartcount,
        int? wishlistcount,
        Currency? currency,
        int? notificationCount,
    }) => 
        HomeRespModel(
            success: success ?? this.success,
            message: message ?? this.message,
            banner1: banner1 ?? this.banner1,
            banner2: banner2 ?? this.banner2,
            banner3: banner3 ?? this.banner3,
            banner4: banner4 ?? this.banner4,
            banner5: banner5 ?? this.banner5,
            recentviews: recentviews ?? this.recentviews,
            ourProducts: ourProducts ?? this.ourProducts,
            suggestedProducts: suggestedProducts ?? this.suggestedProducts,
            bestSeller: bestSeller ?? this.bestSeller,
            flashSail: flashSail ?? this.flashSail,
            newarrivals: newarrivals ?? this.newarrivals,
            categories: categories ?? this.categories,
            topAccessories: topAccessories ?? this.topAccessories,
            featuredbrands: featuredbrands ?? this.featuredbrands,
            cartcount: cartcount ?? this.cartcount,
            wishlistcount: wishlistcount ?? this.wishlistcount,
            currency: currency ?? this.currency,
            notificationCount: notificationCount ?? this.notificationCount,
        );

    factory HomeRespModel.fromRawJson(String str) => HomeRespModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory HomeRespModel.fromJson(Map<String, dynamic> json) => HomeRespModel(
        success: json["success"],
        message: json["message"],
        banner1: json["banner1"] == null ? [] : List<Banner>.from(json["banner1"]!.map((x) => Banner.fromJson(x))),
        banner2: json["banner2"] == null ? [] : List<dynamic>.from(json["banner2"]!.map((x) => x)),
        banner3: json["banner3"] == null ? [] : List<Banner>.from(json["banner3"]!.map((x) => Banner.fromJson(x))),
        banner4: json["banner4"] == null ? [] : List<Banner>.from(json["banner4"]!.map((x) => Banner.fromJson(x))),
        banner5: json["banner5"] == null ? [] : List<dynamic>.from(json["banner5"]!.map((x) => x)),
        recentviews: json["recentviews"] == null ? [] : List<BestSeller>.from(json["recentviews"]!.map((x) => BestSeller.fromJson(x))),
        ourProducts: json["our_products"] == null ? [] : List<BestSeller>.from(json["our_products"]!.map((x) => BestSeller.fromJson(x))),
        suggestedProducts: json["suggested_products"] == null ? [] : List<BestSeller>.from(json["suggested_products"]!.map((x) => BestSeller.fromJson(x))),
        bestSeller: json["best_seller"] == null ? [] : List<BestSeller>.from(json["best_seller"]!.map((x) => BestSeller.fromJson(x))),
        flashSail: json["flash_sail"] == null ? [] : List<BestSeller>.from(json["flash_sail"]!.map((x) => BestSeller.fromJson(x))),
        newarrivals: json["newarrivals"] == null ? [] : List<dynamic>.from(json["newarrivals"]!.map((x) => x)),
        categories: json["categories"] == null ? [] : List<Ory>.from(json["categories"]!.map((x) => Ory.fromJson(x))),
        topAccessories: json["top_accessories"] == null ? [] : List<Ory>.from(json["top_accessories"]!.map((x) => Ory.fromJson(x))),
        featuredbrands: json["featuredbrands"] == null ? [] : List<Featuredbrand>.from(json["featuredbrands"]!.map((x) => Featuredbrand.fromJson(x))),
        cartcount: json["cartcount"],
        wishlistcount: json["wishlistcount"],
        currency: json["currency"] == null ? null : Currency.fromJson(json["currency"]),
        notificationCount: json["notification_count"],
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "banner1": banner1 == null ? [] : List<dynamic>.from(banner1!.map((x) => x.toJson())),
        "banner2": banner2 == null ? [] : List<dynamic>.from(banner2!.map((x) => x)),
        "banner3": banner3 == null ? [] : List<dynamic>.from(banner3!.map((x) => x.toJson())),
        "banner4": banner4 == null ? [] : List<dynamic>.from(banner4!.map((x) => x.toJson())),
        "banner5": banner5 == null ? [] : List<dynamic>.from(banner5!.map((x) => x)),
        "recentviews": recentviews == null ? [] : List<dynamic>.from(recentviews!.map((x) => x.toJson())),
        "our_products": ourProducts == null ? [] : List<dynamic>.from(ourProducts!.map((x) => x.toJson())),
        "suggested_products": suggestedProducts == null ? [] : List<dynamic>.from(suggestedProducts!.map((x) => x.toJson())),
        "best_seller": bestSeller == null ? [] : List<dynamic>.from(bestSeller!.map((x) => x.toJson())),
        "flash_sail": flashSail == null ? [] : List<dynamic>.from(flashSail!.map((x) => x.toJson())),
        "newarrivals": newarrivals == null ? [] : List<dynamic>.from(newarrivals!.map((x) => x)),
        "categories": categories == null ? [] : List<dynamic>.from(categories!.map((x) => x.toJson())),
        "top_accessories": topAccessories == null ? [] : List<dynamic>.from(topAccessories!.map((x) => x.toJson())),
        "featuredbrands": featuredbrands == null ? [] : List<dynamic>.from(featuredbrands!.map((x) => x.toJson())),
        "cartcount": cartcount,
        "wishlistcount": wishlistcount,
        "currency": currency?.toJson(),
        "notification_count": notificationCount,
    };
}

class Banner {
    final int? id;
    final int? linkType;
    final String? linkValue;
    final String? image;
    final String? title;
    final String? subTitle;
    final dynamic logo;

    Banner({
        this.id,
        this.linkType,
        this.linkValue,
        this.image,
        this.title,
        this.subTitle,
        this.logo,
    });

    Banner copyWith({
        int? id,
        int? linkType,
        String? linkValue,
        String? image,
        String? title,
        String? subTitle,
        dynamic logo,
    }) => 
        Banner(
            id: id ?? this.id,
            linkType: linkType ?? this.linkType,
            linkValue: linkValue ?? this.linkValue,
            image: image ?? this.image,
            title: title ?? this.title,
            subTitle: subTitle ?? this.subTitle,
            logo: logo ?? this.logo,
        );

    factory Banner.fromRawJson(String str) => Banner.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Banner.fromJson(Map<String, dynamic> json) => Banner(
        id: json["id"],
        linkType: json["link_type"],
        linkValue: json["link_value"],
        image: json["image"],
        title: json["title"],
        subTitle: json["sub_title"],
        logo: json["logo"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "link_type": linkType,
        "link_value": linkValue,
        "image": image,
        "title": title,
        "sub_title": subTitle,
        "logo": logo,
    };
}

class BestSeller {
    final int? productId;
    final String? slug;
    final String? code;
    final String? homeImg;
    final String? name;
    final int? isGender;
    final String? store;
    final String? manufacturer;
    final String? oldprice;
    final String? price;
    final String? image;
    final int? cart;
    final int? wishlist;

    BestSeller({
        this.productId,
        this.slug,
        this.code,
        this.homeImg,
        this.name,
        this.isGender,
        this.store,
        this.manufacturer,
        this.oldprice,
        this.price,
        this.image,
        this.cart,
        this.wishlist,
    });

    BestSeller copyWith({
        int? productId,
        String? slug,
        String? code,
        String? homeImg,
        String? name,
        int? isGender,
        String? store,
        String? manufacturer,
        String? oldprice,
        String? price,
        String? image,
        int? cart,
        int? wishlist,
    }) => 
        BestSeller(
            productId: productId ?? this.productId,
            slug: slug ?? this.slug,
            code: code ?? this.code,
            homeImg: homeImg ?? this.homeImg,
            name: name ?? this.name,
            isGender: isGender ?? this.isGender,
            store: store ?? this.store,
            manufacturer: manufacturer ?? this.manufacturer,
            oldprice: oldprice ?? this.oldprice,
            price: price ?? this.price,
            image: image ?? this.image,
            cart: cart ?? this.cart,
            wishlist: wishlist ?? this.wishlist,
        );

    factory BestSeller.fromRawJson(String str) => BestSeller.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory BestSeller.fromJson(Map<String, dynamic> json) => BestSeller(
        productId: json["productId"],
        slug: json["slug"],
        code: json["code"],
        homeImg: json["home_img"],
        name: json["name"],
        isGender: json["is_gender"],
        store: json["store"],
        manufacturer: json["manufacturer"],
        oldprice: json["oldprice"],
        price: json["price"],
        image: json["image"],
        cart: json["cart"],
        wishlist: json["wishlist"],
    );

    Map<String, dynamic> toJson() => {
        "productId": productId,
        "slug": slug,
        "code": code,
        "home_img": homeImg,
        "name": name,
        "is_gender": isGender,
        "store": store,
        "manufacturer": manufacturer,
        "oldprice": oldprice,
        "price": price,
        "image": image,
        "cart": cart,
        "wishlist": wishlist,
    };
}

class Ory {
    final Featuredbrand? category;

    Ory({
        this.category,
    });

    Ory copyWith({
        Featuredbrand? category,
    }) => 
        Ory(
            category: category ?? this.category,
        );

    factory Ory.fromRawJson(String str) => Ory.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Ory.fromJson(Map<String, dynamic> json) => Ory(
        category: json["category"] == null ? null : Featuredbrand.fromJson(json["category"]),
    );

    Map<String, dynamic> toJson() => {
        "category": category?.toJson(),
    };
}

class Featuredbrand {
    final int? id;
    final String? slug;
    final String? image;
    final String? name;
    final String? description;

    Featuredbrand({
        this.id,
        this.slug,
        this.image,
        this.name,
        this.description,
    });

    Featuredbrand copyWith({
        int? id,
        String? slug,
        String? image,
        String? name,
        String? description,
    }) => 
        Featuredbrand(
            id: id ?? this.id,
            slug: slug ?? this.slug,
            image: image ?? this.image,
            name: name ?? this.name,
            description: description ?? this.description,
        );

    factory Featuredbrand.fromRawJson(String str) => Featuredbrand.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Featuredbrand.fromJson(Map<String, dynamic> json) => Featuredbrand(
        id: json["id"],
        slug: json["slug"],
        image: json["image"],
        name: json["name"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "slug": slug,
        "image": image,
        "name": name,
        "description": description,
    };
}

class Currency {
    final String? name;
    final String? code;
    final String? symbolLeft;
    final String? symbolRight;
    final String? value;
    final int? status;

    Currency({
        this.name,
        this.code,
        this.symbolLeft,
        this.symbolRight,
        this.value,
        this.status,
    });

    Currency copyWith({
        String? name,
        String? code,
        String? symbolLeft,
        String? symbolRight,
        String? value,
        int? status,
    }) => 
        Currency(
            name: name ?? this.name,
            code: code ?? this.code,
            symbolLeft: symbolLeft ?? this.symbolLeft,
            symbolRight: symbolRight ?? this.symbolRight,
            value: value ?? this.value,
            status: status ?? this.status,
        );

    factory Currency.fromRawJson(String str) => Currency.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Currency.fromJson(Map<String, dynamic> json) => Currency(
        name: json["name"],
        code: json["code"],
        symbolLeft: json["symbol_left"],
        symbolRight: json["symbol_right"],
        value: json["value"],
        status: json["status"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "code": code,
        "symbol_left": symbolLeft,
        "symbol_right": symbolRight,
        "value": value,
        "status": status,
    };
}
