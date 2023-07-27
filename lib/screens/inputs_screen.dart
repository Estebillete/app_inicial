import 'package:flutter/material.dart';
import '../widgets/custom_input_field.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'first_name': 'esteban',
      'last_name': 'Miranda',
      'email': 'est@gmail',
      'password': 'qwerty',
      'rol': 'Admin',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulario'),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Form(
          key: myFormKey,
          child: Column(
            children: [
              CustomInputField(
                labelText: 'Nombre',
                hintText: 'Nombre del Usuario',
                iconn: Icons.person,
                formProperty: 'first_name',
                formValues: formValues,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomInputField(
                labelText: 'Apellido',
                hintText: 'Apellido del Usuario',
                iconn: Icons.person,
                formProperty: 'last_name',
                formValues: formValues,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomInputField(
                labelText: 'Email',
                hintText: 'Correo Electronico',
                iconn: Icons.email_outlined,
                textInput: TextInputType.emailAddress,
                formProperty: 'email',
                formValues: formValues,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomInputField(
                labelText: 'Contraseña',
                hintText: 'Password',
                iconn: Icons.security,
                isPassword: true,
                formProperty: 'password',
                formValues: formValues,
              ),
              const SizedBox(
                height: 30,
              ),
              DropdownButtonFormField(
                  items: const [
                    DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                    DropdownMenuItem(value: 'User', child: Text('User')),
                    DropdownMenuItem(
                        value: 'Invidato', child: Text('Invitado')),
                    DropdownMenuItem(value: 'xd', child: Text('xd'))
                  ],
                  onChanged: (value) {
                    print(value);
                    formValues['rol'] = value ?? 'Admin';
                  }),
              ElevatedButton(
                child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar'))),

                //OnPressed
                onPressed: () {
                  FocusScope.of(context).requestFocus(FocusNode());

                  if (!myFormKey.currentState!.validate()) {
                    print('Formulario no valido');
                    return;
                  }

                  //Imprime valres del formulario
                  print(formValues);
                },
              )
            ],
          ),
        ),
      )),
    );
  }
}
