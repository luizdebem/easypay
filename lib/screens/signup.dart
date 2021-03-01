import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Signup extends StatefulWidget {
  static final routeName = "/signup";

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormBuilderState>();

  void submitData() async {
    print("Submitasso");
  }

  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);

    return Scaffold(
      backgroundColor: Color.fromRGBO(40, 12, 51, 1.0),
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: FormBuilder(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FormBuilderTextField(
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(context,
                            errorText: "Campo obrigatório."),
                        FormBuilderValidators.maxLength(context, 72)
                      ]),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      name: "name",
                      decoration: InputDecoration(
                        labelText: "Nome completo",
                      ),
                      keyboardType: TextInputType.name,
                      onEditingComplete: () => node.nextFocus(),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    FormBuilderTextField(
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(context,
                            errorText: "Campo obrigatório."),
                        FormBuilderValidators.maxLength(context, 18)
                      ]),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      name: "nickname",
                      decoration: InputDecoration(
                        labelText: "Nome de usuário, usado para transferências",
                      ),
                      keyboardType: TextInputType.name,
                      onEditingComplete: () => node.nextFocus(),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    FormBuilderTextField(
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(context,
                            errorText: "Campo obrigatório."),
                        FormBuilderValidators.email(context)
                      ]),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      name: "email",
                      decoration: InputDecoration(
                        labelText: "E-mail",
                      ),
                      keyboardType: TextInputType.name,
                      onEditingComplete: () => node.nextFocus(),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    FormBuilderDateTimePicker(
                        name: "bornDate",
                        decoration: InputDecoration(
                          labelText: "Data de nascimento",
                        ),
                        inputType: InputType.date,
                        onEditingComplete: () => node.nextFocus()),
                    SizedBox(
                      height: 30.0,
                    ),
                    FormBuilderTextField(
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(context,
                            errorText: "Campo obrigatório."),
                        FormBuilderValidators.minLength(context, 8,
                            errorText: "Mínimo 8 caracteres."),
                        FormBuilderValidators.match(context,
                            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$',
                            errorText:
                                "Deve conter números, caracteres especiais e maiúsculos.")
                      ]),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      obscureText: true,
                      name: "password",
                      decoration: InputDecoration(
                          labelText: "Senha", border: OutlineInputBorder()),
                      keyboardType: TextInputType.text,
                      onEditingComplete: () => submitData(),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Cadastrar!"),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
