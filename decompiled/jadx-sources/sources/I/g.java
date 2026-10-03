package I;

import android.content.res.AssetManager;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.system.OsConstants;
import android.util.Log;
import androidx.core.view.InputDeviceCompat;
import java.io.BufferedInputStream;
import java.io.EOFException;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.regex.Pattern;
import java.util.zip.CRC32;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public static final String[] f1112D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public static final int[] f1113E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public static final byte[] f1114F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final d f1115G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final d[][] f1116H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final d[] f1117I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final HashMap[] f1118J;
    public static final HashMap[] K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final HashSet f1119L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final HashMap f1120M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public static final Charset f1121N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public static final byte[] f1122O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public static final byte[] f1123P;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FileDescriptor f1139a;
    public final AssetManager.AssetInputStream b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1140c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final HashMap[] f1141d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HashSet f1142e;
    public ByteOrder f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f1143h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f1144i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f1145j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f1146k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final boolean f1124l = Log.isLoggable("ExifInterface", 3);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final List f1125m = Arrays.asList(1, 6, 3, 8);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final List f1126n = Arrays.asList(2, 7, 4, 5);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int[] f1127o = {8, 8, 8};

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int[] f1128p = {8};

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final byte[] f1129q = {-1, -40, -1};

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final byte[] f1130r = {102, 116, 121, 112};

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final byte[] f1131s = {109, 105, 102, 49};

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final byte[] f1132t = {104, 101, 105, 99};

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final byte[] f1133u = {79, 76, 89, 77, 80, 0};

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final byte[] f1134v = {79, 76, 89, 77, 80, 85, 83, 0, 73, 73};

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final byte[] f1135w = {-119, 80, 78, 71, 13, 10, 26, 10};

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final byte[] f1136x = {101, 88, 73, 102};

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final byte[] f1137y = {73, 72, 68, 82};

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final byte[] f1138z = {73, 69, 78, 68};

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public static final byte[] f1109A = {82, 73, 70, 70};

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public static final byte[] f1110B = {87, 69, 66, 80};

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public static final byte[] f1111C = {69, 88, 73, 70};

    static {
        "VP8X".getBytes(Charset.defaultCharset());
        "VP8L".getBytes(Charset.defaultCharset());
        "VP8 ".getBytes(Charset.defaultCharset());
        "ANIM".getBytes(Charset.defaultCharset());
        "ANMF".getBytes(Charset.defaultCharset());
        f1112D = new String[]{"", "BYTE", "STRING", "USHORT", "ULONG", "URATIONAL", "SBYTE", "UNDEFINED", "SSHORT", "SLONG", "SRATIONAL", "SINGLE", "DOUBLE", "IFD"};
        f1113E = new int[]{0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8, 1};
        f1114F = new byte[]{65, 83, 67, 73, 73, 0, 0, 0};
        d[] dVarArr = {new d("NewSubfileType", 254, 4), new d("SubfileType", 255, 4), new d("ImageWidth", 256, 3, 4), new d("ImageLength", InputDeviceCompat.SOURCE_KEYBOARD, 3, 4), new d("BitsPerSample", 258, 3), new d("Compression", 259, 3), new d("PhotometricInterpretation", 262, 3), new d("ImageDescription", 270, 2), new d("Make", 271, 2), new d("Model", 272, 2), new d("StripOffsets", 273, 3, 4), new d("Orientation", 274, 3), new d("SamplesPerPixel", 277, 3), new d("RowsPerStrip", 278, 3, 4), new d("StripByteCounts", 279, 3, 4), new d("XResolution", 282, 5), new d("YResolution", 283, 5), new d("PlanarConfiguration", 284, 3), new d("ResolutionUnit", 296, 3), new d("TransferFunction", 301, 3), new d("Software", 305, 2), new d("DateTime", 306, 2), new d("Artist", 315, 2), new d("WhitePoint", 318, 5), new d("PrimaryChromaticities", 319, 5), new d("SubIFDPointer", 330, 4), new d("JPEGInterchangeFormat", InputDeviceCompat.SOURCE_DPAD, 4), new d("JPEGInterchangeFormatLength", 514, 4), new d("YCbCrCoefficients", 529, 5), new d("YCbCrSubSampling", 530, 3), new d("YCbCrPositioning", 531, 3), new d("ReferenceBlackWhite", 532, 5), new d("Copyright", 33432, 2), new d("ExifIFDPointer", 34665, 4), new d("GPSInfoIFDPointer", 34853, 4), new d("SensorTopBorder", 4, 4), new d("SensorLeftBorder", 5, 4), new d("SensorBottomBorder", 6, 4), new d("SensorRightBorder", 7, 4), new d("ISO", 23, 3), new d("JpgFromRaw", 46, 7), new d("Xmp", 700, 1)};
        d[] dVarArr2 = {new d("ExposureTime", 33434, 5), new d("FNumber", 33437, 5), new d("ExposureProgram", 34850, 3), new d("SpectralSensitivity", 34852, 2), new d("PhotographicSensitivity", 34855, 3), new d("OECF", 34856, 7), new d("SensitivityType", 34864, 3), new d("StandardOutputSensitivity", 34865, 4), new d("RecommendedExposureIndex", 34866, 4), new d("ISOSpeed", 34867, 4), new d("ISOSpeedLatitudeyyy", 34868, 4), new d("ISOSpeedLatitudezzz", 34869, 4), new d("ExifVersion", 36864, 2), new d("DateTimeOriginal", 36867, 2), new d("DateTimeDigitized", 36868, 2), new d("OffsetTime", 36880, 2), new d("OffsetTimeOriginal", 36881, 2), new d("OffsetTimeDigitized", 36882, 2), new d("ComponentsConfiguration", 37121, 7), new d("CompressedBitsPerPixel", 37122, 5), new d("ShutterSpeedValue", 37377, 10), new d("ApertureValue", 37378, 5), new d("BrightnessValue", 37379, 10), new d("ExposureBiasValue", 37380, 10), new d("MaxApertureValue", 37381, 5), new d("SubjectDistance", 37382, 5), new d("MeteringMode", 37383, 3), new d("LightSource", 37384, 3), new d("Flash", 37385, 3), new d("FocalLength", 37386, 5), new d("SubjectArea", 37396, 3), new d("MakerNote", 37500, 7), new d("UserComment", 37510, 7), new d("SubSecTime", 37520, 2), new d("SubSecTimeOriginal", 37521, 2), new d("SubSecTimeDigitized", 37522, 2), new d("FlashpixVersion", 40960, 7), new d("ColorSpace", 40961, 3), new d("PixelXDimension", 40962, 3, 4), new d("PixelYDimension", 40963, 3, 4), new d("RelatedSoundFile", 40964, 2), new d("InteroperabilityIFDPointer", 40965, 4), new d("FlashEnergy", 41483, 5), new d("SpatialFrequencyResponse", 41484, 7), new d("FocalPlaneXResolution", 41486, 5), new d("FocalPlaneYResolution", 41487, 5), new d("FocalPlaneResolutionUnit", 41488, 3), new d("SubjectLocation", 41492, 3), new d("ExposureIndex", 41493, 5), new d("SensingMethod", 41495, 3), new d("FileSource", 41728, 7), new d("SceneType", 41729, 7), new d("CFAPattern", 41730, 7), new d("CustomRendered", 41985, 3), new d("ExposureMode", 41986, 3), new d("WhiteBalance", 41987, 3), new d("DigitalZoomRatio", 41988, 5), new d("FocalLengthIn35mmFilm", 41989, 3), new d("SceneCaptureType", 41990, 3), new d("GainControl", 41991, 3), new d("Contrast", 41992, 3), new d("Saturation", 41993, 3), new d("Sharpness", 41994, 3), new d("DeviceSettingDescription", 41995, 7), new d("SubjectDistanceRange", 41996, 3), new d("ImageUniqueID", 42016, 2), new d("CameraOwnerName", 42032, 2), new d("BodySerialNumber", 42033, 2), new d("LensSpecification", 42034, 5), new d("LensMake", 42035, 2), new d("LensModel", 42036, 2), new d("Gamma", 42240, 5), new d("DNGVersion", 50706, 1), new d("DefaultCropSize", 50720, 3, 4)};
        d[] dVarArr3 = {new d("GPSVersionID", 0, 1), new d("GPSLatitudeRef", 1, 2), new d("GPSLatitude", 2, 5, 10), new d("GPSLongitudeRef", 3, 2), new d("GPSLongitude", 4, 5, 10), new d("GPSAltitudeRef", 5, 1), new d("GPSAltitude", 6, 5), new d("GPSTimeStamp", 7, 5), new d("GPSSatellites", 8, 2), new d("GPSStatus", 9, 2), new d("GPSMeasureMode", 10, 2), new d("GPSDOP", 11, 5), new d("GPSSpeedRef", 12, 2), new d("GPSSpeed", 13, 5), new d("GPSTrackRef", 14, 2), new d("GPSTrack", 15, 5), new d("GPSImgDirectionRef", 16, 2), new d("GPSImgDirection", 17, 5), new d("GPSMapDatum", 18, 2), new d("GPSDestLatitudeRef", 19, 2), new d("GPSDestLatitude", 20, 5), new d("GPSDestLongitudeRef", 21, 2), new d("GPSDestLongitude", 22, 5), new d("GPSDestBearingRef", 23, 2), new d("GPSDestBearing", 24, 5), new d("GPSDestDistanceRef", 25, 2), new d("GPSDestDistance", 26, 5), new d("GPSProcessingMethod", 27, 7), new d("GPSAreaInformation", 28, 7), new d("GPSDateStamp", 29, 2), new d("GPSDifferential", 30, 3), new d("GPSHPositioningError", 31, 5)};
        d[] dVarArr4 = {new d("InteroperabilityIndex", 1, 2)};
        d[] dVarArr5 = {new d("NewSubfileType", 254, 4), new d("SubfileType", 255, 4), new d("ThumbnailImageWidth", 256, 3, 4), new d("ThumbnailImageLength", InputDeviceCompat.SOURCE_KEYBOARD, 3, 4), new d("BitsPerSample", 258, 3), new d("Compression", 259, 3), new d("PhotometricInterpretation", 262, 3), new d("ImageDescription", 270, 2), new d("Make", 271, 2), new d("Model", 272, 2), new d("StripOffsets", 273, 3, 4), new d("ThumbnailOrientation", 274, 3), new d("SamplesPerPixel", 277, 3), new d("RowsPerStrip", 278, 3, 4), new d("StripByteCounts", 279, 3, 4), new d("XResolution", 282, 5), new d("YResolution", 283, 5), new d("PlanarConfiguration", 284, 3), new d("ResolutionUnit", 296, 3), new d("TransferFunction", 301, 3), new d("Software", 305, 2), new d("DateTime", 306, 2), new d("Artist", 315, 2), new d("WhitePoint", 318, 5), new d("PrimaryChromaticities", 319, 5), new d("SubIFDPointer", 330, 4), new d("JPEGInterchangeFormat", InputDeviceCompat.SOURCE_DPAD, 4), new d("JPEGInterchangeFormatLength", 514, 4), new d("YCbCrCoefficients", 529, 5), new d("YCbCrSubSampling", 530, 3), new d("YCbCrPositioning", 531, 3), new d("ReferenceBlackWhite", 532, 5), new d("Copyright", 33432, 2), new d("ExifIFDPointer", 34665, 4), new d("GPSInfoIFDPointer", 34853, 4), new d("DNGVersion", 50706, 1), new d("DefaultCropSize", 50720, 3, 4)};
        f1115G = new d("StripOffsets", 273, 3);
        f1116H = new d[][]{dVarArr, dVarArr2, dVarArr3, dVarArr4, dVarArr5, dVarArr, new d[]{new d("ThumbnailImage", 256, 7), new d("CameraSettingsIFDPointer", 8224, 4), new d("ImageProcessingIFDPointer", 8256, 4)}, new d[]{new d("PreviewImageStart", InputDeviceCompat.SOURCE_KEYBOARD, 4), new d("PreviewImageLength", 258, 4)}, new d[]{new d("AspectFrame", 4371, 3)}, new d[]{new d("ColorSpace", 55, 3)}};
        f1117I = new d[]{new d("SubIFDPointer", 330, 4), new d("ExifIFDPointer", 34665, 4), new d("GPSInfoIFDPointer", 34853, 4), new d("InteroperabilityIFDPointer", 40965, 4), new d("CameraSettingsIFDPointer", 8224, 1), new d("ImageProcessingIFDPointer", 8256, 1)};
        f1118J = new HashMap[10];
        K = new HashMap[10];
        f1119L = new HashSet(Arrays.asList("FNumber", "DigitalZoomRatio", "ExposureTime", "SubjectDistance", "GPSTimeStamp"));
        f1120M = new HashMap();
        Charset charsetForName = Charset.forName("US-ASCII");
        f1121N = charsetForName;
        f1122O = "Exif\u0000\u0000".getBytes(charsetForName);
        f1123P = "http://ns.adobe.com/xap/1.0/\u0000".getBytes(charsetForName);
        Locale locale = Locale.US;
        new SimpleDateFormat("yyyy:MM:dd HH:mm:ss", locale).setTimeZone(TimeZone.getTimeZone("UTC"));
        new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", locale).setTimeZone(TimeZone.getTimeZone("UTC"));
        int i3 = 0;
        while (true) {
            d[][] dVarArr6 = f1116H;
            if (i3 >= dVarArr6.length) {
                HashMap map = f1120M;
                d[] dVarArr7 = f1117I;
                map.put(Integer.valueOf(dVarArr7[0].f1105a), 5);
                map.put(Integer.valueOf(dVarArr7[1].f1105a), 1);
                map.put(Integer.valueOf(dVarArr7[2].f1105a), 2);
                map.put(Integer.valueOf(dVarArr7[3].f1105a), 3);
                map.put(Integer.valueOf(dVarArr7[4].f1105a), 7);
                map.put(Integer.valueOf(dVarArr7[5].f1105a), 8);
                Pattern.compile(".*[1-9].*");
                Pattern.compile("^(\\d{2}):(\\d{2}):(\\d{2})$");
                Pattern.compile("^(\\d{4}):(\\d{2}):(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$");
                Pattern.compile("^(\\d{4})-(\\d{2})-(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$");
                return;
            }
            f1118J[i3] = new HashMap();
            K[i3] = new HashMap();
            for (d dVar : dVarArr6[i3]) {
                f1118J[i3].put(Integer.valueOf(dVar.f1105a), dVar);
                K[i3].put(dVar.b, dVar);
            }
            i3++;
        }
    }

    /* JADX WARN: Code duplicated, block: B:53:0x00d8 A[Catch: all -> 0x005e, TRY_ENTER, TRY_LEAVE, TryCatch #3 {all -> 0x005e, blocks: (B:14:0x004f, B:16:0x0052, B:23:0x0067, B:29:0x0084, B:31:0x008f, B:39:0x00a5, B:34:0x0096, B:37:0x009e, B:38:0x00a2, B:40:0x00af, B:42:0x00b8, B:44:0x00be, B:46:0x00c4, B:48:0x00ca, B:53:0x00d8), top: B:65:0x004f }] */
    /* JADX WARN: Code duplicated, block: B:68:? A[RETURN, SYNTHETIC] */
    public g(InputStream inputStream) throws IOException {
        d[][] dVarArr = f1116H;
        this.f1141d = new HashMap[dVarArr.length];
        this.f1142e = new HashSet(dVarArr.length);
        this.f = ByteOrder.BIG_ENDIAN;
        boolean z2 = inputStream instanceof AssetManager.AssetInputStream;
        boolean z3 = f1124l;
        if (z2) {
            this.b = (AssetManager.AssetInputStream) inputStream;
            this.f1139a = null;
        } else if (inputStream instanceof FileInputStream) {
            FileInputStream fileInputStream = (FileInputStream) inputStream;
            try {
                h.c(fileInputStream.getFD(), 0L, OsConstants.SEEK_CUR);
                this.b = null;
                this.f1139a = fileInputStream.getFD();
            } catch (Exception unused) {
                if (z3) {
                    Log.d("ExifInterface", "The file descriptor for the given input is not seekable");
                }
                this.b = null;
                this.f1139a = null;
            }
        } else {
            this.b = null;
            this.f1139a = null;
        }
        for (int i3 = 0; i3 < dVarArr.length; i3++) {
            try {
                try {
                    this.f1141d[i3] = new HashMap();
                } catch (Throwable th) {
                    a();
                    if (z3) {
                        p();
                    }
                    throw th;
                }
            } catch (IOException e2) {
                e = e2;
                if (z3) {
                    Log.w("ExifInterface", "Invalid image: ExifInterface got an unsupported image format file(ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface.", e);
                }
                a();
                if (!z3) {
                    return;
                }
            } catch (UnsupportedOperationException e3) {
                e = e3;
                if (z3) {
                    Log.w("ExifInterface", "Invalid image: ExifInterface got an unsupported image format file(ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface.", e);
                }
                a();
                if (!z3) {
                    return;
                }
            }
        }
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream, 5000);
        int iF = f(bufferedInputStream);
        this.f1140c = iF;
        if (iF == 4 || iF == 9 || iF == 13 || iF == 14) {
            b bVar = new b(bufferedInputStream);
            int i4 = this.f1140c;
            if (i4 == 4) {
                e(bVar, 0, 0);
            } else if (i4 == 13) {
                h(bVar);
            } else if (i4 == 9) {
                i(bVar);
            } else if (i4 == 14) {
                l(bVar);
            }
        } else {
            f fVar = new f(bufferedInputStream);
            int i5 = this.f1140c;
            if (i5 == 12) {
                d(fVar);
            } else if (i5 == 7) {
                g(fVar);
            } else if (i5 == 10) {
                k(fVar);
            } else {
                j(fVar);
            }
            fVar.b(this.f1143h);
            u(fVar);
        }
        a();
        if (!z3) {
            return;
        }
        p();
    }

    public static ByteOrder q(b bVar) throws IOException {
        short s2 = bVar.readShort();
        boolean z2 = f1124l;
        if (s2 == 18761) {
            if (z2) {
                Log.d("ExifInterface", "readExifSegment: Byte Align II");
            }
            return ByteOrder.LITTLE_ENDIAN;
        }
        if (s2 == 19789) {
            if (z2) {
                Log.d("ExifInterface", "readExifSegment: Byte Align MM");
            }
            return ByteOrder.BIG_ENDIAN;
        }
        throw new IOException("Invalid byte order: " + Integer.toHexString(s2));
    }

    public final void a() {
        String strB = b("DateTimeOriginal");
        HashMap[] mapArr = this.f1141d;
        if (strB != null && b("DateTime") == null) {
            HashMap map = mapArr[0];
            byte[] bytes = strB.concat("\u0000").getBytes(f1121N);
            map.put("DateTime", new c(2, bytes.length, bytes));
        }
        if (b("ImageWidth") == null) {
            mapArr[0].put("ImageWidth", c.a(0L, this.f));
        }
        if (b("ImageLength") == null) {
            mapArr[0].put("ImageLength", c.a(0L, this.f));
        }
        if (b("Orientation") == null) {
            mapArr[0].put("Orientation", c.a(0L, this.f));
        }
        if (b("LightSource") == null) {
            mapArr[1].put("LightSource", c.a(0L, this.f));
        }
    }

    public final String b(String str) {
        c cVarC = c(str);
        if (cVarC != null) {
            int i3 = cVarC.f1102a;
            if (!f1119L.contains(str)) {
                return cVarC.f(this.f);
            }
            if (str.equals("GPSTimeStamp")) {
                if (i3 != 5 && i3 != 10) {
                    Log.w("ExifInterface", "GPS Timestamp format is not rational. format=" + i3);
                    return null;
                }
                e[] eVarArr = (e[]) cVarC.g(this.f);
                if (eVarArr == null || eVarArr.length != 3) {
                    Log.w("ExifInterface", "Invalid GPS Timestamp array. array=" + Arrays.toString(eVarArr));
                    return null;
                }
                e eVar = eVarArr[0];
                Integer numValueOf = Integer.valueOf((int) (eVar.f1108a / eVar.b));
                e eVar2 = eVarArr[1];
                Integer numValueOf2 = Integer.valueOf((int) (eVar2.f1108a / eVar2.b));
                e eVar3 = eVarArr[2];
                return String.format("%02d:%02d:%02d", numValueOf, numValueOf2, Integer.valueOf((int) (eVar3.f1108a / eVar3.b)));
            }
            try {
                return Double.toString(cVarC.d(this.f));
            } catch (NumberFormatException unused) {
            }
        }
        return null;
    }

    public final c c(String str) {
        if ("ISOSpeedRatings".equals(str)) {
            if (f1124l) {
                Log.d("ExifInterface", "getExifAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY.");
            }
            str = "PhotographicSensitivity";
        }
        for (int i3 = 0; i3 < f1116H.length; i3++) {
            c cVar = (c) this.f1141d[i3].get(str);
            if (cVar != null) {
                return cVar;
            }
        }
        return null;
    }

    public final void d(f fVar) throws IOException {
        String strExtractMetadata;
        String strExtractMetadata2;
        String strExtractMetadata3;
        int i3;
        if (Build.VERSION.SDK_INT < 28) {
            throw new UnsupportedOperationException("Reading EXIF from HEIF files is supported from SDK 28 and above");
        }
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            try {
                i.a(mediaMetadataRetriever, new a(fVar));
                String strExtractMetadata4 = mediaMetadataRetriever.extractMetadata(33);
                String strExtractMetadata5 = mediaMetadataRetriever.extractMetadata(34);
                String strExtractMetadata6 = mediaMetadataRetriever.extractMetadata(26);
                String strExtractMetadata7 = mediaMetadataRetriever.extractMetadata(17);
                if ("yes".equals(strExtractMetadata6)) {
                    strExtractMetadata = mediaMetadataRetriever.extractMetadata(29);
                    strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(30);
                    strExtractMetadata3 = mediaMetadataRetriever.extractMetadata(31);
                } else if ("yes".equals(strExtractMetadata7)) {
                    strExtractMetadata = mediaMetadataRetriever.extractMetadata(18);
                    strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(19);
                    strExtractMetadata3 = mediaMetadataRetriever.extractMetadata(24);
                } else {
                    strExtractMetadata = null;
                    strExtractMetadata2 = null;
                    strExtractMetadata3 = null;
                }
                HashMap[] mapArr = this.f1141d;
                if (strExtractMetadata != null) {
                    mapArr[0].put("ImageWidth", c.c(Integer.parseInt(strExtractMetadata), this.f));
                }
                if (strExtractMetadata2 != null) {
                    mapArr[0].put("ImageLength", c.c(Integer.parseInt(strExtractMetadata2), this.f));
                }
                if (strExtractMetadata3 != null) {
                    int i4 = Integer.parseInt(strExtractMetadata3);
                    if (i4 == 90) {
                        i3 = 6;
                    } else if (i4 != 180) {
                        i3 = i4 != 270 ? 1 : 8;
                    } else {
                        i3 = 3;
                    }
                    mapArr[0].put("Orientation", c.c(i3, this.f));
                }
                if (strExtractMetadata4 != null && strExtractMetadata5 != null) {
                    int i5 = Integer.parseInt(strExtractMetadata4);
                    int i6 = Integer.parseInt(strExtractMetadata5);
                    if (i6 <= 6) {
                        throw new IOException("Invalid exif length");
                    }
                    fVar.b(i5);
                    byte[] bArr = new byte[6];
                    if (fVar.read(bArr) != 6) {
                        throw new IOException("Can't read identifier");
                    }
                    int i7 = i5 + 6;
                    int i8 = i6 - 6;
                    if (!Arrays.equals(bArr, f1122O)) {
                        throw new IOException("Invalid identifier");
                    }
                    byte[] bArr2 = new byte[i8];
                    if (fVar.read(bArr2) != i8) {
                        throw new IOException("Can't read exif");
                    }
                    this.f1143h = i7;
                    r(bArr2, 0);
                }
                if (f1124l) {
                    Log.d("ExifInterface", "Heif meta: " + strExtractMetadata + "x" + strExtractMetadata2 + ", rotation " + strExtractMetadata3);
                }
                mediaMetadataRetriever.release();
            } catch (RuntimeException unused) {
                throw new UnsupportedOperationException("Failed to read EXIF from HEIF file. Given stream is either malformed or unsupported.");
            }
        } catch (Throwable th) {
            mediaMetadataRetriever.release();
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:103:0x0149 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:104:0x018a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:34:0x00ac A[FALL_THROUGH] */
    /* JADX WARN: Code duplicated, block: B:36:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:37:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:40:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:41:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:71:0x013f  */
    /* JADX WARN: Code duplicated, block: B:74:0x0146 A[LOOP:2: B:69:0x013c->B:74:0x0146, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:77:0x0158  */
    /*  JADX ERROR: UnsupportedOperationException in pass: RegionMakerVisitor
        java.lang.UnsupportedOperationException
        	at java.base/java.util.Collections$UnmodifiableCollection.add(Collections.java:1068)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker$1.leaveRegion(SwitchRegionMaker.java:419)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:31)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaksForCase(SwitchRegionMaker.java:399)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaks(SwitchRegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.leaveRegion(PostProcessRegions.java:31)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:21)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
        */
    public final void e(I.b r23, int r24, int r25) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 540
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: I.g.e(I.b, int, int):void");
    }

    /* JADX WARN: Code duplicated, block: B:110:0x0143 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:112:0x0146  */
    /* JADX WARN: Code duplicated, block: B:115:0x014d  */
    /* JADX WARN: Code duplicated, block: B:118:0x0156 A[LOOP:2: B:113:0x0148->B:118:0x0156, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:121:0x015c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:123:0x015f  */
    /* JADX WARN: Code duplicated, block: B:126:0x0166  */
    /* JADX WARN: Code duplicated, block: B:129:0x016f A[LOOP:3: B:124:0x0161->B:129:0x016f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:133:0x0179  */
    /* JADX WARN: Code duplicated, block: B:136:0x0183 A[LOOP:4: B:131:0x0174->B:136:0x0183, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:138:0x0188 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:140:0x018b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:156:0x010d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:168:0x0159 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:169:0x0153 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:170:0x0172 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:171:0x016c A[EDGE_INSN: B:171:0x016c->B:128:0x016c BREAK  A[LOOP:3: B:124:0x0161->B:129:0x016f], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:172:0x0186 A[EDGE_INSN: B:172:0x0186->B:137:0x0186 BREAK  A[LOOP:4: B:131:0x0174->B:136:0x0183], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:173:0x016c A[EDGE_INSN: B:173:0x016c->B:128:0x016c BREAK  A[LOOP:3: B:124:0x0161->B:129:0x016f], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:70:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:74:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:88:0x010b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:94:0x0122  */
    /* JADX WARN: Code duplicated, block: B:95:0x0124  */
    public final int f(BufferedInputStream bufferedInputStream) throws Throwable {
        b bVar;
        int i3;
        b bVar2;
        b bVar3;
        b bVar4;
        int i4;
        b bVar5;
        b bVar6;
        int i5;
        int i6;
        byte[] bArr;
        int i7;
        int i8;
        byte[] bArr2;
        int i9;
        byte[] bArr3;
        b bVar7;
        short s2;
        long j2;
        bufferedInputStream.mark(5000);
        byte[] bArr4 = new byte[5000];
        bufferedInputStream.read(bArr4);
        bufferedInputStream.reset();
        int i10 = 0;
        while (true) {
            byte[] bArr5 = f1129q;
            if (i10 >= bArr5.length) {
                return 4;
            }
            if (bArr4[i10] != bArr5[i10]) {
                byte[] bytes = "FUJIFILMCCD-RAW".getBytes(Charset.defaultCharset());
                for (int i11 = 0; i11 < bytes.length; i11++) {
                    if (bArr4[i11] != bytes[i11]) {
                        int i12 = 1;
                        try {
                            bVar2 = new b(bArr4);
                            try {
                                try {
                                    long j3 = bVar2.readInt();
                                    byte[] bArr6 = new byte[4];
                                    bVar2.read(bArr6);
                                    try {
                                        try {
                                            if (Arrays.equals(bArr6, f1130r)) {
                                                if (j3 == 1) {
                                                    j3 = bVar2.readLong();
                                                    j2 = 16;
                                                    if (j3 < 16) {
                                                    }
                                                    bVar4 = new b(bArr4);
                                                    ByteOrder byteOrderQ = q(bVar4);
                                                    this.f = byteOrderQ;
                                                    bVar4.f1099c = byteOrderQ;
                                                    s2 = bVar4.readShort();
                                                    if (s2 != 20306 || s2 == 21330) {
                                                        i4 = 1;
                                                    } else {
                                                        i4 = i3;
                                                    }
                                                    bVar4.close();
                                                    if (i4 != 0) {
                                                        return 7;
                                                    }
                                                    try {
                                                        bVar7 = new b(bArr4);
                                                        try {
                                                            ByteOrder byteOrderQ2 = q(bVar7);
                                                            this.f = byteOrderQ2;
                                                            bVar7.f1099c = byteOrderQ2;
                                                            if (bVar7.readShort() == 85) {
                                                                i5 = 1;
                                                            } else {
                                                                i5 = i3;
                                                            }
                                                            bVar7.close();
                                                        } catch (Exception unused) {
                                                            bVar6 = bVar7;
                                                            if (bVar6 != null) {
                                                                bVar6.close();
                                                            }
                                                            i5 = i3;
                                                        } catch (Throwable th) {
                                                            th = th;
                                                            bVar5 = bVar7;
                                                            if (bVar5 != null) {
                                                                bVar5.close();
                                                            }
                                                            throw th;
                                                        }
                                                    } catch (Exception unused2) {
                                                        bVar6 = null;
                                                    } catch (Throwable th2) {
                                                        th = th2;
                                                        bVar5 = null;
                                                    }
                                                    if (i5 != 0) {
                                                        return 10;
                                                    }
                                                    i6 = i3;
                                                    while (true) {
                                                        bArr = f1135w;
                                                        if (i6 < bArr.length) {
                                                            i7 = 1;
                                                            break;
                                                        }
                                                        if (bArr4[i6] != bArr[i6]) {
                                                            i7 = i3;
                                                            break;
                                                        }
                                                        i6++;
                                                    }
                                                    if (i7 != 0) {
                                                        return 13;
                                                    }
                                                    i8 = i3;
                                                    while (true) {
                                                        bArr2 = f1109A;
                                                        if (i8 < bArr2.length) {
                                                            i9 = i3;
                                                            while (true) {
                                                                bArr3 = f1110B;
                                                                if (i9 >= bArr3.length) {
                                                                    break;
                                                                }
                                                                if (bArr4[bArr2.length + i9 + 4] != bArr3[i9]) {
                                                                    break;
                                                                }
                                                                i9++;
                                                            }
                                                            if (i12 != 0) {
                                                                return 14;
                                                            }
                                                            return i3;
                                                        }
                                                        if (bArr4[i8] != bArr2[i8]) {
                                                            break;
                                                        }
                                                        i8++;
                                                    }
                                                    i12 = i3;
                                                    if (i12 != 0) {
                                                        return 14;
                                                    }
                                                    return i3;
                                                }
                                                j2 = 8;
                                                i3 = 0;
                                                long j4 = 5000;
                                                if (j3 > j4) {
                                                    j3 = j4;
                                                }
                                                long j5 = j3 - j2;
                                                if (j5 >= 8) {
                                                    try {
                                                        byte[] bArr7 = new byte[4];
                                                        boolean z2 = false;
                                                        boolean z3 = false;
                                                        for (long j6 = 0; j6 < j5 / 4 && bVar2.read(bArr7) == 4; j6++) {
                                                            if (j6 != 1) {
                                                                if (Arrays.equals(bArr7, f1131s)) {
                                                                    z2 = true;
                                                                } else if (Arrays.equals(bArr7, f1132t)) {
                                                                    z3 = true;
                                                                }
                                                                if (z2 && z3) {
                                                                    bVar2.close();
                                                                    return 12;
                                                                }
                                                            }
                                                        }
                                                    } catch (Exception e2) {
                                                        e = e2;
                                                        if (f1124l) {
                                                            Log.d("ExifInterface", "Exception parsing HEIF file type box.", e);
                                                        }
                                                        if (bVar2 != null) {
                                                        }
                                                        bVar4 = new b(bArr4);
                                                        ByteOrder byteOrderQ3 = q(bVar4);
                                                        this.f = byteOrderQ3;
                                                        bVar4.f1099c = byteOrderQ3;
                                                        s2 = bVar4.readShort();
                                                        if (s2 != 20306) {
                                                            i4 = 1;
                                                        } else {
                                                            i4 = 1;
                                                        }
                                                        bVar4.close();
                                                        if (i4 != 0) {
                                                            return 7;
                                                        }
                                                        bVar7 = new b(bArr4);
                                                        ByteOrder byteOrderQ4 = q(bVar7);
                                                        this.f = byteOrderQ4;
                                                        bVar7.f1099c = byteOrderQ4;
                                                        if (bVar7.readShort() == 85) {
                                                            i5 = 1;
                                                        } else {
                                                            i5 = i3;
                                                        }
                                                        bVar7.close();
                                                        if (i5 != 0) {
                                                            return 10;
                                                        }
                                                        i6 = i3;
                                                        while (true) {
                                                            bArr = f1135w;
                                                            if (i6 < bArr.length) {
                                                                i7 = 1;
                                                                break;
                                                            }
                                                            if (bArr4[i6] != bArr[i6]) {
                                                                i7 = i3;
                                                                break;
                                                            }
                                                            i6++;
                                                        }
                                                        if (i7 != 0) {
                                                            return 13;
                                                        }
                                                        i8 = i3;
                                                        while (true) {
                                                            bArr2 = f1109A;
                                                            if (i8 < bArr2.length) {
                                                                i9 = i3;
                                                                while (true) {
                                                                    bArr3 = f1110B;
                                                                    if (i9 >= bArr3.length) {
                                                                        break;
                                                                        break;
                                                                    }
                                                                    if (bArr4[bArr2.length + i9 + 4] != bArr3[i9]) {
                                                                        break;
                                                                        break;
                                                                    }
                                                                    i9++;
                                                                }
                                                                if (i12 != 0) {
                                                                    return 14;
                                                                }
                                                                return i3;
                                                            }
                                                            if (bArr4[i8] != bArr2[i8]) {
                                                                break;
                                                                break;
                                                            }
                                                            i8++;
                                                        }
                                                        i12 = i3;
                                                        if (i12 != 0) {
                                                            return 14;
                                                        }
                                                        return i3;
                                                    }
                                                }
                                                bVar2.close();
                                                bVar4 = new b(bArr4);
                                                ByteOrder byteOrderQ5 = q(bVar4);
                                                this.f = byteOrderQ5;
                                                bVar4.f1099c = byteOrderQ5;
                                                s2 = bVar4.readShort();
                                                if (s2 != 20306) {
                                                    i4 = 1;
                                                } else {
                                                    i4 = 1;
                                                }
                                                bVar4.close();
                                                if (i4 != 0) {
                                                    return 7;
                                                }
                                                bVar7 = new b(bArr4);
                                                ByteOrder byteOrderQ6 = q(bVar7);
                                                this.f = byteOrderQ6;
                                                bVar7.f1099c = byteOrderQ6;
                                                if (bVar7.readShort() == 85) {
                                                    i5 = 1;
                                                } else {
                                                    i5 = i3;
                                                }
                                                bVar7.close();
                                                if (i5 != 0) {
                                                    return 10;
                                                }
                                                i6 = i3;
                                                while (true) {
                                                    bArr = f1135w;
                                                    if (i6 < bArr.length) {
                                                        i7 = 1;
                                                        break;
                                                    }
                                                    if (bArr4[i6] != bArr[i6]) {
                                                        i7 = i3;
                                                        break;
                                                    }
                                                    i6++;
                                                }
                                                if (i7 != 0) {
                                                    return 13;
                                                }
                                                i8 = i3;
                                                while (true) {
                                                    bArr2 = f1109A;
                                                    if (i8 < bArr2.length) {
                                                        i9 = i3;
                                                        while (true) {
                                                            bArr3 = f1110B;
                                                            if (i9 >= bArr3.length) {
                                                                break;
                                                                break;
                                                            }
                                                            if (bArr4[bArr2.length + i9 + 4] != bArr3[i9]) {
                                                                break;
                                                                break;
                                                            }
                                                            i9++;
                                                        }
                                                        if (i12 != 0) {
                                                            return 14;
                                                        }
                                                        return i3;
                                                    }
                                                    if (bArr4[i8] != bArr2[i8]) {
                                                        break;
                                                        break;
                                                    }
                                                    i8++;
                                                }
                                                i12 = i3;
                                                if (i12 != 0) {
                                                    return 14;
                                                }
                                                return i3;
                                            }
                                            ByteOrder byteOrderQ7 = q(bVar4);
                                            this.f = byteOrderQ7;
                                            bVar4.f1099c = byteOrderQ7;
                                            s2 = bVar4.readShort();
                                            if (s2 != 20306) {
                                                i4 = 1;
                                            } else {
                                                i4 = 1;
                                            }
                                            bVar4.close();
                                        } catch (Exception unused3) {
                                            if (bVar4 != null) {
                                                bVar4.close();
                                            }
                                            i4 = i3;
                                        } catch (Throwable th3) {
                                            th = th3;
                                            bVar3 = bVar4;
                                            if (bVar3 != null) {
                                                bVar3.close();
                                            }
                                            throw th;
                                        }
                                        bVar4 = new b(bArr4);
                                    } catch (Exception unused4) {
                                        bVar4 = null;
                                    } catch (Throwable th4) {
                                        th = th4;
                                        bVar3 = null;
                                    }
                                    bVar2.close();
                                    i3 = 0;
                                } catch (Exception e3) {
                                    e = e3;
                                    i3 = 0;
                                }
                            } catch (Throwable th5) {
                                th = th5;
                                bVar = bVar2;
                                if (bVar != null) {
                                    bVar.close();
                                }
                                throw th;
                            }
                        } catch (Exception e4) {
                            e = e4;
                            i3 = 0;
                            bVar2 = null;
                        } catch (Throwable th6) {
                            th = th6;
                            bVar = null;
                        }
                        if (i4 != 0) {
                            return 7;
                        }
                        bVar7 = new b(bArr4);
                        ByteOrder byteOrderQ8 = q(bVar7);
                        this.f = byteOrderQ8;
                        bVar7.f1099c = byteOrderQ8;
                        if (bVar7.readShort() == 85) {
                            i5 = 1;
                        } else {
                            i5 = i3;
                        }
                        bVar7.close();
                        if (i5 != 0) {
                            return 10;
                        }
                        i6 = i3;
                        while (true) {
                            bArr = f1135w;
                            if (i6 < bArr.length) {
                                i7 = 1;
                                break;
                            }
                            if (bArr4[i6] != bArr[i6]) {
                                i7 = i3;
                                break;
                            }
                            i6++;
                        }
                        if (i7 != 0) {
                            return 13;
                        }
                        i8 = i3;
                        while (true) {
                            bArr2 = f1109A;
                            if (i8 < bArr2.length) {
                                i9 = i3;
                                while (true) {
                                    bArr3 = f1110B;
                                    if (i9 >= bArr3.length) {
                                        break;
                                        break;
                                    }
                                    if (bArr4[bArr2.length + i9 + 4] != bArr3[i9]) {
                                        break;
                                        break;
                                    }
                                    i9++;
                                }
                                if (i12 != 0) {
                                    return 14;
                                }
                                return i3;
                            }
                            if (bArr4[i8] != bArr2[i8]) {
                                break;
                                break;
                            }
                            i8++;
                        }
                        i12 = i3;
                        if (i12 != 0) {
                            return 14;
                        }
                        return i3;
                    }
                }
                return 9;
            }
            i10++;
        }
    }

    public final void g(f fVar) throws Throwable {
        int i3;
        int i4;
        j(fVar);
        HashMap[] mapArr = this.f1141d;
        c cVar = (c) mapArr[1].get("MakerNote");
        if (cVar != null) {
            f fVar2 = new f(cVar.f1104d);
            fVar2.f1099c = this.f;
            byte[] bArr = f1133u;
            byte[] bArr2 = new byte[bArr.length];
            fVar2.readFully(bArr2);
            fVar2.b(0L);
            byte[] bArr3 = f1134v;
            byte[] bArr4 = new byte[bArr3.length];
            fVar2.readFully(bArr4);
            if (Arrays.equals(bArr2, bArr)) {
                fVar2.b(8L);
            } else if (Arrays.equals(bArr4, bArr3)) {
                fVar2.b(12L);
            }
            s(fVar2, 6);
            c cVar2 = (c) mapArr[7].get("PreviewImageStart");
            c cVar3 = (c) mapArr[7].get("PreviewImageLength");
            if (cVar2 != null && cVar3 != null) {
                mapArr[5].put("JPEGInterchangeFormat", cVar2);
                mapArr[5].put("JPEGInterchangeFormatLength", cVar3);
            }
            c cVar4 = (c) mapArr[8].get("AspectFrame");
            if (cVar4 != null) {
                int[] iArr = (int[]) cVar4.g(this.f);
                if (iArr == null || iArr.length != 4) {
                    Log.w("ExifInterface", "Invalid aspect frame values. frame=" + Arrays.toString(iArr));
                    return;
                }
                int i5 = iArr[2];
                int i6 = iArr[0];
                if (i5 <= i6 || (i3 = iArr[3]) <= (i4 = iArr[1])) {
                    return;
                }
                int i7 = (i5 - i6) + 1;
                int i8 = (i3 - i4) + 1;
                if (i7 < i8) {
                    int i9 = i7 + i8;
                    i8 = i9 - i8;
                    i7 = i9 - i8;
                }
                c cVarC = c.c(i7, this.f);
                c cVarC2 = c.c(i8, this.f);
                mapArr[0].put("ImageWidth", cVarC);
                mapArr[0].put("ImageLength", cVarC2);
            }
        }
    }

    public final void h(b bVar) throws Throwable {
        if (f1124l) {
            Log.d("ExifInterface", "getPngAttributes starting with: " + bVar);
        }
        bVar.f1099c = ByteOrder.BIG_ENDIAN;
        byte[] bArr = f1135w;
        bVar.a(bArr.length);
        int length = bArr.length;
        while (true) {
            try {
                int i3 = bVar.readInt();
                byte[] bArr2 = new byte[4];
                if (bVar.read(bArr2) != 4) {
                    throw new IOException("Encountered invalid length while parsing PNG chunktype");
                }
                int i4 = length + 8;
                if (i4 == 16 && !Arrays.equals(bArr2, f1137y)) {
                    throw new IOException("Encountered invalid PNG file--IHDR chunk should appearas the first chunk");
                }
                if (Arrays.equals(bArr2, f1138z)) {
                    return;
                }
                if (Arrays.equals(bArr2, f1136x)) {
                    byte[] bArr3 = new byte[i3];
                    if (bVar.read(bArr3) != i3) {
                        throw new IOException("Failed to read given length for given PNG chunk type: " + p000a.a.d(bArr2));
                    }
                    int i5 = bVar.readInt();
                    CRC32 crc32 = new CRC32();
                    crc32.update(bArr2);
                    crc32.update(bArr3);
                    if (((int) crc32.getValue()) == i5) {
                        this.f1143h = i4;
                        r(bArr3, 0);
                        x();
                        u(new b(bArr3));
                        return;
                    }
                    throw new IOException("Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: " + i5 + ", calculated CRC value: " + crc32.getValue());
                }
                int i6 = i3 + 4;
                bVar.a(i6);
                length = i4 + i6;
            } catch (EOFException unused) {
                throw new IOException("Encountered corrupt PNG file.");
            }
        }
    }

    public final void i(b bVar) throws Throwable {
        boolean z2 = f1124l;
        if (z2) {
            Log.d("ExifInterface", "getRafAttributes starting with: " + bVar);
        }
        bVar.a(84);
        byte[] bArr = new byte[4];
        byte[] bArr2 = new byte[4];
        byte[] bArr3 = new byte[4];
        bVar.read(bArr);
        bVar.read(bArr2);
        bVar.read(bArr3);
        int i3 = ByteBuffer.wrap(bArr).getInt();
        int i4 = ByteBuffer.wrap(bArr2).getInt();
        int i5 = ByteBuffer.wrap(bArr3).getInt();
        byte[] bArr4 = new byte[i4];
        bVar.a(i3 - bVar.f1100d);
        bVar.read(bArr4);
        e(new b(bArr4), i3, 5);
        bVar.a(i5 - bVar.f1100d);
        bVar.f1099c = ByteOrder.BIG_ENDIAN;
        int i6 = bVar.readInt();
        if (z2) {
            Log.d("ExifInterface", "numberOfDirectoryEntry: " + i6);
        }
        for (int i7 = 0; i7 < i6; i7++) {
            int unsignedShort = bVar.readUnsignedShort();
            int unsignedShort2 = bVar.readUnsignedShort();
            if (unsignedShort == f1115G.f1105a) {
                short s2 = bVar.readShort();
                short s3 = bVar.readShort();
                c cVarC = c.c(s2, this.f);
                c cVarC2 = c.c(s3, this.f);
                HashMap[] mapArr = this.f1141d;
                mapArr[0].put("ImageLength", cVarC);
                mapArr[0].put("ImageWidth", cVarC2);
                if (z2) {
                    Log.d("ExifInterface", "Updated to length: " + ((int) s2) + ", width: " + ((int) s3));
                    return;
                }
                return;
            }
            bVar.a(unsignedShort2);
        }
    }

    public final void j(f fVar) throws Throwable {
        o(fVar);
        s(fVar, 0);
        w(fVar, 0);
        w(fVar, 5);
        w(fVar, 4);
        x();
        if (this.f1140c == 8) {
            HashMap[] mapArr = this.f1141d;
            c cVar = (c) mapArr[1].get("MakerNote");
            if (cVar != null) {
                f fVar2 = new f(cVar.f1104d);
                fVar2.f1099c = this.f;
                fVar2.a(6);
                s(fVar2, 9);
                c cVar2 = (c) mapArr[9].get("ColorSpace");
                if (cVar2 != null) {
                    mapArr[1].put("ColorSpace", cVar2);
                }
            }
        }
    }

    public final void k(f fVar) throws Throwable {
        if (f1124l) {
            Log.d("ExifInterface", "getRw2Attributes starting with: " + fVar);
        }
        j(fVar);
        HashMap[] mapArr = this.f1141d;
        c cVar = (c) mapArr[0].get("JpgFromRaw");
        if (cVar != null) {
            e(new b(cVar.f1104d), (int) cVar.f1103c, 5);
        }
        c cVar2 = (c) mapArr[0].get("ISO");
        c cVar3 = (c) mapArr[1].get("PhotographicSensitivity");
        if (cVar2 == null || cVar3 != null) {
            return;
        }
        mapArr[1].put("PhotographicSensitivity", cVar2);
    }

    public final void l(b bVar) throws Throwable {
        if (f1124l) {
            Log.d("ExifInterface", "getWebpAttributes starting with: " + bVar);
        }
        bVar.f1099c = ByteOrder.LITTLE_ENDIAN;
        bVar.a(f1109A.length);
        int i3 = bVar.readInt() + 8;
        byte[] bArr = f1110B;
        bVar.a(bArr.length);
        int length = bArr.length + 8;
        while (true) {
            try {
                byte[] bArr2 = new byte[4];
                if (bVar.read(bArr2) != 4) {
                    throw new IOException("Encountered invalid length while parsing WebP chunktype");
                }
                int i4 = bVar.readInt();
                int i5 = length + 8;
                if (Arrays.equals(f1111C, bArr2)) {
                    byte[] bArr3 = new byte[i4];
                    if (bVar.read(bArr3) == i4) {
                        this.f1143h = i5;
                        r(bArr3, 0);
                        u(new b(bArr3));
                        return;
                    } else {
                        throw new IOException("Failed to read given length for given PNG chunk type: " + p000a.a.d(bArr2));
                    }
                }
                if (i4 % 2 == 1) {
                    i4++;
                }
                length = i5 + i4;
                if (length == i3) {
                    return;
                }
                if (length > i3) {
                    throw new IOException("Encountered WebP file with invalid chunk size");
                }
                bVar.a(i4);
            } catch (EOFException unused) {
                throw new IOException("Encountered corrupt WebP file.");
            }
        }
    }

    public final void m(b bVar, HashMap map) throws Throwable {
        c cVar = (c) map.get("JPEGInterchangeFormat");
        c cVar2 = (c) map.get("JPEGInterchangeFormatLength");
        if (cVar == null || cVar2 == null) {
            return;
        }
        int iE = cVar.e(this.f);
        int iE2 = cVar2.e(this.f);
        if (this.f1140c == 7) {
            iE += this.f1144i;
        }
        if (iE > 0 && iE2 > 0 && this.b == null && this.f1139a == null) {
            bVar.skip(iE);
            bVar.read(new byte[iE2]);
        }
        if (f1124l) {
            Log.d("ExifInterface", "Setting thumbnail attributes with offset: " + iE + ", length: " + iE2);
        }
    }

    public final boolean n(HashMap map) {
        c cVar = (c) map.get("ImageLength");
        c cVar2 = (c) map.get("ImageWidth");
        if (cVar == null || cVar2 == null) {
            return false;
        }
        return cVar.e(this.f) <= 512 && cVar2.e(this.f) <= 512;
    }

    public final void o(f fVar) throws IOException {
        ByteOrder byteOrderQ = q(fVar);
        this.f = byteOrderQ;
        fVar.f1099c = byteOrderQ;
        int unsignedShort = fVar.readUnsignedShort();
        int i3 = this.f1140c;
        if (i3 != 7 && i3 != 10 && unsignedShort != 42) {
            throw new IOException("Invalid start code: " + Integer.toHexString(unsignedShort));
        }
        int i4 = fVar.readInt();
        if (i4 < 8) {
            throw new IOException(E.b.i(i4, "Invalid first Ifd offset: "));
        }
        int i5 = i4 - 8;
        if (i5 > 0) {
            fVar.a(i5);
        }
    }

    public final void p() {
        int i3 = 0;
        while (true) {
            HashMap[] mapArr = this.f1141d;
            if (i3 >= mapArr.length) {
                return;
            }
            StringBuilder sbO = E.b.o(i3, "The size of tag group[", "]: ");
            sbO.append(mapArr[i3].size());
            Log.d("ExifInterface", sbO.toString());
            for (Map.Entry entry : mapArr[i3].entrySet()) {
                c cVar = (c) entry.getValue();
                Log.d("ExifInterface", "tagName: " + ((String) entry.getKey()) + ", tagType: " + cVar.toString() + ", tagValue: '" + cVar.f(this.f) + "'");
            }
            i3++;
        }
    }

    public final void r(byte[] bArr, int i3) throws IOException {
        f fVar = new f(bArr);
        o(fVar);
        s(fVar, i3);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x020f  */
    /* JADX WARN: Code duplicated, block: B:103:0x0213  */
    /* JADX WARN: Code duplicated, block: B:108:0x0220  */
    /* JADX WARN: Code duplicated, block: B:109:0x0225  */
    /* JADX WARN: Code duplicated, block: B:110:0x0231  */
    /* JADX WARN: Code duplicated, block: B:112:0x0238  */
    /* JADX WARN: Code duplicated, block: B:115:0x024f  */
    /* JADX WARN: Code duplicated, block: B:117:0x025a  */
    /* JADX WARN: Code duplicated, block: B:119:0x0267 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:120:0x0269  */
    /* JADX WARN: Code duplicated, block: B:121:0x0288 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:122:0x028a  */
    /* JADX WARN: Code duplicated, block: B:124:0x02a0  */
    /* JADX WARN: Code duplicated, block: B:126:0x02cc  */
    /* JADX WARN: Code duplicated, block: B:129:0x02d7  */
    /* JADX WARN: Code duplicated, block: B:131:0x02df  */
    /* JADX WARN: Code duplicated, block: B:140:0x0309  */
    /* JADX WARN: Code duplicated, block: B:167:0x030c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:71:0x014b  */
    /* JADX WARN: Code duplicated, block: B:72:0x0152  */
    /* JADX WARN: Code duplicated, block: B:74:0x015a  */
    /* JADX WARN: Code duplicated, block: B:76:0x0160  */
    /* JADX WARN: Code duplicated, block: B:77:0x0174  */
    /* JADX WARN: Code duplicated, block: B:80:0x017b  */
    /* JADX WARN: Code duplicated, block: B:82:0x0185  */
    /* JADX WARN: Code duplicated, block: B:83:0x0187  */
    /* JADX WARN: Code duplicated, block: B:84:0x018c  */
    /* JADX WARN: Code duplicated, block: B:86:0x018f  */
    /* JADX WARN: Code duplicated, block: B:90:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:93:0x01e8  */
    /* JADX WARN: Code duplicated, block: B:95:0x0203  */
    /* JADX WARN: Code duplicated, block: B:97:0x0208  */
    /* JADX WARN: Code duplicated, block: B:99:0x020b  */
    /* JADX WARN: Instruction removed from duplicated block: B:120:0x0269, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:122:0x028a, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:76:0x0160, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:93:0x01e8, please report this as an issue */
    public final void s(f fVar, int i3) throws IOException {
        HashMap[] mapArr;
        long j2;
        long j3;
        boolean z2;
        int i4;
        long j4;
        Integer num;
        long j5;
        String str;
        int i5;
        int unsignedShort;
        long j6;
        int i6;
        Integer numValueOf = Integer.valueOf(fVar.f1100d);
        HashSet hashSet = this.f1142e;
        hashSet.add(numValueOf);
        short s2 = fVar.readShort();
        boolean z3 = f1124l;
        if (z3) {
            Log.d("ExifInterface", "numberOfDirectoryEntry: " + ((int) s2));
        }
        if (s2 <= 0) {
            return;
        }
        short s3 = 0;
        while (true) {
            mapArr = this.f1141d;
            if (s3 >= s2) {
                break;
            }
            int unsignedShort2 = fVar.readUnsignedShort();
            int unsignedShort3 = fVar.readUnsignedShort();
            int i7 = fVar.readInt();
            long j7 = ((long) fVar.f1100d) + 4;
            d dVar = (d) f1118J[i3].get(Integer.valueOf(unsignedShort2));
            if (z3) {
                Log.d("ExifInterface", String.format("ifdType: %d, tagNumber: %d, tagName: %s, dataFormat: %d, numberOfComponents: %d", Integer.valueOf(i3), Integer.valueOf(unsignedShort2), dVar != null ? dVar.b : null, Integer.valueOf(unsignedShort3), Integer.valueOf(i7)));
            }
            if (dVar != null) {
                if (unsignedShort3 > 0) {
                    int[] iArr = f1113E;
                    if (unsignedShort3 < iArr.length) {
                        int i8 = dVar.f1106c;
                        if (i8 == 7 || unsignedShort3 == 7 || i8 == unsignedShort3 || (i4 = dVar.f1107d) == unsignedShort3 || (((i8 == 4 || i4 == 4) && unsignedShort3 == 3) || (((i8 == 9 || i4 == 9) && unsignedShort3 == 8) || ((i8 == 12 || i4 == 12) && unsignedShort3 == 11)))) {
                            if (unsignedShort3 == 7) {
                                unsignedShort3 = i8;
                            }
                            j2 = j7;
                            j3 = ((long) i7) * ((long) iArr[unsignedShort3]);
                            if (j3 < 0 || j3 > 2147483647L) {
                                if (z3 != 0) {
                                    Log.d("ExifInterface", "Skip the tag entry since the number of components is invalid: " + i7);
                                }
                                z2 = false;
                            } else {
                                z2 = true;
                            }
                        } else if (z3 != 0) {
                            Log.d("ExifInterface", "Skip the tag entry since data format (" + f1112D[unsignedShort3] + ") is unexpected for tag: " + dVar.b);
                        }
                    }
                    if (z2) {
                        j4 = j2;
                        if (j3 > 4) {
                            i6 = fVar.readInt();
                            if (z3 != 0) {
                                Log.d("ExifInterface", "seek to data offset: " + i6);
                            }
                            if (this.f1140c == 7) {
                                if ("MakerNote".equals(dVar.b)) {
                                    this.f1144i = i6;
                                } else if (i3 != 6 && "ThumbnailImage".equals(dVar.b)) {
                                    this.f1145j = i6;
                                    this.f1146k = i7;
                                    c cVarC = c.c(6, this.f);
                                    c cVarA = c.a(this.f1145j, this.f);
                                    c cVarA2 = c.a(this.f1146k, this.f);
                                    mapArr[4].put("Compression", cVarC);
                                    mapArr[4].put("JPEGInterchangeFormat", cVarA);
                                    mapArr[4].put("JPEGInterchangeFormatLength", cVarA2);
                                }
                            }
                            fVar.b(i6);
                        } else {
                            j4 = j4;
                            unsignedShort2 = unsignedShort2;
                            unsignedShort3 = unsignedShort3;
                        }
                        num = (Integer) f1120M.get(Integer.valueOf(unsignedShort2));
                        if (z3 != 0) {
                            Log.d("ExifInterface", "nextIfdType: " + num + " byteCount: " + j3);
                        }
                        if (num != null) {
                            i5 = unsignedShort3;
                            if (i5 != 3) {
                                if (i5 == 4) {
                                    j6 = ((long) fVar.readInt()) & 4294967295L;
                                } else if (i5 == 8) {
                                    unsignedShort = fVar.readShort();
                                } else if (i5 != 9 || i5 == 13) {
                                    unsignedShort = fVar.readInt();
                                } else {
                                    j6 = -1;
                                }
                                if (z3 != 0) {
                                    Log.d("ExifInterface", String.format("Offset: %d, tagName: %s", Long.valueOf(j6), dVar.b));
                                }
                                if (j6 > 0) {
                                    if (!hashSet.contains(Integer.valueOf((int) j6))) {
                                        fVar.b(j6);
                                        s(fVar, num.intValue());
                                    } else if (z3 != 0) {
                                        Log.d("ExifInterface", "Skip jump into the IFD since it has already been read: IfdType " + num + " (at " + j6 + ")");
                                    }
                                } else if (z3 != 0) {
                                    Log.d("ExifInterface", "Skip jump into the IFD since its offset is invalid: " + j6);
                                }
                                fVar.b(j4);
                            } else {
                                unsignedShort = fVar.readUnsignedShort();
                            }
                            j6 = unsignedShort;
                            if (z3 != 0) {
                                Log.d("ExifInterface", String.format("Offset: %d, tagName: %s", Long.valueOf(j6), dVar.b));
                            }
                            if (j6 > 0) {
                                if (!hashSet.contains(Integer.valueOf((int) j6))) {
                                    fVar.b(j6);
                                    s(fVar, num.intValue());
                                } else if (z3 != 0) {
                                    Log.d("ExifInterface", "Skip jump into the IFD since it has already been read: IfdType " + num + " (at " + j6 + ")");
                                }
                            } else if (z3 != 0) {
                                Log.d("ExifInterface", "Skip jump into the IFD since its offset is invalid: " + j6);
                            }
                            fVar.b(j4);
                        } else {
                            j5 = j4;
                            int i9 = fVar.f1100d + this.f1143h;
                            byte[] bArr = new byte[(int) j3];
                            fVar.readFully(bArr);
                            c cVar = new c(i9, bArr, unsignedShort3, i7);
                            HashMap map = mapArr[i3];
                            str = dVar.b;
                            map.put(str, cVar);
                            if ("DNGVersion".equals(str)) {
                                this.f1140c = 3;
                            }
                            if (((!"Make".equals(str) || "Model".equals(str)) && cVar.f(this.f).contains("PENTAX")) || ("Compression".equals(str) && cVar.e(this.f) == 65535)) {
                                this.f1140c = 8;
                            }
                            if (fVar.f1100d != j5) {
                                fVar.b(j5);
                            }
                        }
                    } else {
                        fVar.b(j2);
                    }
                    s3 = (short) (s3 + 1);
                    s2 = s2;
                    z3 = z3;
                }
                j2 = j7;
                if (z3 != 0) {
                    Log.d("ExifInterface", "Skip the tag entry since data format is invalid: " + unsignedShort3);
                }
                j3 = 0;
                z2 = false;
                if (z2) {
                    fVar.b(j2);
                } else {
                    j4 = j2;
                    if (j3 > 4) {
                        i6 = fVar.readInt();
                        if (z3 != 0) {
                            Log.d("ExifInterface", "seek to data offset: " + i6);
                        }
                        if (this.f1140c == 7) {
                            if ("MakerNote".equals(dVar.b)) {
                                this.f1144i = i6;
                            } else if (i3 != 6) {
                            }
                        }
                        fVar.b(i6);
                    } else {
                        j4 = j4;
                        unsignedShort2 = unsignedShort2;
                        unsignedShort3 = unsignedShort3;
                    }
                    num = (Integer) f1120M.get(Integer.valueOf(unsignedShort2));
                    if (z3 != 0) {
                        Log.d("ExifInterface", "nextIfdType: " + num + " byteCount: " + j3);
                    }
                    if (num != null) {
                        i5 = unsignedShort3;
                        if (i5 != 3) {
                            if (i5 == 4) {
                                j6 = ((long) fVar.readInt()) & 4294967295L;
                            } else if (i5 == 8) {
                                if (i5 != 9) {
                                }
                                unsignedShort = fVar.readInt();
                            } else {
                                unsignedShort = fVar.readShort();
                            }
                            if (z3 != 0) {
                                Log.d("ExifInterface", String.format("Offset: %d, tagName: %s", Long.valueOf(j6), dVar.b));
                            }
                            if (j6 > 0) {
                                if (!hashSet.contains(Integer.valueOf((int) j6))) {
                                    fVar.b(j6);
                                    s(fVar, num.intValue());
                                } else if (z3 != 0) {
                                    Log.d("ExifInterface", "Skip jump into the IFD since it has already been read: IfdType " + num + " (at " + j6 + ")");
                                }
                            } else if (z3 != 0) {
                                Log.d("ExifInterface", "Skip jump into the IFD since its offset is invalid: " + j6);
                            }
                            fVar.b(j4);
                        } else {
                            unsignedShort = fVar.readUnsignedShort();
                        }
                        j6 = unsignedShort;
                        if (z3 != 0) {
                            Log.d("ExifInterface", String.format("Offset: %d, tagName: %s", Long.valueOf(j6), dVar.b));
                        }
                        if (j6 > 0) {
                            if (!hashSet.contains(Integer.valueOf((int) j6))) {
                                fVar.b(j6);
                                s(fVar, num.intValue());
                            } else if (z3 != 0) {
                                Log.d("ExifInterface", "Skip jump into the IFD since it has already been read: IfdType " + num + " (at " + j6 + ")");
                            }
                        } else if (z3 != 0) {
                            Log.d("ExifInterface", "Skip jump into the IFD since its offset is invalid: " + j6);
                        }
                        fVar.b(j4);
                    } else {
                        j5 = j4;
                        int i10 = fVar.f1100d + this.f1143h;
                        byte[] bArr2 = new byte[(int) j3];
                        fVar.readFully(bArr2);
                        c cVar2 = new c(i10, bArr2, unsignedShort3, i7);
                        HashMap map2 = mapArr[i3];
                        str = dVar.b;
                        map2.put(str, cVar2);
                        if ("DNGVersion".equals(str)) {
                            this.f1140c = 3;
                        }
                        if (!"Make".equals(str)) {
                        }
                        this.f1140c = 8;
                        if (fVar.f1100d != j5) {
                            fVar.b(j5);
                        }
                    }
                }
                s3 = (short) (s3 + 1);
                s2 = s2;
                z3 = z3;
            } else if (z3) {
                Log.d("ExifInterface", "Skip the tag entry since tag number is not defined: " + unsignedShort2);
            }
            j2 = j7;
            j3 = 0;
            z2 = false;
            if (z2) {
                fVar.b(j2);
            } else {
                j4 = j2;
                if (j3 > 4) {
                    i6 = fVar.readInt();
                    if (z3 != 0) {
                        Log.d("ExifInterface", "seek to data offset: " + i6);
                    }
                    if (this.f1140c == 7) {
                        if ("MakerNote".equals(dVar.b)) {
                            this.f1144i = i6;
                        } else if (i3 != 6) {
                        }
                    }
                    fVar.b(i6);
                } else {
                    j4 = j4;
                    unsignedShort2 = unsignedShort2;
                    unsignedShort3 = unsignedShort3;
                }
                num = (Integer) f1120M.get(Integer.valueOf(unsignedShort2));
                if (z3 != 0) {
                    Log.d("ExifInterface", "nextIfdType: " + num + " byteCount: " + j3);
                }
                if (num != null) {
                    i5 = unsignedShort3;
                    if (i5 != 3) {
                        if (i5 == 4) {
                            j6 = ((long) fVar.readInt()) & 4294967295L;
                        } else if (i5 == 8) {
                            if (i5 != 9) {
                            }
                            unsignedShort = fVar.readInt();
                        } else {
                            unsignedShort = fVar.readShort();
                        }
                        if (z3 != 0) {
                            Log.d("ExifInterface", String.format("Offset: %d, tagName: %s", Long.valueOf(j6), dVar.b));
                        }
                        if (j6 > 0) {
                            if (!hashSet.contains(Integer.valueOf((int) j6))) {
                                fVar.b(j6);
                                s(fVar, num.intValue());
                            } else if (z3 != 0) {
                                Log.d("ExifInterface", "Skip jump into the IFD since it has already been read: IfdType " + num + " (at " + j6 + ")");
                            }
                        } else if (z3 != 0) {
                            Log.d("ExifInterface", "Skip jump into the IFD since its offset is invalid: " + j6);
                        }
                        fVar.b(j4);
                    } else {
                        unsignedShort = fVar.readUnsignedShort();
                    }
                    j6 = unsignedShort;
                    if (z3 != 0) {
                        Log.d("ExifInterface", String.format("Offset: %d, tagName: %s", Long.valueOf(j6), dVar.b));
                    }
                    if (j6 > 0) {
                        if (!hashSet.contains(Integer.valueOf((int) j6))) {
                            fVar.b(j6);
                            s(fVar, num.intValue());
                        } else if (z3 != 0) {
                            Log.d("ExifInterface", "Skip jump into the IFD since it has already been read: IfdType " + num + " (at " + j6 + ")");
                        }
                    } else if (z3 != 0) {
                        Log.d("ExifInterface", "Skip jump into the IFD since its offset is invalid: " + j6);
                    }
                    fVar.b(j4);
                } else {
                    j5 = j4;
                    int i11 = fVar.f1100d + this.f1143h;
                    byte[] bArr3 = new byte[(int) j3];
                    fVar.readFully(bArr3);
                    c cVar3 = new c(i11, bArr3, unsignedShort3, i7);
                    HashMap map3 = mapArr[i3];
                    str = dVar.b;
                    map3.put(str, cVar3);
                    if ("DNGVersion".equals(str)) {
                        this.f1140c = 3;
                    }
                    if (!"Make".equals(str)) {
                    }
                    this.f1140c = 8;
                    if (fVar.f1100d != j5) {
                        fVar.b(j5);
                    }
                }
            }
            s3 = (short) (s3 + 1);
            s2 = s2;
            z3 = z3;
        }
        boolean z4 = z3;
        int i12 = fVar.readInt();
        if (z4) {
            Log.d("ExifInterface", String.format("nextIfdOffset: %d", Integer.valueOf(i12)));
        }
        long j8 = i12;
        if (j8 <= 0) {
            if (z4) {
                Log.d("ExifInterface", "Stop reading file since a wrong offset may cause an infinite loop: " + i12);
                return;
            }
            return;
        }
        if (hashSet.contains(Integer.valueOf(i12))) {
            if (z4) {
                Log.d("ExifInterface", "Stop reading file since re-reading an IFD may cause an infinite loop: " + i12);
                return;
            }
            return;
        }
        fVar.b(j8);
        if (mapArr[4].isEmpty()) {
            s(fVar, 4);
        } else if (mapArr[5].isEmpty()) {
            s(fVar, 5);
        }
    }

    public final void t(int i3, String str, String str2) {
        HashMap[] mapArr = this.f1141d;
        if (mapArr[i3].isEmpty() || mapArr[i3].get(str) == null) {
            return;
        }
        HashMap map = mapArr[i3];
        map.put(str2, map.get(str));
        mapArr[i3].remove(str);
    }

    public final void u(b bVar) throws Throwable {
        c cVar;
        int iE;
        HashMap map = this.f1141d[4];
        c cVar2 = (c) map.get("Compression");
        if (cVar2 == null) {
            m(bVar, map);
            return;
        }
        int iE2 = cVar2.e(this.f);
        if (iE2 != 1) {
            if (iE2 == 6) {
                m(bVar, map);
                return;
            } else if (iE2 != 7) {
                return;
            }
        }
        c cVar3 = (c) map.get("BitsPerSample");
        if (cVar3 != null) {
            int[] iArr = (int[]) cVar3.g(this.f);
            int[] iArr2 = f1127o;
            if (Arrays.equals(iArr2, iArr) || (this.f1140c == 3 && (cVar = (c) map.get("PhotometricInterpretation")) != null && (((iE = cVar.e(this.f)) == 1 && Arrays.equals(iArr, f1128p)) || (iE == 6 && Arrays.equals(iArr, iArr2))))) {
                c cVar4 = (c) map.get("StripOffsets");
                c cVar5 = (c) map.get("StripByteCounts");
                if (cVar4 == null || cVar5 == null) {
                    return;
                }
                long[] jArrG = p000a.a.g(cVar4.g(this.f));
                long[] jArrG2 = p000a.a.g(cVar5.g(this.f));
                if (jArrG == null || jArrG.length == 0) {
                    Log.w("ExifInterface", "stripOffsets should not be null or have zero length.");
                    return;
                }
                if (jArrG2 == null || jArrG2.length == 0) {
                    Log.w("ExifInterface", "stripByteCounts should not be null or have zero length.");
                    return;
                }
                if (jArrG.length != jArrG2.length) {
                    Log.w("ExifInterface", "stripOffsets and stripByteCounts should have same length.");
                    return;
                }
                long j2 = 0;
                for (long j3 : jArrG2) {
                    j2 += j3;
                }
                byte[] bArr = new byte[(int) j2];
                this.g = true;
                int i3 = 0;
                int i4 = 0;
                for (int i5 = 0; i5 < jArrG.length; i5++) {
                    int i6 = (int) jArrG[i5];
                    int i7 = (int) jArrG2[i5];
                    if (i5 < jArrG.length - 1 && i6 + i7 != jArrG[i5 + 1]) {
                        this.g = false;
                    }
                    int i8 = i6 - i3;
                    if (i8 < 0) {
                        Log.d("ExifInterface", "Invalid strip offset value");
                        return;
                    }
                    long j4 = i8;
                    if (bVar.skip(j4) != j4) {
                        Log.d("ExifInterface", "Failed to skip " + i8 + " bytes.");
                        return;
                    }
                    int i9 = i3 + i8;
                    byte[] bArr2 = new byte[i7];
                    if (bVar.read(bArr2) != i7) {
                        Log.d("ExifInterface", "Failed to read " + i7 + " bytes.");
                        return;
                    }
                    i3 = i9 + i7;
                    System.arraycopy(bArr2, 0, bArr, i4, i7);
                    i4 += i7;
                }
                if (this.g) {
                    long j5 = jArrG[0];
                    return;
                }
                return;
            }
        }
        if (f1124l) {
            Log.d("ExifInterface", "Unsupported data type value");
        }
    }

    public final void v(int i3, int i4) throws Throwable {
        HashMap[] mapArr = this.f1141d;
        boolean zIsEmpty = mapArr[i3].isEmpty();
        boolean z2 = f1124l;
        if (zIsEmpty || mapArr[i4].isEmpty()) {
            if (z2) {
                Log.d("ExifInterface", "Cannot perform swap since only one image data exists");
                return;
            }
            return;
        }
        c cVar = (c) mapArr[i3].get("ImageLength");
        c cVar2 = (c) mapArr[i3].get("ImageWidth");
        c cVar3 = (c) mapArr[i4].get("ImageLength");
        c cVar4 = (c) mapArr[i4].get("ImageWidth");
        if (cVar == null || cVar2 == null) {
            if (z2) {
                Log.d("ExifInterface", "First image does not contain valid size information");
                return;
            }
            return;
        }
        if (cVar3 == null || cVar4 == null) {
            if (z2) {
                Log.d("ExifInterface", "Second image does not contain valid size information");
                return;
            }
            return;
        }
        int iE = cVar.e(this.f);
        int iE2 = cVar2.e(this.f);
        int iE3 = cVar3.e(this.f);
        int iE4 = cVar4.e(this.f);
        if (iE >= iE3 || iE2 >= iE4) {
            return;
        }
        HashMap map = mapArr[i3];
        mapArr[i3] = mapArr[i4];
        mapArr[i4] = map;
    }

    public final void w(f fVar, int i3) throws Throwable {
        c cVarC;
        c cVarC2;
        HashMap[] mapArr = this.f1141d;
        c cVar = (c) mapArr[i3].get("DefaultCropSize");
        c cVar2 = (c) mapArr[i3].get("SensorTopBorder");
        c cVar3 = (c) mapArr[i3].get("SensorLeftBorder");
        c cVar4 = (c) mapArr[i3].get("SensorBottomBorder");
        c cVar5 = (c) mapArr[i3].get("SensorRightBorder");
        if (cVar != null) {
            if (cVar.f1102a == 5) {
                e[] eVarArr = (e[]) cVar.g(this.f);
                if (eVarArr == null || eVarArr.length != 2) {
                    Log.w("ExifInterface", "Invalid crop size values. cropSize=" + Arrays.toString(eVarArr));
                    return;
                }
                cVarC = c.b(eVarArr[0], this.f);
                cVarC2 = c.b(eVarArr[1], this.f);
            } else {
                int[] iArr = (int[]) cVar.g(this.f);
                if (iArr == null || iArr.length != 2) {
                    Log.w("ExifInterface", "Invalid crop size values. cropSize=" + Arrays.toString(iArr));
                    return;
                }
                cVarC = c.c(iArr[0], this.f);
                cVarC2 = c.c(iArr[1], this.f);
            }
            mapArr[i3].put("ImageWidth", cVarC);
            mapArr[i3].put("ImageLength", cVarC2);
            return;
        }
        if (cVar2 != null && cVar3 != null && cVar4 != null && cVar5 != null) {
            int iE = cVar2.e(this.f);
            int iE2 = cVar4.e(this.f);
            int iE3 = cVar5.e(this.f);
            int iE4 = cVar3.e(this.f);
            if (iE2 <= iE || iE3 <= iE4) {
                return;
            }
            c cVarC3 = c.c(iE2 - iE, this.f);
            c cVarC4 = c.c(iE3 - iE4, this.f);
            mapArr[i3].put("ImageLength", cVarC3);
            mapArr[i3].put("ImageWidth", cVarC4);
            return;
        }
        c cVar6 = (c) mapArr[i3].get("ImageLength");
        c cVar7 = (c) mapArr[i3].get("ImageWidth");
        if (cVar6 == null || cVar7 == null) {
            c cVar8 = (c) mapArr[i3].get("JPEGInterchangeFormat");
            c cVar9 = (c) mapArr[i3].get("JPEGInterchangeFormatLength");
            if (cVar8 == null || cVar9 == null) {
                return;
            }
            int iE5 = cVar8.e(this.f);
            int iE6 = cVar8.e(this.f);
            fVar.b(iE5);
            byte[] bArr = new byte[iE6];
            fVar.read(bArr);
            e(new b(bArr), iE5, i3);
        }
    }

    public final void x() throws Throwable {
        v(0, 5);
        v(0, 4);
        v(5, 4);
        HashMap[] mapArr = this.f1141d;
        c cVar = (c) mapArr[1].get("PixelXDimension");
        c cVar2 = (c) mapArr[1].get("PixelYDimension");
        if (cVar != null && cVar2 != null) {
            mapArr[0].put("ImageWidth", cVar);
            mapArr[0].put("ImageLength", cVar2);
        }
        if (mapArr[4].isEmpty() && n(mapArr[5])) {
            mapArr[4] = mapArr[5];
            mapArr[5] = new HashMap();
        }
        if (!n(mapArr[4])) {
            Log.d("ExifInterface", "No image meets the size requirements of a thumbnail image.");
        }
        t(0, "ThumbnailOrientation", "Orientation");
        t(0, "ThumbnailImageLength", "ImageLength");
        t(0, "ThumbnailImageWidth", "ImageWidth");
        t(5, "ThumbnailOrientation", "Orientation");
        t(5, "ThumbnailImageLength", "ImageLength");
        t(5, "ThumbnailImageWidth", "ImageWidth");
        t(4, "Orientation", "ThumbnailOrientation");
        t(4, "ImageLength", "ThumbnailImageLength");
        t(4, "ImageWidth", "ThumbnailImageWidth");
    }
}
