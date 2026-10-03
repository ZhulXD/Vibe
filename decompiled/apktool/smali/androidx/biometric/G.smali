.class public abstract Landroidx/biometric/G;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# direct methods
.method public static a(Landroid/content/pm/PackageManager;)Z
    .locals 1

    .line 1
    const-string v0, "android.hardware.fingerprint"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
