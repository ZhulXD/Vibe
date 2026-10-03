package org.godotengine.godot.xr;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public enum XRMode {
    REGULAR(0, "Regular", "--xr_mode_regular", "Default Android Gamepad"),
    OPENXR(1, "OpenXR", "--xr_mode_openxr", "");

    public final String cmdLineArg;
    final int index;
    public final String inputFallbackMapping;
    final String label;

    XRMode(int i3, String str, String str2, String str3) {
        this.index = i3;
        this.label = str;
        this.cmdLineArg = str2;
        this.inputFallbackMapping = str3;
    }
}
