import 'package:iroid_application/src/feature/home_screen/data/model/property_model.dart';

extension ProjectUiExtension on Project {
  Map<String, dynamic> get toUiMap {
    return {
      'title': project_name,
      'address': location,
      'price':
          price.contains('₹')
              ? '₹${getPrice(price)} Cr'
              : '\$${getPrice(price)}',
      'bedrooms': getBedroomCount(apartments),
      'bathrooms': 0,
      'total_area': getUnitSize(unit_size),
      'garages': 0,
      'status':
          status == 'Ongoing' || status == 'New Launch' ? 'For sale' : status,
    };
  }
}

int getBedroomCount(List<String> apartments) {
  if (apartments.isEmpty) return 0;
  int maxBedrooms = 0;
  for (final apt in apartments) {
    if (apt.contains('BHK')) {
      final beds = int.tryParse(apt.split(' ')[0]) ?? 0;
      maxBedrooms = maxBedrooms > beds ? maxBedrooms : beds;
    } else if (apt.contains('+')) {
      final beds = int.tryParse(apt.split(' ')[0].split('+')[0]) ?? 0;
      maxBedrooms = maxBedrooms > beds ? maxBedrooms : beds;
    }
  }
  return maxBedrooms;
}

String getUnitSize(String unitSize) {
  if (unitSize.contains('Sq.ft.')) {
    return unitSize.split(' ')[0];
  }
  return '0';
}

String getPrice(String priceStr) {
  if (priceStr.contains('₹')) {
    final price =
        priceStr
            .replaceAll('₹ ', '')
            .replaceAll(' Cr', '')
            .replaceAll(' L', '00000')
            .split(' ')[0];
    return price.isNotEmpty ? price : '0';
  }
  return '0';
}

bool isValidListing(Project project) {
  return getPrice(project.price).isNotEmpty &&
      getBedroomCount(project.apartments) > 0 &&
      getUnitSize(project.unit_size) != '0';
}
