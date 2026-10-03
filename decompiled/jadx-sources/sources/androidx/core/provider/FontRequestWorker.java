package androidx.core.provider;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Trace;
import androidx.core.graphics.TypefaceCompat;
import androidx.core.util.Consumer;
import com.bumptech.glide.c;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import p041q.i;
import p041q.j;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
class FontRequestWorker {
    static final i sTypefaceCache = new i(16);
    private static final ExecutorService DEFAULT_EXECUTOR_SERVICE = RequestExecutor.createDefaultExecutor("fonts-androidx", 10, 10000);
    static final Object LOCK = new Object();
    static final j PENDING_REPLIES = new j(0);

    private FontRequestWorker() {
    }

    private static String createCacheId(List<FontRequest> list, int i3) {
        StringBuilder sb = new StringBuilder();
        for (int i4 = 0; i4 < list.size(); i4++) {
            sb.append(list.get(i4).getId());
            sb.append("-");
            sb.append(i3);
            if (i4 < list.size() - 1) {
                sb.append(";");
            }
        }
        return sb.toString();
    }

    @SuppressLint({"WrongConstant"})
    private static int getFontFamilyResultStatus(FontsContractCompat.FontFamilyResult fontFamilyResult) {
        int i3 = 1;
        if (fontFamilyResult.getStatusCode() != 0) {
            return fontFamilyResult.getStatusCode() != 1 ? -3 : -2;
        }
        FontsContractCompat.FontInfo[] fonts = fontFamilyResult.getFonts();
        if (fonts != null && fonts.length != 0) {
            i3 = 0;
            for (FontsContractCompat.FontInfo fontInfo : fonts) {
                int resultCode = fontInfo.getResultCode();
                if (resultCode != 0) {
                    if (resultCode < 0) {
                        return -3;
                    }
                    return resultCode;
                }
            }
        }
        return i3;
    }

