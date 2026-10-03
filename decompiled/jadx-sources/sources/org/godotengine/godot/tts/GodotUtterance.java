package org.godotengine.godot.tts;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
class GodotUtterance {
    final long id;
    final float pitch;
    final float rate;
    final String text;
    final String voice;
    final int volume;
    int offset = -1;
    int start = 0;

    public GodotUtterance(String str, String str2, int i3, float f, float f3, long j2) {
        this.text = str;
        this.voice = str2;
        this.volume = i3;
        this.pitch = f;
        this.rate = f3;
        this.id = j2;
    }
}
