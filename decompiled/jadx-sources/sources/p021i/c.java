package p021i;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.view.LayoutInflater;
import com.minhub.gamehub.R;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class c extends ContextWrapper {
    public static Configuration f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f4375a;
    public Resources.Theme b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public LayoutInflater f4376c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Configuration f4377d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Resources f4378e;

    public c(Context context, int i3) {
        super(context);
        this.f4375a = i3;
    }

    public final void a(Configuration configuration) {
        if (this.f4378e != null) {
            throw new IllegalStateException("getResources() or getAssets() has already been called");
        }
        if (this.f4377d != null) {
            throw new IllegalStateException("Override configuration has already been set");
        }
        this.f4377d = new Configuration(configuration);
    }

    @Override // android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    public final void b() {
        if (this.b == null) {
            this.b = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.b.setTo(theme);
            }
        }
        this.b.applyStyle(this.f4375a, true);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final AssetManager getAssets() {
        return getResources().getAssets();
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0032  */
    @Override // android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        if (this.f4378e == null) {
            Configuration configuration = this.f4377d;
            if (configuration == null) {
                this.f4378e = super.getResources();
            } else {
                if (Build.VERSION.SDK_INT >= 26) {
                    if (f == null) {
                        Configuration configuration2 = new Configuration();
                        configuration2.fontScale = 0.0f;
                        f = configuration2;
                    }
                    if (configuration.equals(f)) {
                        this.f4378e = super.getResources();
                    }
                }
                this.f4378e = createConfigurationContext(this.f4377d).getResources();
            }
        }
        return this.f4378e;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Object getSystemService(String str) {
        if (!"layout_inflater".equals(str)) {
            return getBaseContext().getSystemService(str);
        }
        if (this.f4376c == null) {
            this.f4376c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
        }
        return this.f4376c;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Resources.Theme getTheme() {
        Resources.Theme theme = this.b;
        if (theme != null) {
            return theme;
        }
        if (this.f4375a == 0) {
            this.f4375a = R.style.Theme_AppCompat_Light;
        }
        b();
        return this.b;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void setTheme(int i3) {
        if (this.f4375a != i3) {
            this.f4375a = i3;
            b();
        }
    }
}
