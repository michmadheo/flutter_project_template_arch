import 'package:equatable/equatable.dart';

class DemoDataResponse extends Equatable {
  final String title;
  final String description;
  final List<DemoDataResponseMovies> movies;

  const DemoDataResponse({
    required this.title,
    required this.description,
    required this.movies,
  });

  factory DemoDataResponse.fromJson(Map<String, dynamic> json) {
    return DemoDataResponse(
      title: json['title'] as String,
      description: json['description'] as String,
      movies: (json['movies'] as List<dynamic>)
          .map(
            (e) => DemoDataResponseMovies.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'movies': movies.map((e) => e.toJson()).toList(),
    };
  }

  @override
  List<Object?> get props => [title, description, movies];
}

class DemoDataResponseMovies extends Equatable {
  final String id;
  final String title;
  final String releaseYear;

  const DemoDataResponseMovies({
    required this.id,
    required this.title,
    required this.releaseYear,
  });

  factory DemoDataResponseMovies.fromJson(Map<String, dynamic> json) {
    return DemoDataResponseMovies(
      id: json['id'],
      title: json['title'],
      releaseYear: json['releaseYear'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'title': title, 'releaseYear': releaseYear};
  }

  @override
  List<Object?> get props => [id, title, releaseYear];
}
