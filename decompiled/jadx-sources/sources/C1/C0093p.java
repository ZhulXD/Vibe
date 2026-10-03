package C1;

import android.database.Cursor;
import android.net.Uri;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.Toast;
import androidx.activity.result.ActivityResultCallback;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsCompat;
import com.minhub.gamehub.R;
import com.minhub.gamehub.hub.AddGameActivity;
import java.io.File;
import java.util.Set;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: renamed from: C1.p, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0093p implements ActivityResultCallback, OnApplyWindowInsetsListener {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AddGameActivity f666c;

    public /* synthetic */ C0093p(AddGameActivity addGameActivity, int i3) {
        this.b = i3;
        this.f666c = addGameActivity;
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(Object obj) {
        long j2;
        long jCoerceAtLeast;
        switch (this.b) {
            case 0:
                AddGameActivity addGameActivity = this.f666c;
                Set importOperations = addGameActivity.g;
                Uri uri = (Uri) obj;
                int i3 = AddGameActivity.f3740y;
                if (uri != null) {
                    Intrinsics.checkNotNullParameter(addGameActivity, "<this>");
                    Intrinsics.checkNotNullParameter(uri, "uri");
                    String strG = O.g(addGameActivity, uri);
                    Intrinsics.checkNotNullParameter(addGameActivity, "<this>");
                    Intrinsics.checkNotNullParameter(uri, "uri");
                    String gameName = StringsKt__StringsKt.removeSuffix(StringsKt__StringsKt.removeSuffix(StringsKt__StringsKt.removeSuffix(StringsKt__StringsKt.removeSuffix(StringsKt__StringsKt.removeSuffix(StringsKt__StringsKt.removeSuffix(O.g(addGameActivity, uri), (CharSequence) ".zip"), (CharSequence) ".ZIP"), (CharSequence) ".rar"), (CharSequence) ".RAR"), (CharSequence) ".apk"), (CharSequence) ".APK");
                    if (StringsKt__StringsJVMKt.endsWith(strG, ".apk", true)) {
                        Intrinsics.checkNotNullParameter(addGameActivity, "<this>");
                        Intrinsics.checkNotNullParameter(uri, "uri");
                        Intrinsics.checkNotNullParameter(gameName, "gameName");
                        addGameActivity.B(Q.f488c);
                        addGameActivity.D(5);
                        D1.b bVar = new D1.b();
                        Intrinsics.checkNotNullExpressionValue(importOperations, "importOperations");
                        importOperations.add(bVar);
                        new Thread(new RunnableC0104t(addGameActivity, gameName, uri, bVar, 2)).start();
                        return;
                    }
                    Intrinsics.checkNotNullParameter(addGameActivity, "<this>");
                    Intrinsics.checkNotNullParameter(uri, "uri");
                    p058w1.a aVar = null;
                    try {
                        Cursor cursorQuery = addGameActivity.getContentResolver().query(uri, new String[]{"_size"}, null, null, null);
                        if (cursorQuery != null) {
                            try {
                                j2 = cursorQuery.moveToFirst() ? cursorQuery.getLong(0) : 0L;
                                CloseableKt.closeFinally(cursorQuery, null);
                                break;
                            } catch (Throwable th) {
                                try {
                                    throw th;
                                } catch (Throwable th2) {
                                    CloseableKt.closeFinally(cursorQuery, th);
                                    throw th2;
                                }
                            }
                        } else {
                            j2 = 0;
                        }
                    } catch (Exception unused) {
                    }
                    Intrinsics.checkNotNullParameter(addGameActivity, "<this>");
                    long j3 = 0;
                    if (j2 <= 0) {
                        jCoerceAtLeast = 0;
                    } else {
                        long usableSpace = addGameActivity.getCacheDir().getUsableSpace();
                        File externalFilesDir = addGameActivity.getExternalFilesDir(null);
                        if (externalFilesDir == null) {
                            externalFilesDir = addGameActivity.getFilesDir();
                        }
                        j3 = 0;
                        jCoerceAtLeast = RangesKt.coerceAtLeast((j2 * ((long) 2)) - Math.min(usableSpace, externalFilesDir.getUsableSpace()), 0L);
                    }
                    if (jCoerceAtLeast > j3) {
                        Toast.makeText(addGameActivity, addGameActivity.getString(R.string.import_file_failed_space, O.e(jCoerceAtLeast)), 1).show();
                        return;
                    }
                    addGameActivity.B(Q.f488c);
                    String text = addGameActivity.getString(R.string.folder_import_copying);
                    Intrinsics.checkNotNullExpressionValue(text, "getString(...)");
                    Intrinsics.checkNotNullParameter(text, "text");
                    p058w1.a aVar2 = addGameActivity.f3741e;
                    if (aVar2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("b");
                    } else {
                        aVar = aVar2;
                    }
                    aVar.f5626r.setText(text);
                    addGameActivity.D(0);
                    D1.b bVar2 = new D1.b();
                    Intrinsics.checkNotNullExpressionValue(importOperations, "importOperations");
                    importOperations.add(bVar2);
                    new Thread(new RunnableC0104t(addGameActivity, gameName, uri, bVar2, 0)).start();
                    return;
                }
                return;
            default:
                Uri uri2 = (Uri) obj;
                if (uri2 == null) {
                    int i4 = AddGameActivity.f3740y;
                    return;
                }
                C0107u c0107u = this.f666c.f3749o;
                if (c0107u != null) {
                    c0107u.invoke(uri2);
                    return;
                }
                return;
        }
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat insets) {
        int i3 = AddGameActivity.f3740y;
        Intrinsics.checkNotNullParameter(view, "<unused var>");
        Intrinsics.checkNotNullParameter(insets, "insets");
        Insets insets2 = insets.getInsets(WindowInsetsCompat.Type.systemBars());
        Intrinsics.checkNotNullExpressionValue(insets2, "getInsets(...)");
        Insets insets3 = insets.getInsets(WindowInsetsCompat.Type.mandatorySystemGestures());
        Intrinsics.checkNotNullExpressionValue(insets3, "getInsets(...)");
        AddGameActivity addGameActivity = this.f666c;
        p058w1.a aVar = addGameActivity.f3741e;
        p058w1.a aVar2 = null;
        if (aVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("b");
            aVar = null;
        }
        LinearLayout layoutHeader = aVar.f5618j;
        Intrinsics.checkNotNullExpressionValue(layoutHeader, "layoutHeader");
        layoutHeader.setPadding(layoutHeader.getPaddingLeft(), insets2.top, layoutHeader.getPaddingRight(), layoutHeader.getPaddingBottom());
        p058w1.a aVar3 = addGameActivity.f3741e;
        if (aVar3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("b");
        } else {
            aVar2 = aVar3;
        }
        FrameLayout contentFrame = aVar2.f5616h;
        Intrinsics.checkNotNullExpressionValue(contentFrame, "contentFrame");
        contentFrame.setPadding(contentFrame.getPaddingLeft(), contentFrame.getPaddingTop(), contentFrame.getPaddingRight(), Math.max(insets2.bottom, insets3.bottom));
        return insets;
    }
}
