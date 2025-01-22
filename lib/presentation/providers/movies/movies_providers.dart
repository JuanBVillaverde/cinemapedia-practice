import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/presentation/providers/movies/movies_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final nowPlayingMoviesProvider = StateNotifierProvider<MoviesNotifier, List<Movie>>((ref) {


  final fecthMoreMovies = ref.watch(movieRepositoryProvider).getNowPlaying;

  return MoviesNotifier(
    fetchMoreMovies: fecthMoreMovies
  );

},);




typedef MovieCallback = Future<List<Movie>> Function({int page});

class MoviesNotifier extends StateNotifier<List<Movie>> {
  
int currenPage = 0;
MovieCallback fetchMoreMovies;

MoviesNotifier({required this.fetchMoreMovies}): super([]);


Future<void> loadNextPage() async{

  currenPage++;
  
  final List<Movie> movies = await fetchMoreMovies(page: currenPage);
  state = [...state, ...movies];
}

}
