package org.cocos2dx.lib;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.util.Log;
import java.io.FileInputStream;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class Cocos2dxMusic {
    private static final String TAG = "Cocos2dxMusic";
    private MediaPlayer mBackgroundMediaPlayer;
    private final Context mContext;
    private String mCurrentPath;
    private float mLeftVolume;
    private boolean mPaused;
    private float mRightVolume;
    private boolean mIsLoop = false;
    private boolean mManualPaused = false;
    private boolean mIsAudioFocus = true;

    public Cocos2dxMusic(Context context) {
        this.mContext = context;
        initData();
    }

    private MediaPlayer createMediaPlayer(String str) {
        MediaPlayer mediaPlayer = new MediaPlayer();
        try {
            if (str.startsWith("/")) {
                FileInputStream fileInputStream = new FileInputStream(str);
                mediaPlayer.setDataSource(fileInputStream.getFD());
                fileInputStream.close();
            } else {
                Cocos2dxHelper.getObbFile();
                AssetFileDescriptor assetFileDescriptorOpenFd = this.mContext.getAssets().openFd(str);
                mediaPlayer.setDataSource(assetFileDescriptorOpenFd.getFileDescriptor(), assetFileDescriptorOpenFd.getStartOffset(), assetFileDescriptorOpenFd.getLength());
            }
            mediaPlayer.prepare();
            mediaPlayer.setVolume(this.mLeftVolume, this.mRightVolume);
            return mediaPlayer;
        } catch (Exception e2) {
            Log.e(TAG, "error: " + e2.getMessage(), e2);
            return null;
        }
    }

    private void initData() {
        this.mLeftVolume = 0.5f;
        this.mRightVolume = 0.5f;
        this.mBackgroundMediaPlayer = null;
        this.mPaused = false;
        this.mCurrentPath = null;
    }

    public void end() {
        MediaPlayer mediaPlayer = this.mBackgroundMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.release();
        }
        initData();
    }

    public float getBackgroundVolume() {
        if (this.mBackgroundMediaPlayer != null) {
            return (this.mLeftVolume + this.mRightVolume) / 2.0f;
        }
        return 0.0f;
    }

    public boolean isBackgroundMusicPlaying() {
        try {
            MediaPlayer mediaPlayer = this.mBackgroundMediaPlayer;
            if (mediaPlayer == null) {
                return false;
            }
            return mediaPlayer.isPlaying();
        } catch (IllegalStateException unused) {
            Log.e(TAG, "isBackgroundMusicPlaying, IllegalStateException was triggered!");
            return false;
        }
    }

    public void onEnterBackground() {
        try {
            MediaPlayer mediaPlayer = this.mBackgroundMediaPlayer;
            if (mediaPlayer == null || !mediaPlayer.isPlaying()) {
                return;
            }
            this.mBackgroundMediaPlayer.pause();
            this.mPaused = true;
        } catch (IllegalStateException unused) {
            Log.e(TAG, "onEnterBackground, IllegalStateException was triggered!");
        }
    }

    public void onEnterForeground() {
        MediaPlayer mediaPlayer;
        try {
            if (this.mManualPaused || (mediaPlayer = this.mBackgroundMediaPlayer) == null || !this.mPaused) {
                return;
            }
            mediaPlayer.start();
            this.mPaused = false;
        } catch (IllegalStateException unused) {
            Log.e(TAG, "onEnterForeground, IllegalStateException was triggered!");
        }
    }

    public void pauseBackgroundMusic() {
        try {
            MediaPlayer mediaPlayer = this.mBackgroundMediaPlayer;
            if (mediaPlayer == null || !mediaPlayer.isPlaying()) {
                return;
            }
            this.mBackgroundMediaPlayer.pause();
            this.mPaused = true;
            this.mManualPaused = true;
        } catch (IllegalStateException unused) {
            Log.e(TAG, "pauseBackgroundMusic, IllegalStateException was triggered!");
        }
    }

    public void playBackgroundMusic(String str, boolean z2) {
        String str2 = this.mCurrentPath;
        if (str2 == null) {
            this.mBackgroundMediaPlayer = createMediaPlayer(str);
            this.mCurrentPath = str;
        } else if (!str2.equals(str)) {
            MediaPlayer mediaPlayer = this.mBackgroundMediaPlayer;
            if (mediaPlayer != null) {
                mediaPlayer.release();
            }
            this.mBackgroundMediaPlayer = createMediaPlayer(str);
            this.mCurrentPath = str;
        }
        MediaPlayer mediaPlayer2 = this.mBackgroundMediaPlayer;
        if (mediaPlayer2 == null) {
            Log.e(TAG, "playBackgroundMusic: background media player is null");
            return;
        }
        try {
            if (this.mPaused) {
                mediaPlayer2.seekTo(0);
                this.mBackgroundMediaPlayer.start();
            } else if (mediaPlayer2.isPlaying()) {
                this.mBackgroundMediaPlayer.seekTo(0);
            } else {
                this.mBackgroundMediaPlayer.start();
            }
            this.mBackgroundMediaPlayer.setLooping(z2);
            this.mPaused = false;
            this.mIsLoop = z2;
        } catch (Exception unused) {
            Log.e(TAG, "playBackgroundMusic: error state");
        }
    }

    public void preloadBackgroundMusic(String str) {
        String str2 = this.mCurrentPath;
        if (str2 == null || !str2.equals(str)) {
            MediaPlayer mediaPlayer = this.mBackgroundMediaPlayer;
            if (mediaPlayer != null) {
                mediaPlayer.release();
            }
            this.mBackgroundMediaPlayer = createMediaPlayer(str);
            this.mCurrentPath = str;
        }
    }

    public void resumeBackgroundMusic() {
        try {
            MediaPlayer mediaPlayer = this.mBackgroundMediaPlayer;
            if (mediaPlayer == null || !this.mPaused) {
                return;
            }
            mediaPlayer.start();
            this.mPaused = false;
            this.mManualPaused = false;
        } catch (IllegalStateException unused) {
            Log.e(TAG, "resumeBackgroundMusic, IllegalStateException was triggered!");
        }
    }

    public void rewindBackgroundMusic() {
        if (this.mBackgroundMediaPlayer != null) {
            playBackgroundMusic(this.mCurrentPath, this.mIsLoop);
        }
    }

    public void setAudioFocus(boolean z2) {
        this.mIsAudioFocus = z2;
        MediaPlayer mediaPlayer = this.mBackgroundMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.setVolume(z2 ? this.mLeftVolume : 0.0f, z2 ? this.mRightVolume : 0.0f);
        }
    }

    public void setBackgroundVolume(float f) {
        if (f < 0.0f) {
            f = 0.0f;
        }
        if (f > 1.0f) {
            f = 1.0f;
        }
        this.mRightVolume = f;
        this.mLeftVolume = f;
        MediaPlayer mediaPlayer = this.mBackgroundMediaPlayer;
        if (mediaPlayer == null || !this.mIsAudioFocus) {
            return;
        }
        mediaPlayer.setVolume(f, f);
    }

    public void stopBackgroundMusic() {
        MediaPlayer mediaPlayer = this.mBackgroundMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.release();
            this.mBackgroundMediaPlayer = createMediaPlayer(this.mCurrentPath);
            this.mPaused = false;
        }
    }

    public boolean willPlayBackgroundMusic() {
        return !((AudioManager) this.mContext.getSystemService("audio")).isMusicActive();
    }
}
