package p000a;

import A1.C0015e;
import A1.C0029l;
import A1.C0031m;
import A1.C0033n;
import A1.D0;
import A1.L0;
import A1.Z;
import A1.r0;
import A1.t0;
import A1.u0;
import A1.v0;
import C1.ViewOnClickListenerC0113w;
import C1.ViewOnClickListenerC0122z;
import D1.j;
import G.b;
import Q.c;
import S.F;
import S.I;
import Y0.w;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import android.text.method.ScrollingMovementMethod;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.os.EnvironmentCompat;
import androidx.core.provider.FontRequest;
import androidx.core.util.Preconditions;
import androidx.emoji2.text.r;
import com.bumptech.glide.k;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import com.bumptech.glide.n;
import com.minhub.gamehub.R;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.hub.catalog.OnlineCatalogItem;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.io.StringReader;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicReference;
import k.j1;
import k.l1;
import kotlin.UByte;
import kotlin.UShort;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import p011e.C0240b;
import p011e.C0244f;
import p011e.DialogInterfaceC0245g;
import p016g0.g;
import p023i1.o;
import p023i1.p;
import p023i1.q;
import p028k1.d;
import p033m0.h;
import p033m0.x;
import p052u0.e;
import p064y1.RunnableC0424x;
import p066z1.l;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f2489a = true;
    public static Field b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f2490c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static Field f2491d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static boolean f2492e = false;
    public static Class f = null;
    public static boolean g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static Field f2493h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static boolean f2494i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static Field f2495j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static boolean f2496k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static volatile boolean f2497l = true;

    public static final String C(OnlineCatalogItem item) {
        Intrinsics.checkNotNullParameter(item, "item");
        String strReplace = new Regex("<[^>]+>").replace(item.getContentHtml(), " ");
        Intrinsics.checkNotNullParameter(strReplace, "<this>");
        String string = StringsKt.trim((CharSequence) new Regex("\\s+").replace(new Regex("&#x([0-9a-fA-F]+);").replace(new Regex("&#(\\d+);").replace(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(strReplace, "&amp;", "&", false, 4, (Object) null), "&lt;", "<", false, 4, (Object) null), "&gt;", ">", false, 4, (Object) null), "&quot;", "\"", false, 4, (Object) null), "&apos;", "'", false, 4, (Object) null), "&nbsp;", " ", false, 4, (Object) null), new C0015e(20)), new C0015e(21)), " ")).toString();
        if (StringsKt.isBlank(string)) {
            string = StringsKt.trim((CharSequence) new Regex("\\s+").replace(item.getExcerpt(), " ")).toString();
        }
        return StringsKt.isBlank(string) ? item.getTitle() : string;
    }

    public static o D(p1.a aVar) {
        boolean z2 = aVar.f5220c;
        aVar.f5220c = true;
        try {
            try {
                try {
                    o oVarI = d.i(aVar);
                    aVar.f5220c = z2;
                    return oVarI;
                } catch (StackOverflowError e2) {
                    throw new c("Failed parsing JSON source: " + aVar + " to Json", e2);
                }
            } catch (OutOfMemoryError e3) {
                throw new c("Failed parsing JSON source: " + aVar + " to Json", e3);
            }
        } catch (Throwable th) {
            aVar.f5220c = z2;
            throw th;
        }
    }

    public static o E(String str) {
        try {
            p1.a aVar = new p1.a(new StringReader(str));
            o oVarD = D(aVar);
            oVarD.getClass();
            if (!(oVarD instanceof q) && aVar.v() != 10) {
                throw new p("Did not consume the entire document.");
            }
            return oVarD;
        } catch (NumberFormatException e2) {
            throw new p(e2);
        } catch (p1.c e3) {
            throw new p(e3);
        } catch (IOException e4) {
            throw new p(e4);
        }
    }

    public static b F(ByteBuffer byteBuffer) throws IOException {
        long j2;
        ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
        byteBufferDuplicate.order(ByteOrder.BIG_ENDIAN);
        byteBufferDuplicate.position(byteBufferDuplicate.position() + 4);
        int i3 = byteBufferDuplicate.getShort() & UShort.MAX_VALUE;
        if (i3 > 100) {
            throw new IOException("Cannot read metadata.");
        }
        byteBufferDuplicate.position(byteBufferDuplicate.position() + 6);
        int i4 = 0;
        while (true) {
            if (i4 >= i3) {
                j2 = -1;
                break;
            }
            int i5 = byteBufferDuplicate.getInt();
            byteBufferDuplicate.position(byteBufferDuplicate.position() + 4);
            j2 = ((long) byteBufferDuplicate.getInt()) & 4294967295L;
            byteBufferDuplicate.position(byteBufferDuplicate.position() + 4);
            if (1835365473 == i5) {
                break;
            }
            i4++;
        }
        if (j2 != -1) {
            byteBufferDuplicate.position(byteBufferDuplicate.position() + ((int) (j2 - ((long) byteBufferDuplicate.position()))));
            byteBufferDuplicate.position(byteBufferDuplicate.position() + 12);
            long j3 = ((long) byteBufferDuplicate.getInt()) & 4294967295L;
            for (int i6 = 0; i6 < j3; i6++) {
                int i7 = byteBufferDuplicate.getInt();
                long j4 = ((long) byteBufferDuplicate.getInt()) & 4294967295L;
                byteBufferDuplicate.getInt();
                if (1164798569 == i7 || 1701669481 == i7) {
                    byteBufferDuplicate.position((int) (j4 + j2));
                    b bVar = new b();
                    byteBufferDuplicate.order(ByteOrder.LITTLE_ENDIAN);
                    int iPosition = byteBufferDuplicate.position() + byteBufferDuplicate.getInt(byteBufferDuplicate.position());
                    bVar.b = byteBufferDuplicate;
                    bVar.f984a = iPosition;
                    int i8 = iPosition - byteBufferDuplicate.getInt(iPosition);
                    bVar.f985c = i8;
                    bVar.f986d = bVar.b.getShort(i8);
                    return bVar;
                }
            }
        }
        throw new IOException("Cannot read metadata.");
    }

    public static F G(byte[] data) {
        Intrinsics.checkNotNullParameter(data, "data");
        if (data.length < 2) {
            return null;
        }
        int i3 = data[0] & UByte.MAX_VALUE;
        int i4 = data[1] & UByte.MAX_VALUE;
        if (i3 == 255 && i4 == 254) {
            return new F(new String(data, 2, data.length - 2, Charsets.UTF_16LE), l.b, 0);
        }
        int i5 = i3 ^ 255;
        if ((i4 ^ i5) == 254) {
            int length = data.length;
            byte[] bArr = new byte[length];
            for (int i6 = 0; i6 < length; i6++) {
                bArr[i6] = (byte) (data[i6] ^ i5);
            }
            return new F(new String(bArr, 2, length - 2, Charsets.UTF_16LE), l.f6454c, i5);
        }
        List listTake = ArraysKt___ArraysKt.take(data, 64);
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listTake, 10));
        Iterator it = listTake.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(((Number) it.next()).byteValue() & UByte.MAX_VALUE));
        }
        Integer num = (Integer) CollectionsKt.firstOrNull((List) arrayList);
        if (num == null) {
            return null;
        }
        int iIntValue = num.intValue();
        if (iIntValue != 47 && iIntValue != 42 && iIntValue != 64 && iIntValue != 59 && iIntValue != 13 && iIntValue != 10 && iIntValue != 9 && iIntValue != 32 && ((65 > iIntValue || iIntValue >= 91) && (97 > iIntValue || iIntValue >= 123))) {
            return null;
        }
        if (!arrayList.isEmpty()) {
            int size = arrayList.size();
            int i7 = 0;
            while (i7 < size) {
                Object obj = arrayList.get(i7);
                i7++;
                if (((Number) obj).intValue() == 0) {
                    return null;
                }
            }
        }
        return new F(new String(data, Charsets.ISO_8859_1), l.f6455d, 0);
    }

    public static File H(File destinationCanonical, String entryName) throws IOException {
        Intrinsics.checkNotNullParameter(destinationCanonical, "destinationCanonical");
        Intrinsics.checkNotNullParameter(entryName, "entryName");
        File fileI = I(destinationCanonical, entryName);
        if (fileI != null) {
            return fileI;
        }
        throw new IOException(kotlin.collections.unsigned.a.o("Archive entry escapes destination directory: ", entryName));
    }

    public static File I(File destinationCanonical, String entryName) throws IOException {
        Intrinsics.checkNotNullParameter(destinationCanonical, "destinationCanonical");
        Intrinsics.checkNotNullParameter(entryName, "entryName");
        File canonicalFile = new File(destinationCanonical, StringsKt.F(entryName, '\\', '/')).getCanonicalFile();
        if (!Intrinsics.areEqual(canonicalFile, destinationCanonical)) {
            String path = canonicalFile.getPath();
            Intrinsics.checkNotNullExpressionValue(path, "getPath(...)");
            if (!StringsKt.N(path, destinationCanonical.getPath() + File.separator)) {
                return null;
            }
        }
        return canonicalFile;
    }

    public static void J(View view, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            j1.a(view, charSequence);
            return;
        }
        l1 l1Var = l1.f4871l;
        if (l1Var != null && l1Var.b == view) {
            l1.b(null);
        }
        if (!TextUtils.isEmpty(charSequence)) {
            new l1(view, charSequence);
            return;
        }
        l1 l1Var2 = l1.f4872m;
        if (l1Var2 != null && l1Var2.b == view) {
            l1Var2.a();
        }
        view.setOnLongClickListener(null);
        view.setLongClickable(false);
        view.setOnHoverListener(null);
    }

    public static final void M(Context ctx, R1.a info) {
        Intrinsics.checkNotNullParameter(ctx, "ctx");
        Intrinsics.checkNotNullParameter(info, "info");
        View viewInflate = View.inflate(ctx, R.layout.dialog_update, null);
        ((TextView) viewInflate.findViewById(R.id.tv_update_version)).setText("v" + info.b);
        ((TextView) viewInflate.findViewById(R.id.tv_update_message)).setText(ctx.getString(R.string.dialog_update_message, info.b));
        View viewFindViewById = viewInflate.findViewById(R.id.layout_changelog);
        String str = info.f1945d;
        if (!StringsKt.isBlank(str)) {
            TextView textView = (TextView) viewInflate.findViewById(R.id.tv_update_changelog);
            textView.setText(str);
            textView.setMovementMethod(new ScrollingMovementMethod());
            textView.setVerticalScrollBarEnabled(true);
            viewFindViewById.setVisibility(0);
        }
        C0244f c0244f = new C0244f(ctx, R.style.Theme_MinHub_Dialog);
        C0240b c0240b = (C0240b) c0244f.f4145c;
        c0240b.f4112t = viewInflate;
        c0240b.f4105m = true;
        DialogInterfaceC0245g dialogInterfaceC0245gC = c0244f.c();
        Intrinsics.checkNotNullExpressionValue(dialogInterfaceC0245gC, "create(...)");
        Window window = dialogInterfaceC0245gC.getWindow();
        if (window != null) {
            window.setBackgroundDrawableResource(android.R.color.transparent);
        }
        ((Button) viewInflate.findViewById(R.id.btn_update_cancel)).setOnClickListener(new ViewOnClickListenerC0122z(dialogInterfaceC0245gC, 6));
        Button button = (Button) viewInflate.findViewById(R.id.btn_update_download);
        if (StringsKt.isBlank(info.f1944c)) {
            button.setVisibility(8);
        } else {
            button.setOnClickListener(new ViewOnClickListenerC0113w(dialogInterfaceC0245gC, ctx, info, 5));
        }
        dialogInterfaceC0245gC.show();
    }

    public static Z O(long j2) {
        return new Z("unknown-session", 0, EnvironmentCompat.MEDIA_UNKNOWN, EnvironmentCompat.MEDIA_UNKNOWN, 0, L0.g, EnvironmentCompat.MEDIA_UNKNOWN, EnvironmentCompat.MEDIA_UNKNOWN, "unknown-request-" + j2, 0L, 0L);
    }

    public static final void a(j jVar) throws T1.b {
        if (jVar.f830i.get()) {
            throw new T1.b();
        }
    }

    public static final String b(H1.b bVar) {
        String string;
        if (bVar != null) {
            String strO = CollectionsKt.o(CollectionsKt.take(bVar.f1091a, 24), ",", null, null, new L1.d(7), 30);
            String strO2 = CollectionsKt.o(CollectionsKt.take(bVar.f1092c, 8), " | ", null, null, new L1.d(8), 30);
            String strName = bVar.g.name();
            String strName2 = bVar.b.name();
            StringBuilder sbJ = kotlin.collections.unsigned.a.j("dryRun=observation-only; activation=disabled-by-design\ndryRun.selectedPatchIds=", strO, "\ndryRun.requestedMode=", strName, "; actualMode=");
            sbJ.append(strName2);
            sbJ.append("\ndryRun.reasons=");
            sbJ.append(strO2);
            sbJ.append("\n");
            string = sbJ.toString();
        } else {
            string = null;
        }
        return string == null ? "" : string;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001f A[PHI: r0
      0x001f: PHI (r0v13 java.lang.String) = (r0v4 java.lang.String), (r0v5 java.lang.String), (r0v14 java.lang.String) binds: [B:15:0x002d, B:19:0x0039, B:8:0x001c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:11:0x0021  */
    /* JADX WARN: Code duplicated, block: B:14:0x002c  */
    public static void c(View view, TextView textView, Game game, float f3) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(game, "game");
        Intrinsics.checkNotNullParameter(game, "game");
        String bgPath = game.getBgPath();
        String str = null;
        if (bgPath == null) {
            bgPath = game.getThumbnailUrl();
            if (StringsKt.isBlank(bgPath)) {
                bgPath = null;
            }
            if (bgPath == null || ((bgPath = game.getIconPath()) != null && !StringsKt.isBlank(bgPath))) {
                str = bgPath;
            }
        } else {
            if (StringsKt.isBlank(bgPath)) {
                bgPath = null;
            }
            if (bgPath == null) {
                bgPath = game.getThumbnailUrl();
                if (StringsKt.isBlank(bgPath)) {
                    bgPath = null;
                }
                if (bgPath == null) {
                    str = bgPath;
                } else {
                    str = bgPath;
                }
            } else {
                str = bgPath;
            }
        }
        if (str == null || StringsKt.isBlank(str)) {
            GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TL_BR, new int[]{com.bumptech.glide.d.Z(game.getCoverColor1()), com.bumptech.glide.d.Z(game.getCoverColor2())});
            gradientDrawable.setCornerRadius(f3);
            view.setBackground(gradientDrawable);
            if (textView != null) {
                String upperCase = StringsKt.take(game.getTitle(), 3).toUpperCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
                textView.setText(upperCase);
                return;
            }
            return;
        }
        if (textView != null) {
            textView.setText("");
        }
        n nVarC = com.bumptech.glide.b.c(view);
        nVarC.getClass();
        k kVarX = new k(nVarC.b, nVarC, Drawable.class, nVarC.f3274c).x(str);
        if (e.f5393q == null) {
            e eVar = new e();
            p033m0.n nVar = p033m0.n.b;
            e eVar2 = (e) eVar.p(new h());
            if (eVar2.f5385m && !eVar2.f5386n) {
                throw new IllegalStateException("You cannot auto lock an already locked options object, try clone() first");
            }
            eVar2.f5386n = true;
            eVar2.f5385m = true;
            e.f5393q = eVar2;
        }
        k kVarS = kVarX.a(e.f5393q);
        kVarS.w(new S1.a(view, textView, game, f3), kVarS);
    }

    public static String d(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b3 : bArr) {
            sb.append(String.format("%02x", Byte.valueOf(b3)));
        }
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long[] g(Serializable serializable) {
        if (!(serializable instanceof int[])) {
            if (serializable instanceof long[]) {
                return (long[]) serializable;
            }
            return null;
        }
        int[] iArr = (int[]) serializable;
        long[] jArr = new long[iArr.length];
        for (int i3 = 0; i3 < iArr.length; i3++) {
            jArr[i3] = iArr[i3];
        }
        return jArr;
    }

    public static r h(Context context) {
        ProviderInfo providerInfo;
        FontRequest fontRequest;
        ApplicationInfo applicationInfo;
        Y0.e cVar = Build.VERSION.SDK_INT >= 28 ? new androidx.emoji2.text.c(17) : new Y0.e(17);
        PackageManager packageManager = context.getPackageManager();
        Preconditions.checkNotNull(packageManager, "Package manager required to locate emoji font provider");
        Iterator<ResolveInfo> it = packageManager.queryIntentContentProviders(new Intent("androidx.content.action.LOAD_EMOJI_FONT"), 0).iterator();
        while (true) {
            if (!it.hasNext()) {
                providerInfo = null;
                break;
            }
            providerInfo = it.next().providerInfo;
            if (providerInfo != null && (applicationInfo = providerInfo.applicationInfo) != null && (applicationInfo.flags & 1) == 1) {
                break;
            }
        }
        if (providerInfo == null) {
            fontRequest = null;
        } else {
            try {
                String str = providerInfo.authority;
                String str2 = providerInfo.packageName;
                Signature[] signatureArrL = cVar.l(packageManager, str2);
                ArrayList arrayList = new ArrayList();
                for (Signature signature : signatureArrL) {
                    arrayList.add(signature.toByteArray());
                }
                fontRequest = new FontRequest(str, str2, "emojicompat-emoji-font", (List<List<byte[]>>) Collections.singletonList(arrayList));
            } catch (PackageManager.NameNotFoundException e2) {
                Log.wtf("emoji2.text.DefaultEmojiConfig", e2);
                fontRequest = null;
            }
        }
        if (fontRequest == null) {
            return null;
        }
        return new r(new androidx.emoji2.text.q(context, fontRequest));
    }

    public static Drawable j(Context context, Context context2, int i3, Resources.Theme theme) {
        try {
            if (f2497l) {
                return u(context2, i3, theme);
            }
        } catch (Resources.NotFoundException unused) {
        } catch (IllegalStateException e2) {
            if (context.getPackageName().equals(context2.getPackageName())) {
                throw e2;
            }
            return ContextCompat.getDrawable(context2, i3);
        } catch (NoClassDefFoundError unused2) {
            f2497l = false;
        }
        if (theme == null) {
            theme = context2.getTheme();
        }
        return ResourcesCompat.getDrawable(context2.getResources(), i3, theme);
    }

    public static int k(List list, InputStream inputStream, g gVar) throws IOException {
        if (inputStream == null) {
            return -1;
        }
        if (!inputStream.markSupported()) {
            inputStream = new x(inputStream, gVar);
        }
        inputStream.mark(5242880);
        int size = list.size();
        for (int i3 = 0; i3 < size; i3++) {
            try {
                int iB = ((p009d0.e) list.get(i3)).b(inputStream, gVar);
                inputStream.reset();
                if (iB != -1) {
                    return iB;
                }
            } catch (Throwable th) {
                inputStream.reset();
                throw th;
            }
        }
        return -1;
    }

    public static ImageHeaderParser$ImageType m(List list, InputStream inputStream, g gVar) throws IOException {
        if (inputStream == null) {
            return ImageHeaderParser$ImageType.UNKNOWN;
        }
        if (!inputStream.markSupported()) {
            inputStream = new x(inputStream, gVar);
        }
        inputStream.mark(5242880);
        int size = list.size();
        for (int i3 = 0; i3 < size; i3++) {
            try {
                ImageHeaderParser$ImageType imageHeaderParser$ImageTypeD = ((p009d0.e) list.get(i3)).d(inputStream);
                inputStream.reset();
                if (imageHeaderParser$ImageTypeD != ImageHeaderParser$ImageType.UNKNOWN) {
                    return imageHeaderParser$ImageTypeD;
                }
            } catch (Throwable th) {
                inputStream.reset();
                throw th;
            }
        }
        return ImageHeaderParser$ImageType.UNKNOWN;
    }

    public static ImageHeaderParser$ImageType n(List list, ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            return ImageHeaderParser$ImageType.UNKNOWN;
        }
        int size = list.size();
        for (int i3 = 0; i3 < size; i3++) {
            try {
                ImageHeaderParser$ImageType imageHeaderParser$ImageTypeA = ((p009d0.e) list.get(i3)).a(byteBuffer);
                AtomicReference atomicReference = p063y0.b.f6013a;
                if (imageHeaderParser$ImageTypeA != ImageHeaderParser$ImageType.UNKNOWN) {
                    return imageHeaderParser$ImageTypeA;
                }
            } catch (Throwable th) {
                AtomicReference atomicReference2 = p063y0.b.f6013a;
                throw th;
            }
        }
        return ImageHeaderParser$ImageType.UNKNOWN;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x007f  */
    public static String q(String source) {
        int i3;
        int i4;
        Intrinsics.checkNotNullParameter(source, "source");
        String strReplace$default = StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(source, "if(!true))", "if(!true)", false, 4, (Object) null), "try{ true { return true; }", "try{ System.createAppLock = function(name) { return true; }", false, 4, (Object) null);
        StringBuilder sb = new StringBuilder();
        int iIndexOf$default = StringsKt__StringsKt.indexOf$default(strReplace$default, "createAppLock", 0, false, 6, (Object) null);
        boolean z2 = false;
        int i5 = 0;
        while (iIndexOf$default >= 0) {
            int i6 = iIndexOf$default - 1;
            while (i6 >= 0 && CharsKt.isWhitespace(strReplace$default.charAt(i6))) {
                i6--;
            }
            int i7 = -1;
            if (i6 < 0 || strReplace$default.charAt(i6) != '.') {
                i3 = -1;
            } else {
                do {
                    i6--;
                    if (i6 < 0) {
                        break;
                    }
                } while (CharsKt.isWhitespace(strReplace$default.charAt(i6)));
                int i8 = i6 + 1;
                while (i6 >= 0 && (Character.isLetterOrDigit(strReplace$default.charAt(i6)) || strReplace$default.charAt(i6) == '_')) {
                    i6--;
                }
                i3 = i6 + 1;
                String strSubstring = strReplace$default.substring(i3, i8);
                Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                if (!Intrinsics.areEqual(strSubstring, "System")) {
                    i3 = -1;
                }
            }
            int i9 = iIndexOf$default + 13;
            int i10 = i9;
            while (i10 < strReplace$default.length() && CharsKt.isWhitespace(strReplace$default.charAt(i10))) {
                i10++;
            }
            if (i10 >= strReplace$default.length() || strReplace$default.charAt(i10) != '(') {
                i10 = -1;
            }
            if (i3 >= 0) {
                int i11 = i9;
                while (i11 < strReplace$default.length() && CharsKt.isWhitespace(strReplace$default.charAt(i11))) {
                    i11++;
                }
                if ((i11 >= strReplace$default.length() || strReplace$default.charAt(i11) != '=' || ((i4 = i11 + 1) < strReplace$default.length() && strReplace$default.charAt(i4) == '=')) && i10 >= 0) {
                    int length = strReplace$default.length();
                    int i12 = 0;
                    while (i10 < length) {
                        char cCharAt = strReplace$default.charAt(i10);
                        if (cCharAt == '(') {
                            i12++;
                        } else if (cCharAt == ')' && (i12 = i12 - 1) == 0) {
                            i7 = i10;
                            break;
                        }
                        i10++;
                    }
                }
            }
            if (i7 < 0) {
                iIndexOf$default = StringsKt__StringsKt.indexOf$default(strReplace$default, "createAppLock", i9, false, 4, (Object) null);
            } else {
                sb.append((CharSequence) strReplace$default, i5, i3);
                sb.append("true");
                i5 = i7 + 1;
                iIndexOf$default = StringsKt__StringsKt.indexOf$default(strReplace$default, "createAppLock", i5, false, 4, (Object) null);
                z2 = true;
            }
        }
        if (z2) {
            sb.append((CharSequence) strReplace$default, i5, strReplace$default.length());
            return sb.toString();
        }
        if (Intrinsics.areEqual(strReplace$default, source)) {
            return null;
        }
        return strReplace$default;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0039  */
    public static final v0 r(Activity activity, String engineKey, RunnableC0424x runnableC0424x, RunnableC0424x runnableC0424x2) {
        String sessionId;
        String stringExtra;
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(engineKey, "engineKey");
        Intent intent = activity.getIntent();
        if (intent == null || (sessionId = intent.getStringExtra("com.minhub.gamehub.session.id")) == null || (stringExtra = intent.getStringExtra("com.minhub.gamehub.session.token")) == null) {
            return null;
        }
        String stringExtra2 = intent.getStringExtra("com.minhub.gamehub.session.process");
        if (stringExtra2 == null) {
            stringExtra2 = activity.getPackageName();
        } else {
            if (StringsKt.isBlank(stringExtra2)) {
                stringExtra2 = null;
            }
            if (stringExtra2 == null) {
                stringExtra2 = activity.getPackageName();
            }
        }
        String str = stringExtra2;
        Intrinsics.checkNotNull(str);
        int i3 = 0;
        v0 v0Var = new v0(activity, sessionId, stringExtra, engineKey, str, Process.myPid(), new C0029l(activity, i3), new C0029l(activity, 1), new C0031m(runnableC0424x, activity, 0), new C0031m(runnableC0424x2, activity, 1));
        if (Intrinsics.areEqual(engineKey, "web")) {
            C0033n isAlive = new C0033n(i3, new WeakReference(activity));
            Intrinsics.checkNotNullParameter(sessionId, "sessionId");
            Intrinsics.checkNotNullParameter(isAlive, "isAlive");
            if (!StringsKt.isBlank(sessionId)) {
                synchronized (D0.b) {
                    D0.f56c = sessionId;
                    D0.f57d = isAlive;
                    Unit unit = Unit.INSTANCE;
                }
            }
        }
        if (v0Var.f261r) {
            return v0Var;
        }
        try {
            Activity activity2 = v0Var.f247a;
            if (activity2 != null) {
                r0 r0Var = v0Var.f255l;
                t0 t0Var = v0Var.f264u;
                String[] actions = {"com.minhub.gamehub.action.REQUEST_CLOSE_GAME", "com.minhub.gamehub.action.REQUEST_FORCE_CLOSE_GAME"};
                Intrinsics.checkNotNullParameter(actions, "actions");
                IntentFilter intentFilter = new IntentFilter();
                for (int i4 = 0; i4 < 2; i4++) {
                    intentFilter.addAction(actions[i4]);
                }
                r0Var.invoke(activity2, t0Var, intentFilter);
            }
            v0Var.f261r = true;
            v0Var.f260q = L0.f86c;
            v0Var.a("com.minhub.gamehub.action.GAME_SESSION_STATUS", null);
            u0 u0Var = new u0(i3, v0Var);
            v0Var.f259p.postDelayed(u0Var, 1000L);
            v0Var.f262s = u0Var;
            return v0Var;
        } catch (Throwable th) {
            v0Var.f261r = false;
            v0Var.f254k.invoke(th);
            return v0Var;
        }
    }

    public static boolean s(int i3) {
        return (i3 & 32768) != 0;
    }

    public static boolean t(int i3) {
        if (i3 == 15 || i3 == 255) {
            return true;
        }
        if (i3 == 32768) {
            return Build.VERSION.SDK_INT >= 30;
        }
        if (i3 != 32783) {
            return i3 == 33023 || i3 == 0;
        }
        int i4 = Build.VERSION.SDK_INT;
        return i4 < 28 || i4 > 29;
    }

    public static Drawable u(Context context, int i3, Resources.Theme theme) {
        if (theme != null) {
            p021i.c cVar = new p021i.c(context);
            cVar.b = theme;
            cVar.a(theme.getResources().getConfiguration());
            context = cVar;
        }
        return com.bumptech.glide.d.v(context, i3);
    }

    public static L1.e v(int... parts) {
        Intrinsics.checkNotNullParameter(parts, "parts");
        return new L1.e(ArraysKt.toList(parts));
    }

    public abstract void A(View view, int i3, int i4);

    public abstract void B(View view, float f3, float f4);

    public void K(View view, float f3) {
        if (f2489a) {
            try {
                I.b(view, f3);
                return;
            } catch (NoSuchMethodError unused) {
                f2489a = false;
            }
        }
        view.setAlpha(f3);
    }

    public void L(View view, int i3) {
        if (!f2490c) {
            try {
                Field declaredField = View.class.getDeclaredField("mViewFlags");
                b = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
                Log.i("ViewUtilsApi19", "fetchViewFlagsField: ");
            }
            f2490c = true;
        }
        Field field = b;
        if (field != null) {
            try {
                b.setInt(view, i3 | (field.getInt(view) & (-13)));
            } catch (IllegalAccessException unused2) {
            }
        }
    }

    public abstract boolean N(View view, int i3);

    public abstract int e(View view, int i3);

    public abstract int f(View view, int i3);

    public abstract void i(w wVar, float f3, float f4);

    public float l(View view) {
        if (f2489a) {
            try {
                return I.a(view);
            } catch (NoSuchMethodError unused) {
                f2489a = false;
            }
        }
        return view.getAlpha();
    }

    public int o(View view) {
        return 0;
    }

    public int p() {
        return 0;
    }

    public abstract void w(int i3);

    public abstract void x(Typeface typeface, boolean z2);

    public abstract void z(int i3);

    public void y(View view, int i3) {
    }
}
