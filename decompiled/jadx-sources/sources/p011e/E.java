package p011e;

import E.b;
import android.content.Context;
import android.content.ContextWrapper;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class E implements View.OnClickListener {
    public final View b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f4056c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Method f4057d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Context f4058e;

    public E(View view, String str) {
        this.b = view;
        this.f4056c = str;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        String str;
        Method method;
        if (this.f4057d != null) {
            break;
        }
        View view2 = this.b;
        Context context = view2.getContext();
        while (true) {
            String str2 = this.f4056c;
            if (context == null) {
                int id = view2.getId();
                if (id == -1) {
                    str = "";
                } else {
                    str = " with id '" + view2.getContext().getResources().getResourceEntryName(id) + "'";
                }
                StringBuilder sbQ = b.q("Could not find method ", str2, "(View) in a parent or ancestor Context for android:onClick attribute defined on view ");
                sbQ.append(view2.getClass());
                sbQ.append(str);
                throw new IllegalStateException(sbQ.toString());
            }
            try {
                if (!context.isRestricted() && (method = context.getClass().getMethod(str2, View.class)) != null) {
                    this.f4057d = method;
                    this.f4058e = context;
                    break;
                }
            } catch (NoSuchMethodException unused) {
            }
            context = context instanceof ContextWrapper ? ((ContextWrapper) context).getBaseContext() : null;
        }
        try {
            this.f4057d.invoke(this.f4058e, view);
        } catch (IllegalAccessException e2) {
            throw new IllegalStateException("Could not execute non-public method for android:onClick", e2);
        } catch (InvocationTargetException e3) {
            throw new IllegalStateException("Could not execute method for android:onClick", e3);
        }
    }
}
