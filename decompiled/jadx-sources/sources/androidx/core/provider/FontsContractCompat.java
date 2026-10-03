package androidx.core.provider;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.Handler;
import android.provider.BaseColumns;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.graphics.TypefaceCompat;
import androidx.core.graphics.TypefaceCompatUtil;
import androidx.core.util.Preconditions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class FontsContractCompat {

    @Deprecated
    public static final String PARCEL_FONT_RESULTS = "font_results";

    @Deprecated
    static final int RESULT_CODE_PROVIDER_NOT_FOUND = -1;

    @Deprecated
    static final int RESULT_CODE_WRONG_CERTIFICATES = -2;

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public static final class Columns implements BaseColumns {
        public static final String FILE_ID = "file_id";
        public static final String ITALIC = "font_italic";
        public static final String RESULT_CODE = "result_code";
        public static final int RESULT_CODE_FONT_NOT_FOUND = 1;
        public static final int RESULT_CODE_FONT_UNAVAILABLE = 2;
        public static final int RESULT_CODE_MALFORMED_QUERY = 3;
        public static final int RESULT_CODE_OK = 0;
        public static final String TTC_INDEX = "font_ttc_index";
        public static final String VARIATION_SETTINGS = "font_variation_settings";
        public static final String WEIGHT = "font_weight";
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public static class FontFamilyResult {
        public static final int STATUS_OK = 0;
        public static final int STATUS_UNEXPECTED_DATA_PROVIDED = 2;
        public static final int STATUS_WRONG_CERTIFICATES = 1;
        private final List<FontInfo[]> mFonts;
        private final int mStatusCode;

        @Deprecated
        public FontFamilyResult(int i3, FontInfo[] fontInfoArr) {
            this.mStatusCode = i3;
            this.mFonts = Collections.singletonList(fontInfoArr);
        }

        public static FontFamilyResult create(int i3, FontInfo[] fontInfoArr) {
            return new FontFamilyResult(i3, fontInfoArr);
        }

        public FontInfo[] getFonts() {
            return this.mFonts.get(0);
        }

        public List<FontInfo[]> getFontsWithFallbacks() {
            return this.mFonts;
        }

        public int getStatusCode() {
            return this.mStatusCode;
        }

        public boolean hasFallback() {
            return this.mFonts.size() > 1;
        }

        public static FontFamilyResult create(int i3, List<FontInfo[]> list) {
            return new FontFamilyResult(i3, list);
        }

        public FontFamilyResult(int i3, List<FontInfo[]> list) {
            this.mStatusCode = i3;
            this.mFonts = list;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public static class FontInfo {
        private final boolean mItalic;
        private final int mResultCode;
        private final int mTtcIndex;
        private final Uri mUri;
        private final int mWeight;

        @Deprecated
        public FontInfo(Uri uri, int i3, int i4, boolean z2, int i5) {
            this.mUri = (Uri) Preconditions.checkNotNull(uri);
            this.mTtcIndex = i3;
            this.mWeight = i4;
            this.mItalic = z2;
            this.mResultCode = i5;
        }

        public static FontInfo create(Uri uri, int i3, int i4, boolean z2, int i5) {
            return new FontInfo(uri, i3, i4, z2, i5);
        }

        public int getResultCode() {
            return this.mResultCode;
        }

        public int getTtcIndex() {
            return this.mTtcIndex;
        }

        public Uri getUri() {
            return this.mUri;
        }

        public int getWeight() {
            return this.mWeight;
        }

        public boolean isItalic() {
            return this.mItalic;
        }
    }

    private FontsContractCompat() {
    }

    public static Typeface buildTypeface(Context context, CancellationSignal cancellationSignal, FontInfo[] fontInfoArr) {
        return TypefaceCompat.createFromFontInfo(context, cancellationSignal, fontInfoArr, 0);
    }

    public static FontFamilyResult fetchFonts(Context context, CancellationSignal cancellationSignal, FontRequest fontRequest) {
        ArrayList arrayList = new ArrayList(1);
        Object obj = new Object[]{fontRequest}[0];
        Objects.requireNonNull(obj);
        arrayList.add(obj);
        return FontProvider.getFontFamilyResult(context, Collections.unmodifiableList(arrayList), cancellationSignal);
    }

    @Deprecated
    public static Typeface getFontSync(Context context, FontRequest fontRequest, ResourcesCompat.FontCallback fontCallback, Handler handler, boolean z2, int i3, int i4) {
        TypefaceCompat.ResourcesCallbackAdapter resourcesCallbackAdapter = new TypefaceCompat.ResourcesCallbackAdapter(fontCallback);
        Handler handler2 = ResourcesCompat.FontCallback.getHandler(handler);
        ArrayList arrayList = new ArrayList(1);
        Object obj = new Object[]{fontRequest}[0];
        Objects.requireNonNull(obj);
        arrayList.add(obj);
        return requestFont(context, (List<FontRequest>) Collections.unmodifiableList(arrayList), i4, z2, i3, handler2, resourcesCallbackAdapter);
    }

    @Deprecated
    public static ProviderInfo getProvider(PackageManager packageManager, FontRequest fontRequest, Resources resources) {
        return FontProvider.getProvider(packageManager, fontRequest, resources);
    }

    @Deprecated
    public static Map<Uri, ByteBuffer> prepareFontData(Context context, FontInfo[] fontInfoArr, CancellationSignal cancellationSignal) {
        return TypefaceCompatUtil.readFontInfoIntoByteBuffer(context, fontInfoArr, cancellationSignal);
    }

    public static Typeface requestFont(Context context, FontRequest fontRequest, int i3, boolean z2, int i4, Handler handler, FontRequestCallback fontRequestCallback) {
        ArrayList arrayList = new ArrayList(1);
        Object obj = new Object[]{fontRequest}[0];
        Objects.requireNonNull(obj);
        arrayList.add(obj);
        return requestFont(context, (List<FontRequest>) Collections.unmodifiableList(arrayList), i3, z2, i4, handler, fontRequestCallback);
    }

    public static void requestFontWithFallbackChain(Context context, List<FontRequest> list, int i3, Executor executor, Executor executor2, FontRequestCallback fontRequestCallback) {
        FontRequestWorker.requestFontAsync(context.getApplicationContext(), list, i3, executor, new CallbackWrapper(fontRequestCallback, executor2));
    }

    @Deprecated
    public static void resetCache() {
        FontRequestWorker.resetTypefaceCache();
    }

    public static void resetTypefaceCache() {
        FontRequestWorker.resetTypefaceCache();
    }

    @Deprecated
    public static void requestFont(Context context, FontRequest fontRequest, FontRequestCallback fontRequestCallback, Handler handler) {
        CallbackWrapper callbackWrapper = new CallbackWrapper(fontRequestCallback);
        Executor executorCreateHandlerExecutor = RequestExecutor.createHandlerExecutor(handler);
        Context applicationContext = context.getApplicationContext();
        ArrayList arrayList = new ArrayList(1);
        Object obj = new Object[]{fontRequest}[0];
        Objects.requireNonNull(obj);
        arrayList.add(obj);
        FontRequestWorker.requestFontAsync(applicationContext, Collections.unmodifiableList(arrayList), 0, executorCreateHandlerExecutor, callbackWrapper);
    }

    public static void requestFont(Context context, FontRequest fontRequest, int i3, Executor executor, Executor executor2, FontRequestCallback fontRequestCallback) {
        CallbackWrapper callbackWrapper = new CallbackWrapper(fontRequestCallback, executor2);
        Context applicationContext = context.getApplicationContext();
        ArrayList arrayList = new ArrayList(1);
        Object obj = new Object[]{fontRequest}[0];
        Objects.requireNonNull(obj);
        arrayList.add(obj);
        FontRequestWorker.requestFontAsync(applicationContext, Collections.unmodifiableList(arrayList), i3, executor, callbackWrapper);
    }

    public static Typeface requestFont(Context context, List<FontRequest> list, int i3, boolean z2, int i4, Handler handler, FontRequestCallback fontRequestCallback) {
        CallbackWrapper callbackWrapper = new CallbackWrapper(fontRequestCallback, RequestExecutor.createHandlerExecutor(handler));
        if (z2) {
            if (list.size() <= 1) {
                return FontRequestWorker.requestFontSync(context, list.get(0), callbackWrapper, i3, i4);
            }
            throw new IllegalArgumentException("Fallbacks with blocking fetches are not supported for performance reasons");
        }
        return FontRequestWorker.requestFontAsync(context, list, i3, null, callbackWrapper);
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public static class FontRequestCallback {
        public static final int FAIL_REASON_FONT_LOAD_ERROR = -3;
        public static final int FAIL_REASON_FONT_NOT_FOUND = 1;
        public static final int FAIL_REASON_FONT_UNAVAILABLE = 2;
        public static final int FAIL_REASON_MALFORMED_QUERY = 3;
        public static final int FAIL_REASON_PROVIDER_NOT_FOUND = -1;
        public static final int FAIL_REASON_SECURITY_VIOLATION = -4;
        public static final int FAIL_REASON_WRONG_CERTIFICATES = -2;

        @Deprecated
        public static final int RESULT_OK = 0;
        static final int RESULT_SUCCESS = 0;

        /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
        @Retention(RetentionPolicy.SOURCE)
        public @interface FontRequestFailReason {
        }

        public void onTypefaceRequestFailed(int i3) {
        }

        public void onTypefaceRetrieved(Typeface typeface) {
        }
    }
}
