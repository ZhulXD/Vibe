package androidx.core.graphics;

import E.b;
import android.graphics.Path;
import android.util.Log;
import androidx.core.location.LocationRequestCompat;
import androidx.core.view.MotionEventCompat;
import java.util.ArrayList;
import kotlin.collections.unsigned.a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class PathParser {
    private static final String LOGTAG = "PathParser";

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public static class ExtractFloatResult {
        int mEndPosition;
        boolean mEndWithNegOrDot;
    }

    private PathParser() {
    }

    private static void addNode(ArrayList<PathDataNode> arrayList, char c3, float[] fArr) {
        arrayList.add(new PathDataNode(c3, fArr));
    }

    public static boolean canMorph(PathDataNode[] pathDataNodeArr, PathDataNode[] pathDataNodeArr2) {
        if (pathDataNodeArr == null || pathDataNodeArr2 == null || pathDataNodeArr.length != pathDataNodeArr2.length) {
            return false;
        }
        for (int i3 = 0; i3 < pathDataNodeArr.length; i3++) {
            if (pathDataNodeArr[i3].mType != pathDataNodeArr2[i3].mType || pathDataNodeArr[i3].mParams.length != pathDataNodeArr2[i3].mParams.length) {
                return false;
            }
        }
        return true;
    }

    public static float[] copyOfRange(float[] fArr, int i3, int i4) {
        if (i3 > i4) {
            throw new IllegalArgumentException();
        }
        int length = fArr.length;
        if (i3 < 0 || i3 > length) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i5 = i4 - i3;
        int iMin = Math.min(i5, length - i3);
        float[] fArr2 = new float[i5];
        System.arraycopy(fArr, i3, fArr2, 0, iMin);
        return fArr2;
    }

    public static PathDataNode[] createNodesFromPathData(String str) {
        ArrayList arrayList = new ArrayList();
        int i3 = 0;
        int i4 = 1;
        while (i4 < str.length()) {
            int iNextStart = nextStart(str, i4);
            String strTrim = str.substring(i3, iNextStart).trim();
            if (!strTrim.isEmpty()) {
                addNode(arrayList, strTrim.charAt(0), getFloats(strTrim));
            }
            i3 = iNextStart;
            i4 = iNextStart + 1;
        }
        if (i4 - i3 == 1 && i3 < str.length()) {
            addNode(arrayList, str.charAt(i3), new float[0]);
        }
        return (PathDataNode[]) arrayList.toArray(new PathDataNode[0]);
    }

    public static Path createPathFromPathData(String str) {
        Path path = new Path();
        try {
            PathDataNode.nodesToPath(createNodesFromPathData(str), path);
            return path;
        } catch (RuntimeException e2) {
            throw new RuntimeException(a.o("Error in parsing ", str), e2);
        }
    }

    public static PathDataNode[] deepCopyNodes(PathDataNode[] pathDataNodeArr) {
        PathDataNode[] pathDataNodeArr2 = new PathDataNode[pathDataNodeArr.length];
        for (int i3 = 0; i3 < pathDataNodeArr.length; i3++) {
            pathDataNodeArr2[i3] = new PathDataNode(pathDataNodeArr[i3]);
        }
        return pathDataNodeArr2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:16:0x0029  */
    private static void extract(String str, int i3, ExtractFloatResult extractFloatResult) {
        extractFloatResult.mEndWithNegOrDot = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        for (int i4 = i3; i4 < str.length(); i4++) {
            char cCharAt = str.charAt(i4);
            if (cCharAt == ' ') {
                z2 = false;
                z4 = true;
            } else if (cCharAt != 'E' && cCharAt != 'e') {
                switch (cCharAt) {
                    case MotionEventCompat.AXIS_GENERIC_13 /* 44 */:
                        z2 = false;
                        z4 = true;
                        break;
                    case MotionEventCompat.AXIS_GENERIC_14 /* 45 */:
                        if (i4 == i3 || z2) {
                            z2 = false;
                        } else {
                            extractFloatResult.mEndWithNegOrDot = true;
                            z2 = false;
                            z4 = true;
                        }
                        break;
                    case MotionEventCompat.AXIS_GENERIC_15 /* 46 */:
                        if (z3) {
                            extractFloatResult.mEndWithNegOrDot = true;
                            z2 = false;
                            z4 = true;
                        } else {
                            z2 = false;
                            z3 = true;
                        }
                        break;
                    default:
                        z2 = false;
                        break;
                }
            } else {
                z2 = true;
            }
            if (z4) {
                extractFloatResult.mEndPosition = i4;
            }
        }
        extractFloatResult.mEndPosition = i4;
    }

    private static float[] getFloats(String str) {
        if (str.charAt(0) == 'z' || str.charAt(0) == 'Z') {
            return new float[0];
        }
        try {
            float[] fArr = new float[str.length()];
            ExtractFloatResult extractFloatResult = new ExtractFloatResult();
            int length = str.length();
            int i3 = 1;
            int i4 = 0;
            while (i3 < length) {
                extract(str, i3, extractFloatResult);
                int i5 = extractFloatResult.mEndPosition;
                if (i3 < i5) {
                    fArr[i4] = Float.parseFloat(str.substring(i3, i5));
                    i4++;
                }
                i3 = extractFloatResult.mEndWithNegOrDot ? i5 : i5 + 1;
            }
            return copyOfRange(fArr, 0, i4);
        } catch (NumberFormatException e2) {
            throw new RuntimeException(b.m("error in parsing \"", str, "\""), e2);
        }
    }

    public static void interpolatePathDataNodes(PathDataNode[] pathDataNodeArr, float f, PathDataNode[] pathDataNodeArr2, PathDataNode[] pathDataNodeArr3) {
        if (!interpolatePathDataNodes(pathDataNodeArr, pathDataNodeArr2, pathDataNodeArr3, f)) {
            throw new IllegalArgumentException("Can't interpolate between two incompatible pathData");
        }
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0018  */
    private static int nextStart(String str, int i3) {
        while (i3 < str.length()) {
            char cCharAt = str.charAt(i3);
            if ((cCharAt - 'Z') * (cCharAt - 'A') > 0) {
                if ((cCharAt - 'z') * (cCharAt - 'a') > 0) {
                    continue;
                } else if (cCharAt != 'e' && cCharAt != 'E') {
                    break;
                }
            } else if (cCharAt != 'e') {
                continue;
            }
            i3++;
        }
        return i3;
    }

    public static void nodesToPath(PathDataNode[] pathDataNodeArr, Path path) {
        float[] fArr = new float[6];
        char c3 = 'm';
        for (PathDataNode pathDataNode : pathDataNodeArr) {
            PathDataNode.addCommand(path, fArr, c3, pathDataNode.mType, pathDataNode.mParams);
            c3 = pathDataNode.mType;
        }
    }

    public static void updateNodes(PathDataNode[] pathDataNodeArr, PathDataNode[] pathDataNodeArr2) {
        for (int i3 = 0; i3 < pathDataNodeArr2.length; i3++) {
            pathDataNodeArr[i3].mType = pathDataNodeArr2[i3].mType;
            for (int i4 = 0; i4 < pathDataNodeArr2[i3].mParams.length; i4++) {
                pathDataNodeArr[i3].mParams[i4] = pathDataNodeArr2[i3].mParams[i4];
            }
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public static class PathDataNode {
        private final float[] mParams;
        private char mType;

        public PathDataNode(char c3, float[] fArr) {
            this.mType = c3;
            this.mParams = fArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        public static void addCommand(Path path, float[] fArr, char c3, char c4, float[] fArr2) {
            int i3;
            int i4;
            boolean z2;
            boolean z3;
            char c5;
            char c6;
            int i5;
            float f;
            float f3;
            float f4;
            float f5;
            float f6;
            float f7;
            float f8;
            float f9;
            float f10;
            float f11;
            float f12;
            float f13;
            float f14;
            Path path2 = path;
            boolean z4 = false;
            float f15 = fArr[0];
            boolean z5 = true;
            float f16 = fArr[1];
            char c7 = 2;
            float f17 = fArr[2];
            char c8 = 3;
            float f18 = fArr[3];
            float f19 = fArr[4];
            float f20 = fArr[5];
            switch (c4) {
                case 'A':
                case 'a':
                    i3 = 7;
                    i4 = i3;
                    break;
                case 'C':
                case 'c':
                    i3 = 6;
                    i4 = i3;
                    break;
                case 'H':
                case 'V':
                case LocationRequestCompat.QUALITY_LOW_POWER /* 104 */:
                case 'v':
                    i4 = 1;
                    break;
                case 'L':
                case 'M':
                case 'T':
                case 'l':
                case 'm':
                case 't':
                default:
                    i4 = 2;
                    break;
                case 'Q':
                case 'S':
                case 'q':
                case 's':
                    i4 = 4;
                    break;
                case 'Z':
                case 'z':
                    path2.close();
                    path2.moveTo(f19, f20);
                    f15 = f19;
                    f17 = f15;
                    f16 = f20;
                    f18 = f16;
                    i4 = 2;
                    break;
            }
            float f21 = f15;
            float f22 = f16;
            float f23 = f19;
            float f24 = f20;
            int i6 = 0;
            char c9 = c3;
            while (i6 < fArr2.length) {
                if (c4 == 'A') {
                    z2 = z4;
                    z3 = z5;
                    c5 = c7;
                    c6 = c8;
                    i5 = i6;
                    int i7 = i5 + 5;
                    int i8 = i5 + 6;
                    drawArc(path, f21, f22, fArr2[i7], fArr2[i8], fArr2[i5], fArr2[i5 + 1], fArr2[i5 + 2], fArr2[i5 + 3] != 0.0f ? z3 : z2, fArr2[i5 + 4] != 0 ? z3 : z2);
                    f17 = fArr2[i7];
                    f21 = f17;
                    f18 = fArr2[i8];
                    f22 = f18;
                } else if (c4 == 'C') {
                    z2 = z4;
                    z3 = z5;
                    c5 = c7;
                    c6 = c8;
                    i5 = i6;
                    int i9 = i5 + 2;
                    int i10 = i5 + 3;
                    int i11 = i5 + 4;
                    int i12 = i5 + 5;
                    path2.cubicTo(fArr2[i5], fArr2[i5 + 1], fArr2[i9], fArr2[i10], fArr2[i11], fArr2[i12]);
                    float f25 = fArr2[i11];
                    float f26 = fArr2[i12];
                    float f27 = fArr2[i9];
                    float f28 = fArr2[i10];
                    f21 = f25;
                    f22 = f26;
                    f18 = f28;
                    f17 = f27;
                } else if (c4 != 'H') {
                    if (c4 != 'Q') {
                        z2 = z4;
                        if (c4 == 'V') {
                            z3 = z5;
                            c5 = c7;
                            c6 = c8;
                            i5 = i6;
                            path2.lineTo(f21, fArr2[i5]);
                            f4 = fArr2[i5];
                        } else if (c4 != 'a') {
                            if (c4 != 'c') {
                                z3 = z5;
                                if (c4 != 'h') {
                                    if (c4 != 'q') {
                                        c5 = c7;
                                        if (c4 != 'v') {
                                            if (c4 != 'L') {
                                                if (c4 != 'M') {
                                                    c6 = c8;
                                                    if (c4 == 'S') {
                                                        if (c9 == 'c' || c9 == 's' || c9 == 'C' || c9 == 'S') {
                                                            f21 = (f21 * 2.0f) - f17;
                                                            f22 = (f22 * 2.0f) - f18;
                                                        }
                                                        float f29 = f21;
                                                        float f30 = f22;
                                                        int i13 = i6 + 1;
                                                        int i14 = i6 + 2;
                                                        int i15 = i6 + 3;
                                                        path2.cubicTo(f29, f30, fArr2[i6], fArr2[i13], fArr2[i14], fArr2[i15]);
                                                        f = fArr2[i6];
                                                        f3 = fArr2[i13];
                                                        f21 = fArr2[i14];
                                                        f22 = fArr2[i15];
                                                        i5 = i6;
                                                    } else if (c4 == 'T') {
                                                        if (c9 == 'q' || c9 == 't' || c9 == 'Q' || c9 == 'T') {
                                                            f21 = (f21 * 2.0f) - f17;
                                                            f22 = (f22 * 2.0f) - f18;
                                                        }
                                                        int i16 = i6 + 1;
                                                        path2.quadTo(f21, f22, fArr2[i6], fArr2[i16]);
                                                        float f31 = fArr2[i6];
                                                        f4 = fArr2[i16];
                                                        f17 = f21;
                                                        f18 = f22;
                                                        i5 = i6;
                                                        f21 = f31;
                                                    } else if (c4 == 'l') {
                                                        int i17 = i6 + 1;
                                                        path2.rLineTo(fArr2[i6], fArr2[i17]);
                                                        f21 += fArr2[i6];
                                                        f8 = fArr2[i17];
                                                    } else if (c4 == 'm') {
                                                        float f32 = fArr2[i6];
                                                        f21 += f32;
                                                        float f33 = fArr2[i6 + 1];
                                                        f22 += f33;
                                                        if (i6 > 0) {
                                                            path2.rLineTo(f32, f33);
                                                        } else {
                                                            path2.rMoveTo(f32, f33);
                                                            f23 = f21;
                                                        }
                                                    } else if (c4 == 's') {
                                                        if (c9 == 'c' || c9 == 's' || c9 == 'C' || c9 == 'S') {
                                                            f11 = f22 - f18;
                                                            f12 = f21 - f17;
                                                        } else {
                                                            f12 = 0.0f;
                                                            f11 = 0.0f;
                                                        }
                                                        int i18 = i6 + 1;
                                                        int i19 = i6 + 2;
                                                        int i20 = i6 + 3;
                                                        path2.rCubicTo(f12, f11, fArr2[i6], fArr2[i18], fArr2[i19], fArr2[i20]);
                                                        f5 = fArr2[i6] + f21;
                                                        f6 = fArr2[i18] + f22;
                                                        f21 += fArr2[i19];
                                                        f7 = fArr2[i20];
                                                    } else if (c4 == 't') {
                                                        if (c9 == 'q' || c9 == 't' || c9 == 'Q' || c9 == 'T') {
                                                            f13 = f21 - f17;
                                                            f14 = f22 - f18;
                                                        } else {
                                                            f14 = 0.0f;
                                                            f13 = 0.0f;
                                                        }
                                                        int i21 = i6 + 1;
                                                        path2.rQuadTo(f13, f14, fArr2[i6], fArr2[i21]);
                                                        float f34 = f13 + f21;
                                                        float f35 = f14 + f22;
                                                        f21 += fArr2[i6];
                                                        f22 += fArr2[i21];
                                                        f18 = f35;
                                                        f17 = f34;
                                                    }
                                                } else {
                                                    c6 = c8;
                                                    f9 = fArr2[i6];
                                                    f10 = fArr2[i6 + 1];
                                                    if (i6 > 0) {
                                                        path2.lineTo(f9, f10);
                                                    } else {
                                                        path2.moveTo(f9, f10);
                                                        f21 = f9;
                                                        f23 = f21;
                                                        f22 = f10;
                                                    }
                                                }
                                                f24 = f22;
                                            } else {
                                                c6 = c8;
                                                int i22 = i6 + 1;
                                                path2.lineTo(fArr2[i6], fArr2[i22]);
                                                f9 = fArr2[i6];
                                                f10 = fArr2[i22];
                                            }
                                            f21 = f9;
                                            f22 = f10;
                                        } else {
                                            c6 = c8;
                                            path2.rLineTo(0.0f, fArr2[i6]);
                                            f8 = fArr2[i6];
                                        }
                                        f22 += f8;
                                    } else {
                                        c5 = c7;
                                        c6 = c8;
                                        int i23 = i6 + 1;
                                        int i24 = i6 + 2;
                                        int i25 = i6 + 3;
                                        path2.rQuadTo(fArr2[i6], fArr2[i23], fArr2[i24], fArr2[i25]);
                                        f5 = fArr2[i6] + f21;
                                        f6 = fArr2[i23] + f22;
                                        f21 += fArr2[i24];
                                        f7 = fArr2[i25];
                                    }
                                    f22 += f7;
                                    f17 = f5;
                                    f18 = f6;
                                } else {
                                    c5 = c7;
                                    c6 = c8;
                                    path2.rLineTo(fArr2[i6], 0.0f);
                                    f21 += fArr2[i6];
                                }
                            } else {
                                z3 = z5;
                                c5 = c7;
                                c6 = c8;
                                int i26 = i6 + 2;
                                int i27 = i6 + 3;
                                int i28 = i6 + 4;
                                int i29 = i6 + 5;
                                path2.rCubicTo(fArr2[i6], fArr2[i6 + 1], fArr2[i26], fArr2[i27], fArr2[i28], fArr2[i29]);
                                float f36 = fArr2[i26] + f21;
                                float f37 = fArr2[i27] + f22;
                                f21 += fArr2[i28];
                                f22 += fArr2[i29];
                                f17 = f36;
                                f18 = f37;
                            }
                            i5 = i6;
                        } else {
                            z3 = z5;
                            c5 = c7;
                            c6 = c8;
                            int i30 = i6 + 5;
                            int i31 = i6 + 6;
                            i5 = i6;
                            float f38 = f21;
                            drawArc(path, f38, f22, fArr2[i30] + f21, fArr2[i31] + f22, fArr2[i6], fArr2[i6 + 1], fArr2[i6 + 2], fArr2[i6 + 3] != 0.0f ? z3 : z2, fArr2[i6 + 4] != 0 ? z3 : z2);
                            f21 = f38 + fArr2[i30];
                            f22 += fArr2[i31];
                            f17 = f21;
                            f18 = f22;
                        }
                        f22 = f4;
                    } else {
                        z2 = z4;
                        z3 = z5;
                        c5 = c7;
                        c6 = c8;
                        i5 = i6;
                        int i32 = i5 + 1;
                        int i33 = i5 + 2;
                        int i34 = i5 + 3;
                        path2.quadTo(fArr2[i5], fArr2[i32], fArr2[i33], fArr2[i34]);
                        f = fArr2[i5];
                        f3 = fArr2[i32];
                        f21 = fArr2[i33];
                        f22 = fArr2[i34];
                    }
                    f17 = f;
                    f18 = f3;
                } else {
                    z2 = z4;
                    z3 = z5;
                    c5 = c7;
                    c6 = c8;
                    i5 = i6;
                    path2.lineTo(fArr2[i5], f22);
                    f21 = fArr2[i5];
                }
                i6 = i5 + i4;
                path2 = path;
                c9 = c4;
                z4 = z2;
                z5 = z3;
                c7 = c5;
                c8 = c6;
            }
            fArr[z4 ? 1 : 0] = f21;
            fArr[z5 ? 1 : 0] = f22;
            fArr[c7] = f17;
            fArr[c8] = f18;
            fArr[4] = f23;
            fArr[5] = f24;
        }

        private static void arcToBezier(Path path, double d3, double d4, double d5, double d6, double d7, double d8, double d9, double d10, double d11) {
            double d12 = d5;
            int iCeil = (int) Math.ceil(Math.abs((d11 * 4.0d) / 3.141592653589793d));
            double dCos = Math.cos(d9);
            double dSin = Math.sin(d9);
            double dCos2 = Math.cos(d10);
            double dSin2 = Math.sin(d10);
            double d13 = -d12;
            double d14 = d13 * dCos;
            double d15 = d6 * dSin;
            double d16 = (d14 * dSin2) - (d15 * dCos2);
            double d17 = d13 * dSin;
            double d18 = d6 * dCos;
            double d19 = (dCos2 * d18) + (dSin2 * d17);
            double d20 = d11 / ((double) iCeil);
            double d21 = d19;
            double d22 = d16;
            int i3 = 0;
            double d23 = d7;
            double d24 = d8;
            double d25 = d10;
            while (i3 < iCeil) {
                double d26 = d25 + d20;
                double dSin3 = Math.sin(d26);
                double dCos3 = Math.cos(d26);
                double d27 = (((d12 * dCos) * dCos3) + d3) - (d15 * dSin3);
                int i4 = i3;
                double d28 = (d18 * dSin3) + (d5 * dSin * dCos3) + d4;
                double d29 = (d14 * dSin3) - (d15 * dCos3);
                double d30 = (dCos3 * d18) + (dSin3 * d17);
                double d31 = d26 - d25;
                double dTan = Math.tan(d31 / 2.0d);
                double dSqrt = ((Math.sqrt(((dTan * 3.0d) * dTan) + 4.0d) - 1.0d) * Math.sin(d31)) / 3.0d;
                path.rLineTo(0.0f, 0.0f);
                path.cubicTo((float) ((d22 * dSqrt) + d23), (float) ((d21 * dSqrt) + d24), (float) (d27 - (dSqrt * d29)), (float) (d28 - (dSqrt * d30)), (float) d27, (float) d28);
                dSin = dSin;
                d20 = d20;
                d23 = d27;
                d17 = d17;
                dCos = dCos;
                d21 = d30;
                d22 = d29;
                d12 = d5;
                d24 = d28;
                i3 = i4 + 1;
                iCeil = iCeil;
                d25 = d26;
            }
        }

        private static void drawArc(Path path, float f, float f3, float f4, float f5, float f6, float f7, float f8, boolean z2, boolean z3) {
            double d3;
            double d4;
            double radians = Math.toRadians(f8);
            double dCos = Math.cos(radians);
            double dSin = Math.sin(radians);
            double d5 = f;
            double d6 = f3;
            double d7 = f6;
            double d8 = ((d6 * dSin) + (d5 * dCos)) / d7;
            double d9 = f7;
            double d10 = ((d6 * dCos) + (((double) (-f)) * dSin)) / d9;
            double d11 = f5;
            double d12 = ((d11 * dSin) + (((double) f4) * dCos)) / d7;
            double d13 = ((d11 * dCos) + (((double) (-f4)) * dSin)) / d9;
            double d14 = d8 - d12;
            double d15 = d10 - d13;
            double d16 = (d8 + d12) / 2.0d;
            double d17 = (d10 + d13) / 2.0d;
            double d18 = (d15 * d15) + (d14 * d14);
            if (d18 == 0.0d) {
                Log.w(PathParser.LOGTAG, " Points are coincident");
                return;
            }
            double d19 = (1.0d / d18) - 0.25d;
            if (d19 < 0.0d) {
                Log.w(PathParser.LOGTAG, "Points are too far apart " + d18);
                float fSqrt = (float) (Math.sqrt(d18) / 1.99999d);
                drawArc(path, f, f3, f4, f5, f6 * fSqrt, fSqrt * f7, f8, z2, z3);
                return;
            }
            double dSqrt = Math.sqrt(d19);
            double d20 = dSqrt * d14;
            double d21 = dSqrt * d15;
            if (z2 == z3) {
                d3 = d16 - d21;
                d4 = d17 + d20;
            } else {
                d3 = d16 + d21;
                d4 = d17 - d20;
            }
            double dAtan2 = Math.atan2(d10 - d4, d8 - d3);
            double dAtan3 = Math.atan2(d13 - d4, d12 - d3) - dAtan2;
            if (z3 != (dAtan3 >= 0.0d)) {
                dAtan3 = dAtan3 > 0.0d ? dAtan3 - 6.283185307179586d : dAtan3 + 6.283185307179586d;
            }
            double d22 = d3 * d7;
            double d23 = d4 * d9;
            arcToBezier(path, (d22 * dCos) - (d23 * dSin), (d23 * dCos) + (d22 * dSin), d7, d9, d5, d6, radians, dAtan2, dAtan3);
        }

        @Deprecated
        public static void nodesToPath(PathDataNode[] pathDataNodeArr, Path path) {
            PathParser.nodesToPath(pathDataNodeArr, path);
        }

        public float[] getParams() {
            return this.mParams;
        }

        public char getType() {
            return this.mType;
        }

        public void interpolatePathDataNode(PathDataNode pathDataNode, PathDataNode pathDataNode2, float f) {
            this.mType = pathDataNode.mType;
            int i3 = 0;
            while (true) {
                float[] fArr = pathDataNode.mParams;
                if (i3 >= fArr.length) {
                    return;
                }
                this.mParams[i3] = (pathDataNode2.mParams[i3] * f) + ((1.0f - f) * fArr[i3]);
                i3++;
            }
        }

        public PathDataNode(PathDataNode pathDataNode) {
            this.mType = pathDataNode.mType;
            float[] fArr = pathDataNode.mParams;
            this.mParams = PathParser.copyOfRange(fArr, 0, fArr.length);
        }
    }

    @Deprecated
    public static boolean interpolatePathDataNodes(PathDataNode[] pathDataNodeArr, PathDataNode[] pathDataNodeArr2, PathDataNode[] pathDataNodeArr3, float f) {
        if (pathDataNodeArr.length == pathDataNodeArr2.length && pathDataNodeArr2.length == pathDataNodeArr3.length) {
            if (!canMorph(pathDataNodeArr2, pathDataNodeArr3)) {
                return false;
            }
            for (int i3 = 0; i3 < pathDataNodeArr.length; i3++) {
                pathDataNodeArr[i3].interpolatePathDataNode(pathDataNodeArr2[i3], pathDataNodeArr3[i3], f);
            }
            return true;
        }
        throw new IllegalArgumentException("The nodes to be interpolated and resulting nodes must have the same length");
    }
}
