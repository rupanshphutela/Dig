import 'dart:async';
import 'package:floor/floor.dart';
import 'package:the_dig_app/models/behavior.dart';
import 'package:the_dig_app/models/behavior_dao.dart';
import 'package:the_dig_app/models/favorite_activity.dart';
import 'package:the_dig_app/models/favorite_activity_dao.dart';
import 'package:the_dig_app/models/left_swipe.dart';
import 'package:the_dig_app/models/left_swipe_dao.dart';
import 'package:the_dig_app/models/owner.dart';
import 'package:the_dig_app/models/owner_dao.dart';
import 'package:the_dig_app/models/profile.dart';
import 'package:the_dig_app/models/profile_dao.dart';
import 'package:the_dig_app/models/right_swipe.dart';
import 'package:the_dig_app/models/food_preference.dart';
import 'package:the_dig_app/models/food_preference_dao.dart';
import 'package:the_dig_app/models/picture.dart';
import 'package:the_dig_app/models/picture_dao.dart';
import 'package:the_dig_app/models/right_swipe_dao.dart';
import 'package:the_dig_app/models/skill.dart';
import 'package:the_dig_app/models/skill_dao.dart';
import 'package:the_dig_app/models/top_swipe.dart';
import 'package:the_dig_app/models/top_swipe_dao.dart';

part 'app_database.g.dart'; // the generated code will be here

@Database(version: 1, entities: [
  Profile,
  Owner,
  Picture,
  Skill,
  FoodPreference,
  RightSwipe,
  LeftSwipe,
  TopSwipe,
  Behavior,
  FavoriteActivity
]) // ,views: [Profiles]
abstract class AppDatabase extends FloorDatabase {
  ProfileDao get profileDao;
  OwnerDao get ownerProfileDao;
  PictureDao get pictureDao;
  SkillDao get skillDao;
  FoodPreferenceDao get foodPreferenceDao;
  RightSwipeDao get rightSwipeDao;
  LeftSwipeDao get leftSwipeDao;
  TopSwipeDao get topSwipeDao;
  BehaviorDao get behaviorDao;
  FavoriteActivityDao get favoriteActivityDao;
}
