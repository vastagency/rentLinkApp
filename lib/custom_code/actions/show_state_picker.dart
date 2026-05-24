// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<String?> showStatePicker(
  BuildContext context,
  bool isCity,
  String selectedState,
) async {
  final Map<String, List<String>> statesAndCities = {
    'Abia': ['Aba', 'Arochukwu', 'Ohafia', 'Umuahia'],
    'Adamawa': ['Ganye', 'Gombi', 'Jimeta', 'Mubi', 'Numan', 'Yola'],
    'Akwa Ibom': ['Eket', 'Ikot Ekpene', 'Oron', 'Uyo'],
    'Anambra': ['Aguata', 'Awka', 'Nnewi', 'Onitsha', 'Ozubulu'],
    'Bauchi': ['Azare', 'Bauchi', 'Misau'],
    'Bayelsa': ['Brass', 'Ogbia', 'Yenagoa'],
    'Benue': ['Gboko', 'Makurdi', 'Otukpo'],
    'Borno': ['Bama', 'Biu', 'Konduga', 'Maiduguri'],
    'Cross River': ['Calabar', 'Ikom', 'Ogoja'],
    'Delta': ['Asaba', 'Sapele', 'Ughelli', 'Warri'],
    'Ebonyi': ['Abakaliki', 'Afikpo', 'Onueke'],
    'Edo': ['Auchi', 'Benin City', 'Ekpoma', 'Uromi'],
    'Ekiti': ['Ado Ekiti', 'Aramoko', 'Efon', 'Ijero', 'Ikere'],
    'Enugu': ['Agbani', 'Enugu', 'Nsukka', 'Oji River'],
    'FCT': ['Abuja', 'Gwagwalada', 'Kuje', 'Kwali', 'Nyanya'],
    'Gombe': ['Deba', 'Gombe', 'Kaltungo', 'Kumo'],
    'Imo': ['Okigwe', 'Orlu', 'Owerri'],
    'Jigawa': ['Birnin Kudu', 'Dutse', 'Gumel', 'Hadejia'],
    'Kaduna': ['Kafanchan', 'Kaduna', 'Zaria'],
    'Kano': ['Kano', 'Rano', 'Wudil'],
    'Katsina': ['Daura', 'Funtua', 'Katsina'],
    'Kebbi': ['Argungu', 'Birnin Kebbi', 'Yauri'],
    'Kogi': ['Idah', 'Kabba', 'Lokoja'],
    'Kwara': ['Ilorin', 'Offa', 'Patigi'],
    'Lagos': [
      'Agege',
      'Ajegunle',
      'Ajah',
      'Alimosho',
      'Apapa',
      'Badagry',
      'Epe',
      'Festac',
      'Gbagada',
      'Ibeju-Lekki',
      'Ikorodu',
      'Ikotun',
      'Ikeja',
      'Ikoyi',
      'Isale Eko',
      'Lekki',
      'Maryland',
      'Mushin',
      'Ojodu',
      'Ojota',
      'Oshodi',
      'Shomolu',
      'Surulere',
      'Victoria Island',
      'Yaba'
    ],
    'Nasarawa': ['Keffi', 'Lafia', 'Nasarawa'],
    'Niger': ['Bida', 'Kontagora', 'Minna', 'Suleja'],
    'Ogun': ['Abeokuta', 'Ijebu Ode', 'Sagamu', 'Sango Ota'],
    'Ondo': ['Akure', 'Ikare', 'Ondo', 'Owo'],
    'Osun': ['Ile Ife', 'Ilesa', 'Iwo', 'Osogbo'],
    'Oyo': ['Ibadan', 'Iseyin', 'Ogbomoso', 'Oyo'],
    'Plateau': ['Barkin Ladi', 'Jos', 'Shendam'],
    'Rivers': ['Bonny', 'Obio-Akpor', 'Okrika', 'Port Harcourt'],
    'Sokoto': ['Gwadabawa', 'Sokoto', 'Tambuwal'],
    'Taraba': ['Jalingo', 'Wukari'],
    'Yobe': ['Damaturu', 'Gashua', 'Nguru', 'Potiskum'],
    'Zamfara': ['Gusau', 'Kaura Namoda', 'Talata Mafara'],
  };

  List<String> items = [];
  if (isCity) {
    items = List<String>.from(statesAndCities[selectedState] ?? []);
    items.sort();
  } else {
    items = statesAndCities.keys.toList();
    items.sort();
  }

  if (isCity && items.isEmpty) return null;

  final TextEditingController searchController = TextEditingController();
  List<String> filteredItems = List<String>.from(items);

  return await showModalBottomSheet<String>(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (BuildContext ctx) {
      return StatefulBuilder(
        builder: (BuildContext ctx, StateSetter setState) {
          return Container(
            height: MediaQuery.of(ctx).size.height * 0.75,
            decoration: BoxDecoration(
              color: Theme.of(ctx).scaffoldBackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 12),
                Container(
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  isCity ? 'Select City' : 'Select State',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 12),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                      hintText: isCity ? 'Search city...' : 'Search state...',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                    ),
                    onChanged: (String value) {
                      setState(() {
                        filteredItems = items
                            .where((String item) => item
                                .toLowerCase()
                                .contains(value.toLowerCase()))
                            .toList();
                      });
                    },
                  ),
                ),
                SizedBox(height: 8),
                Expanded(
                  child: ListView.builder(
                    itemCount: filteredItems.length,
                    itemBuilder: (BuildContext ctx, int index) {
                      return ListTile(
                        title: Text(filteredItems[index]),
                        onTap: () {
                          Navigator.pop(ctx, filteredItems[index]);
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      );
    },
  );
}
