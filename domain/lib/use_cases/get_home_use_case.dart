import 'package:domain/entities/home_entity.dart';
import 'package:domain/repositories/home_repository.dart';

class GetHomeUseCase {
  final HomeRepository homeRepository;

  GetHomeUseCase({required this.homeRepository});

  Future<HomeEntity> call() {
    return homeRepository.getHomeData();
  }
}