    public static TypefaceResult getFontSync(String str, Context context, List<FontRequest> list, int i3) {
        c.b("getFontSync");
        try {
            i iVar = sTypefaceCache;
            Typeface typeface = (Typeface) iVar.a(str);
            if (typeface != null) {
                TypefaceResult typefaceResult = new TypefaceResult(typeface);
                Trace.endSection();
                return typefaceResult;
            }
            try {
                FontsContractCompat.FontFamilyResult fontFamilyResult = FontProvider.getFontFamilyResult(context, list, null);
                int fontFamilyResultStatus = getFontFamilyResultStatus(fontFamilyResult);
                if (fontFamilyResultStatus != 0) {
                    TypefaceResult typefaceResult2 = new TypefaceResult(fontFamilyResultStatus);
                    Trace.endSection();
                    return typefaceResult2;
                }
                Typeface typefaceCreateFromFontInfo = (!fontFamilyResult.hasFallback() || Build.VERSION.SDK_INT < 29) ? TypefaceCompat.createFromFontInfo(context, null, fontFamilyResult.getFonts(), i3) : TypefaceCompat.createFromFontInfoWithFallback(context, null, fontFamilyResult.getFontsWithFallbacks(), i3);
                if (typefaceCreateFromFontInfo == null) {
                    TypefaceResult typefaceResult3 = new TypefaceResult(-3);
                    Trace.endSection();
                    return typefaceResult3;
                }
                iVar.b(str, typefaceCreateFromFontInfo);
                TypefaceResult typefaceResult4 = new TypefaceResult(typefaceCreateFromFontInfo);
                Trace.endSection();
                return typefaceResult4;
            } catch (PackageManager.NameNotFoundException unused) {
                TypefaceResult typefaceResult5 = new TypefaceResult(-1);
                Trace.endSection();
                return typefaceResult5;
            }
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    public static Typeface requestFontAsync(final Context context, final List<FontRequest> list, final int i3, Executor executor, final CallbackWrapper callbackWrapper) {
        final String strCreateCacheId = createCacheId(list, i3);
        Typeface typeface = (Typeface) sTypefaceCache.a(strCreateCacheId);
        if (typeface != null) {
            callbackWrapper.onTypefaceResult(new TypefaceResult(typeface));
            return typeface;
        }
        Consumer<TypefaceResult> consumer = new Consumer<TypefaceResult>() { // from class: androidx.core.provider.FontRequestWorker.2
            @Override // androidx.core.util.Consumer
            public void accept(TypefaceResult typefaceResult) {
                if (typefaceResult == null) {
                    typefaceResult = new TypefaceResult(-3);
                }
                callbackWrapper.onTypefaceResult(typefaceResult);
            }
        };
        synchronized (LOCK) {
            try {
                j jVar = PENDING_REPLIES;
                ArrayList arrayList = (ArrayList) jVar.get(strCreateCacheId);
                if (arrayList != null) {
                    arrayList.add(consumer);
                    return null;
                }
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(consumer);
                jVar.put(strCreateCacheId, arrayList2);
                Callable<TypefaceResult> callable = new Callable<TypefaceResult>() { // from class: androidx.core.provider.FontRequestWorker.3
                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // java.util.concurrent.Callable
                    public TypefaceResult call() {
                        try {
                            return FontRequestWorker.getFontSync(strCreateCacheId, context, list, i3);
                        } catch (Throwable unused) {
                            return new TypefaceResult(-3);
                        }
                    }
                };
                if (executor == null) {
                    executor = DEFAULT_EXECUTOR_SERVICE;
                }
                RequestExecutor.execute(executor, callable, new Consumer<TypefaceResult>() { // from class: androidx.core.provider.FontRequestWorker.4
                    @Override // androidx.core.util.Consumer
                    public void accept(TypefaceResult typefaceResult) {
                        synchronized (FontRequestWorker.LOCK) {
                            try {
                                j jVar2 = FontRequestWorker.PENDING_REPLIES;
                                ArrayList arrayList3 = (ArrayList) jVar2.get(strCreateCacheId);
                                if (arrayList3 == null) {
                                    return;
                                }
                                jVar2.remove(strCreateCacheId);
                                for (int i4 = 0; i4 < arrayList3.size(); i4++) {
                                    ((Consumer) arrayList3.get(i4)).accept(typefaceResult);
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                });
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static Typeface requestFontSync(final Context context, final FontRequest fontRequest, CallbackWrapper callbackWrapper, final int i3, int i4) {
        ArrayList arrayList = new ArrayList(1);
        Object obj = new Object[]{fontRequest}[0];
        Objects.requireNonNull(obj);
        arrayList.add(obj);
        final String strCreateCacheId = createCacheId(Collections.unmodifiableList(arrayList), i3);
        Typeface typeface = (Typeface) sTypefaceCache.a(strCreateCacheId);
        if (typeface != null) {
            callbackWrapper.onTypefaceResult(new TypefaceResult(typeface));
            return typeface;
        }
        if (i4 != -1) {
            try {
                TypefaceResult typefaceResult = (TypefaceResult) RequestExecutor.submit(DEFAULT_EXECUTOR_SERVICE, new Callable<TypefaceResult>() { // from class: androidx.core.provider.FontRequestWorker.1
                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // java.util.concurrent.Callable
                    public TypefaceResult call() {
                        String str = strCreateCacheId;
                        Context context2 = context;
                        Object[] objArr = {fontRequest};
                        ArrayList arrayList2 = new ArrayList(1);
                        Object obj2 = objArr[0];
                        Objects.requireNonNull(obj2);
                        arrayList2.add(obj2);
                        return FontRequestWorker.getFontSync(str, context2, Collections.unmodifiableList(arrayList2), i3);
                    }
                }, i4);
                callbackWrapper.onTypefaceResult(typefaceResult);
                return typefaceResult.mTypeface;
            } catch (InterruptedException unused) {
                callbackWrapper.onTypefaceResult(new TypefaceResult(-3));
                return null;
            }
        }
        ArrayList arrayList2 = new ArrayList(1);
        Object obj2 = new Object[]{fontRequest}[0];
        Objects.requireNonNull(obj2);
        arrayList2.add(obj2);
        TypefaceResult fontSync = getFontSync(strCreateCacheId, context, Collections.unmodifiableList(arrayList2), i3);
        callbackWrapper.onTypefaceResult(fontSync);
        return fontSync.mTypeface;
    }

    public static void resetTypefaceCache() {
        sTypefaceCache.c(-1);
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public static final class TypefaceResult {
        final int mResult;
        final Typeface mTypeface;

        public TypefaceResult(int i3) {
            this.mTypeface = null;
            this.mResult = i3;
        }

        @SuppressLint({"WrongConstant"})
        public boolean isSuccess() {
            return this.mResult == 0;
        }

        @SuppressLint({"WrongConstant"})
        public TypefaceResult(Typeface typeface) {
            this.mTypeface = typeface;
            this.mResult = 0;
        }
    }
}
