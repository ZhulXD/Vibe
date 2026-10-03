package E;

import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.Canvas;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import android.util.Log;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.ULongArray;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class b {
    public static /* synthetic */ String A(int i3) {
        switch (i3) {
            case 1:
                return "INITIALIZE";
            case 2:
                return "RESOURCE_CACHE";
            case 3:
                return "DATA_CACHE";
            case 4:
                return "SOURCE";
            case 5:
                return "ENCODE";
            case 6:
                return "FINISHED";
            default:
                return "null";
        }
    }

    public static int a(int i3, int i4, int i5) {
        return (Integer.hashCode(i3) + i4) * i5;
    }

    public static int b(int i3, int i4, boolean z2) {
        return (Boolean.hashCode(z2) + i3) * i4;
    }

    public static int c(long j2, int i3, int i4) {
        return (Long.hashCode(j2) + i3) * i4;
    }

    public static int d(String str, int i3, int i4) {
        return (str.hashCode() + i3) * i4;
    }

    public static int e(UInt uInt, int i3) {
        return UInt.m104constructorimpl(uInt.getData() + i3);
    }

    public static int f(IntRange intRange, int i3) {
        return intRange.getEndInclusive().intValue() + i3;
    }

    public static ClassCastException g(Iterator it) {
        it.next().getClass();
        return new ClassCastException();
    }

    public static Object h(long[] jArr, int i3, Function1 function1) {
        return function1.invoke(ULong.m177boximpl(ULongArray.m243getsVKNKU(jArr, i3)));
    }

    public static String i(int i3, String str) {
        return str + i3;
    }

    public static String j(int i3, String str, String str2) {
        return str + i3 + str2;
    }

    public static String k(RecyclerView recyclerView, StringBuilder sb) {
        sb.append(recyclerView.A());
        return sb.toString();
    }

    public static String l(String str, Fragment fragment, String str2) {
        return str + fragment + str2;
    }

    public static String m(String str, String str2, String str3) {
        return str + str2 + str3;
    }

    public static String n(String str, String str2, String str3, String str4, String str5) {
        return str + str2 + str3 + str4 + str5;
    }

    public static StringBuilder o(int i3, String str, String str2) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(i3);
        sb.append(str2);
        return sb;
    }

    public static StringBuilder p(String str, int i3, int i4, String str2, String str3) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(i3);
        sb.append(str2);
        sb.append(i4);
        sb.append(str3);
        return sb;
    }

    public static StringBuilder q(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(str2);
        sb.append(str3);
        return sb;
    }

    public static ArrayList r(LinkedHashMap linkedHashMap, Object obj) {
        ArrayList arrayList = new ArrayList();
        linkedHashMap.put(obj, arrayList);
        return arrayList;
    }

    public static ArrayList s(Map map, Object obj) {
        ArrayList arrayList = new ArrayList();
        map.put(obj, arrayList);
        return arrayList;
    }

    public static Iterator t(Iterable iterable, String str, Function1 function1, String str2) {
        Intrinsics.checkNotNullParameter(iterable, str);
        Intrinsics.checkNotNullParameter(function1, str2);
        return iterable.iterator();
    }

    public static void u(int i3, Canvas canvas, int i4, int i5) {
        InlineMarker.finallyStart(i3);
        canvas.restoreToCount(i4);
        InlineMarker.finallyEnd(i5);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void v(Cursor cursor) throws Exception {
        boolean zIsTerminated;
        if (cursor instanceof AutoCloseable) {
            cursor.close();
            return;
        }
        if (!(cursor instanceof ExecutorService)) {
            if (cursor instanceof TypedArray) {
                ((TypedArray) cursor).recycle();
                return;
            } else if (cursor instanceof MediaMetadataRetriever) {
                ((MediaMetadataRetriever) cursor).release();
                return;
            } else {
                if (!(cursor instanceof MediaDrm)) {
                    throw new IllegalArgumentException();
                }
                ((MediaDrm) cursor).release();
                return;
            }
        }
        ExecutorService executorService = (ExecutorService) cursor;
        if (executorService == ForkJoinPool.commonPool() || (zIsTerminated = executorService.isTerminated())) {
            return;
        }
        executorService.shutdown();
        boolean z2 = false;
        while (!zIsTerminated) {
            try {
                zIsTerminated = executorService.awaitTermination(1L, TimeUnit.DAYS);
            } catch (InterruptedException unused) {
                if (!z2) {
                    executorService.shutdownNow();
                    z2 = true;
                }
            }
        }
        if (z2) {
            Thread.currentThread().interrupt();
        }
    }

    public static /* synthetic */ void w(Object obj) {
        if (obj != null) {
            throw new ClassCastException();
        }
    }

    public static void x(String str, String str2, String str3) {
        Log.w(str3, str + str2);
    }

    public static boolean y(File file, File file2, String str, boolean z2) {
        Intrinsics.checkNotNull(file);
        return StringsKt.equals(FilesKt.getExtension(file2), str, z2);
    }

    public static /* synthetic */ String z(int i3) {
        if (i3 == 1) {
            return "LOCAL";
        }
        if (i3 == 2) {
            return "REMOTE";
        }
        if (i3 == 3) {
            return "DATA_DISK_CACHE";
        }
        if (i3 != 4) {
            return i3 != 5 ? "null" : "MEMORY_CACHE";
        }
        return "RESOURCE_DISK_CACHE";
    }
}
