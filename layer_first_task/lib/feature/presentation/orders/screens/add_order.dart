/*import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:layer_first_task/config/asset/icons_path.dart';
import 'package:layer_first_task/config/extentions/gap_space_extension.dart';
import 'package:size_config/size_config.dart';

class AddOrderScreen extends StatefulWidget {
  const AddOrderScreen({super.key});

  @override
  State<AddOrderScreen> createState() => _AddOrderScreenState();
}

class _AddOrderScreenState extends State<AddOrderScreen> {
  final TextEditingController customerNameController = TextEditingController();

  final TextEditingController customerPhoneController = TextEditingController();

  final TextEditingController descriptionController = TextEditingController();

  final TextEditingController depositController = TextEditingController();

  
  @override
  Widget build(BuildContext context) {
    return 
      Scaffold(
        appBar: AppBar(
          title: const Text(
            'ثبت سفارش جدید',
            style: TextStyle(
              fontFamily: "dana",
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          leading: IconButton(
            onPressed: () {
             
            },
            icon: SvgPicture.asset(
              IconPath.back,
            ),
          ),
          actions: [
            IconButton(
              icon: SvgPicture.asset(IconPath.help),
              onPressed: () {}
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomerInfoSection(
                    customerNameController, customerPhoneController),
                12.h.verticalSpace,
                SelectGroupButton(callback: () {
                  _showCategoryBottomSheet(context);
                }),
                Divider(
                  color: Theme.of(context).colorScheme.outline,
                ),
                12.0.verticalSpace,
                const OrderItemsSection(),
                Container(
                  padding: const EdgeInsets.all(8),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Theme.of(context).colorScheme.secondary),
                    borderRadius: BorderRadius.circular(4),
                    color: Theme.of(context).colorScheme.secondaryContainer,
                  ),
                  child: Column(
                    children: [
                      FormTextBox(
                        pricingType: true,
                        isNumbricKeyboard: true,
                        isObsecure: false,
                        iconPath: IconPath.money,
                        title: "مبلغ پیش پرداخت",
                        suffix: Padding(
                          padding: EdgeInsets.only(
                            top: 10.h,
                          ),
                          child: const Text("تومان"),
                        ),
                        controller: depositController,
                        hint: '',
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: 8.h, left: 16.w, right: 16.w),
                        child: const OrderStatusToggle(),
                      ),
                      16.h.verticalSpace,
                      TextField(
                        controller: descriptionController,
                        decoration: const InputDecoration(
                          hintText: 'توضیحات سفارش را وارد کنید',
                          hintStyle: TextStyle(
                              fontSize: 12,
                              fontFamily: 'dana',
                              color: Colors.grey),
                          labelText: 'توضیحات',
                          labelStyle:
                              TextStyle(fontSize: 14, fontFamily: 'dana'),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
                12.h.verticalSpace,
                );
               
  }

  void _showCategoryBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return const CustomerGroupBottomSheet();
      },
    );
  }
}





// Reusable Customer Info Section
class CustomerInfoSection extends StatelessWidget {
  const CustomerInfoSection(
      this.customerNameController, this.customerPhoneController,
      {super.key});

  final TextEditingController customerNameController;
  final TextEditingController customerPhoneController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FormTextBox(
            isObsecure: false,
            controller: customerNameController,
            iconPath: IconPath.profile,
            title: "نام مشتری",
            hint: ""),
        FormTextBox(
            isObsecure: false,
            isNumbricKeyboard: true,
            controller: customerPhoneController,
            iconPath: IconPath.call,
            title: "شماره تلفن مشتری",
            hint: ""),
      ],
    );
  }
}
// Reusable Order Items Section
class OrderItemsSection extends StatelessWidget {
  const OrderItemsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "سبد خرید",
              style: TextStyle(
                  fontFamily: "dana",
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            InkWell(
              onTap: () {
                showProductBottomSheet(context);
              },
              child: Container(
                width: 150.h,
                height: 48.h,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondaryContainer,
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                        color: Theme.of(context).colorScheme.secondary)),
                child: Center(
                    child: Text(
                  "افزودن به سبد خرید",
                  style: TextStyle(
                      fontFamily: "dana",
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).colorScheme.secondary),
                )),
              ),
            ),
          ],
        ),
        Divider(
          color: Theme.of(context).colorScheme.outline,
        ),
        8.h.verticalSpace,
        // Placeholder for product list
        SizedBox(
          child: BlocBuilder<CartListHandlerCubit, CartListHandlerState>(
            builder: (context, state) {
              if (state.presentationCartList.isNotEmpty) {
                return ListView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: state.presentationCartList.length,
                  itemBuilder: (context, index) {
                    var data = state.presentationCartList[index];
                    return CartItemTile(item: data);
                  },
                );
              } else {
                return Column(
                  children: [
                    SvgPicture.asset(
                      SvgPath.hanger,
                      height: 60.h,
                      width: 60.w,
                    ),
                    const Text("سبد خرید خالیه"),
                  ],
                );
              }
            },
          ),
        ),

        50.h.verticalSpacer,
      ],
    );
  }
}
class OrderStatusToggle extends StatelessWidget {
  const OrderStatusToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "وضعیت سفارش",
          style: TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).colorScheme.onSurface),
        ),
        8.h.verticalSpace,
        BlocBuilder<OrderStatusHandlerCubit, OrderStatusHandlerState>(
          builder: (context, state) {
            return GestureDetector(
              onTap: () {
                BlocProvider.of<OrderStatusHandlerCubit>(context)
                    .changeStatus();
              },
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border:
                      Border.all(color: Theme.of(context).colorScheme.outline),
                ),
                child: Stack(
                  children: [
                    AnimatedAlign(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      alignment: state.isPreOrder
                          ? Alignment.centerRight
                          : Alignment.centerLeft,
                      child: Container(
                        margin: EdgeInsets.only(
                            right: 3.w, top: 2.h, bottom: 2.h, left: 3.w),
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: 36.h,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondary,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Center(
                            child: Text(
                              "پیش سفارش",
                              style: TextStyle(
                                color: state.isPreOrder
                                    ? Colors.white
                                    : Colors.black54,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              "تحویل فوری",
                              style: TextStyle(
                                color: state.isPreOrder
                                    ? Colors.black54
                                    : Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
*/