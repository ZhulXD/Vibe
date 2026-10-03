package p011e;

import android.R;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AlertController$RecycleListView;
import java.io.ByteArrayOutputStream;
import p009d0.i;
import p014f0.F;
import p014f0.RunnableC0261j;
import p024j.q;
import p033m0.A;
import p044r0.a;
import p051u.c;

/* JADX INFO: renamed from: e.f, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class C0244f implements a {
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f4145c;

    public C0244f(int i3) {
        switch (i3) {
            case 3:
                this.f4145c = new Object[256];
                break;
            default:
                this.f4145c = Bitmap.CompressFormat.JPEG;
                this.b = 100;
                break;
        }
    }

    @Override // p044r0.a
    public F a(F f, i iVar) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ((Bitmap) f.get()).compress((Bitmap.CompressFormat) this.f4145c, this.b, byteArrayOutputStream);
        f.e();
        return new A(byteArrayOutputStream.toByteArray());
    }

    public Object b() {
        int i3 = this.b;
        if (i3 <= 0) {
            return null;
        }
        int i4 = i3 - 1;
        Object[] objArr = (Object[]) this.f4145c;
        Object obj = objArr[i4];
        objArr[i4] = null;
        this.b = i3 - 1;
        return obj;
    }

    public DialogInterfaceC0245g c() {
        C0240b c0240b = (C0240b) this.f4145c;
        DialogInterfaceC0245g dialogInterfaceC0245g = new DialogInterfaceC0245g(c0240b.f4096a, this.b);
        View view = c0240b.f4099e;
        C0243e c0243e = dialogInterfaceC0245g.f4146d;
        if (view != null) {
            c0243e.f4141w = view;
        } else {
            CharSequence charSequence = c0240b.f4098d;
            if (charSequence != null) {
                c0243e.f4124d = charSequence;
                TextView textView = c0243e.f4139u;
                if (textView != null) {
                    textView.setText(charSequence);
                }
            }
            Drawable drawable = c0240b.f4097c;
            if (drawable != null) {
                c0243e.f4137s = drawable;
                ImageView imageView = c0243e.f4138t;
                if (imageView != null) {
                    imageView.setVisibility(0);
                    c0243e.f4138t.setImageDrawable(drawable);
                }
            }
        }
        CharSequence charSequence2 = c0240b.f;
        if (charSequence2 != null) {
            c0243e.f4125e = charSequence2;
            TextView textView2 = c0243e.f4140v;
            if (textView2 != null) {
                textView2.setText(charSequence2);
            }
        }
        CharSequence charSequence3 = c0240b.g;
        if (charSequence3 != null) {
            c0243e.c(-1, charSequence3, c0240b.f4100h);
        }
        CharSequence charSequence4 = c0240b.f4101i;
        if (charSequence4 != null) {
            c0243e.c(-2, charSequence4, c0240b.f4102j);
        }
        CharSequence charSequence5 = c0240b.f4103k;
        if (charSequence5 != null) {
            c0243e.c(-3, charSequence5, c0240b.f4104l);
        }
        if (c0240b.f4109q != null || c0240b.f4110r != null) {
            AlertController$RecycleListView alertController$RecycleListView = (AlertController$RecycleListView) c0240b.b.inflate(c0243e.f4116A, (ViewGroup) null);
            int i3 = c0240b.f4113u ? c0243e.f4117B : c0243e.f4118C;
            ListAdapter c0242d = c0240b.f4110r;
            if (c0242d == null) {
                c0242d = new C0242d(c0240b.f4096a, i3, R.id.text1, c0240b.f4109q);
            }
            c0243e.f4142x = c0242d;
            c0243e.f4143y = c0240b.f4114v;
            if (c0240b.f4111s != null) {
                alertController$RecycleListView.setOnItemClickListener(new C0239a(c0240b, c0243e));
            }
            if (c0240b.f4113u) {
                alertController$RecycleListView.setChoiceMode(1);
            }
            c0243e.f = alertController$RecycleListView;
        }
        View view2 = c0240b.f4112t;
        if (view2 != null) {
            c0243e.g = view2;
            c0243e.f4126h = false;
        }
        dialogInterfaceC0245g.setCancelable(c0240b.f4105m);
        if (c0240b.f4105m) {
            dialogInterfaceC0245g.setCanceledOnTouchOutside(true);
        }
        dialogInterfaceC0245g.setOnCancelListener(c0240b.f4106n);
        dialogInterfaceC0245g.setOnDismissListener(c0240b.f4107o);
        q qVar = c0240b.f4108p;
        if (qVar != null) {
            dialogInterfaceC0245g.setOnKeyListener(qVar);
        }
        return dialogInterfaceC0245g;
    }

    public void d(c cVar) {
        int i3 = this.b;
        Object[] objArr = (Object[]) this.f4145c;
        if (i3 < objArr.length) {
            objArr[i3] = cVar;
            this.b = i3 + 1;
        }
    }

    public DialogInterfaceC0245g e() {
        DialogInterfaceC0245g dialogInterfaceC0245gC = c();
        dialogInterfaceC0245gC.show();
        return dialogInterfaceC0245gC;
    }

    public C0244f(Context context) {
        this(context, DialogInterfaceC0245g.e(context, 0));
    }

    public C0244f(Context context, int i3) {
        this.f4145c = new C0240b(new ContextThemeWrapper(context, DialogInterfaceC0245g.e(context, i3)));
        this.b = i3;
    }

    public C0244f(RunnableC0261j runnableC0261j, int i3) {
        this.f4145c = runnableC0261j;
        this.b = i3;
    }
}
