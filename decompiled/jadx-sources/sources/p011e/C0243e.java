package p011e;

import H0.j;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AlertController$RecycleListView;
import androidx.core.widget.NestedScrollView;
import com.minhub.gamehub.R;
import java.lang.ref.WeakReference;
import p008d.a;

/* JADX INFO: renamed from: e.e, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0243e {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public final int f4116A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public final int f4117B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public final int f4118C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public final boolean f4119D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public final HandlerC0241c f4120E;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f4122a;
    public final DialogInterfaceC0245g b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Window f4123c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public CharSequence f4124d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CharSequence f4125e;
    public AlertController$RecycleListView f;
    public View g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Button f4127i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public CharSequence f4128j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Message f4129k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Button f4130l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public CharSequence f4131m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Message f4132n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Button f4133o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public CharSequence f4134p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Message f4135q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public NestedScrollView f4136r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Drawable f4137s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public ImageView f4138t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public TextView f4139u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public TextView f4140v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public View f4141w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public ListAdapter f4142x;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final int f4144z;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f4126h = false;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f4143y = -1;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public final j f4121F = new j(3, this);

    public C0243e(Context context, DialogInterfaceC0245g dialogInterfaceC0245g, Window window) {
        this.f4122a = context;
        this.b = dialogInterfaceC0245g;
        this.f4123c = window;
        HandlerC0241c handlerC0241c = new HandlerC0241c();
        handlerC0241c.f4115a = new WeakReference(dialogInterfaceC0245g);
        this.f4120E = handlerC0241c;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, a.f3844e, R.attr.alertDialogStyle, 0);
        this.f4144z = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        typedArrayObtainStyledAttributes.getResourceId(2, 0);
        this.f4116A = typedArrayObtainStyledAttributes.getResourceId(4, 0);
        typedArrayObtainStyledAttributes.getResourceId(5, 0);
        this.f4117B = typedArrayObtainStyledAttributes.getResourceId(7, 0);
        this.f4118C = typedArrayObtainStyledAttributes.getResourceId(3, 0);
        this.f4119D = typedArrayObtainStyledAttributes.getBoolean(6, true);
        typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        dialogInterfaceC0245g.b().i(1);
    }

    public static boolean a(View view) {
        if (view.onCheckIsTextEditor()) {
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        while (childCount > 0) {
            childCount--;
            if (a(viewGroup.getChildAt(childCount))) {
                return true;
            }
        }
        return false;
    }

    public static ViewGroup b(View view, View view2) {
        if (view == null) {
            if (view2 instanceof ViewStub) {
                view2 = ((ViewStub) view2).inflate();
            }
            return (ViewGroup) view2;
        }
        if (view2 != null) {
            ViewParent parent = view2.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view2);
            }
        }
        if (view instanceof ViewStub) {
            view = ((ViewStub) view).inflate();
        }
        return (ViewGroup) view;
    }

    public final void c(int i3, CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        Message messageObtainMessage = onClickListener != null ? this.f4120E.obtainMessage(i3, onClickListener) : null;
        if (i3 == -3) {
            this.f4134p = charSequence;
            this.f4135q = messageObtainMessage;
        } else if (i3 == -2) {
            this.f4131m = charSequence;
            this.f4132n = messageObtainMessage;
        } else {
            if (i3 != -1) {
                throw new IllegalArgumentException("Button does not exist");
            }
            this.f4128j = charSequence;
            this.f4129k = messageObtainMessage;
        }
    }
}
