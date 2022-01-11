import 'package:flutter/material.dart';
import 'package:flutter_components/screens/screen.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Mira',
      'last_name': 'Öztürk',
      'email': 'miraozturk@mira.com',
      'password': '123456',
      'role': 'Admin',
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Input Form'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  CustomInputField(
                    labelText: 'Adı',
                    hintText: 'Kullanıcı Adı',
                    formValues: formValues,
                    formProperty: 'first_name',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                    labelText: 'Soyadı',
                    hintText: 'Kullanıcı Soyadı',
                    formValues: formValues,
                    formProperty: 'last_name',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                    labelText: 'E-Mail',
                    hintText: 'E-Mail Adresi',
                    keyboardType: TextInputType.emailAddress,
                    formValues: formValues,
                    formProperty: 'email',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                    labelText: 'Şifre',
                    hintText: 'Şifre Giriniz',
                    obscureText: true,
                    keyboardType: TextInputType.emailAddress,
                    formValues: formValues,
                    formProperty: 'password',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  DropdownButtonFormField<String>(
                    // value: 'Admin',
                    items: const [
                      DropdownMenuItem(value: 'Admin ', child: Text('Admin')),
                      DropdownMenuItem(
                          value: 'Superuser ', child: Text('Superuser')),
                      DropdownMenuItem(
                          value: 'Developer ', child: Text('Developer')),
                      DropdownMenuItem(
                          value: 'Jr. Developer ',
                          child: Text('Jr. Developer')),
                    ],
                    onChanged: (value) {
                      formValues['role'] = value ?? 'Admin';
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                      if (!myFormKey.currentState!.validate()) {
                        return;
                      }
                    },
                    child: const SizedBox(
                        width: double.infinity,
                        child: Center(child: Text('Kayıt Et'))),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
