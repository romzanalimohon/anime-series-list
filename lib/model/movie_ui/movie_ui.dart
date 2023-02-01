import 'package:anime_movie/model/movie.dart';
import 'package:flutter/material.dart';

class animeMovieDetailsThumbnail extends StatelessWidget {

  final String thumbnail;

  const animeMovieDetailsThumbnail({super.key, required this.thumbnail});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 170,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(thumbnail),
                      fit: BoxFit.cover
                  )
              ),
            ),
            Icon(Icons.play_circle_outline, size: 100,
              color: Colors.greenAccent,)
          ],
        ),
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Color(0x00f5f5f5),Color(0xf5f5f5f5f5)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)
          ),
          height: 80,
        )
      ],
    );
  }
}

class animeMovieDetailsHeaderWithPoster extends StatelessWidget {

  final animeMovie movie;

  const animeMovieDetailsHeaderWithPoster({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: <Widget>[
          animeMoviePoster(poster: movie.Images[0].toString()),
          SizedBox(width: 16,),
          Expanded(
              child: animeMovieDetailsHeader(movie: movie))
        ],
      ),
    );
  }
}

class animeMoviePoster extends StatelessWidget {

  final String poster;

  const animeMoviePoster({super.key, required this.poster});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
            width: MediaQuery.of(context).size.width/4,
            height: 160,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(poster),
                  fit: BoxFit.cover),
            )

        ),
      ),
    );
  }
}

class animeMovieDetailsHeader extends StatelessWidget {

  final animeMovie movie;

  const animeMovieDetailsHeader({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("${movie.year} . ${movie.genre}".toUpperCase(),
          style: TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.cyan
          ),
        ),
        Text(movie.title, style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 32,
        ),),
        Text.rich(TextSpan(style: TextStyle(
          fontSize: 13, fontWeight: FontWeight.w300,
        ),
            children: <TextSpan>[
              TextSpan(
                  text: movie.plot
              ),
              TextSpan(
                  text: "Show More...",
                  style: TextStyle(
                      color: Colors.indigoAccent
                  )
              )
            ]
        ))
      ],
    );
  }
}

class animeMovieDetailsCast  extends StatelessWidget {

  final animeMovie movie;

  const animeMovieDetailsCast({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: <Widget>[
          animeMovieField(field: "Cast", value: movie.cast),
          animeMovieField(field: "Studio", value: movie.studio),
        ],
      ),
    );
  }
}

class animeMovieField extends StatelessWidget {

  final String field, value;

  const animeMovieField({super.key, required this.field, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("$field : ", style: TextStyle(
            color: Colors.black38,
            fontSize: 12, fontWeight: FontWeight.w300
        ),),
        Expanded(
          child: Text(value, style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.w300
          ),),
        )
      ],
    );
  }
}


class HorizontalLine extends StatelessWidget {
  const HorizontalLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Container(
        height: .5,
        color: Colors.grey,
      ),
    );
  }
}

class animeMovieDetailsExtraPoster extends StatelessWidget {

  final List<String> posters;

  const animeMovieDetailsExtraPoster({super.key, required this.posters});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 8),
          child: Text('more movie posters'.toUpperCase(),
            style: TextStyle(
                fontSize: 14,
                color: Colors.black26
            ),),
        ),
        Container(
          height: 170,
          padding: EdgeInsets.symmetric(vertical: 16),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index)=> SizedBox(width: 8,),
            itemCount: posters.length,
            itemBuilder: (context, index)=> ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Container(
                width: MediaQuery.of(context).size.width / 4,
                height: 160,
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage(posters[index]),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
