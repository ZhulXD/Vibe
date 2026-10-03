package p042q0;

import A1.C0013d;
import T.e;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.SystemClock;
import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import com.google.android.material.datepicker.c;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import p006c0.d;
import p009d0.i;
import p009d0.k;
import p016g0.b;
import p016g0.g;
import p063y0.h;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a implements k {
    public static final c f = new c(28);
    public static final p019h0.c g = new p019h0.c(1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f5261a;
    public final ArrayList b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final C0013d f5264e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final c f5263d = f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final p019h0.c f5262c = g;

    public a(Context context, ArrayList arrayList, b bVar, g gVar) {
        this.f5261a = context.getApplicationContext();
        this.b = arrayList;
        this.f5264e = new C0013d(20, bVar, gVar);
    }

    public static int d(p006c0.b bVar, int i3, int i4) {
        int iMin = Math.min(bVar.g / i4, bVar.f / i3);
        int iMax = Math.max(1, iMin == 0 ? 0 : Integer.highestOneBit(iMin));
        if (Log.isLoggable("BufferGifDecoder", 2) && iMax > 1) {
            StringBuilder sbP = E.b.p("Downsampling GIF, sampleSize: ", iMax, i3, ", target dimens: [", "x");
            sbP.append(i4);
            sbP.append("], actual dimens: [");
            sbP.append(bVar.f);
            sbP.append("x");
            sbP.append(bVar.g);
            sbP.append("]");
            Log.v("BufferGifDecoder", sbP.toString());
        }
        return iMax;
    }

    @Override // p009d0.k
    public final boolean a(Object obj, i iVar) {
        return !((Boolean) iVar.c(g.b)).booleanValue() && p000a.a.n(this.b, (ByteBuffer) obj) == ImageHeaderParser$ImageType.GIF;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:25:0x0059
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1478)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    @Override // p009d0.k
    public final p014f0.F b(java.lang.Object r8, int r9, int r10, p009d0.i r11) {
        /*
            r7 = this;
            r2 = r8
            java.nio.ByteBuffer r2 = (java.nio.ByteBuffer) r2
            h0.c r8 = r7.f5262c
            monitor-enter(r8)
            java.util.ArrayDeque r0 = r8.f4361a     // Catch: java.lang.Throwable -> L54
            java.lang.Object r0 = r0.poll()     // Catch: java.lang.Throwable -> L54
            c0.c r0 = (p006c0.c) r0     // Catch: java.lang.Throwable -> L54
            if (r0 != 0) goto L15
            c0.c r0 = new c0.c     // Catch: java.lang.Throwable -> L17
            r0.<init>()     // Catch: java.lang.Throwable -> L17
        L15:
            r5 = r0
            goto L1b
        L17:
            r0 = move-exception
            r9 = r0
            r1 = r7
            goto L57
        L1b:
            r0 = 0
            r5.b = r0     // Catch: java.lang.Throwable -> L54
            byte[] r0 = r5.f3124a     // Catch: java.lang.Throwable -> L54
            r1 = 0
            java.util.Arrays.fill(r0, r1)     // Catch: java.lang.Throwable -> L54
            c0.b r0 = new c0.b     // Catch: java.lang.Throwable -> L54
            r0.<init>()     // Catch: java.lang.Throwable -> L54
            r5.f3125c = r0     // Catch: java.lang.Throwable -> L54
            r5.f3126d = r1     // Catch: java.lang.Throwable -> L54
            java.nio.ByteBuffer r0 = r2.asReadOnlyBuffer()     // Catch: java.lang.Throwable -> L54
            r5.b = r0     // Catch: java.lang.Throwable -> L54
            r0.position(r1)     // Catch: java.lang.Throwable -> L54
            java.nio.ByteBuffer r0 = r5.b     // Catch: java.lang.Throwable -> L54
            java.nio.ByteOrder r1 = java.nio.ByteOrder.LITTLE_ENDIAN     // Catch: java.lang.Throwable -> L54
            r0.order(r1)     // Catch: java.lang.Throwable -> L54
            monitor-exit(r8)
            r1 = r7
            r3 = r9
            r4 = r10
            r6 = r11
            o0.c r8 = r1.c(r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> L4c
            h0.c r9 = r1.f5262c
            r9.a(r5)
            return r8
        L4c:
            r0 = move-exception
            r8 = r0
            h0.c r9 = r1.f5262c
            r9.a(r5)
            throw r8
        L54:
            r0 = move-exception
            r1 = r7
        L56:
            r9 = r0
        L57:
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L59
            throw r9
        L59:
            r0 = move-exception
            goto L56
        */
        throw new UnsupportedOperationException("Method not decompiled: p042q0.a.b(java.lang.Object, int, int, d0.i):f0.F");
    }

    /* JADX WARN: Undo finally extract visitor
    java.lang.NullPointerException: Cannot invoke "Object.hashCode()" because "this.second" is null
    	at jadx.core.utils.Pair.hashCode(Pair.java:35)
    	at java.base/java.util.HashMap.hash(HashMap.java:338)
    	at java.base/java.util.HashMap.getNode(HashMap.java:568)
    	at java.base/java.util.HashMap.containsKey(HashMap.java:594)
    	at jadx.core.dex.visitors.finaly.traverser.state.TraverserGlobalCommonState.hasBlocksBeenCached(TraverserGlobalCommonState.java:35)
    	at jadx.core.dex.visitors.finaly.traverser.handlers.MergePathActivePathTraverserHandler.handle(MergePathActivePathTraverserHandler.java:174)
    	at jadx.core.dex.visitors.finaly.traverser.handlers.AbstractActivePathTraverserHandler.process(AbstractActivePathTraverserHandler.java:19)
    	at jadx.core.dex.visitors.finaly.traverser.TraverserController.processHandlerImplementations(TraverserController.java:43)
    	at jadx.core.dex.visitors.finaly.traverser.TraverserController.advance(TraverserController.java:156)
    	at jadx.core.dex.visitors.finaly.traverser.TraverserController.process(TraverserController.java:79)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.findCommonInsns(MarkFinallyVisitor.java:404)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.extractFinally(MarkFinallyVisitor.java:284)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.processTryBlock(MarkFinallyVisitor.java:202)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.visit(MarkFinallyVisitor.java:135)
     */
    public final p038o0.c c(ByteBuffer byteBuffer, int i3, int i4, p006c0.c cVar, i iVar) {
        StringBuilder sb;
        int i5 = h.b;
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        try {
            p006c0.b bVarB = cVar.b();
            p038o0.c cVar2 = null;
            if (bVarB.f3117c > 0 && bVarB.b == 0) {
                Bitmap.Config config = iVar.c(g.f5289a) == p009d0.a.f3864c ? Bitmap.Config.RGB_565 : Bitmap.Config.ARGB_8888;
                int iD = d(bVarB, i3, i4);
                c cVar3 = this.f5263d;
                C0013d c0013d = this.f5264e;
                cVar3.getClass();
                d dVar = new d(c0013d, bVarB, byteBuffer, iD);
                dVar.c(config);
                dVar.f3134k = (dVar.f3134k + 1) % dVar.f3135l.f3117c;
                Bitmap bitmapB = dVar.b();
                if (bitmapB == null) {
                    if (Log.isLoggable("BufferGifDecoder", 2)) {
                        sb = new StringBuilder("Decoded GIF from stream in ");
                    }
                    return null;
                }
                cVar2 = new p038o0.c(new b(new e(1, new f(com.bumptech.glide.b.a(this.f5261a), dVar, i3, i4, bitmapB))), 1);
                if (!Log.isLoggable("BufferGifDecoder", 2)) {
                    return cVar2;
                }
                sb = new StringBuilder("Decoded GIF from stream in ");
                sb.append(h.a(jElapsedRealtimeNanos));
                Log.v("BufferGifDecoder", sb.toString());
                return cVar2;
            }
            if (Log.isLoggable("BufferGifDecoder", 2)) {
                sb = new StringBuilder("Decoded GIF from stream in ");
                sb.append(h.a(jElapsedRealtimeNanos));
                Log.v("BufferGifDecoder", sb.toString());
                return cVar2;
            }
            return null;
        } catch (Throwable th) {
            if (Log.isLoggable("BufferGifDecoder", 2)) {
                Log.v("BufferGifDecoder", "Decoded GIF from stream in " + h.a(jElapsedRealtimeNanos));
            }
            throw th;
        }
    }
}
