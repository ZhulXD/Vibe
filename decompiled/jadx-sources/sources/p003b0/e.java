package p003b0;

import A1.C0009b;
import android.os.Build;
import android.os.StrictMode;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class e implements Closeable {
    public final File b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final File f3084c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final File f3085d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final File f3086e;
    public final long g;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public BufferedWriter f3089j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f3091l;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f3088i = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final LinkedHashMap f3090k = new LinkedHashMap(0, 0.75f, true);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f3092m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final ThreadPoolExecutor f3093n = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new b());

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final a f3094o = new a(this);
    public final int f = 1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f3087h = 1;

    public e(File file, long j2) {
        this.b = file;
        this.f3084c = new File(file, "journal");
        this.f3085d = new File(file, "journal.tmp");
        this.f3086e = new File(file, "journal.bkp");
        this.g = j2;
    }

    public static void a(e eVar, c cVar, boolean z2) {
        synchronized (eVar) {
            d dVar = (d) cVar.b;
            if (dVar.f != cVar) {
                throw new IllegalStateException();
            }
            if (z2 && !dVar.f3083e) {
                for (int i3 = 0; i3 < eVar.f3087h; i3++) {
                    if (!((boolean[]) cVar.f3078c)[i3]) {
                        cVar.a();
                        throw new IllegalStateException("Newly created entry didn't create value for index " + i3);
                    }
                    if (!dVar.f3082d[i3].exists()) {
                        cVar.a();
                        return;
                    }
                }
            }
            for (int i4 = 0; i4 < eVar.f3087h; i4++) {
                File file = dVar.f3082d[i4];
                if (!z2) {
                    c(file);
                } else if (file.exists()) {
                    File file2 = dVar.f3081c[i4];
                    file.renameTo(file2);
                    long j2 = dVar.b[i4];
                    long length = file2.length();
                    dVar.b[i4] = length;
                    eVar.f3088i = (eVar.f3088i - j2) + length;
                }
            }
            eVar.f3091l++;
            dVar.f = null;
            if (dVar.f3083e || z2) {
                dVar.f3083e = true;
                eVar.f3089j.append((CharSequence) "CLEAN");
                eVar.f3089j.append(' ');
                eVar.f3089j.append((CharSequence) dVar.f3080a);
                eVar.f3089j.append((CharSequence) dVar.a());
                eVar.f3089j.append('\n');
                if (z2) {
                    eVar.f3092m++;
                }
            } else {
                eVar.f3090k.remove(dVar.f3080a);
                eVar.f3089j.append((CharSequence) "REMOVE");
                eVar.f3089j.append(' ');
                eVar.f3089j.append((CharSequence) dVar.f3080a);
                eVar.f3089j.append('\n');
            }
            e(eVar.f3089j);
            if (eVar.f3088i > eVar.g || eVar.g()) {
                eVar.f3093n.submit(eVar.f3094o);
            }
        }
    }

    public static void b(BufferedWriter bufferedWriter) throws IOException {
        if (Build.VERSION.SDK_INT < 26) {
            bufferedWriter.close();
            return;
        }
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            bufferedWriter.close();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    public static void c(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    public static void e(BufferedWriter bufferedWriter) throws IOException {
        if (Build.VERSION.SDK_INT < 26) {
            bufferedWriter.flush();
            return;
        }
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            bufferedWriter.flush();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    public static e h(File file, long j2) throws IOException {
        if (j2 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        File file2 = new File(file, "journal.bkp");
        if (file2.exists()) {
            File file3 = new File(file, "journal");
            if (file3.exists()) {
                file2.delete();
            } else {
                m(file2, file3, false);
            }
        }
        e eVar = new e(file, j2);
        if (eVar.f3084c.exists()) {
            try {
                eVar.j();
                eVar.i();
                return eVar;
            } catch (IOException e2) {
                System.out.println("DiskLruCache " + file + " is corrupt: " + e2.getMessage() + ", removing");
                eVar.close();
                h.a(eVar.b);
            }
        }
        file.mkdirs();
        e eVar2 = new e(file, j2);
        eVar2.l();
        return eVar2;
    }

    public static void m(File file, File file2, boolean z2) throws IOException {
        if (z2) {
            c(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        try {
            if (this.f3089j == null) {
                return;
            }
            ArrayList arrayList = new ArrayList(this.f3090k.values());
            int size = arrayList.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj = arrayList.get(i3);
                i3++;
                c cVar = ((d) obj).f;
                if (cVar != null) {
                    cVar.a();
                }
            }
            n();
            b(this.f3089j);
            this.f3089j = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final c d(String str) {
        synchronized (this) {
            try {
                if (this.f3089j == null) {
                    throw new IllegalStateException("cache is closed");
                }
                d dVar = (d) this.f3090k.get(str);
                if (dVar == null) {
                    dVar = new d(this, str);
                    this.f3090k.put(str, dVar);
                } else if (dVar.f != null) {
                    return null;
                }
                c cVar = new c(this, dVar);
                dVar.f = cVar;
                this.f3089j.append((CharSequence) "DIRTY");
                this.f3089j.append(' ');
                this.f3089j.append((CharSequence) str);
                this.f3089j.append('\n');
                e(this.f3089j);
                return cVar;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized C0009b f(String str) {
        if (this.f3089j == null) {
            throw new IllegalStateException("cache is closed");
        }
        d dVar = (d) this.f3090k.get(str);
        if (dVar == null) {
            return null;
        }
        if (!dVar.f3083e) {
            return null;
        }
        for (File file : dVar.f3081c) {
            if (!file.exists()) {
                return null;
            }
        }
        this.f3091l++;
        this.f3089j.append((CharSequence) "READ");
        this.f3089j.append(' ');
        this.f3089j.append((CharSequence) str);
        this.f3089j.append('\n');
        if (g()) {
            this.f3093n.submit(this.f3094o);
        }
        return new C0009b(dVar.f3081c);
    }

    public final boolean g() {
        int i3 = this.f3091l;
        return i3 >= 2000 && i3 >= this.f3090k.size();
    }

    public final void i() throws IOException {
        c(this.f3085d);
        Iterator it = this.f3090k.values().iterator();
        while (it.hasNext()) {
            d dVar = (d) it.next();
            c cVar = dVar.f;
            int i3 = this.f3087h;
            int i4 = 0;
            if (cVar == null) {
                while (i4 < i3) {
                    this.f3088i += dVar.b[i4];
                    i4++;
                }
            } else {
                dVar.f = null;
                while (i4 < i3) {
                    c(dVar.f3081c[i4]);
                    c(dVar.f3082d[i4]);
                    i4++;
                }
                it.remove();
            }
        }
    }

    public final void j() {
        File file = this.f3084c;
        g gVar = new g(new FileInputStream(file), h.f3098a);
        try {
            String strA = gVar.a();
            String strA2 = gVar.a();
            String strA3 = gVar.a();
            String strA4 = gVar.a();
            String strA5 = gVar.a();
            if (!"libcore.io.DiskLruCache".equals(strA) || !"1".equals(strA2) || !Integer.toString(this.f).equals(strA3) || !Integer.toString(this.f3087h).equals(strA4) || !"".equals(strA5)) {
                throw new IOException("unexpected journal header: [" + strA + ", " + strA2 + ", " + strA4 + ", " + strA5 + "]");
            }
            int i3 = 0;
            while (true) {
                try {
                    k(gVar.a());
                    i3++;
                } catch (EOFException unused) {
                    this.f3091l = i3 - this.f3090k.size();
                    if (gVar.f == -1) {
                        l();
                    } else {
                        this.f3089j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file, true), h.f3098a));
                    }
                    try {
                        gVar.close();
                        return;
                    } catch (RuntimeException e2) {
                        throw e2;
                    } catch (Exception unused2) {
                        return;
                    }
                }
            }
        } catch (Throwable th) {
            try {
                gVar.close();
            } catch (RuntimeException e3) {
                throw e3;
            } catch (Exception unused3) {
            }
            throw th;
        }
    }

    public final void k(String str) throws IOException {
        String strSubstring;
        int iIndexOf = str.indexOf(32);
        if (iIndexOf == -1) {
            throw new IOException("unexpected journal line: ".concat(str));
        }
        int i3 = iIndexOf + 1;
        int iIndexOf2 = str.indexOf(32, i3);
        LinkedHashMap linkedHashMap = this.f3090k;
        if (iIndexOf2 == -1) {
            strSubstring = str.substring(i3);
            if (iIndexOf == 6 && str.startsWith("REMOVE")) {
                linkedHashMap.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i3, iIndexOf2);
        }
        d dVar = (d) linkedHashMap.get(strSubstring);
        if (dVar == null) {
            dVar = new d(this, strSubstring);
            linkedHashMap.put(strSubstring, dVar);
        }
        if (iIndexOf2 == -1 || iIndexOf != 5 || !str.startsWith("CLEAN")) {
            if (iIndexOf2 == -1 && iIndexOf == 5 && str.startsWith("DIRTY")) {
                dVar.f = new c(this, dVar);
                return;
            } else {
                if (iIndexOf2 != -1 || iIndexOf != 4 || !str.startsWith("READ")) {
                    throw new IOException("unexpected journal line: ".concat(str));
                }
                return;
            }
        }
        String[] strArrSplit = str.substring(iIndexOf2 + 1).split(" ");
        dVar.f3083e = true;
        dVar.f = null;
        if (strArrSplit.length != dVar.g.f3087h) {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArrSplit));
        }
        for (int i4 = 0; i4 < strArrSplit.length; i4++) {
            try {
                dVar.b[i4] = Long.parseLong(strArrSplit[i4]);
            } catch (NumberFormatException unused) {
                throw new IOException("unexpected journal line: " + Arrays.toString(strArrSplit));
            }
        }
    }

    public final synchronized void l() {
        try {
            BufferedWriter bufferedWriter = this.f3089j;
            if (bufferedWriter != null) {
                b(bufferedWriter);
            }
            BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f3085d), h.f3098a));
            try {
                bufferedWriter2.write("libcore.io.DiskLruCache");
                bufferedWriter2.write("\n");
                bufferedWriter2.write("1");
                bufferedWriter2.write("\n");
                bufferedWriter2.write(Integer.toString(this.f));
                bufferedWriter2.write("\n");
                bufferedWriter2.write(Integer.toString(this.f3087h));
                bufferedWriter2.write("\n");
                bufferedWriter2.write("\n");
                for (d dVar : this.f3090k.values()) {
                    if (dVar.f != null) {
                        bufferedWriter2.write("DIRTY " + dVar.f3080a + '\n');
                    } else {
                        bufferedWriter2.write("CLEAN " + dVar.f3080a + dVar.a() + '\n');
                    }
                }
                b(bufferedWriter2);
                if (this.f3084c.exists()) {
                    m(this.f3084c, this.f3086e, true);
                }
                m(this.f3085d, this.f3084c, false);
                this.f3086e.delete();
                this.f3089j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f3084c, true), h.f3098a));
            } catch (Throwable th) {
                b(bufferedWriter2);
                throw th;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final void n() {
        while (this.f3088i > this.g) {
            String str = (String) ((Map.Entry) this.f3090k.entrySet().iterator().next()).getKey();
            synchronized (this) {
                try {
                    if (this.f3089j == null) {
                        throw new IllegalStateException("cache is closed");
                    }
                    d dVar = (d) this.f3090k.get(str);
                    if (dVar != null && dVar.f == null) {
                        for (int i3 = 0; i3 < this.f3087h; i3++) {
                            File file = dVar.f3081c[i3];
                            if (file.exists() && !file.delete()) {
                                throw new IOException("failed to delete " + file);
                            }
                            long j2 = this.f3088i;
                            long[] jArr = dVar.b;
                            this.f3088i = j2 - jArr[i3];
                            jArr[i3] = 0;
                        }
                        this.f3091l++;
                        this.f3089j.append((CharSequence) "REMOVE");
                        this.f3089j.append(' ');
                        this.f3089j.append((CharSequence) str);
                        this.f3089j.append('\n');
                        this.f3090k.remove(str);
                        if (g()) {
                            this.f3093n.submit(this.f3094o);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
