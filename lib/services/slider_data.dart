// import 'package:news_app/models/categorymodel.dart';

import 'package:news_app/models/slider_model.dart';

List<sliderModel> getSliders() {
  List<sliderModel> slider = [];
  sliderModel categoryModel = new sliderModel();

  categoryModel.image = "images/business.jpeg";
  categoryModel.name = "Bow To The Authority of Silenforce";
  slider.add(categoryModel);
  categoryModel = new sliderModel();

  categoryModel.image = "images/entertainment.jpg";
  categoryModel.name = "Bow To The Authority of Silenforce";
  slider.add(categoryModel);
  categoryModel = new sliderModel();

  categoryModel.image = "images/health.jpg";
  categoryModel.name = "Bow To The Authority of Silenforce";
  slider.add(categoryModel);
  categoryModel = new sliderModel();

  categoryModel.image = "images/sports.jpg";
  categoryModel.name = "Bow To The Authority of Silenforce";
  slider.add(categoryModel);
  categoryModel = new sliderModel();

  return slider;
}
