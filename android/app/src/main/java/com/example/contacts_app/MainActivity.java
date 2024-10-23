package com.example.contacts_app;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

import androidx.annotation.NonNull;

import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity {
    @Override
    public void configureFlutterEngine(FlutterEngine flutterEngine) {
        Context context = getApplicationContext();
        super.configureFlutterEngine(flutterEngine);
        GeneratedPluginRegistrant.registerWith(flutterEngine);
        ConnectivityApi1.ConnectivityApi.setUp(flutterEngine.getDartExecutor().getBinaryMessenger(), new ConnectivityApi1.ConnectivityApi() {
            @NonNull
            @Override
            public ConnectivityApi1.ConnectivityResult checkConnectivity() {
                ConnectivityApi1.ConnectivityResult result = new ConnectivityApi1.ConnectivityResult();
                ConnectivityManager cm = (ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE);
                NetworkInfo activeNetwork = cm.getActiveNetworkInfo();
                result.setIsConnected(activeNetwork != null && activeNetwork.isConnectedOrConnecting());
                return result;
            }
        });
    }
}
