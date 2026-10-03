package androidx.core.graphics;

import android.graphics.Color;
import androidx.core.content.res.CamColor;
import androidx.core.view.ViewCompat;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class ColorUtils {
    private static final int MIN_ALPHA_SEARCH_MAX_ITERATIONS = 10;
    private static final int MIN_ALPHA_SEARCH_PRECISION = 1;
    private static final ThreadLocal<double[]> TEMP_ARRAY = new ThreadLocal<>();
    private static final double XYZ_EPSILON = 0.008856d;
    private static final double XYZ_KAPPA = 903.3d;
    private static final double XYZ_WHITE_REFERENCE_X = 95.047d;
    private static final double XYZ_WHITE_REFERENCE_Y = 100.0d;
    private static final double XYZ_WHITE_REFERENCE_Z = 108.883d;

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public static class Api26Impl {
        private Api26Impl() {
        }

        public static Color compositeColors(Color color, Color color2) {
            if (!Objects.equals(color.getModel(), color2.getModel())) {
                throw new IllegalArgumentException("Color models must match (" + color.getModel() + " vs. " + color2.getModel() + ")");
            }
            if (!Objects.equals(color2.getColorSpace(), color.getColorSpace())) {
                color = color.convert(color2.getColorSpace());
            }
            float[] components = color.getComponents();
            float[] components2 = color2.getComponents();
            float fAlpha = color.alpha();
            float fAlpha2 = (1.0f - fAlpha) * color2.alpha();
            int componentCount = color2.getComponentCount() - 1;
            float f = fAlpha + fAlpha2;
            components2[componentCount] = f;
            if (f > 0.0f) {
                fAlpha /= f;
                fAlpha2 /= f;
            }
            for (int i3 = 0; i3 < componentCount; i3++) {
                components2[i3] = (components2[i3] * fAlpha2) + (components[i3] * fAlpha);
            }
            return Color.valueOf(components2, color2.getColorSpace());
        }
    }

    private ColorUtils() {
    }

    public static int HSLToColor(float[] fArr) {
        int iRound;
        int iRound2;
        int iRound3;
        float f = fArr[0];
        float f3 = fArr[1];
        float f4 = fArr[2];
        float fAbs = (1.0f - Math.abs((f4 * 2.0f) - 1.0f)) * f3;
        float f5 = f4 - (0.5f * fAbs);
        float fAbs2 = (1.0f - Math.abs(((f / 60.0f) % 2.0f) - 1.0f)) * fAbs;
        switch (((int) f) / 60) {
            case 0:
                iRound = Math.round((fAbs + f5) * 255.0f);
                iRound2 = Math.round((fAbs2 + f5) * 255.0f);
                iRound3 = Math.round(f5 * 255.0f);
                break;
            case 1:
                iRound = Math.round((fAbs2 + f5) * 255.0f);
                iRound2 = Math.round((fAbs + f5) * 255.0f);
                iRound3 = Math.round(f5 * 255.0f);
                break;
            case 2:
                iRound = Math.round(f5 * 255.0f);
                iRound2 = Math.round((fAbs + f5) * 255.0f);
                iRound3 = Math.round((fAbs2 + f5) * 255.0f);
                break;
            case 3:
                iRound = Math.round(f5 * 255.0f);
                iRound2 = Math.round((fAbs2 + f5) * 255.0f);
                iRound3 = Math.round((fAbs + f5) * 255.0f);
                break;
            case 4:
                iRound = Math.round((fAbs2 + f5) * 255.0f);
                iRound2 = Math.round(f5 * 255.0f);
                iRound3 = Math.round((fAbs + f5) * 255.0f);
                break;
            case 5:
            case 6:
                iRound = Math.round((fAbs + f5) * 255.0f);
                iRound2 = Math.round(f5 * 255.0f);
                iRound3 = Math.round((fAbs2 + f5) * 255.0f);
                break;
            default:
                iRound3 = 0;
                iRound = 0;
                iRound2 = 0;
                break;
        }
        return Color.rgb(constrain(iRound, 0, 255), constrain(iRound2, 0, 255), constrain(iRound3, 0, 255));
    }

    public static int LABToColor(double d3, double d4, double d5) {
        double[] tempDouble3Array = getTempDouble3Array();
        LABToXYZ(d3, d4, d5, tempDouble3Array);
        return XYZToColor(tempDouble3Array[0], tempDouble3Array[1], tempDouble3Array[2]);
    }

    public static void LABToXYZ(double d3, double d4, double d5, double[] dArr) {
        double d6 = (d3 + 16.0d) / 116.0d;
        double d7 = (d4 / 500.0d) + d6;
        double d8 = d6 - (d5 / 200.0d);
        double dPow = Math.pow(d7, 3.0d);
        if (dPow <= XYZ_EPSILON) {
            dPow = ((d7 * 116.0d) - 16.0d) / XYZ_KAPPA;
        }
        double dPow2 = d3 > 7.9996247999999985d ? Math.pow(d6, 3.0d) : d3 / XYZ_KAPPA;
        double dPow3 = Math.pow(d8, 3.0d);
        if (dPow3 <= XYZ_EPSILON) {
            dPow3 = ((d8 * 116.0d) - 16.0d) / XYZ_KAPPA;
        }
        dArr[0] = dPow * XYZ_WHITE_REFERENCE_X;
        dArr[1] = dPow2 * XYZ_WHITE_REFERENCE_Y;
        dArr[2] = dPow3 * XYZ_WHITE_REFERENCE_Z;
    }

    public static int M3HCTToColor(float f, float f3, float f4) {
        return CamColor.toColor(f, f3, f4);
    }

    public static void RGBToHSL(int i3, int i4, int i5, float[] fArr) {
        float f;
        float fAbs;
        float f3 = i3 / 255.0f;
        float f4 = i4 / 255.0f;
        float f5 = i5 / 255.0f;
        float fMax = Math.max(f3, Math.max(f4, f5));
        float fMin = Math.min(f3, Math.min(f4, f5));
        float f6 = fMax - fMin;
        float f7 = (fMax + fMin) / 2.0f;
        if (fMax == fMin) {
            f = 0.0f;
            fAbs = 0.0f;
        } else {
            if (fMax == f3) {
                f = ((f4 - f5) / f6) % 6.0f;
            } else {
                f = fMax == f4 ? ((f5 - f3) / f6) + 2.0f : 4.0f + ((f3 - f4) / f6);
            }
            fAbs = f6 / (1.0f - Math.abs((2.0f * f7) - 1.0f));
        }
        float f8 = (f * 60.0f) % 360.0f;
        if (f8 < 0.0f) {
            f8 += 360.0f;
        }
        fArr[0] = constrain(f8, 0.0f, 360.0f);
        fArr[1] = constrain(fAbs, 0.0f, 1.0f);
        fArr[2] = constrain(f7, 0.0f, 1.0f);
    }

    public static void RGBToLAB(int i3, int i4, int i5, double[] dArr) {
        RGBToXYZ(i3, i4, i5, dArr);
        XYZToLAB(dArr[0], dArr[1], dArr[2], dArr);
    }

    public static void RGBToXYZ(int i3, int i4, int i5, double[] dArr) {
        if (dArr.length != 3) {
            throw new IllegalArgumentException("outXyz must have a length of 3.");
        }
        double d3 = ((double) i3) / 255.0d;
        double dPow = d3 < 0.04045d ? d3 / 12.92d : Math.pow((d3 + 0.055d) / 1.055d, 2.4d);
        double d4 = ((double) i4) / 255.0d;
        double dPow2 = d4 < 0.04045d ? d4 / 12.92d : Math.pow((d4 + 0.055d) / 1.055d, 2.4d);
        double d5 = ((double) i5) / 255.0d;
        double dPow3 = d5 < 0.04045d ? d5 / 12.92d : Math.pow((d5 + 0.055d) / 1.055d, 2.4d);
        dArr[0] = ((0.1805d * dPow3) + (0.3576d * dPow2) + (0.4124d * dPow)) * XYZ_WHITE_REFERENCE_Y;
        dArr[1] = ((0.0722d * dPow3) + (0.7152d * dPow2) + (0.2126d * dPow)) * XYZ_WHITE_REFERENCE_Y;
        dArr[2] = ((dPow3 * 0.9505d) + (dPow2 * 0.1192d) + (dPow * 0.0193d)) * XYZ_WHITE_REFERENCE_Y;
    }

    public static int XYZToColor(double d3, double d4, double d5) {
        double d6 = (((-0.4986d) * d5) + (((-1.5372d) * d4) + (3.2406d * d3))) / XYZ_WHITE_REFERENCE_Y;
        double d7 = ((0.0415d * d5) + ((1.8758d * d4) + ((-0.9689d) * d3))) / XYZ_WHITE_REFERENCE_Y;
        double d8 = ((1.057d * d5) + (((-0.204d) * d4) + (0.0557d * d3))) / XYZ_WHITE_REFERENCE_Y;
        return Color.rgb(constrain((int) Math.round((d6 > 0.0031308d ? (Math.pow(d6, 0.4166666666666667d) * 1.055d) - 0.055d : d6 * 12.92d) * 255.0d), 0, 255), constrain((int) Math.round((d7 > 0.0031308d ? (Math.pow(d7, 0.4166666666666667d) * 1.055d) - 0.055d : d7 * 12.92d) * 255.0d), 0, 255), constrain((int) Math.round((d8 > 0.0031308d ? (Math.pow(d8, 0.4166666666666667d) * 1.055d) - 0.055d : d8 * 12.92d) * 255.0d), 0, 255));
    }

    public static void XYZToLAB(double d3, double d4, double d5, double[] dArr) {
        if (dArr.length != 3) {
            throw new IllegalArgumentException("outLab must have a length of 3.");
        }
        double dPivotXyzComponent = pivotXyzComponent(d3 / XYZ_WHITE_REFERENCE_X);
        double dPivotXyzComponent2 = pivotXyzComponent(d4 / XYZ_WHITE_REFERENCE_Y);
        double dPivotXyzComponent3 = pivotXyzComponent(d5 / XYZ_WHITE_REFERENCE_Z);
        dArr[0] = Math.max(0.0d, (116.0d * dPivotXyzComponent2) - 16.0d);
        dArr[1] = (dPivotXyzComponent - dPivotXyzComponent2) * 500.0d;
        dArr[2] = (dPivotXyzComponent2 - dPivotXyzComponent3) * 200.0d;
    }

    public static int blendARGB(int i3, int i4, float f) {
        float f3 = 1.0f - f;
        return Color.argb((int) ((Color.alpha(i4) * f) + (Color.alpha(i3) * f3)), (int) ((Color.red(i4) * f) + (Color.red(i3) * f3)), (int) ((Color.green(i4) * f) + (Color.green(i3) * f3)), (int) ((Color.blue(i4) * f) + (Color.blue(i3) * f3)));
    }

    public static void blendHSL(float[] fArr, float[] fArr2, float f, float[] fArr3) {
        if (fArr3.length != 3) {
            throw new IllegalArgumentException("result must have a length of 3.");
        }
        float f3 = 1.0f - f;
        fArr3[0] = circularInterpolate(fArr[0], fArr2[0], f);
        fArr3[1] = (fArr2[1] * f) + (fArr[1] * f3);
        fArr3[2] = (fArr2[2] * f) + (fArr[2] * f3);
    }

    public static void blendLAB(double[] dArr, double[] dArr2, double d3, double[] dArr3) {
        if (dArr3.length != 3) {
            throw new IllegalArgumentException("outResult must have a length of 3.");
        }
        double d4 = 1.0d - d3;
        dArr3[0] = (dArr2[0] * d3) + (dArr[0] * d4);
        dArr3[1] = (dArr2[1] * d3) + (dArr[1] * d4);
        dArr3[2] = (dArr2[2] * d3) + (dArr[2] * d4);
    }

    public static double calculateContrast(int i3, int i4) {
        if (Color.alpha(i4) != 255) {
            throw new IllegalArgumentException("background can not be translucent: #" + Integer.toHexString(i4));
        }
        if (Color.alpha(i3) < 255) {
            i3 = compositeColors(i3, i4);
        }
        double dCalculateLuminance = calculateLuminance(i3) + 0.05d;
        double dCalculateLuminance2 = calculateLuminance(i4) + 0.05d;
        return Math.max(dCalculateLuminance, dCalculateLuminance2) / Math.min(dCalculateLuminance, dCalculateLuminance2);
    }

    public static double calculateLuminance(int i3) {
        double[] tempDouble3Array = getTempDouble3Array();
        colorToXYZ(i3, tempDouble3Array);
        return tempDouble3Array[1] / XYZ_WHITE_REFERENCE_Y;
    }

    public static int calculateMinimumAlpha(int i3, int i4, float f) {
        int i5 = 255;
        if (Color.alpha(i4) != 255) {
            throw new IllegalArgumentException("background can not be translucent: #" + Integer.toHexString(i4));
        }
        double d3 = f;
        if (calculateContrast(setAlphaComponent(i3, 255), i4) < d3) {
            return -1;
        }
        int i6 = 0;
        for (int i7 = 0; i7 <= 10 && i5 - i6 > 1; i7++) {
            int i8 = (i6 + i5) / 2;
            if (calculateContrast(setAlphaComponent(i3, i8), i4) < d3) {
                i6 = i8;
            } else {
                i5 = i8;
            }
        }
        return i5;
    }

    public static float circularInterpolate(float f, float f3, float f4) {
        if (Math.abs(f3 - f) > 180.0f) {
            if (f3 > f) {
                f += 360.0f;
            } else {
                f3 += 360.0f;
            }
        }
        return (((f3 - f) * f4) + f) % 360.0f;
    }

    public static void colorToHSL(int i3, float[] fArr) {
        RGBToHSL(Color.red(i3), Color.green(i3), Color.blue(i3), fArr);
    }

    public static void colorToLAB(int i3, double[] dArr) {
        RGBToLAB(Color.red(i3), Color.green(i3), Color.blue(i3), dArr);
    }

    public static void colorToM3HCT(int i3, float[] fArr) {
        CamColor.getM3HCTfromColor(i3, fArr);
    }

    public static void colorToXYZ(int i3, double[] dArr) {
        RGBToXYZ(Color.red(i3), Color.green(i3), Color.blue(i3), dArr);
    }

    private static int compositeAlpha(int i3, int i4) {
        return 255 - (((255 - i3) * (255 - i4)) / 255);
    }

    public static int compositeColors(int i3, int i4) {
        int iAlpha = Color.alpha(i4);
        int iAlpha2 = Color.alpha(i3);
        int iCompositeAlpha = compositeAlpha(iAlpha2, iAlpha);
        return Color.argb(iCompositeAlpha, compositeComponent(Color.red(i3), iAlpha2, Color.red(i4), iAlpha, iCompositeAlpha), compositeComponent(Color.green(i3), iAlpha2, Color.green(i4), iAlpha, iCompositeAlpha), compositeComponent(Color.blue(i3), iAlpha2, Color.blue(i4), iAlpha, iCompositeAlpha));
    }

    private static int compositeComponent(int i3, int i4, int i5, int i6, int i7) {
        if (i7 == 0) {
            return 0;
        }
        return (((255 - i4) * (i5 * i6)) + ((i3 * 255) * i4)) / (i7 * 255);
    }

    private static float constrain(float f, float f3, float f4) {
        return f < f3 ? f3 : Math.min(f, f4);
    }

    public static double distanceEuclidean(double[] dArr, double[] dArr2) {
        return Math.sqrt(Math.pow(dArr[2] - dArr2[2], 2.0d) + Math.pow(dArr[1] - dArr2[1], 2.0d) + Math.pow(dArr[0] - dArr2[0], 2.0d));
    }

    private static double[] getTempDouble3Array() {
        ThreadLocal<double[]> threadLocal = TEMP_ARRAY;
        double[] dArr = threadLocal.get();
        if (dArr != null) {
            return dArr;
        }
        double[] dArr2 = new double[3];
        threadLocal.set(dArr2);
        return dArr2;
    }

    private static double pivotXyzComponent(double d3) {
        return d3 > XYZ_EPSILON ? Math.pow(d3, 0.3333333333333333d) : ((d3 * XYZ_KAPPA) + 16.0d) / 116.0d;
    }

    public static int setAlphaComponent(int i3, int i4) {
        if (i4 < 0 || i4 > 255) {
            throw new IllegalArgumentException("alpha must be between 0 and 255.");
        }
        return (i3 & ViewCompat.MEASURED_SIZE_MASK) | (i4 << 24);
    }

    private static int constrain(int i3, int i4, int i5) {
        return i3 < i4 ? i4 : Math.min(i3, i5);
    }

    public static Color compositeColors(Color color, Color color2) {
        return Api26Impl.compositeColors(color, color2);
    }
}
