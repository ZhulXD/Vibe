package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import com.minhub.gamehub.R;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c f3413a;
    public final c b;

    public d(Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(com.bumptech.glide.c.P(context, l.class.getCanonicalName(), R.attr.materialCalendarStyle).data, A0.a.f32r);
        c.r(context, typedArrayObtainStyledAttributes.getResourceId(4, 0));
        c.r(context, typedArrayObtainStyledAttributes.getResourceId(2, 0));
        c.r(context, typedArrayObtainStyledAttributes.getResourceId(3, 0));
        c.r(context, typedArrayObtainStyledAttributes.getResourceId(5, 0));
        ColorStateList colorStateListR = com.bumptech.glide.d.r(context, typedArrayObtainStyledAttributes, 7);
        this.f3413a = c.r(context, typedArrayObtainStyledAttributes.getResourceId(9, 0));
        c.r(context, typedArrayObtainStyledAttributes.getResourceId(8, 0));
        this.b = c.r(context, typedArrayObtainStyledAttributes.getResourceId(10, 0));
        new Paint().setColor(colorStateListR.getDefaultColor());
        typedArrayObtainStyledAttributes.recycle();
    }
}
