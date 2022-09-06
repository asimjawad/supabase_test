import 'package:supabase/supabase.dart';

const String url = 'your key here';
const String apiKey = 'your key here';

class SupabaseManager {
  final client = SupabaseClient(
    url,
    apiKey,
  );

  void signUpUser(String email, String password) async {
    await client.auth.signUp(email, password);
  }

  getData() async {
    var response = await client.from('datatable').select().execute();
    if (response.error == null) {
      print('response.data: ${response.data}');
    }
  }

  addData(String friendName) async {
    await client.from('datatable').insert([
      {'name': friendName}
    ]).execute();
  }
}
