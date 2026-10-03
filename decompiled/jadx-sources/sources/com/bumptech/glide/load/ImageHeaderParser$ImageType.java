package com.bumptech.glide.load;

import p009d0.d;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public enum ImageHeaderParser$ImageType {
    GIF(true),
    JPEG(false),
    RAW(false),
    PNG_A(true),
    PNG(false),
    WEBP_A(true),
    WEBP(false),
    ANIMATED_WEBP(true),
    AVIF(true),
    ANIMATED_AVIF(true),
    UNKNOWN(false);

    public final boolean b;

    ImageHeaderParser$ImageType(boolean z2) {
        this.b = z2;
    }

    public boolean hasAlpha() {
        return this.b;
    }

    public boolean isWebp() {
        int i3 = d.f3867a[ordinal()];
        return i3 == 1 || i3 == 2 || i3 == 3;
    }
}
