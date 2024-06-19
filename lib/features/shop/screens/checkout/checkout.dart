import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgets/products/cart/coupon_widget.dart';
import 'package:e_commerce/features/shop/controllers/product/cart_controller.dart';
import 'package:e_commerce/features/shop/controllers/product/order_controller.dart';
import 'package:e_commerce/features/shop/screens/cart/Widgets/cart_items.dart';
import 'package:e_commerce/features/shop/screens/checkout/Widgets/billing_address_section.dart';
import 'package:e_commerce/features/shop/screens/checkout/Widgets/billing_amount_section.dart';
import 'package:e_commerce/features/shop/screens/checkout/Widgets/billing_payment_section.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/formatters/formatter.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:e_commerce/utils/helpers/pricing_calculator.dart';
import 'package:e_commerce/utils/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cartController = CartController.instance;
    final subTotal = cartController.totalCartPrice.value;
    final orderController = Get.put(OrderController());
    final totalAmount = TPricingCalculator.calculateTotalPrice(subTotal, 'VN');
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Xem trước đơn hàng',
            style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //Items in cart
              const TCartItems(showAddRemoveButton: false),
              const SizedBox(height: TSizes.spaceBtwSections),
              //Coupon Textfield
              const TCouponCode(),
              const SizedBox(height: TSizes.spaceBtwSections),
              // Billing section
              TRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(TSizes.md),
                backgroundColor: dark ? TColors.black : TColors.white,
                child: const Column(
                  children: [
                    //Pricing
                    TBillingAmountSection(),
                    SizedBox(height: TSizes.spaceBtwItems),
                    //Divider
                    Divider(),
                    SizedBox(height: TSizes.spaceBtwItems),
                    //Payment methods
                    TBillingPaymentSection(),
                    SizedBox(height: TSizes.spaceBtwItems),
                    // Address
                    TBillingAddressSection(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: subTotal > 0
              ? () => orderController.processOrder(totalAmount)
              : () => TLoaders.warningSnackBar(
                  title: 'Giỏ hàng rỗng',
                  message: 'Thêm sản phẩm vào giỏ để tiếp tục'),
          child: Text(
            'Thanh toán ${TFormatter.formatCurrency(totalAmount)}',
          ),
        ),
      ),
    );
  }
}
