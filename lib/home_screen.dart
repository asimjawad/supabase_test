import 'package:flutter/material.dart';
import 'package:supabase_test/supabase_manager.dart';

class HomePage extends StatelessWidget {
  SupabaseManager supabaseManager = SupabaseManager();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: () async {
                  await supabaseManager.getData();
                  print('Got Data');
                },
                child: Text('Read Data'),
              ),
              RaisedButton(
                onPressed: () async {
                  await supabaseManager.addData('USer123');
                  print('added data');
                },
                child: Text('Add Data'),
              )
            ],
          ),
        ),
      ),
    );
  }
}