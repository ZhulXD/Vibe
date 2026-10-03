package com.google.android.material.datepicker;

import A1.C0013d;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.Log;
import androidx.core.util.Preconditions;
import androidx.core.view.MotionEventCompat;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentSkipListMap;
import p014f0.E;
import p014f0.F;
import p024j.B;
import p025j0.A;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class c implements p009d0.g, p065z0.c, p016g0.b, p019h0.a, B, p025j0.r, p028k1.n, p033m0.p, p009d0.l {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static c f3412c;
    public final /* synthetic */ int b;

    public /* synthetic */ c(int i3) {
        this.b = i3;
    }

    public static c r(Context context, int i3) {
        Preconditions.checkArgument(i3 != 0, "Cannot create a CalendarItemStyle with a styleResId of 0");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i3, A0.a.f33s);
        Rect rect = new Rect(typedArrayObtainStyledAttributes.getDimensionPixelOffset(0, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(2, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(1, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(3, 0));
        com.bumptech.glide.d.r(context, typedArrayObtainStyledAttributes, 4);
        com.bumptech.glide.d.r(context, typedArrayObtainStyledAttributes, 9);
        com.bumptech.glide.d.r(context, typedArrayObtainStyledAttributes, 7);
        typedArrayObtainStyledAttributes.getDimensionPixelSize(8, 0);
        Y0.m.a(context, typedArrayObtainStyledAttributes.getResourceId(5, 0), typedArrayObtainStyledAttributes.getResourceId(6, 0), new Y0.a(0)).a();
        typedArrayObtainStyledAttributes.recycle();
        c cVar = new c(0);
        Preconditions.checkArgumentNonnegative(rect.left);
        Preconditions.checkArgumentNonnegative(rect.top);
        Preconditions.checkArgumentNonnegative(rect.right);
        Preconditions.checkArgumentNonnegative(rect.bottom);
        return cVar;
    }

    @Override // p016g0.b
    public Bitmap b(int i3, int i4, Bitmap.Config config) {
        return Bitmap.createBitmap(i3, i4, config);
    }

    @Override // p016g0.b
    public Bitmap e(int i3, int i4, Bitmap.Config config) {
        return Bitmap.createBitmap(i3, i4, config);
    }

    @Override // p016g0.b
    public void f(Bitmap bitmap) {
        bitmap.recycle();
    }

    @Override // p065z0.c
    public Object g() {
        switch (this.b) {
            case 5:
                return new E();
            default:
                try {
                    return new p019h0.h(MessageDigest.getInstance("SHA-256"));
                } catch (NoSuchAlgorithmException e2) {
                    throw new RuntimeException(e2);
                }
        }
    }

    @Override // p019h0.a
    public File h(p009d0.f fVar) {
        return null;
    }

    @Override // p024j.B
    public boolean i(p024j.p pVar) {
        return false;
    }

    @Override // p025j0.r
    public p025j0.q l(p025j0.y yVar) {
        return new A(yVar.a(p025j0.g.class, InputStream.class), 1);
    }

    @Override // p009d0.l
    public int m(p009d0.i iVar) {
        return 1;
    }

    @Override // p028k1.n
    public Object n() {
        switch (this.b) {
            case 12:
                return new TreeSet();
            case 13:
                return new LinkedHashSet();
            case MotionEventCompat.AXIS_RZ /* 14 */:
                return new ArrayDeque();
            case MotionEventCompat.AXIS_HAT_X /* 15 */:
                return new ArrayList();
            case 16:
                return new ConcurrentSkipListMap();
            case 17:
                return new ConcurrentHashMap();
            case MotionEventCompat.AXIS_RTRIGGER /* 18 */:
                return new TreeMap();
            case 19:
                return new LinkedHashMap();
            default:
                return new p028k1.m(true);
        }
    }

    @Override // p009d0.b
    public boolean p(Object obj, File file, p009d0.i iVar) throws Throwable {
        try {
            p063y0.b.d(((p042q0.f) ((p042q0.b) ((F) obj).get()).b.b).f5276a.f3129d.asReadOnlyBuffer(), file);
            return true;
        } catch (IOException e2) {
            if (!Log.isLoggable("GifEncoder", 5)) {
                return false;
            }
            Log.w("GifEncoder", "Failed to encode GIF drawable data", e2);
            return false;
        }
    }

    public void s(C0013d c0013d, float f) {
        p040p.b bVar = (p040p.b) ((Drawable) c0013d.f177c);
        p040p.a aVar = (p040p.a) c0013d.f178d;
        boolean useCompatPadding = aVar.getUseCompatPadding();
        boolean preventCornerOverlap = aVar.getPreventCornerOverlap();
        if (f != bVar.f5214e || bVar.f != useCompatPadding || bVar.g != preventCornerOverlap) {
            bVar.f5214e = f;
            bVar.f = useCompatPadding;
            bVar.g = preventCornerOverlap;
            bVar.b(null);
            bVar.invalidateSelf();
        }
        if (!aVar.getUseCompatPadding()) {
            c0013d.G(0, 0, 0, 0);
            return;
        }
        p040p.b bVar2 = (p040p.b) ((Drawable) c0013d.f177c);
        float f3 = bVar2.f5214e;
        float f4 = bVar2.f5211a;
        int iCeil = (int) Math.ceil(p040p.c.a(f3, f4, aVar.getPreventCornerOverlap()));
        int iCeil2 = (int) Math.ceil(p040p.c.b(f3, f4, aVar.getPreventCornerOverlap()));
        c0013d.G(iCeil, iCeil2, iCeil, iCeil2);
    }

    @Override // p016g0.b
    public void o() {
    }

    @Override // p033m0.p
    public void q() {
    }

    @Override // p016g0.b
    public void k(int i3) {
    }

    @Override // p024j.B
    public void a(p024j.p pVar, boolean z2) {
    }

    @Override // p033m0.p
    public void d(Bitmap bitmap, p016g0.b bVar) {
    }

    @Override // p019h0.a
    public void j(p009d0.f fVar, F.b bVar) {
    }

    @Override // p009d0.g
    public void c(byte[] bArr, Object obj, MessageDigest messageDigest) {
    }
}
