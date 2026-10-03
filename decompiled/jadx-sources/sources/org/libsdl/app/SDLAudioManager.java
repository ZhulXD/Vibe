package org.libsdl.app;

import android.media.AudioRecord;
import android.media.AudioTrack;
import android.os.Process;
import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class SDLAudioManager {
    protected static final String TAG = "SDLAudio";
    protected static AudioRecord mAudioRecord;
    protected static AudioTrack mAudioTrack;

    public static void audioClose() {
        AudioTrack audioTrack = mAudioTrack;
        if (audioTrack != null) {
            audioTrack.stop();
            mAudioTrack.release();
            mAudioTrack = null;
        }
    }

    public static int[] audioOpen(int i3, int i4, int i5, int i6) {
        return open(false, i3, i4, i5, i6);
    }

    public static void audioSetThreadPriority(boolean z2, int i3) {
        try {
            if (z2) {
                Thread.currentThread().setName("SDLAudioC" + i3);
            } else {
                Thread.currentThread().setName("SDLAudioP" + i3);
            }
            Process.setThreadPriority(-16);
        } catch (Exception e2) {
            Log.v(TAG, "modify thread properties failed " + e2.toString());
        }
    }

    public static void audioWriteByteBuffer(byte[] bArr) {
        if (mAudioTrack == null) {
            Log.e(TAG, "Attempted to make audio call with uninitialized audio!");
            return;
        }
        int i3 = 0;
        while (i3 < bArr.length) {
            int iWrite = mAudioTrack.write(bArr, i3, bArr.length - i3);
            if (iWrite > 0) {
                i3 += iWrite;
            } else {
                if (iWrite != 0) {
                    Log.w(TAG, "SDL audio: error return from write(byte)");
                    return;
                }
                try {
                    Thread.sleep(1L);
                } catch (InterruptedException unused) {
                }
            }
        }
    }

    public static void audioWriteFloatBuffer(float[] fArr) {
        if (mAudioTrack == null) {
            Log.e(TAG, "Attempted to make audio call with uninitialized audio!");
            return;
        }
        int i3 = 0;
        while (i3 < fArr.length) {
            int iWrite = mAudioTrack.write(fArr, i3, fArr.length - i3, 0);
            if (iWrite > 0) {
                i3 += iWrite;
            } else {
                if (iWrite != 0) {
                    Log.w(TAG, "SDL audio: error return from write(float)");
                    return;
                }
                try {
                    Thread.sleep(1L);
                } catch (InterruptedException unused) {
                }
            }
        }
    }

    public static void audioWriteShortBuffer(short[] sArr) {
        if (mAudioTrack == null) {
            Log.e(TAG, "Attempted to make audio call with uninitialized audio!");
            return;
        }
        int i3 = 0;
        while (i3 < sArr.length) {
            int iWrite = mAudioTrack.write(sArr, i3, sArr.length - i3);
            if (iWrite > 0) {
                i3 += iWrite;
            } else {
                if (iWrite != 0) {
                    Log.w(TAG, "SDL audio: error return from write(short)");
                    return;
                }
                try {
                    Thread.sleep(1L);
                } catch (InterruptedException unused) {
                }
            }
        }
    }

    public static void captureClose() {
        AudioRecord audioRecord = mAudioRecord;
        if (audioRecord != null) {
            audioRecord.stop();
            mAudioRecord.release();
            mAudioRecord = null;
        }
    }

    public static int[] captureOpen(int i3, int i4, int i5, int i6) {
        return open(true, i3, i4, i5, i6);
    }

    public static int captureReadByteBuffer(byte[] bArr, boolean z2) {
        return mAudioRecord.read(bArr, 0, bArr.length, !z2 ? 1 : 0);
    }

    public static int captureReadFloatBuffer(float[] fArr, boolean z2) {
        return mAudioRecord.read(fArr, 0, fArr.length, !z2 ? 1 : 0);
    }

    public static int captureReadShortBuffer(short[] sArr, boolean z2) {
        return mAudioRecord.read(sArr, 0, sArr.length, !z2 ? 1 : 0);
    }

    public static String getAudioFormatString(int i3) {
        if (i3 == 2) {
            return "16-bit";
        }
        if (i3 != 3) {
            return i3 != 4 ? Integer.toString(i3) : "float";
        }
        return "8-bit";
    }

    public static void initialize() {
        mAudioTrack = null;
        mAudioRecord = null;
    }

    public static native int nativeSetupJNI();

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int[] open(boolean z2, int i3, int i4, int i5, int i6) {
        int i7;
        int i8;
        int i9;
        int i10;
        char c3;
        int i11;
        int[] iArr;
        int i12 = i5;
        StringBuilder sb = new StringBuilder("Opening ");
        String str = "playback";
        sb.append(z2 ? "capture" : "playback");
        sb.append(", requested ");
        sb.append(i6);
        sb.append(" frames of ");
        sb.append(i12);
        sb.append(" channel ");
        sb.append(getAudioFormatString(i4));
        sb.append(" audio at ");
        sb.append(i3);
        sb.append(" Hz");
        Log.v(TAG, sb.toString());
        if (i4 == 2) {
            i7 = i4;
            i8 = 2;
        } else if (i4 == 3) {
            i7 = i4;
            i8 = 1;
        } else if (i4 != 4) {
            Log.v(TAG, "Requested format " + i4 + ", getting ENCODING_PCM_16BIT");
            i8 = 2;
            i7 = 2;
        } else {
            i7 = i4;
            i8 = 4;
        }
        int i13 = 12;
        if (!z2) {
            i9 = 1;
            switch (i12) {
                case 1:
                    i10 = 4;
                    break;
                case 2:
                    i10 = i13;
                    break;
                case 3:
                    i13 = 28;
                    i10 = i13;
                    break;
                case 4:
                    i13 = 204;
                    i10 = i13;
                    break;
                case 5:
                    i13 = 220;
                    i10 = i13;
                    break;
                case 6:
                    i13 = 252;
                    i10 = i13;
                    break;
                case 7:
                    i13 = 1276;
                    i10 = i13;
                    break;
                case 8:
                    i13 = 6396;
                    i10 = i13;
                    break;
                default:
                    Log.v(TAG, "Requested " + i12 + " channels, getting stereo");
                    i10 = 12;
                    i12 = 2;
                    break;
            }
        } else {
            if (i12 != 1) {
                i9 = 1;
                if (i12 != 2) {
                    Log.v(TAG, "Requested " + i12 + " channels, getting stereo");
                    i10 = 12;
                    i12 = 2;
                }
            } else {
                i9 = 1;
                i13 = 16;
            }
            i10 = i13;
        }
        int i14 = i8 * i12;
        int iMax = Math.max(i6, (((z2 ? AudioRecord.getMinBufferSize(i3, i10, i7) : AudioTrack.getMinBufferSize(i3, i10, i7)) + i14) - 1) / i14);
        int[] iArr2 = new int[4];
        if (z2) {
            if (mAudioRecord == null) {
                c3 = 2;
                AudioRecord audioRecord = new AudioRecord(0, i3, i10, i7, i14 * iMax);
                mAudioRecord = audioRecord;
                if (audioRecord.getState() != i9) {
                    Log.e(TAG, "Failed during initialization of AudioRecord");
                    mAudioRecord.release();
                    mAudioRecord = null;
                    return null;
                }
                mAudioRecord.startRecording();
            } else {
                c3 = 2;
            }
            iArr2[0] = mAudioRecord.getSampleRate();
            iArr2[1] = mAudioRecord.getAudioFormat();
            iArr2[c3] = mAudioRecord.getChannelCount();
            str = "playback";
            i11 = 1;
            iArr = iArr2;
        } else {
            int i15 = i10;
            c3 = 2;
            if (mAudioTrack == null) {
                i11 = i9;
                iArr = iArr2;
                AudioTrack audioTrack = new AudioTrack(3, i3, i15, i7, i14 * iMax, 1);
                mAudioTrack = audioTrack;
                if (audioTrack.getState() != i11) {
                    Log.e(TAG, "Failed during initialization of Audio Track");
                    mAudioTrack.release();
                    mAudioTrack = null;
                    return null;
                }
                mAudioTrack.play();
            } else {
                i11 = i9;
                iArr = iArr2;
            }
            iArr[0] = mAudioTrack.getSampleRate();
            iArr[i11] = mAudioTrack.getAudioFormat();
            iArr[2] = mAudioTrack.getChannelCount();
        }
        iArr[r15] = iMax;
        StringBuilder sb2 = new StringBuilder("Opening ");
        sb2.append(z2 ? "capture" : str);
        sb2.append(", got ");
        sb2.append(iArr[3]);
        sb2.append(" frames of ");
        sb2.append(iArr[c3]);
        sb2.append(" channel ");
        sb2.append(getAudioFormatString(iArr[i11]));
        sb2.append(" audio at ");
        sb2.append(iArr[0]);
        sb2.append(" Hz");
        Log.v(TAG, sb2.toString());
        return iArr;
    }
}
