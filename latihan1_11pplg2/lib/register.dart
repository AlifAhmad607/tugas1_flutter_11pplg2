import 'package:flutter/material.dart';
import 'custom.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController txtname = TextEditingController();
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtpassword = TextEditingController();
  String selectedValue = 'laki laki';
  DateTime? birthdate;

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: const Text("register page")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            custom(label: "Nama", controller: txtname),
            custom(label: "Email", controller: txtemail),
            custom(
              label: "Password",
              controller: txtpassword,
              obscure: true,
            ),
            Text('jenis kelamin'),
            DropdownButton<String>(
  value: selectedValue,
  items: <String>['laki laki', 'perempuan'].map((String value) {
    return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
        );
      }).toList(),
    onChanged: (String? newValue) {
      setState(() {
        selectedValue = newValue!;
      });
    },
  ),
     Row(
          children: [
                const Text("Tanggal Lahir: "),
                const SizedBox(width: 10),
                TextButton(
                  onPressed: () async {
                    final pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime(2005),
                      firstDate: DateTime(1950),
                      lastDate: DateTime.now(),
                    );
                    if (pickedDate != null) {
                      setState(() {
                        birthdate = pickedDate;
                      });
                    }
                  },
                  child: Text(
                    birthdate == null
                        ? "Pilih Tanggal"
                        : "${birthdate!.day}/${birthdate!.month}/${birthdate!.year}",
                  ),
                ),
              ],
            ),


    
          ]
        )
      )
    );
  }
}