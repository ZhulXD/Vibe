package org.cocos2dx.lib;

import android.content.Context;
import android.media.SoundPool;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class Cocos2dxSound {
    private static final int INVALID_SOUND_ID = -1;
    private static final int INVALID_STREAM_ID = -1;
    private static final int LOAD_TIME_OUT = 500;
    private static final int MAX_SIMULTANEOUS_STREAMS_DEFAULT = 5;
    private static final int MAX_SIMULTANEOUS_STREAMS_I9100 = 3;
    private static final int SOUND_PRIORITY = 1;
    private static final int SOUND_QUALITY = 5;
    private static final float SOUND_RATE = 1.0f;
    private static final String TAG = "Cocos2dxSound";
    private final Context mContext;
    private float mLeftVolume;
    private float mRightVolume;
    private SoundPool mSoundPool;
    private boolean mIsAudioFocus = true;
    private final HashMap<String, ArrayList<Integer>> mPathStreamIDsMap = new HashMap<>();
    private final Object mLockPathStreamIDsMap = new Object();
    private final HashMap<String, Integer> mPathSoundIDMap = new HashMap<>();
    private ConcurrentHashMap<Integer, SoundInfoForLoadedCompleted> mPlayWhenLoadedEffects = new ConcurrentHashMap<>();

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public class OnLoadCompletedListener implements SoundPool.OnLoadCompleteListener {
        public OnLoadCompletedListener() {
        }

        @Override // android.media.SoundPool.OnLoadCompleteListener
        public void onLoadComplete(SoundPool soundPool, int i3, int i4) {
            SoundInfoForLoadedCompleted soundInfoForLoadedCompleted;
            if (i4 != 0 || (soundInfoForLoadedCompleted = (SoundInfoForLoadedCompleted) Cocos2dxSound.this.mPlayWhenLoadedEffects.get(Integer.valueOf(i3))) == null) {
                return;
            }
            soundInfoForLoadedCompleted.effectID = Cocos2dxSound.this.doPlayEffect(soundInfoForLoadedCompleted.path, i3, soundInfoForLoadedCompleted.isLoop, soundInfoForLoadedCompleted.pitch, soundInfoForLoadedCompleted.pan, soundInfoForLoadedCompleted.gain);
            synchronized (soundInfoForLoadedCompleted) {
                soundInfoForLoadedCompleted.notifyAll();
            }
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public class SoundInfoForLoadedCompleted {
        int effectID = -1;
        float gain;
        boolean isLoop;
        float pan;
        String path;
        float pitch;

        public SoundInfoForLoadedCompleted(String str, boolean z2, float f, float f3, float f4) {
            this.path = str;
            this.isLoop = z2;
            this.pitch = f;
            this.pan = f3;
            this.gain = f4;
        }
    }

    public Cocos2dxSound(Context context) {
        this.mContext = context;
        initData();
    }

    private float clamp(float f, float f3, float f4) {
        return Math.max(f3, Math.min(f, f4));
    }

    private int createSoundIDFromAsset(String str) {
        int iLoad;
        try {
            if (str.startsWith("/")) {
                iLoad = this.mSoundPool.load(str, 0);
            } else {
                Cocos2dxHelper.getObbFile();
                iLoad = this.mSoundPool.load(this.mContext.getAssets().openFd(str), 0);
            }
        } catch (Exception e2) {
            Log.e(TAG, "error: " + e2.getMessage(), e2);
            iLoad = -1;
        }
        if (iLoad == 0) {
            return -1;
        }
        return iLoad;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized int doPlayEffect(String str, int i3, boolean z2, float f, float f3, float f4) {
        int iPlay;
        float fClamp = (SOUND_RATE - clamp(f3, 0.0f, SOUND_RATE)) * this.mLeftVolume * f4;
        float fClamp2 = (SOUND_RATE - clamp(-f3, 0.0f, SOUND_RATE)) * this.mRightVolume * f4;
        iPlay = this.mSoundPool.play(i3, clamp(fClamp, 0.0f, SOUND_RATE), clamp(fClamp2, 0.0f, SOUND_RATE), 1, z2 ? -1 : 0, clamp(f * SOUND_RATE, 0.5f, 2.0f));
        synchronized (this.mLockPathStreamIDsMap) {
            try {
                ArrayList<Integer> arrayList = this.mPathStreamIDsMap.get(str);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                    this.mPathStreamIDsMap.put(str, arrayList);
                }
                arrayList.add(Integer.valueOf(iPlay));
            } catch (Throwable th) {
                throw th;
            }
        }
        return iPlay;
    }

    private void initData() {
        if (Cocos2dxHelper.getDeviceModel().contains("GT-I9100")) {
            this.mSoundPool = new SoundPool(3, 3, 5);
        } else {
            this.mSoundPool = new SoundPool(5, 3, 5);
        }
        this.mSoundPool.setOnLoadCompleteListener(new OnLoadCompletedListener());
        this.mLeftVolume = 0.5f;
        this.mRightVolume = 0.5f;
    }

    private void setEffectsVolumeInternal(float f, float f3) {
        synchronized (this.mLockPathStreamIDsMap) {
            try {
                if (!this.mPathStreamIDsMap.isEmpty()) {
                    Iterator<Map.Entry<String, ArrayList<Integer>>> it = this.mPathStreamIDsMap.entrySet().iterator();
                    while (it.hasNext()) {
                        ArrayList<Integer> value = it.next().getValue();
                        int size = value.size();
                        int i3 = 0;
                        while (i3 < size) {
                            Integer num = value.get(i3);
                            i3++;
                            this.mSoundPool.setVolume(num.intValue(), f, f3);
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void end() {
        this.mSoundPool.release();
        synchronized (this.mLockPathStreamIDsMap) {
            this.mPathStreamIDsMap.clear();
        }
        this.mPathSoundIDMap.clear();
        this.mPlayWhenLoadedEffects.clear();
        this.mLeftVolume = 0.5f;
        this.mRightVolume = 0.5f;
        initData();
    }

    public float getEffectsVolume() {
        return (this.mLeftVolume + this.mRightVolume) / 2.0f;
    }

    public void onEnterBackground() {
        this.mSoundPool.autoPause();
    }

    public void onEnterForeground() {
        this.mSoundPool.autoResume();
    }

    public void pauseAllEffects() {
        synchronized (this.mLockPathStreamIDsMap) {
            try {
                if (!this.mPathStreamIDsMap.isEmpty()) {
                    Iterator<Map.Entry<String, ArrayList<Integer>>> it = this.mPathStreamIDsMap.entrySet().iterator();
                    while (it.hasNext()) {
                        ArrayList<Integer> value = it.next().getValue();
                        int size = value.size();
                        int i3 = 0;
                        while (i3 < size) {
                            Integer num = value.get(i3);
                            i3++;
                            this.mSoundPool.pause(num.intValue());
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void pauseEffect(int i3) {
        this.mSoundPool.pause(i3);
    }

    public int playEffect(String str, boolean z2, float f, float f3, float f4) {
        Integer num = this.mPathSoundIDMap.get(str);
        if (num != null) {
            return doPlayEffect(str, num.intValue(), z2, f, f3, f4);
        }
        int iPreloadEffect = preloadEffect(str);
        Integer numValueOf = Integer.valueOf(iPreloadEffect);
        if (iPreloadEffect == -1) {
            return -1;
        }
        SoundInfoForLoadedCompleted soundInfoForLoadedCompleted = new SoundInfoForLoadedCompleted(str, z2, f, f3, f4);
        this.mPlayWhenLoadedEffects.putIfAbsent(numValueOf, soundInfoForLoadedCompleted);
        synchronized (soundInfoForLoadedCompleted) {
            try {
                soundInfoForLoadedCompleted.wait(500L);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        int i3 = soundInfoForLoadedCompleted.effectID;
        this.mPlayWhenLoadedEffects.remove(numValueOf);
        return i3;
    }

    public int preloadEffect(String str) {
        Integer num = this.mPathSoundIDMap.get(str);
        if (num == null) {
            int iCreateSoundIDFromAsset = createSoundIDFromAsset(str);
            Integer numValueOf = Integer.valueOf(iCreateSoundIDFromAsset);
            if (iCreateSoundIDFromAsset != -1) {
                this.mPathSoundIDMap.put(str, numValueOf);
            }
            num = numValueOf;
        }
        return num.intValue();
    }

    public void resumeAllEffects() {
        synchronized (this.mLockPathStreamIDsMap) {
            try {
                if (!this.mPathStreamIDsMap.isEmpty()) {
                    Iterator<Map.Entry<String, ArrayList<Integer>>> it = this.mPathStreamIDsMap.entrySet().iterator();
                    while (it.hasNext()) {
                        ArrayList<Integer> value = it.next().getValue();
                        int size = value.size();
                        int i3 = 0;
                        while (i3 < size) {
                            Integer num = value.get(i3);
                            i3++;
                            this.mSoundPool.resume(num.intValue());
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void resumeEffect(int i3) {
        this.mSoundPool.resume(i3);
    }

    public void setAudioFocus(boolean z2) {
        this.mIsAudioFocus = z2;
        setEffectsVolumeInternal(z2 ? this.mLeftVolume : 0.0f, z2 ? this.mRightVolume : 0.0f);
    }

    public void setEffectsVolume(float f) {
        if (f < 0.0f) {
            f = 0.0f;
        }
        if (f > SOUND_RATE) {
            f = 1.0f;
        }
        this.mRightVolume = f;
        this.mLeftVolume = f;
        if (this.mIsAudioFocus) {
            setEffectsVolumeInternal(f, f);
        }
    }

    public void stopAllEffects() {
        synchronized (this.mLockPathStreamIDsMap) {
            try {
                if (!this.mPathStreamIDsMap.isEmpty()) {
                    Iterator<Map.Entry<String, ArrayList<Integer>>> it = this.mPathStreamIDsMap.entrySet().iterator();
                    while (it.hasNext()) {
                        ArrayList<Integer> value = it.next().getValue();
                        int size = value.size();
                        int i3 = 0;
                        while (i3 < size) {
                            Integer num = value.get(i3);
                            i3++;
                            this.mSoundPool.stop(num.intValue());
                        }
                    }
                }
                this.mPathStreamIDsMap.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void stopEffect(int i3) {
        this.mSoundPool.stop(i3);
        synchronized (this.mLockPathStreamIDsMap) {
            try {
                for (String str : this.mPathStreamIDsMap.keySet()) {
                    if (this.mPathStreamIDsMap.get(str).contains(Integer.valueOf(i3))) {
                        this.mPathStreamIDsMap.get(str).remove(this.mPathStreamIDsMap.get(str).indexOf(Integer.valueOf(i3)));
                        break;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void unloadEffect(String str) {
        synchronized (this.mLockPathStreamIDsMap) {
            try {
                ArrayList<Integer> arrayList = this.mPathStreamIDsMap.get(str);
                if (arrayList != null) {
                    int size = arrayList.size();
                    int i3 = 0;
                    while (i3 < size) {
                        Integer num = arrayList.get(i3);
                        i3++;
                        this.mSoundPool.stop(num.intValue());
                    }
                }
                this.mPathStreamIDsMap.remove(str);
            } catch (Throwable th) {
                throw th;
            }
        }
        Integer num2 = this.mPathSoundIDMap.get(str);
        if (num2 != null) {
            this.mSoundPool.unload(num2.intValue());
            this.mPathSoundIDMap.remove(str);
        }
    }
}
