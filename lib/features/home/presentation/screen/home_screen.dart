import 'package:alison/core/commen/widgets/container/rounded_container.dart';
import 'package:alison/core/commen/widgets/image/rounded_image_container.dart';
import 'package:alison/core/commen/widgets/shimmer/shimmer_effect.dart';
import 'package:alison/core/utils/constants/image_string.dart';
import 'package:alison/core/utils/device/device_util.dart';
import 'package:alison/features/home/presentation/bloc/home_bloc.dart';
import 'package:alison/features/home/presentation/widgets/inner_carousal_widgets.dart';
import 'package:alison/features/home/presentation/widgets/new_arraival_widgets.dart';
import 'package:alison/features/home/presentation/widgets/our_brand_widgets.dart';
import 'package:alison/features/home/presentation/widgets/our_product_widgets.dart';
import 'package:alison/features/home/presentation/widgets/suggestions_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = CDeviceUtils.getScreenheight(context);
    final width = CDeviceUtils.getScreenWidth(context);
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: CRoundedImage(imageUrl: CImageString.appLogo),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(
              Icons.search,
              size: 30,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(
              Icons.favorite_border_rounded,
              size: 30,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(
              Iconsax.shopping_bag,
              size: 28,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if (state is GetHomeDataSuccess) {
                  return CRoundedImage(
                    height: height * .3,
                    imageUrl:
                        "https://swan.alisonsnewdemo.online/images/banner/1695716382_1_sH4k9mEPpOeGBInBvUUc9G2X3tXUhPE41ZH3Vp5B.webp",
                    width: double.infinity,
                    isNetworkImage: true,
                    applyImageRadius: false,
                  );
                }
                return CRoundedContainer(
                  height: height * .3,
                  width: double.infinity,
                  child: CShimmerEffect(
                    height: height * .3,
                    width: double.infinity,
                  ),
                );
              },
            ),

            //* Our Brand
            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if (state is GetHomeDataSuccess) {
                  return OurBrandWidgets(
                    bestSeller: state.data.bestSeller,
                  );
                }
                return const OurBrandShimmerWidgets();
              },
            ),

            //* Our Products
            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if (state is GetHomeDataSuccess) {
                  return OurProductsWidgets(
                    ourProduct: state.data.ourProducts!,
                  );
                }

                return const OurProductsShimmerWidgets();
              },
            ),

            //* Our Suggestion
            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if (state is GetHomeDataSuccess) {
                  return SuggestionWidgets(ourProduct: state.data.ourProducts!);
                }

                return const SuggestionShimmerWidgets();
              },
            ),

            // //* New Banner
            const CRoundedImage(
              imageUrl: CImageString.newarr,
              width: double.infinity,
              applyImageRadius: false,
            ),
            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if (state is GetHomeDataSuccess) {}

                return const NewArraivalWidgets();
              },
            ),

            //* Inner Coursal
            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if (state is GetHomeDataSuccess) {
                  List<String> image = [];
                  image.add(state.data.banner1![0].image!);
                  image.add(state.data.banner3![0].image!);
                  image.add(state.data.banner4![0].image!);
                  return InnerCarusalWidgets(
                    image: image,
                  );
                }

                return const InnerCarusalShimmerWidgets();
              },
            ),
            //* recent
            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if (state is GetHomeDataSuccess) {
                  return SuggestionWidgets(
                    ourProduct: state.data.suggestedProducts!,
                    title: "Suggested For You",
                  );
                }

                return const SuggestionShimmerWidgets();
              },
            ),
          ],
        ),
      ),
    );
  }
}
