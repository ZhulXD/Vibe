package androidx.emoji2.text;

import android.text.Editable;
import android.text.SpannableStringBuilder;
import androidx.core.util.Preconditions;
import java.lang.reflect.Array;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class u extends SpannableStringBuilder {
    public final Class b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f2897c;

    public u(Class cls, CharSequence charSequence) {
        super(charSequence);
        this.f2897c = new ArrayList();
        Preconditions.checkNotNull(cls, "watcherClass cannot be null");
        this.b = cls;
    }

    public final void a() {
        int i3 = 0;
        while (true) {
            ArrayList arrayList = this.f2897c;
            if (i3 >= arrayList.size()) {
                return;
            }
            ((t) arrayList.get(i3)).f2896c.incrementAndGet();
            i3++;
        }
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Editable append(CharSequence charSequence) {
        super.append(charSequence);
        return this;
    }

    public final void b() {
        e();
        int i3 = 0;
        while (true) {
            ArrayList arrayList = this.f2897c;
            if (i3 >= arrayList.size()) {
                return;
            }
            ((t) arrayList.get(i3)).onTextChanged(this, 0, length(), length());
            i3++;
        }
    }

    public final t c(Object obj) {
        int i3 = 0;
        while (true) {
            ArrayList arrayList = this.f2897c;
            if (i3 >= arrayList.size()) {
                return null;
            }
            t tVar = (t) arrayList.get(i3);
            if (tVar.b == obj) {
                return tVar;
            }
            i3++;
        }
    }

    public final boolean d(Object obj) {
        if (obj != null) {
            return this.b == obj.getClass();
        }
        return false;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final Editable delete(int i3, int i4) {
        super.delete(i3, i4);
        return this;
    }

    public final void e() {
        int i3 = 0;
        while (true) {
            ArrayList arrayList = this.f2897c;
            if (i3 >= arrayList.size()) {
                return;
            }
            ((t) arrayList.get(i3)).f2896c.decrementAndGet();
            i3++;
        }
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public final int getSpanEnd(Object obj) {
        t tVarC;
        if (d(obj) && (tVarC = c(obj)) != null) {
            obj = tVarC;
        }
        return super.getSpanEnd(obj);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public final int getSpanFlags(Object obj) {
        t tVarC;
        if (d(obj) && (tVarC = c(obj)) != null) {
            obj = tVarC;
        }
        return super.getSpanFlags(obj);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public final int getSpanStart(Object obj) {
        t tVarC;
        if (d(obj) && (tVarC = c(obj)) != null) {
            obj = tVarC;
        }
        return super.getSpanStart(obj);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public final Object[] getSpans(int i3, int i4, Class cls) {
        if (this.b != cls) {
            return super.getSpans(i3, i4, cls);
        }
        t[] tVarArr = (t[]) super.getSpans(i3, i4, t.class);
        Object[] objArr = (Object[]) Array.newInstance((Class<?>) cls, tVarArr.length);
        for (int i5 = 0; i5 < tVarArr.length; i5++) {
            objArr[i5] = tVarArr[i5].b;
        }
        return objArr;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final Editable insert(int i3, CharSequence charSequence) {
        super.insert(i3, charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public final int nextSpanTransition(int i3, int i4, Class cls) {
        if (cls == null || this.b == cls) {
            cls = t.class;
        }
        return super.nextSpanTransition(i3, i4, cls);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spannable
    public final void removeSpan(Object obj) {
        t tVarC;
        if (d(obj)) {
            tVarC = c(obj);
            if (tVarC != null) {
                obj = tVarC;
            }
        } else {
            tVarC = null;
        }
        super.removeSpan(obj);
        if (tVarC != null) {
            this.f2897c.remove(tVarC);
        }
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final /* bridge */ /* synthetic */ Editable replace(int i3, int i4, CharSequence charSequence) {
        replace(i3, i4, charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spannable
    public final void setSpan(Object obj, int i3, int i4, int i5) {
        if (d(obj)) {
            t tVar = new t(obj);
            this.f2897c.add(tVar);
            obj = tVar;
        }
        super.setSpan(obj, i3, i4, i5);
    }

    @Override // android.text.SpannableStringBuilder, java.lang.CharSequence
    public final CharSequence subSequence(int i3, int i4) {
        return new u(this.b, this, i3, i4);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final SpannableStringBuilder append(CharSequence charSequence) {
        super.append(charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final SpannableStringBuilder delete(int i3, int i4) {
        super.delete(i3, i4);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final SpannableStringBuilder insert(int i3, CharSequence charSequence) {
        super.insert(i3, charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final /* bridge */ /* synthetic */ Editable replace(int i3, int i4, CharSequence charSequence, int i5, int i6) {
        replace(i3, i4, charSequence, i5, i6);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Appendable append(CharSequence charSequence) {
        super.append(charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final Editable insert(int i3, CharSequence charSequence, int i4, int i5) {
        super.insert(i3, charSequence, i4, i5);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final SpannableStringBuilder replace(int i3, int i4, CharSequence charSequence) {
        a();
        super.replace(i3, i4, charSequence);
        e();
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Editable append(char c3) {
        super.append(c3);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final SpannableStringBuilder insert(int i3, CharSequence charSequence, int i4, int i5) {
        super.insert(i3, charSequence, i4, i5);
        return this;
    }

    public u(Class cls, u uVar, int i3, int i4) {
        super(uVar, i3, i4);
        this.f2897c = new ArrayList();
        Preconditions.checkNotNull(cls, "watcherClass cannot be null");
        this.b = cls;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final SpannableStringBuilder append(char c3) {
        super.append(c3);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Appendable append(char c3) {
        super.append(c3);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final SpannableStringBuilder replace(int i3, int i4, CharSequence charSequence, int i5, int i6) {
        a();
        super.replace(i3, i4, charSequence, i5, i6);
        e();
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Editable append(CharSequence charSequence, int i3, int i4) {
        super.append(charSequence, i3, i4);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final SpannableStringBuilder append(CharSequence charSequence, int i3, int i4) {
        super.append(charSequence, i3, i4);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Appendable append(CharSequence charSequence, int i3, int i4) {
        super.append(charSequence, i3, i4);
        return this;
    }

    @Override // android.text.SpannableStringBuilder
    public final SpannableStringBuilder append(CharSequence charSequence, Object obj, int i3) {
        super.append(charSequence, obj, i3);
        return this;
    }
}
