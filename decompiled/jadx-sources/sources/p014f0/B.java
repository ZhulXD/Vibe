package p014f0;

import E.b;
import android.util.Log;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import p009d0.f;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class B extends Exception {
    public static final StackTraceElement[] g = new StackTraceElement[0];
    public final List b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public f f4178c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4179d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Class f4180e;
    public final String f;

    public B(String str) {
        this(Collections.EMPTY_LIST, str);
    }

    public static void a(Throwable th, ArrayList arrayList) {
        if (!(th instanceof B)) {
            arrayList.add(th);
            return;
        }
        Iterator it = ((B) th).b.iterator();
        while (it.hasNext()) {
            a((Throwable) it.next(), arrayList);
        }
    }

    public static void b(List list, A a3) throws IOException {
        int size = list.size();
        int i3 = 0;
        while (i3 < size) {
            a3.append("Cause (");
            int i4 = i3 + 1;
            a3.append(String.valueOf(i4));
            a3.append(" of ");
            a3.append(String.valueOf(size));
            a3.append("): ");
            Throwable th = (Throwable) list.get(i3);
            if (th instanceof B) {
                ((B) th).e(a3);
            } else {
                c(th, a3);
            }
            i3 = i4;
        }
    }

    public static void c(Throwable th, Appendable appendable) {
        try {
            appendable.append(th.getClass().toString()).append(": ").append(th.getMessage()).append('\n');
        } catch (IOException unused) {
            throw new RuntimeException(th);
        }
    }

    public final void d() {
        ArrayList arrayList = new ArrayList();
        a(this, arrayList);
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            StringBuilder sb = new StringBuilder("Root cause (");
            int i4 = i3 + 1;
            sb.append(i4);
            sb.append(" of ");
            sb.append(size);
            sb.append(")");
            Log.i("Glide", sb.toString(), (Throwable) arrayList.get(i3));
            i3 = i4;
        }
    }

    public final void e(Appendable appendable) {
        c(this, appendable);
        try {
            b(this.b, new A(appendable));
        } catch (IOException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        String str;
        StringBuilder sb = new StringBuilder(71);
        sb.append(this.f);
        String str2 = "";
        if (this.f4180e != null) {
            str = ", " + this.f4180e;
        } else {
            str = "";
        }
        sb.append(str);
        int i3 = this.f4179d;
        sb.append(i3 != 0 ? ", ".concat(b.z(i3)) : "");
        if (this.f4178c != null) {
            str2 = ", " + this.f4178c;
        }
        sb.append(str2);
        ArrayList arrayList = new ArrayList();
        a(this, arrayList);
        if (arrayList.isEmpty()) {
            return sb.toString();
        }
        if (arrayList.size() == 1) {
            sb.append("\nThere was 1 root cause:");
        } else {
            sb.append("\nThere were ");
            sb.append(arrayList.size());
            sb.append(" root causes:");
        }
        int size = arrayList.size();
        int i4 = 0;
        while (i4 < size) {
            Object obj = arrayList.get(i4);
            i4++;
            Throwable th = (Throwable) obj;
            sb.append('\n');
            sb.append(th.getClass().getName());
            sb.append('(');
            sb.append(th.getMessage());
            sb.append(')');
        }
        sb.append("\n call GlideException#logRootCauses(String) for more detail");
        return sb.toString();
    }

    @Override // java.lang.Throwable
    public final void printStackTrace() {
        e(System.err);
    }

    public B(List list, String str) {
        this.f = str;
        setStackTrace(g);
        this.b = list;
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintStream printStream) {
        e(printStream);
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintWriter printWriter) {
        e(printWriter);
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        return this;
    }
}
