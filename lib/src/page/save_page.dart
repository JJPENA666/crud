import 'package:flutter/material.dart';

class SavePage extends StatelessWidget {
  static const String ROUTE = "/save";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Guardar"),
      ),
      body: Container(
        child: _FormSave(),
      ),
    );
  }
}

class _FormSave extends StatelessWidget {
  final titleController = TextEditingController();
  // ignore: non_constant_identifier_names
  final ContenController = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formkey,
          child: Column(children: <Widget>[
            Divider(
              height: 15,
            ),
            TextFormField(
                controller: titleController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Ingrese Datos";
                  }
                  return null!;
                },
                decoration: InputDecoration(
                    labelText: "Titulo",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50))))),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: ContenController,
              maxLines: 15,
              maxLength: 200,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Ingrese Datos";
                }
                return null!;
              },
              decoration: InputDecoration(
                  labelText: "Contenido", border: OutlineInputBorder()),
            ),
            ElevatedButton(
                child: Text("Guardar"),
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    print("Guardar");
                  }
                })
          ]),
        ));
  }
}
