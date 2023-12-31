import 'package:flutter/material.dart';
import 'package:kc_tv_app/screens/player_screen.dart';

class SuggestionCard extends StatelessWidget {
  const SuggestionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: GestureDetector(
              onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                 builder: (context) => const PlayerScreen(url:'https://www.youtube.com/watch?v=7RaUtZTM9kI'))),
              child: const Image(
                  image: AssetImage('assets/images/final_mundial_ajus.png'),
                ),
            ),
          ),
        const SizedBox (width: 20.0,),
        Column(
          children: [
            SizedBox(
              width: 300,
              height: 50,
              child: Text(
                'Mundial Qatar 2022', 
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            SizedBox(
              width: 300,
              height: 100,
              child: Text("Argentina conquista la tercera copa del mundo en su historia, de la mano de Lionel Messi.",
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(
              width: 300,
              height: 50,
              child: Text("Fecha: 18/12/2022",
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.justify,
              ),
            ),
                        SizedBox(
              width: 300,
              height: 50,
              child: Text("Duración: 11:26",
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.justify,
              ),
            ),
          ],          
        ),
      ],
    );

    // return Card(
    //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    //   margin: const EdgeInsets.all(2.0),
    //   elevation: 10.0,
    //   color: Colors.grey,
    //   child: ListTile(
    //       leading:  const Image(
    //           image: AssetImage('assets/images/sb57_kc_phi_120223.png'),
    //           height: 350.0,
    //           width: 350.0,
    //         ),
    //       title: Text("Super Bowl LVII", style: Theme.of(context).textTheme.headlineLarge,),
    //       subtitle: Text("Después de una desventaja de doble dígito, los Chiefs regresan para arrebatarle el triunfo a Philadelphia y obtener su tercer Lombardi",
    //                       style: Theme.of(context).textTheme.bodyMedium,
    //       ),
    //     ),
    //   );

      //ClipRRect(

        // Los bordes del contenido del card se cortan usando BorderRadius
        //borderRadius: BorderRadius.circular(30),

        // EL widget hijo que será recortado segun la propiedad anterior
        /*child: Row(
          children: <Widget>[
            const Image(
              image: AssetImage('assets/images/sb57_kc_phi_120223.png'),
              height: 350.0,
              width: 350.0,
            ),

            // Usamos Container para el contenedor de la descripción
            //Container(
            //  padding: const EdgeInsets.all(3),
            //  child: const Text('Super Bowl 57'),
          //  ),
          ],
        ),*/
      //);
  }
}