package androidx.core.content.res;

import androidx.core.graphics.ColorUtils;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class CamColor {
    private static final float CHROMA_SEARCH_ENDPOINT = 0.4f;
    private static final float DE_MAX = 1.0f;
    private static final float DL_MAX = 0.2f;
    private static final float LIGHTNESS_SEARCH_ENDPOINT = 0.01f;
    private final float mAstar;
    private final float mBstar;
    private final float mChroma;
    private final float mHue;
    private final float mJ;
    private final float mJstar;
    private final float mM;
    private final float mQ;
    private final float mS;

    public CamColor(float f, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10) {
        this.mHue = f;
        this.mChroma = f3;
        this.mJ = f4;
        this.mQ = f5;
        this.mM = f6;
        this.mS = f7;
        this.mJstar = f8;
        this.mAstar = f9;
        this.mBstar = f10;
    }

    private static CamColor findCamByJ(float f, float f3, float f4) {
        float f5 = 100.0f;
        float f6 = 1000.0f;
        float f7 = 0.0f;
        CamColor camColor = null;
        float f8 = 1000.0f;
        while (Math.abs(f7 - f5) > LIGHTNESS_SEARCH_ENDPOINT) {
            float f9 = ((f5 - f7) / 2.0f) + f7;
            int iViewedInSrgb = fromJch(f9, f3, f).viewedInSrgb();
            float fLStarFromInt = CamUtils.lStarFromInt(iViewedInSrgb);
            float fAbs = Math.abs(f4 - fLStarFromInt);
            if (fAbs < DL_MAX) {
                CamColor camColorFromColor = fromColor(iViewedInSrgb);
                float fDistance = camColorFromColor.distance(fromJch(camColorFromColor.getJ(), camColorFromColor.getChroma(), f));
                if (fDistance <= DE_MAX) {
                    camColor = camColorFromColor;
                    f6 = fAbs;
                    f8 = fDistance;
                }
            }
            if (f6 == 0.0f && f8 == 0.0f) {
                return camColor;
            }
            if (fLStarFromInt < f4) {
                f7 = f9;
            } else {
                f5 = f9;
            }
        }
        return camColor;
    }

    public static CamColor fromColor(int i3) {
        float[] fArr = new float[7];
        float[] fArr2 = new float[3];
        fromColorInViewingConditions(i3, ViewingConditions.DEFAULT, fArr, fArr2);
        return new CamColor(fArr2[0], fArr2[1], fArr[0], fArr[1], fArr[2], fArr[3], fArr[4], fArr[5], fArr[6]);
    }

    public static void fromColorInViewingConditions(int i3, ViewingConditions viewingConditions, float[] fArr, float[] fArr2) {
        CamUtils.xyzFromInt(i3, fArr2);
        float[][] fArr3 = CamUtils.XYZ_TO_CAM16RGB;
        float f = fArr2[0];
        float[] fArr4 = fArr3[0];
        float f3 = fArr4[0] * f;
        float f4 = fArr2[1];
        float f5 = (fArr4[1] * f4) + f3;
        float f6 = fArr2[2];
        float f7 = (fArr4[2] * f6) + f5;
        float[] fArr5 = fArr3[1];
        float f8 = (fArr5[2] * f6) + (fArr5[1] * f4) + (fArr5[0] * f);
        float[] fArr6 = fArr3[2];
        float f9 = (f6 * fArr6[2]) + (f4 * fArr6[1]) + (f * fArr6[0]);
        float f10 = viewingConditions.getRgbD()[0] * f7;
        float f11 = viewingConditions.getRgbD()[1] * f8;
        float f12 = viewingConditions.getRgbD()[2] * f9;
        float fPow = (float) Math.pow(((double) (Math.abs(f10) * viewingConditions.getFl())) / 100.0d, 0.42d);
        float fPow2 = (float) Math.pow(((double) (Math.abs(f11) * viewingConditions.getFl())) / 100.0d, 0.42d);
        float fPow3 = (float) Math.pow(((double) (Math.abs(f12) * viewingConditions.getFl())) / 100.0d, 0.42d);
        float fSignum = ((Math.signum(f10) * 400.0f) * fPow) / (fPow + 27.13f);
        float fSignum2 = ((Math.signum(f11) * 400.0f) * fPow2) / (fPow2 + 27.13f);
        float fSignum3 = ((Math.signum(f12) * 400.0f) * fPow3) / (fPow3 + 27.13f);
        double d3 = fSignum3;
        float f13 = ((float) (((((double) fSignum2) * (-12.0d)) + (((double) fSignum) * 11.0d)) + d3)) / 11.0f;
        float f14 = ((float) (((double) (fSignum + fSignum2)) - (d3 * 2.0d))) / 9.0f;
        float f15 = fSignum2 * 20.0f;
        float f16 = ((21.0f * fSignum3) + ((fSignum * 20.0f) + f15)) / 20.0f;
        float f17 = (((fSignum * 40.0f) + f15) + fSignum3) / 20.0f;
        float fAtan2 = (((float) Math.atan2(f14, f13)) * 180.0f) / 3.1415927f;
        if (fAtan2 < 0.0f) {
            fAtan2 += 360.0f;
        } else if (fAtan2 >= 360.0f) {
            fAtan2 -= 360.0f;
        }
        float f18 = (3.1415927f * fAtan2) / 180.0f;
        float fPow4 = ((float) Math.pow((f17 * viewingConditions.getNbb()) / viewingConditions.getAw(), viewingConditions.getC() * viewingConditions.getZ())) * 100.0f;
        float aw = (viewingConditions.getAw() + 4.0f) * (4.0f / viewingConditions.getC()) * ((float) Math.sqrt(fPow4 / 100.0f)) * viewingConditions.getFlRoot();
        float fPow5 = ((float) Math.pow(1.64d - Math.pow(0.29d, viewingConditions.getN()), 0.73d)) * ((float) Math.pow((((((((float) (Math.cos(((((double) (((double) fAtan2) < 20.14d ? fAtan2 + 360.0f : fAtan2)) * 3.141592653589793d) / 180.0d) + 2.0d) + 3.8d)) * 0.25f) * 3846.1538f) * viewingConditions.getNc()) * viewingConditions.getNcb()) * ((float) Math.sqrt((f14 * f14) + (f13 * f13)))) / (f16 + 0.305f), 0.9d));
        float fSqrt = ((float) Math.sqrt(((double) fPow4) / 100.0d)) * fPow5;
        float flRoot = viewingConditions.getFlRoot() * fSqrt;
        float fSqrt2 = ((float) Math.sqrt((fPow5 * viewingConditions.getC()) / (viewingConditions.getAw() + 4.0f))) * 50.0f;
        float f19 = (1.7f * fPow4) / ((0.007f * fPow4) + DE_MAX);
        float fLog = ((float) Math.log((0.0228f * flRoot) + DE_MAX)) * 43.85965f;
        double d4 = f18;
        float fCos = ((float) Math.cos(d4)) * fLog;
        float fSin = fLog * ((float) Math.sin(d4));
        fArr2[0] = fAtan2;
        fArr2[1] = fSqrt;
        if (fArr != null) {
            fArr[0] = fPow4;
            fArr[1] = aw;
            fArr[2] = flRoot;
            fArr[3] = fSqrt2;
            fArr[4] = f19;
            fArr[5] = fCos;
            fArr[6] = fSin;
        }
    }

    private static CamColor fromJch(float f, float f3, float f4) {
        return fromJchInFrame(f, f3, f4, ViewingConditions.DEFAULT);
    }

    private static CamColor fromJchInFrame(float f, float f3, float f4, ViewingConditions viewingConditions) {
        double d3 = ((double) f) / 100.0d;
        float aw = (viewingConditions.getAw() + 4.0f) * (4.0f / viewingConditions.getC()) * ((float) Math.sqrt(d3)) * viewingConditions.getFlRoot();
        float flRoot = viewingConditions.getFlRoot() * f3;
        float fSqrt = ((float) Math.sqrt(((f3 / ((float) Math.sqrt(d3))) * viewingConditions.getC()) / (viewingConditions.getAw() + 4.0f))) * 50.0f;
        float f5 = (1.7f * f) / ((0.007f * f) + DE_MAX);
        float fLog = ((float) Math.log((((double) flRoot) * 0.0228d) + 1.0d)) * 43.85965f;
        double d4 = (3.1415927f * f4) / 180.0f;
        return new CamColor(f4, f3, f, aw, flRoot, fSqrt, f5, ((float) Math.cos(d4)) * fLog, fLog * ((float) Math.sin(d4)));
    }

    public static void getM3HCTfromColor(int i3, float[] fArr) {
        fromColorInViewingConditions(i3, ViewingConditions.DEFAULT, null, fArr);
        fArr[2] = CamUtils.lStarFromInt(i3);
    }

    public static int toColor(float f, float f3, float f4) {
        return toColor(f, f3, f4, ViewingConditions.DEFAULT);
    }

    public float distance(CamColor camColor) {
        float jStar = getJStar() - camColor.getJStar();
        float aStar = getAStar() - camColor.getAStar();
        float bStar = getBStar() - camColor.getBStar();
        return (float) (Math.pow(Math.sqrt((bStar * bStar) + (aStar * aStar) + (jStar * jStar)), 0.63d) * 1.41d);
    }

    public float getAStar() {
        return this.mAstar;
    }

    public float getBStar() {
        return this.mBstar;
    }

    public float getChroma() {
        return this.mChroma;
    }

    public float getHue() {
        return this.mHue;
    }

    public float getJ() {
        return this.mJ;
    }

    public float getJStar() {
        return this.mJstar;
    }

    public float getM() {
        return this.mM;
    }

    public float getQ() {
        return this.mQ;
    }

    public float getS() {
        return this.mS;
    }

    public int viewed(ViewingConditions viewingConditions) {
        float fPow = (float) Math.pow(((double) ((((double) getChroma()) == 0.0d || ((double) getJ()) == 0.0d) ? 0.0f : getChroma() / ((float) Math.sqrt(((double) getJ()) / 100.0d)))) / Math.pow(1.64d - Math.pow(0.29d, viewingConditions.getN()), 0.73d), 1.1111111111111112d);
        double hue = (getHue() * 3.1415927f) / 180.0f;
        float fCos = ((float) (Math.cos(2.0d + hue) + 3.8d)) * 0.25f;
        float aw = viewingConditions.getAw() * ((float) Math.pow(((double) getJ()) / 100.0d, (1.0d / ((double) viewingConditions.getC())) / ((double) viewingConditions.getZ())));
        float nc = fCos * 3846.1538f * viewingConditions.getNc() * viewingConditions.getNcb();
        float nbb = aw / viewingConditions.getNbb();
        float fSin = (float) Math.sin(hue);
        float fCos2 = (float) Math.cos(hue);
        float f = (((0.305f + nbb) * 23.0f) * fPow) / (((fPow * 108.0f) * fSin) + (((11.0f * fPow) * fCos2) + (nc * 23.0f)));
        float f3 = fCos2 * f;
        float f4 = f * fSin;
        float f5 = nbb * 460.0f;
        float f6 = ((288.0f * f4) + ((451.0f * f3) + f5)) / 1403.0f;
        float f7 = ((f5 - (891.0f * f3)) - (261.0f * f4)) / 1403.0f;
        float f8 = ((f5 - (f3 * 220.0f)) - (f4 * 6300.0f)) / 1403.0f;
        float fl = (100.0f / viewingConditions.getFl()) * Math.signum(f6) * ((float) Math.pow((float) Math.max(0.0d, (((double) Math.abs(f6)) * 27.13d) / (400.0d - ((double) Math.abs(f6)))), 2.380952380952381d));
        float fl2 = (100.0f / viewingConditions.getFl()) * Math.signum(f7) * ((float) Math.pow((float) Math.max(0.0d, (((double) Math.abs(f7)) * 27.13d) / (400.0d - ((double) Math.abs(f7)))), 2.380952380952381d));
        float fl3 = (100.0f / viewingConditions.getFl()) * Math.signum(f8) * ((float) Math.pow((float) Math.max(0.0d, (((double) Math.abs(f8)) * 27.13d) / (400.0d - ((double) Math.abs(f8)))), 2.380952380952381d));
        float f9 = fl / viewingConditions.getRgbD()[0];
        float f10 = fl2 / viewingConditions.getRgbD()[1];
        float f11 = fl3 / viewingConditions.getRgbD()[2];
        float[][] fArr = CamUtils.CAM16RGB_TO_XYZ;
        float[] fArr2 = fArr[0];
        float f12 = (fArr2[2] * f11) + (fArr2[1] * f10) + (fArr2[0] * f9);
        float[] fArr3 = fArr[1];
        float f13 = (fArr3[2] * f11) + (fArr3[1] * f10) + (fArr3[0] * f9);
        float[] fArr4 = fArr[2];
        return ColorUtils.XYZToColor(f12, f13, (f11 * fArr4[2]) + (f10 * fArr4[1]) + (f9 * fArr4[0]));
    }

    public int viewedInSrgb() {
        return viewed(ViewingConditions.DEFAULT);
    }

    public static int toColor(float f, float f3, float f4, ViewingConditions viewingConditions) {
        if (f3 < 1.0d || Math.round(f4) <= 0.0d || Math.round(f4) >= 100.0d) {
            return CamUtils.intFromLStar(f4);
        }
        float fMin = f < 0.0f ? 0.0f : Math.min(360.0f, f);
        CamColor camColor = null;
        boolean z2 = true;
        float f5 = 0.0f;
        float f6 = f3;
        while (Math.abs(f5 - f3) >= CHROMA_SEARCH_ENDPOINT) {
            CamColor camColorFindCamByJ = findCamByJ(fMin, f6, f4);
            if (!z2) {
                if (camColorFindCamByJ == null) {
                    f3 = f6;
                } else {
                    f5 = f6;
                    camColor = camColorFindCamByJ;
                }
                f6 = ((f3 - f5) / 2.0f) + f5;
            } else {
                if (camColorFindCamByJ != null) {
                    return camColorFindCamByJ.viewed(viewingConditions);
                }
                f6 = ((f3 - f5) / 2.0f) + f5;
                z2 = false;
            }
        }
        return camColor == null ? CamUtils.intFromLStar(f4) : camColor.viewed(viewingConditions);
    }
}
