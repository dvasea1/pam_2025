import 'package:domain/entities/home_entity.dart';

abstract class HomeRepository {
  Future<HomeEntity> getHomeData();
}