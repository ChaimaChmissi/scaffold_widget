import 'package:scaffold_widget/data/AppConstant.dart';
import 'package:scaffold_widget/domain/affirmation.dart';

List<Affirmation> loadData() {
  return List.generate(10, (index) {
    // Ensure that index doesn't go out of bounds for the lists
    final affirmationIndex = index % AppConstants.affirmations.length;
    final photoIndex = index % AppConstants.photos.length;
    
    return Affirmation(
      image: AppConstants.photos[photoIndex],
      desc: AppConstants.affirmations[affirmationIndex],
    );
  });
}
