plugins {
    id("com.android.application")
    // START: FlutterFire Configuration
    id("com.google.gms.google-services")
    // END: FlutterFire Configuration
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "darylgorra.wordpress.com.diary_ai"
    compileSdk = 36
    ndkVersion = "27.0.12077973"




    compileOptions {
        // For AGP 4.1+
        isCoreLibraryDesugaringEnabled = true
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    dependencies {
        // Import the Firebase BoM
        implementation(platform("com.google.firebase:firebase-bom:33.13.0"))
        // TODO: Add the dependencies for Firebase products you want to use
        // When using the BoM, don't specify versions in Firebase dependencies
        implementation("com.google.firebase:firebase-analytics")

        // For AGP 7.4+
        coreLibraryDesugaring("com.android.tools:desugar_jdk_libs:2.1.4")
        // For AGP 7.3
        // coreLibraryDesugaring("com.android.tools:desugar_jdk_libs:1.2.3")
        // For AGP 4.0 to 7.2
        // coreLibraryDesugaring("com.android.tools:desugar_jdk_libs:1.1.9")
    }

    kotlinOptions {
        jvmTarget = "17"
    }

    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "darylgorra.wordpress.com.diary_ai"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = 23
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
        multiDexEnabled= true
    }

    buildTypes {
        release {
            // TODO: Add your own signing config for the release build.
            // Signing with the debug keys for now, so `flutter run --release` works.
            signingConfig = signingConfigs.getByName("debug")

            //Enable code shrinking,obfuscation and optimation for only your project release build type
            //
            isMinifyEnabled = true
            //Enable resource shrinking, which is performed by  the Android Gradle
            isShrinkResources =  true
        }
    }
}

flutter {
    source = "../.."
}
