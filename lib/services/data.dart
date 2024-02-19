import 'package:news_app/models/categorymodel.dart';

List<CategoryModel> getCategories() {
  List<CategoryModel> category = [];
  CategoryModel categoryModel = new CategoryModel();

  categoryModel.categoryName = "Business";
  categoryModel.image = "images/BusinessLineCover.jpg";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  categoryModel.categoryName = "Entertainment";
  categoryModel.image = "images/Entertainment-News.jpg";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  categoryModel.categoryName = "General News";
  categoryModel.image = "images/generalnews.jpg";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  categoryModel.categoryName = "Health";
  categoryModel.image = "images/healthnews.jpeg";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  categoryModel.categoryName = "Sports";
  categoryModel.image = "images/sportsnews.jpg";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  return category;
}
