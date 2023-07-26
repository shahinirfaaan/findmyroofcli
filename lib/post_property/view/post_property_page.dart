import 'package:flutter/material.dart';

class PostProperty extends StatefulWidget {
  const PostProperty({super.key});

  @override
  State<PostProperty> createState() => _PostPropertyState();
}

class _PostPropertyState extends State<PostProperty> {
  TextEditingController propertytype = TextEditingController();
  TextEditingController location = TextEditingController();
  TextEditingController bedrooms = TextEditingController();
  TextEditingController bathrooms = TextEditingController();
  TextEditingController price = TextEditingController();

  int _bachelorsallowed = 0;

  List<String> propertyTypes = ['House', 'Apartment', 'Flat', 'Plot'];
  List<String> furnishing = ['Furnished', 'Semi-Furnished', 'Unfurnished'];
  List<String> bedroomsCount = ['1', '2', '3', '4', '5+'];
  List<String> bathroomsCount = ['1', '2', '3', '4', '5+'];
  List<String> propertyGoal = ['Sell', 'Rent/Lease'];

  String? _selectedPropertyType;
  String? _furnishingStatus;
  String? _bedroomsCount;
  String? _bathroomsCount;
  String? _propertyGoal;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[300],
        title: Text(
          'Post Property',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SafeArea(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [SizedBox(height: 10,),
              
              DropdownButtonFormField<String>(
                value: _propertyGoal,
                onChanged: (newValue) {
                  setState(() {
                    _propertyGoal = newValue;
                  });
                },
                items: propertyGoal.map((type) {
                  return DropdownMenuItem<String>(
                    value: type,
                    child: Text(type),
                  );
                }).toList(),
                decoration:
                    InputDecoration(border: OutlineInputBorder(), hintText: 'Sell/Rent'),
              ),
              SizedBox(
                height: 15,
              ),
              DropdownButtonFormField<String>(
                value: _selectedPropertyType,
                onChanged: (newValue) {
                  setState(() {
                    _selectedPropertyType = newValue;
                  });
                },
                items: propertyTypes.map((type) {
                  return DropdownMenuItem<String>(
                    value: type,
                    child: Text(type),
                  );
                }).toList(),
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Property Type'),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Location'),
                controller: location,
              ),
              SizedBox(
                height: 15,
              ),
              DropdownButtonFormField<String>(
                value: _bedroomsCount,
                onChanged: (newValue) {
                  setState(() {
                    _bedroomsCount = newValue;
                  });
                },
                items: bedroomsCount.map((type) {
                  return DropdownMenuItem<String>(
                    value: type,
                    child: Text(type),
                  );
                }).toList(),
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'No. of Bedrooms'),
              ),
              SizedBox(
                height: 15,
              ),
              DropdownButtonFormField<String>(
                value: _bathroomsCount,
                onChanged: (newValue) {
                  setState(() {
                    _bathroomsCount = newValue;
                  });
                },
                items: bathroomsCount.map((type) {
                  return DropdownMenuItem<String>(
                    value: type,
                    child: Text(type),
                  );
                }).toList(),
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'No. of Bathrooms'),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Price'),
                controller: price,
              ),
              SizedBox(
                height: 15,
              ),
              DropdownButtonFormField<String>(
                value: _furnishingStatus,
                onChanged: (newValue) {
                  setState(() {
                    _furnishingStatus = newValue;
                  });
                },
                items: furnishing.map((type) {
                  return DropdownMenuItem<String>(
                    value: type,
                    child: Text(type),
                  );
                }).toList(),
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Furnishing'),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Plot Area'),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Super Builtup Area (ft²)'),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Carpet Area (ft²)'),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Total Floors'),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Floor No.'),
                obscureText: true,
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    'Bachelors Allowed',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Row(
                  children: [Text('Yes')],
                ),
                leading: Radio(
                    value: 1,
                    groupValue: _bachelorsallowed,
                    onChanged: (value) {
                      setState(() {
                        _bachelorsallowed = value!;
                      });
                    },
                    activeColor: Colors.orange[500]),
              ),
              ListTile(
                title: Row(
                  children: [Text('No')],
                ),
                leading: Radio(
                    value: 0,
                    groupValue: _bachelorsallowed,
                    onChanged: (value) {
                      setState(() {
                        _bachelorsallowed = value!;
                      });
                    },
                    activeColor: Colors.orange[500]),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Description'),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange[400],
                      ),
                      child: Text(
                        'Upload Images',
                        style: TextStyle(color: Colors.black),
                      )),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange[700],
                  ),
                  child: Text(
                    'POST PROPERTY',
                    style: TextStyle(color: Colors.black),
                  ))
            ],
          )),
        ),
      ),
    );
  }
}
