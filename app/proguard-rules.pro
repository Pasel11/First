# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /usr/local/Cellar/android-sdk/android-sdk-macosx/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.kts.

-keepattributes *Annotation*
-keepclassmembers class * {
    @com.google.android.gms.common.annotation.KeepName <fields>;
}

# Keep Hilt
-keep class com.google.dagger.hilt.** { *; }
-keep class javax.inject.** { *; }

# Keep Room
-keep class androidx.room.** { *; }
-dontwarn androidx.room.**

# Keep Coroutines
-keepclassmembernames class kotlinx.** {
    volatile <fields>;
}

# Keep Compose
-keep class androidx.compose.** { *; }
