package p023i1;

import java.io.IOException;
import java.io.StringWriter;
import java.math.BigDecimal;
import p031l1.s;
import p1.b;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class o {
    public BigDecimal a() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public boolean b() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public final n c() {
        if (this instanceof n) {
            return (n) this;
        }
        throw new IllegalStateException("Not a JSON Array: " + this);
    }

    public final r d() {
        if (this instanceof r) {
            return (r) this;
        }
        throw new IllegalStateException("Not a JSON Object: " + this);
    }

    public final s e() {
        if (this instanceof s) {
            return (s) this;
        }
        throw new IllegalStateException("Not a JSON Primitive: " + this);
    }

    public String f() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public final String toString() {
        try {
            StringWriter stringWriter = new StringWriter();
            b bVar = new b(stringWriter);
            bVar.f = true;
            p031l1.o oVar = s.f5076a;
            i.d(this, bVar);
            return stringWriter.toString();
        } catch (IOException e2) {
            throw new AssertionError(e2);
        }
    }
}
