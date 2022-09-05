import 'package:supabase/supabase.dart';

class SupabaseManager {
  final client = SupabaseClient('https://wctdqcgdijrbnqfubsbg.supabase.co',
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6IndjdGRxY2dkaWpyYm5xZnVic2JnIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NjIzODM4MDgsImV4cCI6MTk3Nzk1OTgwOH0.PPH4-fq0JbBE36uXMP49FUsARzJmv8fN11sbZ6TnQcQ');

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
    await client.from('datatable').insert([{'name': friendName}]).execute();
  }
}