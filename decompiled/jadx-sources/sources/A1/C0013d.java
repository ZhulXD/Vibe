package A1;

import C1.C0114w0;
import P.C0137b0;
import P.C0143e0;
import V1.AbstractC0208y;
import android.content.Context;
import android.content.Intent;
import android.content.res.XmlResourceParser;
import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.Spannable;
import android.text.SpannableString;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.ActionMode;
import android.view.Menu;
import android.view.View;
import android.widget.EditText;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.WindowInsetsCompat;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;
import org.xmlpull.v1.XmlPullParserException;
import p014f0.C0256e;
import p014f0.RunnableC0261j;
import p033m0.C0352b;
import p033m0.C0354d;

/* JADX INFO: renamed from: A1.d, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0013d implements OnApplyWindowInsetsListener, Y1.b, androidx.emoji2.text.n, com.bumptech.glide.load.data.d, p009d0.l, p033m0.p {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f177c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f178d;

    public /* synthetic */ C0013d(int i3, Object obj, Object obj2) {
        this.b = i3;
        this.f177c = obj;
        this.f178d = obj2;
    }

    public static p033m0.A i(ImageDecoder.Source source, int i3, int i4, p009d0.i iVar) throws IOException {
        Drawable drawableDecodeDrawable = ImageDecoder.decodeDrawable(source, new p030l0.b(i3, i4, iVar));
        if (androidx.core.view.n.t(drawableDecodeDrawable)) {
            return new p033m0.A(2, androidx.core.view.n.f(drawableDecodeDrawable));
        }
        throw new IOException("Received unexpected drawable type for animated image, failing: " + drawableDecodeDrawable);
    }

    public static int r(int i3, int i4) {
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 0; i7 < i3; i7++) {
            i5++;
            if (i5 == i4) {
                i6++;
                i5 = 0;
            } else if (i5 > i4) {
                i6++;
                i5 = 1;
            }
        }
        return i5 + 1 > i4 ? i6 + 1 : i6;
    }

    public void A(p016g0.i iVar, Object obj) {
        HashMap map = (HashMap) this.f178d;
        p016g0.d dVar = (p016g0.d) map.get(iVar);
        if (dVar == null) {
            dVar = new p016g0.d(iVar);
            dVar.f4318d = dVar;
            p016g0.d dVar2 = (p016g0.d) this.f177c;
            dVar.f4318d = dVar2.f4318d;
            dVar.f4317c = dVar2;
            dVar2.f4318d = dVar;
            dVar.f4318d.f4317c = dVar;
            map.put(iVar, dVar);
        } else {
            iVar.a();
        }
        if (dVar.b == null) {
            dVar.b = new ArrayList();
        }
        dVar.b.add(obj);
    }

    public void B(String str) {
        p019h0.b bVar;
        synchronized (this) {
            try {
                Object obj = ((HashMap) this.f177c).get(str);
                p063y0.f.c(obj, "Argument must not be null");
                bVar = (p019h0.b) obj;
                int i3 = bVar.b;
                if (i3 < 1) {
                    throw new IllegalStateException("Cannot release a lock that is not held, safeKey: " + str + ", interestedThreads: " + bVar.b);
                }
                int i4 = i3 - 1;
                bVar.b = i4;
                if (i4 == 0) {
                    p019h0.b bVar2 = (p019h0.b) ((HashMap) this.f177c).remove(str);
                    if (!bVar2.equals(bVar)) {
                        throw new IllegalStateException("Removed the wrong lock, expected to remove: " + bVar + ", but actually removed: " + bVar2 + ", safeKey: " + str);
                    }
                    p019h0.c cVar = (p019h0.c) this.f178d;
                    synchronized (cVar.f4361a) {
                        try {
                            if (cVar.f4361a.size() < 10) {
                                cVar.f4361a.offer(bVar2);
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        bVar.f4360a.unlock();
    }

    public void C(P.y0 y0Var) {
        P.I0 i3 = (P.I0) ((p041q.j) this.f177c).get(y0Var);
        if (i3 == null) {
            return;
        }
        i3.f1604a &= -2;
    }

    public Object D() {
        p016g0.d dVar = (p016g0.d) this.f177c;
        p016g0.d dVar2 = dVar.f4318d;
        while (true) {
            boolean zEquals = dVar2.equals(dVar);
            Object obj = dVar2.f4316a;
            if (zEquals) {
                return null;
            }
            ArrayList arrayList = dVar2.b;
            int size = arrayList != null ? arrayList.size() : 0;
            Object objRemove = size > 0 ? dVar2.b.remove(size - 1) : null;
            if (objRemove != null) {
                return objRemove;
            }
            p016g0.d dVar3 = dVar2.f4318d;
            dVar3.f4317c = dVar2.f4317c;
            dVar2.f4317c.f4318d = dVar3;
            ((HashMap) this.f178d).remove(obj);
            ((p016g0.i) obj).a();
            dVar2 = dVar2.f4318d;
        }
    }

    public void E(P.y0 y0Var) {
        p041q.g gVar = (p041q.g) this.f178d;
        for (int iG = gVar.g() - 1; iG >= 0; iG--) {
            if (y0Var == gVar.h(iG)) {
                Object[] objArr = gVar.f5250d;
                Object obj = objArr[iG];
                Object obj2 = p041q.h.f5252a;
                if (obj == obj2) {
                    break;
                }
                objArr[iG] = obj2;
                gVar.b = true;
                break;
            }
        }
        P.I0 i3 = (P.I0) ((p041q.j) this.f177c).remove(y0Var);
        if (i3 != null) {
            i3.f1604a = 0;
            i3.b = null;
            i3.f1605c = null;
            P.I0.f1603d.release(i3);
        }
    }

    public EnumC0025j F(String str, String str2, String str3, String str4, L0 l2) {
        Context context = (Context) this.f177c;
        Z z2 = ((K0) this.f178d).l().f165c;
        if (z2 != null) {
            if (!Intrinsics.areEqual(z2.f152a, str3)) {
                z2 = null;
            }
            if (z2 != null) {
                Intent intent = new Intent(str);
                intent.setPackage(context.getPackageName());
                intent.putExtra("requestId", str2);
                intent.putExtra("sessionId", str3);
                intent.putExtra("sessionToken", str4);
                intent.putExtra("issuedAt", System.currentTimeMillis());
                intent.putExtra("messageTimestamp", System.currentTimeMillis());
                intent.putExtra("state", l2.name());
                intent.putExtra("engine", com.bumptech.glide.d.Q(z2.f153c));
                intent.putExtra("processName", z2.f154d);
                intent.putExtra("pid", z2.f155e);
                context.sendBroadcast(intent, "com.minhub.gamehub.permission.GAME_SESSION");
                return EnumC0025j.b;
            }
        }
        return EnumC0025j.f198e;
    }

    public void G(int i3, int i4, int i5, int i6) {
        p040p.a aVar = (p040p.a) this.f178d;
        aVar.f5210e.set(i3, i4, i5, i6);
        Rect rect = aVar.f5209d;
        super/*android.view.View*/.setPadding(i3 + rect.left, i4 + rect.top, i5 + rect.right, i6 + rect.bottom);
    }

    public String H() {
        ArrayList arrayList = new ArrayList(4);
        CoroutineContext coroutineContext = (CoroutineContext) this.f177c;
        if (coroutineContext != EmptyCoroutineContext.INSTANCE) {
            arrayList.add("context=" + coroutineContext);
        }
        arrayList.add("capacity=-2");
        return getClass().getSimpleName() + '[' + CollectionsKt.o(arrayList, ", ", null, null, null, 62) + ']';
    }

    @Override // androidx.emoji2.text.n
    public boolean a(CharSequence charSequence, int i3, int i4, androidx.emoji2.text.v vVar) {
        if ((vVar.f2900c & 4) > 0) {
            return true;
        }
        if (((androidx.emoji2.text.y) this.f177c) == null) {
            this.f177c = new androidx.emoji2.text.y(charSequence instanceof Spannable ? (Spannable) charSequence : new SpannableString(charSequence));
        }
        ((Y0.e) this.f178d).getClass();
        ((androidx.emoji2.text.y) this.f177c).setSpan(new androidx.emoji2.text.w(vVar), i3, i4, 33);
        return true;
    }

    public void b(P.y0 y0Var, C0137b0 c0137b0) {
        p041q.j jVar = (p041q.j) this.f177c;
        P.I0 i0A = (P.I0) jVar.get(y0Var);
        if (i0A == null) {
            i0A = P.I0.a();
            jVar.put(y0Var, i0A);
        }
        i0A.f1605c = c0137b0;
        i0A.f1604a |= 8;
    }

    @Override // com.bumptech.glide.load.data.d
    public void c(Exception exc) {
        p014f0.J j2 = (p014f0.J) this.f178d;
        p025j0.p pVar = (p025j0.p) this.f177c;
        p025j0.p pVar2 = j2.g;
        if (pVar2 == null || pVar2 != pVar) {
            return;
        }
        p014f0.J j3 = (p014f0.J) this.f178d;
        p025j0.p pVar3 = (p025j0.p) this.f177c;
        RunnableC0261j runnableC0261j = j3.f4200c;
        C0256e c0256e = j3.f4203h;
        com.bumptech.glide.load.data.e eVar = pVar3.f4638c;
        runnableC0261j.a(c0256e, exc, eVar, eVar.d());
    }

    @Override // p033m0.p
    public void d(Bitmap bitmap, p016g0.b bVar) throws IOException {
        IOException iOException = ((p063y0.e) this.f178d).f6017c;
        if (iOException != null) {
            if (bitmap == null) {
                throw iOException;
            }
            bVar.f(bitmap);
            throw iOException;
        }
    }

    @Override // com.bumptech.glide.load.data.d
    public void e(Object obj) {
        p014f0.J j2 = (p014f0.J) this.f178d;
        p025j0.p pVar = (p025j0.p) this.f177c;
        p025j0.p pVar2 = j2.g;
        if (pVar2 == null || pVar2 != pVar) {
            return;
        }
        p014f0.J j3 = (p014f0.J) this.f178d;
        p025j0.p pVar3 = (p025j0.p) this.f177c;
        p014f0.l lVar = j3.b.f4225p;
        if (obj != null && lVar.a(pVar3.f4638c.d())) {
            j3.f = obj;
            j3.f4200c.l(2);
        } else {
            RunnableC0261j runnableC0261j = j3.f4200c;
            p009d0.f fVar = pVar3.f4637a;
            com.bumptech.glide.load.data.e eVar = pVar3.f4638c;
            runnableC0261j.c(fVar, obj, eVar, eVar.d(), j3.f4203h);
        }
    }

    @Override // Y1.b
    public Object f(Y1.c cVar, Continuation continuation) {
        Object objA = AbstractC0208y.a(new C0114w0(cVar, this, (Continuation) null, 3), continuation);
        return objA == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
    }

    public void g() {
        int[] iArr = (int[]) this.f177c;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
        this.f178d = null;
    }

    @Override // androidx.emoji2.text.n
    public Object getResult() {
        return (androidx.emoji2.text.y) this.f177c;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [X1.p, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v8, types: [X1.p] */
    /* JADX WARN: Type inference failed for: r6v3, types: [kotlin.coroutines.jvm.internal.SuspendLambda, kotlin.jvm.functions.Function2] */
    public Object h(X1.p pVar, ContinuationImpl continuationImpl) {
        Y1.a aVar;
        if (continuationImpl instanceof Y1.a) {
            aVar = (Y1.a) continuationImpl;
            int i3 = aVar.f2468e;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                aVar.f2468e = i3 - Integer.MIN_VALUE;
            } else {
                aVar = new Y1.a(this, continuationImpl);
            }
        } else {
            aVar = new Y1.a(this, continuationImpl);
        }
        Object obj = aVar.f2466c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = aVar.f2468e;
        if (i4 == 0) {
            ResultKt.throwOnFailure(obj);
            aVar.b = pVar;
            aVar.f2468e = 1;
            Object objInvoke = ((SuspendLambda) this.f178d).invoke(pVar, aVar);
            if (objInvoke != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                objInvoke = Unit.INSTANCE;
            }
            if (objInvoke == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            pVar = aVar.b;
            ResultKt.throwOnFailure(obj);
        }
        if (((X1.g) pVar).f2368e.q()) {
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("'awaitClose { yourCallbackOrListener.cancel() }' should be used in the end of callbackFlow block.\nOtherwise, a callback/listener may leak in case of external cancellation.\nSee callbackFlow API documentation for the details.");
    }

    public void j(int i3) {
        int[] iArr = (int[]) this.f177c;
        if (iArr == null) {
            int[] iArr2 = new int[Math.max(i3, 10) + 1];
            this.f177c = iArr2;
            Arrays.fill(iArr2, -1);
        } else if (i3 >= iArr.length) {
            int length = iArr.length;
            while (length <= i3) {
                length *= 2;
            }
            int[] iArr3 = new int[length];
            this.f177c = iArr3;
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            int[] iArr4 = (int[]) this.f177c;
            Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
        }
    }

    public View k(int i3, int i4, int i5, int i6) {
        View viewU;
        P.H0 h2 = (P.H0) this.f178d;
        C0143e0 c0143e0 = (C0143e0) this.f177c;
        int iD = c0143e0.d();
        int iC = c0143e0.c();
        int i7 = i4 > i3 ? 1 : -1;
        View view = null;
        while (i3 != i4) {
            switch (c0143e0.f1662a) {
                case 0:
                    viewU = c0143e0.b.u(i3);
                    break;
                default:
                    viewU = c0143e0.b.u(i3);
                    break;
            }
            int iB = c0143e0.b(viewU);
            int iA = c0143e0.a(viewU);
            h2.b = iD;
            h2.f1596c = iC;
            h2.f1597d = iB;
            h2.f1598e = iA;
            if (i5 != 0) {
                h2.f1595a = i5;
                if (h2.a()) {
                    return viewU;
                }
            }
            if (i6 != 0) {
                h2.f1595a = i6;
                if (h2.a()) {
                    view = viewU;
                }
            }
            i3 += i7;
        }
        return view;
    }

    public Object l(p016g0.i iVar) {
        HashMap map = (HashMap) this.f178d;
        p016g0.d dVar = (p016g0.d) map.get(iVar);
        if (dVar == null) {
            dVar = new p016g0.d(iVar);
            map.put(iVar, dVar);
        } else {
            iVar.a();
        }
        p016g0.d dVar2 = dVar.f4318d;
        dVar2.f4317c = dVar.f4317c;
        dVar.f4317c.f4318d = dVar2;
        p016g0.d dVar3 = (p016g0.d) this.f177c;
        dVar.f4318d = dVar3;
        p016g0.d dVar4 = dVar3.f4317c;
        dVar.f4317c = dVar4;
        dVar4.f4318d = dVar;
        dVar.f4318d.f4317c = dVar;
        ArrayList arrayList = dVar.b;
        int size = arrayList != null ? arrayList.size() : 0;
        if (size > 0) {
            return dVar.b.remove(size - 1);
        }
        return null;
    }

    @Override // p009d0.l
    public int m(p009d0.i iVar) {
        return 2;
    }

    public synchronized List n(String str) {
        List arrayList;
        try {
            if (!((ArrayList) this.f177c).contains(str)) {
                ((ArrayList) this.f177c).add(str);
            }
            arrayList = (List) ((HashMap) this.f178d).get(str);
            if (arrayList == null) {
                arrayList = new ArrayList();
                ((HashMap) this.f178d).put(str, arrayList);
            }
        } catch (Throwable th) {
            throw th;
        }
        return arrayList;
    }

    public synchronized ArrayList o(Class cls, Class cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        ArrayList arrayList2 = (ArrayList) this.f177c;
        int size = arrayList2.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList2.get(i3);
            i3++;
            List<p049t0.c> list = (List) ((HashMap) this.f178d).get((String) obj);
            if (list != null) {
                for (p049t0.c cVar : list) {
                    if ((cVar.f5321a.isAssignableFrom(cls) && cls2.isAssignableFrom(cVar.b)) && !arrayList.contains(cVar.b)) {
                        arrayList.add(cVar.b);
                    }
                }
            }
        }
        return arrayList;
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        R0.r rVar = (R0.r) this.f177c;
        R0.s sVar = (R0.s) this.f178d;
        R0.s sVar2 = new R0.s();
        sVar2.f1940a = sVar.f1940a;
        sVar2.b = sVar.b;
        sVar2.f1941c = sVar.f1941c;
        sVar2.f1942d = sVar.f1942d;
        return rVar.a(view, windowInsetsCompat, sVar2);
    }

    @Override // p009d0.b
    public boolean p(Object obj, File file, p009d0.i iVar) {
        return ((C0352b) this.f178d).p(new C0354d(((BitmapDrawable) ((p014f0.F) obj).get()).getBitmap(), (p016g0.b) this.f177c), file, iVar);
    }

    @Override // p033m0.p
    public void q() {
        p033m0.x xVar = (p033m0.x) this.f177c;
        synchronized (xVar) {
            xVar.f5147d = xVar.b.length;
        }
    }

    public void s() {
        ((SparseIntArray) this.f177c).clear();
    }

    public boolean t(View view) {
        P.H0 h2 = (P.H0) this.f178d;
        C0143e0 c0143e0 = (C0143e0) this.f177c;
        int iD = c0143e0.d();
        int iC = c0143e0.c();
        int iB = c0143e0.b(view);
        int iA = c0143e0.a(view);
        h2.b = iD;
        h2.f1596c = iC;
        h2.f1597d = iB;
        h2.f1598e = iA;
        h2.f1595a = 24579;
        return h2.a();
    }

    public String toString() {
        switch (this.b) {
            case 9:
                return "block[" + ((SuspendLambda) this.f178d) + "] -> " + H();
            case MotionEventCompat.AXIS_RZ /* 14 */:
                StringBuilder sb = new StringBuilder("GroupedLinkedMap( ");
                p016g0.d dVar = (p016g0.d) this.f177c;
                p016g0.d dVar2 = dVar.f4317c;
                boolean z2 = false;
                while (!dVar2.equals(dVar)) {
                    sb.append('{');
                    sb.append(dVar2.f4316a);
                    sb.append(':');
                    ArrayList arrayList = dVar2.b;
                    sb.append(arrayList != null ? arrayList.size() : 0);
                    sb.append("}, ");
                    dVar2 = dVar2.f4317c;
                    z2 = true;
                }
                if (z2) {
                    sb.delete(sb.length() - 2, sb.length());
                }
                sb.append(" )");
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public void u(int i3, int i4) {
        int[] iArr = (int[]) this.f177c;
        if (iArr == null || i3 >= iArr.length) {
            return;
        }
        int i5 = i3 + i4;
        j(i5);
        int[] iArr2 = (int[]) this.f177c;
        System.arraycopy(iArr2, i3, iArr2, i5, (iArr2.length - i3) - i4);
        Arrays.fill((int[]) this.f177c, i3, i5, -1);
        ArrayList arrayList = (ArrayList) this.f178d;
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            P.E0 e2 = (P.E0) ((ArrayList) this.f178d).get(size);
            int i6 = e2.b;
            if (i6 >= i3) {
                e2.b = i6 + i4;
            }
        }
    }

    public void v(int i3, int i4) {
        int[] iArr = (int[]) this.f177c;
        if (iArr == null || i3 >= iArr.length) {
            return;
        }
        int i5 = i3 + i4;
        j(i5);
        int[] iArr2 = (int[]) this.f177c;
        System.arraycopy(iArr2, i5, iArr2, i3, (iArr2.length - i3) - i4);
        int[] iArr3 = (int[]) this.f177c;
        Arrays.fill(iArr3, iArr3.length - i4, iArr3.length, -1);
        ArrayList arrayList = (ArrayList) this.f178d;
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            P.E0 e2 = (P.E0) ((ArrayList) this.f178d).get(size);
            int i6 = e2.b;
            if (i6 >= i3) {
                if (i6 < i5) {
                    ((ArrayList) this.f178d).remove(size);
                } else {
                    e2.b = i6 - i4;
                }
            }
        }
    }

    public void w(p021i.a aVar) {
        N1.w wVar = (N1.w) this.f177c;
        ((ActionMode.Callback) wVar.f1493a).onDestroyActionMode(wVar.b(aVar));
        p011e.B b = (p011e.B) this.f178d;
        if (b.f4052x != null) {
            b.f4041m.getDecorView().removeCallbacks(b.f4053y);
        }
        if (b.f4051w != null) {
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = b.f4054z;
            if (viewPropertyAnimatorCompat != null) {
                viewPropertyAnimatorCompat.cancel();
            }
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompatAlpha = ViewCompat.animate(b.f4051w).alpha(0.0f);
            b.f4054z = viewPropertyAnimatorCompatAlpha;
            viewPropertyAnimatorCompatAlpha.setListener(new p011e.s(2, this));
        }
        b.f4050v = null;
        ViewCompat.requestApplyInsets(b.f4008B);
        b.H();
    }

    public boolean x(p021i.a aVar, Menu menu) {
        ViewCompat.requestApplyInsets(((p011e.B) this.f178d).f4008B);
        N1.w wVar = (N1.w) this.f177c;
        ActionMode.Callback callback = (ActionMode.Callback) wVar.f1493a;
        p021i.e eVarB = wVar.b(aVar);
        p041q.j jVar = (p041q.j) wVar.f1495d;
        Menu f = (Menu) jVar.get(menu);
        if (f == null) {
            f = new p024j.F((Context) wVar.b, (SupportMenu) menu);
            jVar.put(menu, f);
        }
        return callback.onPrepareActionMode(eVarB, f);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public void y(Context context, XmlResourceParser xmlResourceParser) {
        p059x.m mVar = new p059x.m();
        int attributeCount = xmlResourceParser.getAttributeCount();
        for (int i3 = 0; i3 < attributeCount; i3++) {
            if ("id".equals(xmlResourceParser.getAttributeName(i3))) {
                String attributeValue = xmlResourceParser.getAttributeValue(i3);
                int identifier = attributeValue.contains("/") ? context.getResources().getIdentifier(attributeValue.substring(attributeValue.indexOf(47) + 1), "id", context.getPackageName()) : -1;
                if (identifier == -1) {
                    if (attributeValue.length() > 1) {
                        identifier = Integer.parseInt(attributeValue.substring(1));
                    } else {
                        Log.e("ConstraintLayoutStates", "error in parsing id");
                    }
                }
                try {
                    int eventType = xmlResourceParser.getEventType();
                    p059x.h hVarD = null;
                    while (eventType != 1) {
                        if (eventType == 0) {
                            xmlResourceParser.getName();
                        } else if (eventType == 2) {
                            String name = xmlResourceParser.getName();
                            switch (name.hashCode()) {
                                case -2025855158:
                                    if (name.equals("Layout")) {
                                        if (hVarD == null) {
                                            throw new RuntimeException("XML parser error must be within a Constraint " + xmlResourceParser.getLineNumber());
                                        }
                                        hVarD.f5906d.a(context, Xml.asAttributeSet(xmlResourceParser));
                                    } else {
                                        continue;
                                    }
                                    break;
                                case -1984451626:
                                    if (name.equals("Motion")) {
                                        if (hVarD == null) {
                                            throw new RuntimeException("XML parser error must be within a Constraint " + xmlResourceParser.getLineNumber());
                                        }
                                        hVarD.f5905c.a(context, Xml.asAttributeSet(xmlResourceParser));
                                    } else {
                                        continue;
                                    }
                                    break;
                                case -1269513683:
                                    if (name.equals("PropertySet")) {
                                        if (hVarD == null) {
                                            throw new RuntimeException("XML parser error must be within a Constraint " + xmlResourceParser.getLineNumber());
                                        }
                                        hVarD.b.a(context, Xml.asAttributeSet(xmlResourceParser));
                                    } else {
                                        continue;
                                    }
                                    break;
                                case -1238332596:
                                    if (name.equals("Transform")) {
                                        if (hVarD == null) {
                                            throw new RuntimeException("XML parser error must be within a Constraint " + xmlResourceParser.getLineNumber());
                                        }
                                        hVarD.f5907e.a(context, Xml.asAttributeSet(xmlResourceParser));
                                    } else {
                                        continue;
                                    }
                                    break;
                                case -71750448:
                                    if (name.equals("Guideline")) {
                                        hVarD = p059x.m.d(context, Xml.asAttributeSet(xmlResourceParser));
                                        hVarD.f5906d.f5933a = true;
                                    }
                                    break;
                                case 1331510167:
                                    if (name.equals("Barrier")) {
                                        hVarD = p059x.m.d(context, Xml.asAttributeSet(xmlResourceParser));
                                        hVarD.f5906d.f5937c0 = 1;
                                    }
                                    break;
                                case 1791837707:
                                    if (name.equals("CustomAttribute")) {
                                        if (hVarD == null) {
                                            throw new RuntimeException("XML parser error must be within a Constraint " + xmlResourceParser.getLineNumber());
                                        }
                                        p059x.b.a(context, xmlResourceParser, hVarD.f);
                                    } else {
                                        continue;
                                    }
                                    break;
                                case 1803088381:
                                    if (name.equals("Constraint")) {
                                        hVarD = p059x.m.d(context, Xml.asAttributeSet(xmlResourceParser));
                                    }
                                    break;
                            }
                        } else if (eventType != 3) {
                            continue;
                        } else {
                            String name2 = xmlResourceParser.getName();
                            if ("ConstraintSet".equals(name2)) {
                                ((SparseArray) this.f178d).put(identifier, mVar);
                                return;
                            } else if (name2.equalsIgnoreCase("Constraint")) {
                                mVar.f5985c.put(Integer.valueOf(hVarD.f5904a), hVarD);
                                hVarD = null;
                            }
                        }
                        eventType = xmlResourceParser.next();
                    }
                } catch (IOException e2) {
                    e2.printStackTrace();
                } catch (XmlPullParserException e3) {
                    e3.printStackTrace();
                }
                ((SparseArray) this.f178d).put(identifier, mVar);
                return;
            }
        }
    }

    public C0137b0 z(P.y0 y0Var, int i3) {
        P.I0 i4;
        C0137b0 c0137b0;
        p041q.j jVar = (p041q.j) this.f177c;
        int iD = jVar.d(y0Var);
        if (iD >= 0 && (i4 = (P.I0) jVar.j(iD)) != null) {
            int i5 = i4.f1604a;
            if ((i5 & i3) != 0) {
                int i6 = i5 & (~i3);
                i4.f1604a = i6;
                if (i3 == 4) {
                    c0137b0 = i4.b;
                } else {
                    if (i3 != 8) {
                        throw new IllegalArgumentException("Must provide flag PRE or POST");
                    }
                    c0137b0 = i4.f1605c;
                }
                if ((i6 & 12) == 0) {
                    jVar.h(iD);
                    i4.f1604a = 0;
                    i4.b = null;
                    i4.f1605c = null;
                    P.I0.f1603d.release(i4);
                }
                return c0137b0;
            }
        }
        return null;
    }

    public /* synthetic */ C0013d(int i3, boolean z2) {
        this.b = i3;
    }

    public /* synthetic */ C0013d(Object obj, Object obj2, int i3, boolean z2) {
        this.b = i3;
        this.f178d = obj;
        this.f177c = obj2;
    }

    public C0013d(kotlin.coroutines.a appAssetsInterceptor, C0035p fileInterceptor) {
        this.b = 23;
        Intrinsics.checkNotNullParameter(appAssetsInterceptor, "appAssetsInterceptor");
        Intrinsics.checkNotNullParameter(fileInterceptor, "fileInterceptor");
        this.f177c = appAssetsInterceptor;
        this.f178d = fileInterceptor;
    }

    public C0013d(int i3) {
        this.b = i3;
        switch (i3) {
            case 3:
                List pluginIds = CollectionsKt.emptyList();
                List engineVersions = CollectionsKt.emptyList();
                Intrinsics.checkNotNullParameter(pluginIds, "pluginIds");
                Intrinsics.checkNotNullParameter(engineVersions, "engineVersions");
                List listC = K1.l.c(pluginIds);
                this.f177c = listC;
                this.f178d = K1.l.c(engineVersions);
                if (listC.size() <= 256) {
                    if (!listC.isEmpty()) {
                        Iterator it = listC.iterator();
                        while (it.hasNext()) {
                            if (K1.l.f1248a.matches((String) it.next())) {
                            }
                        }
                    }
                    List<String> list = (List) this.f178d;
                    if (list == null || !list.isEmpty()) {
                        for (String str : list) {
                            if (K1.l.b.matches(str)) {
                                List listSplit$default = StringsKt__StringsKt.split$default(StringsKt__StringsKt.substringBefore$default(StringsKt__StringsKt.substringBefore$default(str, '-', (String) null, 2, (Object) null), '+', (String) null, 2, (Object) null), new char[]{'.'}, false, 0, 6, (Object) null);
                                ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listSplit$default, 10));
                                Iterator it2 = listSplit$default.iterator();
                                while (it2.hasNext()) {
                                    Long longOrNull = StringsKt.toLongOrNull((String) it2.next());
                                    if (longOrNull == null) {
                                        throw new IllegalArgumentException();
                                    }
                                    if (longOrNull.longValue() >= 0) {
                                        arrayList.add(Long.valueOf(longOrNull.longValue()));
                                    } else {
                                        throw new IllegalArgumentException("Failed requirement.");
                                    }
                                }
                            } else {
                                throw new IllegalArgumentException("Failed requirement.");
                            }
                        }
                        return;
                    }
                    return;
                }
                throw new IllegalArgumentException("Failed requirement.");
            case 4:
                this.f177c = new SparseIntArray();
                this.f178d = new SparseIntArray();
                return;
            case 7:
                this.f177c = new p041q.j(0);
                this.f178d = new p041q.g();
                return;
            case MotionEventCompat.AXIS_RZ /* 14 */:
                this.f177c = new p016g0.d(null);
                this.f178d = new HashMap();
                return;
            case MotionEventCompat.AXIS_HAT_X /* 15 */:
                this.f177c = new HashMap();
                this.f178d = new p019h0.c(0);
                return;
            case 21:
                this.f177c = new AtomicReference();
                this.f178d = new p041q.e(0);
                return;
            case 22:
                this.f177c = new ArrayList();
                this.f178d = new HashMap();
                return;
            default:
                this.f177c = new LinkedHashMap();
                this.f178d = new LinkedHashMap();
                return;
        }
    }

    public C0013d(C0143e0 c0143e0) {
        this.b = 6;
        this.f177c = c0143e0;
        P.H0 h2 = new P.H0();
        h2.f1595a = 0;
        this.f178d = h2;
    }

    public C0013d(Context context, K0 registry) {
        this.b = 0;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(registry, "registry");
        this.f177c = context;
        this.f178d = registry;
    }

    public C0013d(EditText editText) {
        this.b = 2;
        this.f177c = editText;
        H.i iVar = new H.i(editText);
        this.f178d = iVar;
        editText.addTextChangedListener(iVar);
        if (H.a.b == null) {
            synchronized (H.a.f1041a) {
                try {
                    if (H.a.b == null) {
                        H.a aVar = new H.a();
                        try {
                            H.a.f1042c = Class.forName("android.text.DynamicLayout$ChangeWatcher", false, H.a.class.getClassLoader());
                        } catch (Throwable unused) {
                        }
                        H.a.b = aVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        editText.setEditableFactory(H.a.b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C0013d(Function2 function2) {
        this.b = 9;
        EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
        this.b = 9;
        this.f177c = emptyCoroutineContext;
        this.f178d = (SuspendLambda) function2;
    }

    public C0013d(p040p.a aVar) {
        this.b = 19;
        this.f178d = aVar;
    }
}
