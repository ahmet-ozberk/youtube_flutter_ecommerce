import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';
import 'package:youtube_ecommerce_app/assets.dart';
import 'package:youtube_ecommerce_app/components/custom_button.dart';
import 'package:youtube_ecommerce_app/constant/constant.dart';
import 'package:youtube_ecommerce_app/view/checkout_view.dart';

class Cart extends ConsumerStatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WishlistState();
}

class _WishlistState extends ConsumerState<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: [15, 30].horizontalAndVerticalP,
        children: [
          Container(
            padding: [18, 12].horizontalAndVerticalP,
            margin: 20.horizontalP,
            decoration: BoxDecoration(
              color: Constant.yellow,
              borderRadius: 10.allBR,
            ),
            child: const Center(
                child: Text("Delivery for FREE until the end of the month")),
          ),
          ListView.separated(
            itemCount: 2,
            shrinkWrap: true,
            separatorBuilder: (context, index) => const SizedBox(
              height: 20,
            ),
            padding: 40.verticalP,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                padding: 10.allP,
                decoration: BoxDecoration(
                    color: Constant.white,
                    borderRadius: 10.allBR,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 15,
                      ),
                    ]),
                child: IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        Assets.images.imP1PNG,
                        width: Grock.width * 0.3,
                        height: Grock.width * 0.3,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("İphone 18 pro max",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold)),
                          Text(
                            "\$599",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              const Text(
                                "Quantity",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal),
                              ),
                              const SizedBox(
                                width: 7,
                              ),
                              quantityButton(icon: Icons.remove, onTap: () {}),
                              Padding(
                                padding: 7.horizontalP,
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              quantityButton(icon: Icons.add, onTap: () {}),
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      IconButton(onPressed: () {}, icon: Icon(Icons.clear))
                    ],
                  ),
                ),
              );
            },
          ),
          Padding(
            padding: 40.onlyBottomP,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: _style,
                ),
                Text(
                  "\$1899",
                  style: _style,
                )
              ],
            ),
          ),
          CustomButton(onTap: () => Grock.to(CheckoutView()), text: "checkout"),
        ],
      ),
    );
  }

  TextStyle _style = TextStyle(fontSize: 36, fontWeight: FontWeight.bold);

  Widget quantityButton({required IconData icon, required Function onTap}) {
    return GrockContainer(
      onTap: () => onTap(),
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        color: Constant.orange,
        borderRadius: 4.allBR,
      ),
      child: Center(
        child: Icon(
          icon,
          color: Constant.black,
          size: 20,
        ),
      ),
    );
  }
}
