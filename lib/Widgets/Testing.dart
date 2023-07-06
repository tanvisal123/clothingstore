import 'package:flutter/material.dart';
class Testing extends StatelessWidget {
  const Testing({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
            children: [
              //Story View
              SizedBox(
                height: 150,
                //color: Colors.amber,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.all(10),
                      height: 120,
                      width: 120,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                    );
                  },),
              ),
              // GridView
              GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 4,
                children: List.generate(
                 30, (index) 
                  => Container(
                    height: 200,
                    margin: const EdgeInsets.all(10),
                    color: Colors.red,
                  )),
                )
            ],
          
        ),
      ),
    );
  }
}