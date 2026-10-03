package p023i1;

import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Objects;
import p028k1.i;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class s extends o {
    public final Serializable b;

    public s(Boolean bool) {
        Objects.requireNonNull(bool);
        this.b = bool;
    }

    public static boolean h(s sVar) {
        Serializable serializable = sVar.b;
        if (!(serializable instanceof Number)) {
            return false;
        }
        Number number = (Number) serializable;
        return (number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte);
    }

    @Override // p023i1.o
    public final BigDecimal a() {
        Serializable serializable = this.b;
        return serializable instanceof BigDecimal ? (BigDecimal) serializable : new BigDecimal(f());
    }

    @Override // p023i1.o
    public final boolean b() {
        Serializable serializable = this.b;
        return serializable instanceof Boolean ? ((Boolean) serializable).booleanValue() : Boolean.parseBoolean(f());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || s.class != obj.getClass()) {
            return false;
        }
        s sVar = (s) obj;
        Serializable serializable = sVar.b;
        Serializable serializable2 = this.b;
        if (serializable2 == null) {
            return serializable == null;
        }
        if (h(this) && h(sVar)) {
            return g().longValue() == sVar.g().longValue();
        }
        if (!(serializable2 instanceof Number) || !(serializable instanceof Number)) {
            return serializable2.equals(serializable);
        }
        double dDoubleValue = g().doubleValue();
        double dDoubleValue2 = sVar.g().doubleValue();
        if (dDoubleValue != dDoubleValue2) {
            return Double.isNaN(dDoubleValue) && Double.isNaN(dDoubleValue2);
        }
        return true;
    }

    @Override // p023i1.o
    public final String f() {
        Serializable serializable = this.b;
        if (serializable instanceof String) {
            return (String) serializable;
        }
        if (serializable instanceof Number) {
            return g().toString();
        }
        if (serializable instanceof Boolean) {
            return ((Boolean) serializable).toString();
        }
        throw new AssertionError("Unexpected value type: " + serializable.getClass());
    }

    public final Number g() {
        Serializable serializable = this.b;
        if (serializable instanceof Number) {
            return (Number) serializable;
        }
        if (serializable instanceof String) {
            return new i((String) serializable);
        }
        throw new UnsupportedOperationException("Primitive is neither a number nor a string");
    }

    public final int hashCode() {
        long jDoubleToLongBits;
        Serializable serializable = this.b;
        if (serializable == null) {
            return 31;
        }
        if (h(this)) {
            jDoubleToLongBits = g().longValue();
        } else {
            if (!(serializable instanceof Number)) {
                return serializable.hashCode();
            }
            jDoubleToLongBits = Double.doubleToLongBits(g().doubleValue());
        }
        return (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
    }

    public s(Number number) {
        Objects.requireNonNull(number);
        this.b = number;
    }

    public s(String str) {
        Objects.requireNonNull(str);
        this.b = str;
    }
}
