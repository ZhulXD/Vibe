package p023i1;

import androidx.core.view.MotionEventCompat;
import java.io.IOException;
import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Currency;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.Locale;
import java.util.StringTokenizer;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicIntegerArray;
import p028k1.j;
import p028k1.k;
import p028k1.l;
import p051u.h;
import p1.a;
import p1.b;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class i extends y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4433a;

    public /* synthetic */ i(int i3) {
        this.f4433a = i3;
    }

    public static o c(a aVar, int i3) {
        int iA = h.a(i3);
        if (iA == 5) {
            return new s(aVar.t());
        }
        if (iA == 6) {
            return new s(new p028k1.i(aVar.t()));
        }
        if (iA == 7) {
            return new s(Boolean.valueOf(aVar.l()));
        }
        if (iA != 8) {
            throw new IllegalStateException("Unexpected token: ".concat(kotlin.collections.unsigned.a.q(i3)));
        }
        aVar.r();
        return q.b;
    }

    public static void d(o oVar, b bVar) throws IOException {
        if (oVar == null || (oVar instanceof q)) {
            bVar.i();
            return;
        }
        if (oVar instanceof s) {
            s sVarE = oVar.e();
            Serializable serializable = sVarE.b;
            if (serializable instanceof Number) {
                bVar.n(sVarE.g());
                return;
            } else if (serializable instanceof Boolean) {
                bVar.p(sVarE.b());
                return;
            } else {
                bVar.o(sVarE.f());
                return;
            }
        }
        if (oVar instanceof n) {
            bVar.b();
            ArrayList arrayList = oVar.c().b;
            int size = arrayList.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj = arrayList.get(i3);
                i3++;
                d((o) obj, bVar);
            }
            bVar.e();
            return;
        }
        if (!(oVar instanceof r)) {
            throw new IllegalArgumentException("Couldn't write " + oVar.getClass());
        }
        bVar.c();
        Iterator it = ((k) oVar.d().b.entrySet()).iterator();
        while (((j) it).hasNext()) {
            l lVarB = ((j) it).b();
            bVar.g((String) lVarB.getKey());
            d((o) lVarB.getValue(), bVar);
        }
        bVar.f();
    }

    @Override // p023i1.y
    public final Object a(a aVar) {
        o nVar;
        o nVar2;
        boolean zL;
        switch (this.f4433a) {
            case 0:
                if (aVar.v() != 9) {
                    return Double.valueOf(aVar.m());
                }
                aVar.r();
                return null;
            case 1:
                if (aVar.v() != 9) {
                    return Float.valueOf((float) aVar.m());
                }
                aVar.r();
                return null;
            case 2:
                if (aVar.v() != 9) {
                    return Long.valueOf(aVar.o());
                }
                aVar.r();
                return null;
            case 3:
                ArrayList arrayList = new ArrayList();
                aVar.a();
                while (aVar.i()) {
                    try {
                        arrayList.add(Integer.valueOf(aVar.n()));
                    } catch (NumberFormatException e2) {
                        throw new p(e2);
                    }
                }
                aVar.e();
                int size = arrayList.size();
                AtomicIntegerArray atomicIntegerArray = new AtomicIntegerArray(size);
                for (int i3 = 0; i3 < size; i3++) {
                    atomicIntegerArray.set(i3, ((Integer) arrayList.get(i3)).intValue());
                }
                return atomicIntegerArray;
            case 4:
                if (aVar.v() == 9) {
                    aVar.r();
                    return null;
                }
                try {
                    return Long.valueOf(aVar.o());
                } catch (NumberFormatException e3) {
                    throw new p(e3);
                }
            case 5:
                if (aVar.v() != 9) {
                    return Float.valueOf((float) aVar.m());
                }
                aVar.r();
                return null;
            case 6:
                if (aVar.v() != 9) {
                    return Double.valueOf(aVar.m());
                }
                aVar.r();
                return null;
            case 7:
                if (aVar.v() == 9) {
                    aVar.r();
                    return null;
                }
                String strT = aVar.t();
                if (strT.length() == 1) {
                    return Character.valueOf(strT.charAt(0));
                }
                StringBuilder sbQ = E.b.q("Expecting character, got: ", strT, "; at ");
                sbQ.append(aVar.h(true));
                throw new p(sbQ.toString());
            case 8:
                int iV = aVar.v();
                if (iV != 9) {
                    return iV == 8 ? Boolean.toString(aVar.l()) : aVar.t();
                }
                aVar.r();
                return null;
            case 9:
                if (aVar.v() == 9) {
                    aVar.r();
                    return null;
                }
                String strT2 = aVar.t();
                try {
                    return new BigDecimal(strT2);
                } catch (NumberFormatException e4) {
                    StringBuilder sbQ2 = E.b.q("Failed parsing '", strT2, "' as BigDecimal; at path ");
                    sbQ2.append(aVar.h(true));
                    throw new p(sbQ2.toString(), e4);
                }
            case 10:
                if (aVar.v() == 9) {
                    aVar.r();
                    return null;
                }
                String strT3 = aVar.t();
                try {
                    return new BigInteger(strT3);
                } catch (NumberFormatException e5) {
                    StringBuilder sbQ3 = E.b.q("Failed parsing '", strT3, "' as BigInteger; at path ");
                    sbQ3.append(aVar.h(true));
                    throw new p(sbQ3.toString(), e5);
                }
            case MotionEventCompat.AXIS_Z /* 11 */:
                if (aVar.v() != 9) {
                    return new p028k1.i(aVar.t());
                }
                aVar.r();
                return null;
            case 12:
                if (aVar.v() != 9) {
                    return new StringBuilder(aVar.t());
                }
                aVar.r();
                return null;
            case 13:
                throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
            case MotionEventCompat.AXIS_RZ /* 14 */:
                if (aVar.v() != 9) {
                    return new StringBuffer(aVar.t());
                }
                aVar.r();
                return null;
            case MotionEventCompat.AXIS_HAT_X /* 15 */:
                if (aVar.v() == 9) {
                    aVar.r();
                    return null;
                }
                String strT4 = aVar.t();
                if ("null".equals(strT4)) {
                    return null;
                }
                return new URL(strT4);
            case 16:
                if (aVar.v() == 9) {
                    aVar.r();
                    return null;
                }
                try {
                    String strT5 = aVar.t();
                    if ("null".equals(strT5)) {
                        return null;
                    }
                    return new URI(strT5);
                } catch (URISyntaxException e6) {
                    throw new p(e6);
                }
            case 17:
                if (aVar.v() != 9) {
                    return InetAddress.getByName(aVar.t());
                }
                aVar.r();
                return null;
            case MotionEventCompat.AXIS_RTRIGGER /* 18 */:
                if (aVar.v() == 9) {
                    aVar.r();
                    return null;
                }
                String strT6 = aVar.t();
                try {
                    return UUID.fromString(strT6);
                } catch (IllegalArgumentException e7) {
                    StringBuilder sbQ4 = E.b.q("Failed parsing '", strT6, "' as UUID; at path ");
                    sbQ4.append(aVar.h(true));
                    throw new p(sbQ4.toString(), e7);
                }
            case 19:
                String strT7 = aVar.t();
                try {
                    return Currency.getInstance(strT7);
                } catch (IllegalArgumentException e8) {
                    StringBuilder sbQ5 = E.b.q("Failed parsing '", strT7, "' as Currency; at path ");
                    sbQ5.append(aVar.h(true));
                    throw new p(sbQ5.toString(), e8);
                }
            case MotionEventCompat.AXIS_RUDDER /* 20 */:
                if (aVar.v() == 9) {
                    aVar.r();
                    return null;
                }
                aVar.b();
                int i4 = 0;
                int i5 = 0;
                int i6 = 0;
                int i7 = 0;
                int i8 = 0;
                int i9 = 0;
                while (aVar.v() != 4) {
                    String strP = aVar.p();
                    int iN = aVar.n();
                    if ("year".equals(strP)) {
                        i4 = iN;
                    } else if ("month".equals(strP)) {
                        i5 = iN;
                    } else if ("dayOfMonth".equals(strP)) {
                        i6 = iN;
                    } else if ("hourOfDay".equals(strP)) {
                        i7 = iN;
                    } else if ("minute".equals(strP)) {
                        i8 = iN;
                    } else if ("second".equals(strP)) {
                        i9 = iN;
                    }
                }
                aVar.f();
                return new GregorianCalendar(i4, i5, i6, i7, i8, i9);
            case 21:
                if (aVar.v() == 9) {
                    aVar.r();
                    return null;
                }
                StringTokenizer stringTokenizer = new StringTokenizer(aVar.t(), "_");
                String strNextToken = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                String strNextToken2 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                String strNextToken3 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                if (strNextToken2 == null && strNextToken3 == null) {
                    return new Locale(strNextToken);
                }
                return strNextToken3 == null ? new Locale(strNextToken, strNextToken2) : new Locale(strNextToken, strNextToken2, strNextToken3);
            case 22:
                int iV2 = aVar.v();
                int iA = h.a(iV2);
                if (iA == 0) {
                    aVar.a();
                    nVar = new n();
                } else if (iA != 2) {
                    nVar = null;
                } else {
                    aVar.b();
                    nVar = new r();
                }
                if (nVar == null) {
                    return c(aVar, iV2);
                }
                ArrayDeque arrayDeque = new ArrayDeque();
                while (true) {
                    if (aVar.i()) {
                        String strP2 = nVar instanceof r ? aVar.p() : null;
                        int iV3 = aVar.v();
                        int iA2 = h.a(iV3);
                        if (iA2 == 0) {
                            aVar.a();
                            nVar2 = new n();
                        } else if (iA2 != 2) {
                            nVar2 = null;
                        } else {
                            aVar.b();
                            nVar2 = new r();
                        }
                        boolean z2 = nVar2 != null;
                        if (nVar2 == null) {
                            nVar2 = c(aVar, iV3);
                        }
                        if (nVar instanceof n) {
                            ((n) nVar).g(nVar2);
                        } else {
                            ((r) nVar).g(strP2, nVar2);
                        }
                        if (z2) {
                            arrayDeque.addLast(nVar);
                            nVar = nVar2;
                        }
                    } else {
                        if (nVar instanceof n) {
                            aVar.e();
                        } else {
                            aVar.f();
                        }
                        if (arrayDeque.isEmpty()) {
                            return nVar;
                        }
                        nVar = (o) arrayDeque.removeLast();
                    }
                }
                break;
            case 23:
                BitSet bitSet = new BitSet();
                aVar.a();
                int iV4 = aVar.v();
                int i10 = 0;
                while (iV4 != 2) {
                    int iA3 = h.a(iV4);
                    if (iA3 == 5 || iA3 == 6) {
                        int iN2 = aVar.n();
                        if (iN2 == 0) {
                            zL = false;
                        } else {
                            if (iN2 != 1) {
                                StringBuilder sbO = E.b.o(iN2, "Invalid bitset value ", ", expected 0 or 1; at path ");
                                sbO.append(aVar.h(true));
                                throw new p(sbO.toString());
                            }
                            zL = true;
                        }
                    } else {
                        if (iA3 != 7) {
                            throw new p("Invalid bitset value type: " + kotlin.collections.unsigned.a.q(iV4) + "; at path " + aVar.h(false));
                        }
                        zL = aVar.l();
                    }
                    if (zL) {
                        bitSet.set(i10);
                    }
                    i10++;
                    iV4 = aVar.v();
                }
                aVar.e();
                return bitSet;
            case 24:
                int iV5 = aVar.v();
                if (iV5 != 9) {
                    return iV5 == 6 ? Boolean.valueOf(Boolean.parseBoolean(aVar.t())) : Boolean.valueOf(aVar.l());
                }
                aVar.r();
                return null;
            case 25:
                if (aVar.v() != 9) {
                    return Boolean.valueOf(aVar.t());
                }
                aVar.r();
                return null;
            case 26:
                if (aVar.v() == 9) {
                    aVar.r();
                    return null;
                }
                try {
                    int iN3 = aVar.n();
                    if (iN3 <= 255 && iN3 >= -128) {
                        return Byte.valueOf((byte) iN3);
                    }
                    StringBuilder sbO2 = E.b.o(iN3, "Lossy conversion from ", " to byte; at path ");
                    sbO2.append(aVar.h(true));
                    throw new p(sbO2.toString());
                } catch (NumberFormatException e9) {
                    throw new p(e9);
                }
            case 27:
                if (aVar.v() == 9) {
                    aVar.r();
                    return null;
                }
                try {
                    int iN4 = aVar.n();
                    if (iN4 <= 65535 && iN4 >= -32768) {
                        return Short.valueOf((short) iN4);
                    }
                    StringBuilder sbO3 = E.b.o(iN4, "Lossy conversion from ", " to short; at path ");
                    sbO3.append(aVar.h(true));
                    throw new p(sbO3.toString());
                } catch (NumberFormatException e10) {
                    throw new p(e10);
                }
            default:
                if (aVar.v() == 9) {
                    aVar.r();
                    return null;
                }
                try {
                    return Integer.valueOf(aVar.n());
                } catch (NumberFormatException e11) {
                    throw new p(e11);
                }
        }
    }

    @Override // p023i1.y
    public final void b(b bVar, Object obj) throws IOException {
        switch (this.f4433a) {
            case 0:
                Number number = (Number) obj;
                if (number == null) {
                    bVar.i();
                    return;
                }
                double dDoubleValue = number.doubleValue();
                l.a(dDoubleValue);
                bVar.l(dDoubleValue);
                return;
            case 1:
                Number numberValueOf = (Number) obj;
                if (numberValueOf == null) {
                    bVar.i();
                    return;
                }
                float fFloatValue = numberValueOf.floatValue();
                l.a(fFloatValue);
                if (!(numberValueOf instanceof Float)) {
                    numberValueOf = Float.valueOf(fFloatValue);
                }
                bVar.n(numberValueOf);
                return;
            case 2:
                Number number2 = (Number) obj;
                if (number2 == null) {
                    bVar.i();
                    return;
                } else {
                    bVar.o(number2.toString());
                    return;
                }
            case 3:
                AtomicIntegerArray atomicIntegerArray = (AtomicIntegerArray) obj;
                bVar.b();
                int length = atomicIntegerArray.length();
                for (int i3 = 0; i3 < length; i3++) {
                    bVar.m(atomicIntegerArray.get(i3));
                }
                bVar.e();
                return;
            case 4:
                Number number3 = (Number) obj;
                if (number3 == null) {
                    bVar.i();
                    return;
                } else {
                    bVar.m(number3.longValue());
                    return;
                }
            case 5:
                Number numberValueOf2 = (Number) obj;
                if (numberValueOf2 == null) {
                    bVar.i();
                    return;
                }
                if (!(numberValueOf2 instanceof Float)) {
                    numberValueOf2 = Float.valueOf(numberValueOf2.floatValue());
                }
                bVar.n(numberValueOf2);
                return;
            case 6:
                Number number4 = (Number) obj;
                if (number4 == null) {
                    bVar.i();
                    return;
                } else {
                    bVar.l(number4.doubleValue());
                    return;
                }
            case 7:
                Character ch = (Character) obj;
                bVar.o(ch == null ? null : String.valueOf(ch));
                return;
            case 8:
                bVar.o((String) obj);
                return;
            case 9:
                bVar.n((BigDecimal) obj);
                return;
            case 10:
                bVar.n((BigInteger) obj);
                return;
            case MotionEventCompat.AXIS_Z /* 11 */:
                bVar.n((p028k1.i) obj);
                return;
            case 12:
                StringBuilder sb = (StringBuilder) obj;
                bVar.o(sb == null ? null : sb.toString());
                return;
            case 13:
                throw new UnsupportedOperationException("Attempted to serialize java.lang.Class: " + ((Class) obj).getName() + ". Forgot to register a type adapter?");
            case MotionEventCompat.AXIS_RZ /* 14 */:
                StringBuffer stringBuffer = (StringBuffer) obj;
                bVar.o(stringBuffer == null ? null : stringBuffer.toString());
                return;
            case MotionEventCompat.AXIS_HAT_X /* 15 */:
                URL url = (URL) obj;
                bVar.o(url == null ? null : url.toExternalForm());
                return;
            case 16:
                URI uri = (URI) obj;
                bVar.o(uri == null ? null : uri.toASCIIString());
                return;
            case 17:
                InetAddress inetAddress = (InetAddress) obj;
                bVar.o(inetAddress == null ? null : inetAddress.getHostAddress());
                return;
            case MotionEventCompat.AXIS_RTRIGGER /* 18 */:
                UUID uuid = (UUID) obj;
                bVar.o(uuid == null ? null : uuid.toString());
                return;
            case 19:
                bVar.o(((Currency) obj).getCurrencyCode());
                return;
            case MotionEventCompat.AXIS_RUDDER /* 20 */:
                Calendar calendar = (Calendar) obj;
                if (calendar == null) {
                    bVar.i();
                    return;
                }
                bVar.c();
                bVar.g("year");
                bVar.m(calendar.get(1));
                bVar.g("month");
                bVar.m(calendar.get(2));
                bVar.g("dayOfMonth");
                bVar.m(calendar.get(5));
                bVar.g("hourOfDay");
                bVar.m(calendar.get(11));
                bVar.g("minute");
                bVar.m(calendar.get(12));
                bVar.g("second");
                bVar.m(calendar.get(13));
                bVar.f();
                return;
            case 21:
                Locale locale = (Locale) obj;
                bVar.o(locale == null ? null : locale.toString());
                return;
            case 22:
                d((o) obj, bVar);
                return;
            case 23:
                BitSet bitSet = (BitSet) obj;
                bVar.b();
                int length2 = bitSet.length();
                for (int i4 = 0; i4 < length2; i4++) {
                    bVar.m(bitSet.get(i4) ? 1L : 0L);
                }
                bVar.e();
                return;
            case 24:
                Boolean bool = (Boolean) obj;
                if (bool == null) {
                    bVar.i();
                    return;
                }
                bVar.q();
                bVar.a();
                bVar.b.write(bool.booleanValue() ? "true" : "false");
                return;
            case 25:
                Boolean bool2 = (Boolean) obj;
                bVar.o(bool2 == null ? "null" : bool2.toString());
                return;
            case 26:
                Number number5 = (Number) obj;
                if (number5 == null) {
                    bVar.i();
                    return;
                } else {
                    bVar.m(number5.byteValue());
                    return;
                }
            case 27:
                Number number6 = (Number) obj;
                if (number6 == null) {
                    bVar.i();
                    return;
                } else {
                    bVar.m(number6.shortValue());
                    return;
                }
            default:
                Number number7 = (Number) obj;
                if (number7 == null) {
                    bVar.i();
                    return;
                } else {
                    bVar.m(number7.intValue());
                    return;
                }
        }
    }
}
