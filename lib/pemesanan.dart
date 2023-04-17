import 'package:flutter/material.dart';
import 'main.dart';
import 'package:image_picker/image_picker.dart';

void main() => runApp(PemesananWidget());

class PemesananWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Example',
      home: FormPage(),
    );
  }
}

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  String _selectedPaket = 'Paket A';
  TextEditingController _imageController = TextEditingController();

  List<String> _jenisPaket = ['Paket A', 'Paket B', 'Paket C'];

  final _formKey = GlobalKey<FormState>();
  final _controller1 = TextEditingController();
  final _controller2 = TextEditingController();
  final _controller3 = TextEditingController();
  final _controller4 = TextEditingController();
  final _controller5 = TextEditingController();

  @override
  void dispose() {
    _imageController.dispose();
    super.dispose();
  }

  void _selectImage(BuildContext context) async {
    final pickedFile =
        // ignore: deprecated_member_use
        await ImagePicker().getImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _imageController.text = pickedFile.path;
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('No image selected')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => Main()));
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _controller1,
                decoration: InputDecoration(
                  labelText: 'Name',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Name is required';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _controller2,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Email is required';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _controller3,
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Phone Number is required';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              DropdownButtonFormField<String>(
                value: _selectedPaket,
                items: _jenisPaket
                    .map((paket) => DropdownMenuItem<String>(
                          value: paket,
                          child: Text(paket),
                        ))
                    .toList(),
                decoration: InputDecoration(
                  labelText: 'Jenis Paket',
                ),
                onChanged: (value) {
                  setState(() {
                    _selectedPaket = value!;
                  });
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _controller4,
                readOnly: true,
                decoration: InputDecoration(
                  labelText: 'Upload Bukti Pembayaran (JPG)',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.image),
                    onPressed: () => _selectImage(context),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Bukti Pembayaran is required';
                  }
                  return null;
                },
              ),
              SizedBox(height: 32.0),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Process data.
                      String name = _controller1.text;
                      String email = _controller2.text;
                      String phoneNumber = _controller3.text;
                      String jenisPaket = _selectedPaket;
                      String buktiPembayaran = _imageController.text;

                      // Do something with the data.
                      // ...
                    }
                  },
                  child: Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _selectImageOriginal(BuildContext context) async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(
      source: ImageSource.gallery,
      maxWidth: 800,
      maxHeight: 800,
      imageQuality: 80,
    );
    if (image != null) {
      setState(() {
        _imageController.text = image.path;
      });
    }
  }
}
