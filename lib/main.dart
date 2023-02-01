import 'package:anime_movie/model/movie.dart';
import 'package:anime_movie/model/movie_ui/movie_ui.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MovieListView(),
  ));
}

class MovieListView extends StatelessWidget {

  final List<animeMovie> movieList = animeMovie.getanimeMovie();

  final List movies = [
    "Kimi no Nawa",
    "Koe no Katachi",
    "My neighbour Totoro",
    "Ponyo",
    "Spirited away",
    "Dragon Ball Z",
    "Bleach",
    "Akira",
    "Blame",
    "Origin",
    "Howls moving castle"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('anime movies'.toUpperCase()),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      backgroundColor: Colors.blueGrey.shade900,
      body: ListView.builder(
          itemCount: movieList.length,
          itemBuilder: (BuildContext context, int index){
            return Stack(
                children: <Widget>[
                  animeMovieCard(movieList[index], context),
                  Positioned(
                    top: 10,
                      child: animeMovieImage(movieList[index].Images[0])
                  ),
            ],
            );
        // return Card(
        //   elevation: 4.5,
        //   color: Colors.white,
        //   child: ListTile(
        //     leading: CircleAvatar(
        //       child: Container(
        //         //child: Text('M'),
        //         decoration: BoxDecoration(
        //           image: DecorationImage(
        //             image: NetworkImage(movieList[index].Images[0]),
        //             fit: BoxFit.cover
        //           ),
        //           color: Colors.blue,
        //           borderRadius: BorderRadius.circular(13.9),
        //         ),
        //         child: null,
        //       ),
        //     ),
        //     trailing: Text('...'),
        //     title: Text(movieList[index].title),
        //     subtitle: Text("sub"),
        //     onTap: (){
        //       Navigator.push(context, MaterialPageRoute(
        //           builder: (context)=>MovieListViewDetails(MovieName: movieList.elementAt(index).title,
        //           movie: movieList[index])));
        //     },
        //     //onTap: ()=>debugPrint('Movie name: ${movies.elementAt(index)}'),
        //   ),
        // );
      }),
    );
  }

  Widget animeMovieCard(animeMovie movie, BuildContext context){
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(left: 60),
        width: MediaQuery.of(context).size.width,
        height: 120,
        child: Card(
          color: Colors.black45,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 8,
              bottom: 8,
              left: 54,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                       Flexible(
                         child: Text(movie.title, style: TextStyle(
                           fontSize: 17,
                           fontWeight: FontWeight.bold,
                           color: Colors.white,
                         ),),
                       ),
                      Text("Rating: ${movie.rated}/10", style: mainTextStyle(),)
                    ],
                  ),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("Released: ${movie.released}", style: mainTextStyle(),),
                      Text(movie.year, style: mainTextStyle(),)
                    ],
                  )

                ],
              ),
            ),
          ),
        ),
      ),
      onTap: ()=> {
                 Navigator.push(context, MaterialPageRoute(
                 builder: (context)=>MovieListViewDetails(MovieName: movie.title,
                 movie: movie)))
      },
    );
  }

  TextStyle mainTextStyle(){
    return TextStyle(
        fontSize: 15,
        color: Colors.grey,
    );
  }

  Widget animeMovieImage(String imageUrl){
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          //image: NetworkImage(imageUrl ?? 'https://wallpapercave.com/wp/wp8199834.jpg'),
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover
        ),
      ),
    );
  }

}

class MovieListViewDetails extends StatelessWidget {

  final String MovieName;
  final animeMovie movie;

  const MovieListViewDetails({super.key, required this.MovieName, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("movies"),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      body: ListView(
        children: <Widget>[
          animeMovieDetailsThumbnail(thumbnail: movie.Images[0],),
          animeMovieDetailsHeaderWithPoster(movie: movie,),
          HorizontalLine(),
          animeMovieDetailsCast(movie: movie),
          HorizontalLine(),
          animeMovieDetailsExtraPoster(posters: movie.Images,)
        ],
      ),
      // body: Center(
      //   child: Container(
      //     child: RaisedButton(
      //       child: Text('GO BACK ${this.movie.genre}'),
      //       onPressed: (){
      //         Navigator.pop(context);
      //       },
      //     ),
      //   ),
      // ),
    );
  }
}




