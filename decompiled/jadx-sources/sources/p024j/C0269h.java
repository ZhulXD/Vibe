package p024j;

import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.webkit.WebView;
import androidx.appcompat.widget.ActionMenuView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.util.ObjectsCompat;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.bumptech.glide.d;
import com.minhub.gamehub.data.Game;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import k.C0300l;
import k.InterfaceC0279a0;
import k.InterfaceC0306o;
import k.J0;
import k.b1;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import p009d0.b;
import p009d0.i;
import p016g0.g;
import p025j0.B;
import p025j0.C0274c;
import p025j0.q;
import p025j0.r;
import p025j0.y;
import p027k0.a;
import p028k1.n;
import p028k1.s;
import p033m0.k;
import p033m0.l;
import p036n1.c;

/* JADX INFO: renamed from: j.h, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class C0269h implements J0, r, b, B, n, InterfaceC0279a0, n, l, OnApplyWindowInsetsListener {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f4518c;

    public /* synthetic */ C0269h(int i3, Object obj) {
        this.b = i3;
        this.f4518c = obj;
    }

    @Override // p024j.B
    public void a(p pVar, boolean z2) {
        if (pVar instanceof I) {
            ((I) pVar).f4489z.k().c(false);
        }
        B b = ((C0300l) this.f4518c).f;
        if (b != null) {
            b.a(pVar, z2);
        }
    }

    @Override // p024j.n
    public void c(p pVar) {
        b1 b1Var = ((ActionMenuView) this.f4518c).f2700v;
        if (b1Var != null) {
            b1Var.c(pVar);
        }
    }

    @Override // k.J0
    public void d(p pVar, MenuItem menuItem) {
        ((ViewOnKeyListenerC0271j) this.f4518c).g.removeCallbacksAndMessages(pVar);
    }

    @Override // p033m0.l
    public int e(byte[] bArr, int i3) throws k {
        int i4 = 0;
        int i5 = 0;
        while (i4 < i3 && (i5 = ((InputStream) this.f4518c).read(bArr, i4, i3 - i4)) != -1) {
            i4 += i5;
        }
        if (i4 == 0 && i5 == -1) {
            throw new k();
        }
        return i4;
    }

    @Override // p033m0.l
    public short f() throws IOException {
        int i3 = ((InputStream) this.f4518c).read();
        if (i3 != -1) {
            return (short) i3;
        }
        throw new k();
    }

    @Override // p033m0.l
    public int g() {
        return (f() << 8) | f();
    }

    @Override // p024j.n
    public boolean h(p pVar, MenuItem menuItem) {
        InterfaceC0306o interfaceC0306o = ((ActionMenuView) this.f4518c).f2694A;
        return interfaceC0306o != null && ((b1) interfaceC0306o).b.f2720H.onMenuItemSelected(menuItem);
    }

    @Override // p024j.B
    public boolean i(p pVar) {
        C0300l c0300l = (C0300l) this.f4518c;
        if (pVar == c0300l.f4507d) {
            return false;
        }
        c0300l.f4870z = ((I) pVar).f4488A.f4580a;
        B b = c0300l.f;
        if (b != null) {
            return b.i(pVar);
        }
        return false;
    }

    @Override // k.J0
    public void k(p pVar, s sVar) {
        ViewOnKeyListenerC0271j viewOnKeyListenerC0271j = (ViewOnKeyListenerC0271j) this.f4518c;
        Handler handler = viewOnKeyListenerC0271j.g;
        handler.removeCallbacksAndMessages(null);
        ArrayList arrayList = viewOnKeyListenerC0271j.f4526i;
        int size = arrayList.size();
        int i3 = 0;
        while (true) {
            if (i3 >= size) {
                i3 = -1;
                break;
            } else if (pVar == ((C0270i) arrayList.get(i3)).b) {
                break;
            } else {
                i3++;
            }
        }
        if (i3 == -1) {
            return;
        }
        int i4 = i3 + 1;
        handler.postAtTime(new RunnableC0268g(this, i4 < arrayList.size() ? (C0270i) arrayList.get(i4) : null, sVar, pVar), pVar, SystemClock.uptimeMillis() + 200);
    }

    @Override // p025j0.r
    public q l(y yVar) {
        switch (this.b) {
            case 1:
                return new C0274c(1, (B) this.f4518c);
            default:
                return new a((C0269h) this.f4518c);
        }
    }

    @Override // p028k1.n
    public Object n() {
        int i3 = this.b;
        Object obj = this.f4518c;
        switch (i3) {
            case 8:
                Class cls = (Class) obj;
                try {
                    return s.f4990a.a(cls);
                } catch (Exception e2) {
                    throw new RuntimeException("Unable to create instance of " + cls + ". Registering an InstanceCreator or a TypeAdapter for this type, or adding a no-args constructor may fix this problem.", e2);
                }
            default:
                Constructor constructor = (Constructor) obj;
                try {
                    return constructor.newInstance(null);
                } catch (IllegalAccessException e3) {
                    d dVar = c.f5154a;
                    throw new RuntimeException("Unexpected IllegalAccessException occurred (Gson 2.10.1). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers.", e3);
                } catch (InstantiationException e4) {
                    throw new RuntimeException("Failed to invoke constructor '" + c.b(constructor) + "' with no args", e4);
                } catch (InvocationTargetException e5) {
                    throw new RuntimeException("Failed to invoke constructor '" + c.b(constructor) + "' with no args", e5.getCause());
                }
        }
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) this.f4518c;
        if (!ObjectsCompat.equals(coordinatorLayout.f2824o, windowInsetsCompat)) {
            coordinatorLayout.f2824o = windowInsetsCompat;
            boolean z2 = windowInsetsCompat != null && windowInsetsCompat.getSystemWindowInsetTop() > 0;
            coordinatorLayout.f2825p = z2;
            coordinatorLayout.setWillNotDraw(!z2 && coordinatorLayout.getBackground() == null);
            if (!windowInsetsCompat.isConsumed()) {
                int childCount = coordinatorLayout.getChildCount();
                for (int i3 = 0; i3 < childCount; i3++) {
                    View childAt = coordinatorLayout.getChildAt(i3);
                    if (ViewCompat.getFitsSystemWindows(childAt) && ((z.d) childAt.getLayoutParams()).f6413a != null && windowInsetsCompat.isConsumed()) {
                        break;
                    }
                }
            }
            coordinatorLayout.requestLayout();
        }
        return windowInsetsCompat;
    }

    @Override // p009d0.b
    public boolean p(Object obj, File file, i iVar) throws Throwable {
        InputStream inputStream = (InputStream) obj;
        g gVar = (g) this.f4518c;
        byte[] bArr = (byte[]) gVar.c(65536, byte[].class);
        FileOutputStream fileOutputStream = null;
        try {
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                while (true) {
                    try {
                        int i3 = inputStream.read(bArr);
                        if (i3 == -1) {
                            break;
                        }
                        fileOutputStream2.write(bArr, 0, i3);
                    } catch (IOException e2) {
                        e = e2;
                        fileOutputStream = fileOutputStream2;
                        if (Log.isLoggable("StreamEncoder", 3)) {
                            Log.d("StreamEncoder", "Failed to encode data onto the OutputStream", e);
                        }
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused) {
                            }
                        }
                        gVar.g(bArr);
                        return false;
                    } catch (Throwable th) {
                        th = th;
                        fileOutputStream = fileOutputStream2;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused2) {
                            }
                        }
                        gVar.g(bArr);
                        throw th;
                    }
                }
                fileOutputStream2.close();
                try {
                    fileOutputStream2.close();
                } catch (IOException unused3) {
                }
                gVar.g(bArr);
                return true;
            } catch (IOException e3) {
                e = e3;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public void q(Game game, WebView webView, Function1 onUnsupported) {
        Object next;
        Intrinsics.checkNotNullParameter(game, "game");
        Intrinsics.checkNotNullParameter(webView, "webView");
        Intrinsics.checkNotNullParameter(onUnsupported, "onUnsupported");
        Intrinsics.checkNotNullParameter(game, "game");
        p045r1.b bVarL = com.bumptech.glide.c.L(game);
        Iterator it = ((List) this.f4518c).iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!((p045r1.a) next).b(bVarL));
        p045r1.a aVar = (p045r1.a) next;
        if (aVar == null) {
            onUnsupported.invoke("Cheat is not supported for this game yet");
        } else {
            aVar.a(game, webView, onUnsupported);
        }
    }

    @Override // p033m0.l
    public long skip(long j2) throws IOException {
        InputStream inputStream = (InputStream) this.f4518c;
        if (j2 < 0) {
            return 0L;
        }
        long j3 = j2;
        while (j3 > 0) {
            long jSkip = inputStream.skip(j3);
            if (jSkip <= 0) {
                if (inputStream.read() == -1) {
                    break;
                }
                jSkip = 1;
            }
            j3 -= jSkip;
        }
        return j2 - j3;
    }

    public C0269h(List controllers) {
        this.b = 12;
        Intrinsics.checkNotNullParameter(controllers, "controllers");
        this.f4518c = controllers;
    }

    public C0269h(int i3) {
        this.b = i3;
        switch (i3) {
            case 2:
                this.f4518c = new p025j0.n(500L);
                break;
            case 7:
                this.f4518c = new C0269h(2);
                break;
            case MotionEventCompat.AXIS_Z /* 11 */:
                this.f4518c = new LinkedHashMap(0, 0.75f, true);
                break;
            default:
                this.f4518c = new B(7);
                break;
        }
    }

    @Override // k.InterfaceC0279a0
    public void b(int i3) {
    }

    @Override // k.InterfaceC0279a0
    public void j(int i3) {
    }

    @Override // k.InterfaceC0279a0
    public void o(int i3, float f) {
    }
}
