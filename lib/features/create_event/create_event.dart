
import 'package:eventapp/core/extenstion/dateExtenstion.dart';
import 'package:eventapp/core/extenstion/timeextenstion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../core/assets_manager.dart';
import '../../core/colors_manager.dart';
import '../../core/widgets/custom_elevated_button.dart';
import '../../core/widgets/custom_tab_bar.dart';
import '../../core/widgets/custom_text_button.dart';
import '../../core/widgets/custom_text_form_field.dart';
import '../../l10n/app_localizations.dart';
import '../../models/category_model.dart';
class CreateEvent extends StatefulWidget {
  const CreateEvent({super.key});

  @override
  State<CreateEvent> createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent> {
  @override
  DateTime seldate=DateTime.now();
  TimeOfDay selTime=TimeOfDay.now();
  Widget build(BuildContext context) {
    AppLocalizations appLocalizations = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(title: Text(appLocalizations.create_event)),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image.asset(ImageAssets.meeting),
              ),
              SizedBox(height: 4.h),
              CustomTabBar(
                categories: CategoryModel.getCategories(context),
                selectedBackgroundColor: ColorsManager.blue,
                unSelectedBackgroundColor: Colors.transparent,
                selectedForegroundColor: ColorsManager.white,
                unSelectedForegroundColor: ColorsManager.blue,
              ),
              SizedBox(height: 16.h,),
              Text(appLocalizations.event_title),
              SizedBox(height: 8.h,),
              CustomTextFormField(prefixIcon: Icons.edit, hint: appLocalizations.event_title,),
              SizedBox(height: 16.h,),
              Text(appLocalizations.description),
              SizedBox(height: 8.h,),
              CustomTextFormField( hint: appLocalizations.event_description,maxLines: 4,),
              SizedBox(height: 16.h,),
              Row(
                children: [
                  Icon(Icons.date_range_rounded),
                  SizedBox(width: 8.w,),
                  Text("${seldate.toFormatDate}", style: Theme.of(context).textTheme
                    .bodySmall,),
                  Spacer(),
                  CustomTextButton(title:appLocalizations.choose_date, onPressed: (){
                    chooseEventDate(context);
                  }
                  )
                ],
              ),
              SizedBox(height: 16.h,),
              Row(
                children: [
                  Icon(Icons.access_time_outlined),
                  SizedBox(width: 8.w,),
                  Text("${selTime.format(context)}", style: Theme.of(context).textTheme.bodySmall,),
                  Spacer(),
                  CustomTextButton(title: appLocalizations.choose_time, onPressed: (){
                    chosseSelectedTime();
                  }
                  ),

                ],
              ),
              SizedBox(height: 18,),
              CustomElevatedButton(title: appLocalizations.add_event)
            ],
          ),
        ),
      ),
    );
  }

  void chooseEventDate(BuildContext context)async{
     seldate= await showDatePicker(context: context, firstDate: DateTime.now(), lastDate: DateTime.now().add(Duration(days: 365)))?? seldate;
     setState(() {
     });
  }

  void chosseSelectedTime()async {
    selTime=await showTimePicker(context: context, initialTime: TimeOfDay.now())??selTime;
    setState(() {

    });
  }
}
