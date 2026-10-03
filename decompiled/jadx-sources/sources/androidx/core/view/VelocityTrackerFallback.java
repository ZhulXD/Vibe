package androidx.core.view;

import android.view.MotionEvent;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
class VelocityTrackerFallback {
    private static final long ASSUME_POINTER_STOPPED_MS = 40;
    private static final int HISTORY_SIZE = 20;
    private static final long RANGE_MS = 100;
    private final float[] mMovements = new float[20];
    private final long[] mEventTimes = new long[20];
    private float mLastComputedVelocity = 0.0f;
    private int mDataPointsBufferSize = 0;
    private int mDataPointsBufferLastUsedIndex = 0;

    private void clear() {
        this.mDataPointsBufferSize = 0;
        this.mLastComputedVelocity = 0.0f;
    }

    private float getCurrentVelocity() {
        long[] jArr;
        long j2;
        int i3 = this.mDataPointsBufferSize;
        if (i3 < 2) {
            return 0.0f;
        }
        int i4 = this.mDataPointsBufferLastUsedIndex;
        int i5 = ((i4 + 20) - (i3 - 1)) % 20;
        long j3 = this.mEventTimes[i4];
        while (true) {
            jArr = this.mEventTimes;
            j2 = jArr[i5];
            if (j3 - j2 <= RANGE_MS) {
                break;
            }
            this.mDataPointsBufferSize--;
            i5 = (i5 + 1) % 20;
        }
        int i6 = this.mDataPointsBufferSize;
        if (i6 < 2) {
            return 0.0f;
        }
        if (i6 == 2) {
            int i7 = (i5 + 1) % 20;
            long j4 = jArr[i7];
            if (j2 == j4) {
                return 0.0f;
            }
            return this.mMovements[i7] / (j4 - j2);
        }
        float f = 0.0f;
        int i8 = 0;
        for (int i9 = 0; i9 < this.mDataPointsBufferSize - 1; i9++) {
            int i10 = i9 + i5;
            long[] jArr2 = this.mEventTimes;
            long j5 = jArr2[i10 % 20];
            int i11 = (i10 + 1) % 20;
            if (jArr2[i11] != j5) {
                i8++;
                float fKineticEnergyToVelocity = kineticEnergyToVelocity(f);
                float f3 = this.mMovements[i11] / (this.mEventTimes[i11] - j5);
                float fAbs = (Math.abs(f3) * (f3 - fKineticEnergyToVelocity)) + f;
                if (i8 == 1) {
                    fAbs *= 0.5f;
                }
                f = fAbs;
            }
        }
        return kineticEnergyToVelocity(f);
    }

    private static float kineticEnergyToVelocity(float f) {
        return (f < 0.0f ? -1.0f : 1.0f) * ((float) Math.sqrt(Math.abs(f) * 2.0f));
    }

    public void addMovement(MotionEvent motionEvent) {
        long eventTime = motionEvent.getEventTime();
        if (this.mDataPointsBufferSize != 0 && eventTime - this.mEventTimes[this.mDataPointsBufferLastUsedIndex] > ASSUME_POINTER_STOPPED_MS) {
            clear();
        }
        int i3 = (this.mDataPointsBufferLastUsedIndex + 1) % 20;
        this.mDataPointsBufferLastUsedIndex = i3;
        int i4 = this.mDataPointsBufferSize;
        if (i4 != 20) {
            this.mDataPointsBufferSize = i4 + 1;
        }
        this.mMovements[i3] = motionEvent.getAxisValue(26);
        this.mEventTimes[this.mDataPointsBufferLastUsedIndex] = eventTime;
    }

    public void computeCurrentVelocity(int i3) {
        computeCurrentVelocity(i3, Float.MAX_VALUE);
    }

    public float getAxisVelocity(int i3) {
        if (i3 != 26) {
            return 0.0f;
        }
        return this.mLastComputedVelocity;
    }

    public void computeCurrentVelocity(int i3, float f) {
        float currentVelocity = getCurrentVelocity() * i3;
        this.mLastComputedVelocity = currentVelocity;
        if (currentVelocity < (-Math.abs(f))) {
            this.mLastComputedVelocity = -Math.abs(f);
        } else if (this.mLastComputedVelocity > Math.abs(f)) {
            this.mLastComputedVelocity = Math.abs(f);
        }
    }
}
