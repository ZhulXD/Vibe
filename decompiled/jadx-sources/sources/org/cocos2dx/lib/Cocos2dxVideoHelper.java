package org.cocos2dx.lib;

import android.graphics.Rect;
import android.os.Handler;
import android.os.Message;
import android.util.SparseArray;
import android.widget.FrameLayout;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class Cocos2dxVideoHelper {
    static final int KeyEventBack = 1000;
    private static final int VideoTaskCreate = 0;
    private static final int VideoTaskFullScreen = 12;
    private static final int VideoTaskKeepRatio = 11;
    private static final int VideoTaskPause = 5;
    private static final int VideoTaskRemove = 1;
    private static final int VideoTaskRestart = 10;
    private static final int VideoTaskResume = 6;
    private static final int VideoTaskSeek = 8;
    private static final int VideoTaskSetLooping = 13;
    private static final int VideoTaskSetRect = 3;
    private static final int VideoTaskSetSource = 2;
    private static final int VideoTaskSetUserInputEnabled = 14;
    private static final int VideoTaskSetVisible = 9;
    private static final int VideoTaskStart = 4;
    private static final int VideoTaskStop = 7;
    static VideoHandler mVideoHandler;
    private static int videoTag;
    private Cocos2dxActivity mActivity;
    private FrameLayout mLayout;
    private SparseArray<Cocos2dxVideoView> sVideoViews;
    Cocos2dxVideoView.OnVideoEventListener videoEventListener = new Cocos2dxVideoView.OnVideoEventListener() { // from class: org.cocos2dx.lib.Cocos2dxVideoHelper.1
        @Override // org.cocos2dx.lib.Cocos2dxVideoView.OnVideoEventListener
        public void onVideoEvent(int i3, int i4) {
            Cocos2dxVideoHelper.this.mActivity.runOnGLThread(Cocos2dxVideoHelper.this.new VideoEventRunnable(i3, i4));
        }
    };

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public class VideoEventRunnable implements Runnable {
        private int mVideoEvent;
        private int mVideoTag;

        public VideoEventRunnable(int i3, int i4) {
            this.mVideoTag = i3;
            this.mVideoEvent = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            Cocos2dxVideoHelper.nativeExecuteVideoCallback(this.mVideoTag, this.mVideoEvent);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public static class VideoHandler extends Handler {
        WeakReference<Cocos2dxVideoHelper> mReference;

        public VideoHandler(Cocos2dxVideoHelper cocos2dxVideoHelper) {
            this.mReference = new WeakReference<>(cocos2dxVideoHelper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i3 = message.what;
            if (i3 != 1000) {
                switch (i3) {
                    case 0:
                        this.mReference.get()._createVideoView(message.arg1);
                        break;
                    case 1:
                        this.mReference.get()._removeVideoView(message.arg1);
                        break;
                    case 2:
                        this.mReference.get()._setVideoURL(message.arg1, message.arg2, (String) message.obj);
                        break;
                    case 3:
                        Cocos2dxVideoHelper cocos2dxVideoHelper = this.mReference.get();
                        Rect rect = (Rect) message.obj;
                        cocos2dxVideoHelper._setVideoRect(message.arg1, rect.left, rect.top, rect.right, rect.bottom);
                        break;
                    case 4:
                        this.mReference.get()._startVideo(message.arg1);
                        break;
                    case 5:
                        this.mReference.get()._pauseVideo(message.arg1);
                        break;
                    case 6:
                        this.mReference.get()._resumeVideo(message.arg1);
                        break;
                    case 7:
                        this.mReference.get()._stopVideo(message.arg1);
                        break;
                    case 8:
                        this.mReference.get()._seekVideoTo(message.arg1, message.arg2);
                        break;
                    case 9:
                        Cocos2dxVideoHelper cocos2dxVideoHelper2 = this.mReference.get();
                        if (message.arg2 != 1) {
                            cocos2dxVideoHelper2._setVideoVisible(message.arg1, false);
                        } else {
                            cocos2dxVideoHelper2._setVideoVisible(message.arg1, true);
                        }
                        break;
                    case 10:
                        this.mReference.get()._restartVideo(message.arg1);
                        break;
                    case 11:
                        Cocos2dxVideoHelper cocos2dxVideoHelper3 = this.mReference.get();
                        if (message.arg2 != 1) {
                            cocos2dxVideoHelper3._setVideoKeepRatio(message.arg1, false);
                        } else {
                            cocos2dxVideoHelper3._setVideoKeepRatio(message.arg1, true);
                        }
                        break;
                    case 12:
                        Cocos2dxVideoHelper cocos2dxVideoHelper4 = this.mReference.get();
                        Rect rect2 = (Rect) message.obj;
                        if (message.arg2 != 1) {
                            cocos2dxVideoHelper4._setFullScreenEnabled(message.arg1, false, rect2.right, rect2.bottom);
                        } else {
                            cocos2dxVideoHelper4._setFullScreenEnabled(message.arg1, true, rect2.right, rect2.bottom);
                        }
                        break;
                    case 13:
                        this.mReference.get()._setLooping(message.arg1, message.arg2 != 0);
                        break;
                    case 14:
                        this.mReference.get()._setUserInputEnabled(message.arg1, message.arg2 != 0);
                        break;
                }
            } else {
                this.mReference.get().onBackKeyEvent();
            }
            super.handleMessage(message);
        }
    }

    public Cocos2dxVideoHelper(Cocos2dxActivity cocos2dxActivity, FrameLayout frameLayout) {
        this.mLayout = null;
        this.mActivity = null;
        this.sVideoViews = null;
        this.mActivity = cocos2dxActivity;
        this.mLayout = frameLayout;
        mVideoHandler = new VideoHandler(this);
        this.sVideoViews = new SparseArray<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _createVideoView(int i3) {
        Cocos2dxVideoView cocos2dxVideoView = new Cocos2dxVideoView(this.mActivity, i3);
        this.sVideoViews.put(i3, cocos2dxVideoView);
        this.mLayout.addView(cocos2dxVideoView, new FrameLayout.LayoutParams(-2, -2));
        cocos2dxVideoView.setZOrderOnTop(true);
        cocos2dxVideoView.setOnCompletionListener(this.videoEventListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _pauseVideo(int i3) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(i3);
        if (cocos2dxVideoView != null) {
            cocos2dxVideoView.pause();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _removeVideoView(int i3) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(i3);
        if (cocos2dxVideoView != null) {
            cocos2dxVideoView.stopPlayback();
            this.sVideoViews.remove(i3);
            this.mLayout.removeView(cocos2dxVideoView);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _restartVideo(int i3) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(i3);
        if (cocos2dxVideoView != null) {
            cocos2dxVideoView.restart();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _resumeVideo(int i3) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(i3);
        if (cocos2dxVideoView != null) {
            cocos2dxVideoView.resume();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _seekVideoTo(int i3, int i4) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(i3);
        if (cocos2dxVideoView != null) {
            cocos2dxVideoView.seekTo(i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _setFullScreenEnabled(int i3, boolean z2, int i4, int i5) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(i3);
        if (cocos2dxVideoView != null) {
            cocos2dxVideoView.setFullScreenEnabled(z2, i4, i5);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _setLooping(int i3, boolean z2) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(i3);
        if (cocos2dxVideoView != null) {
            cocos2dxVideoView.setLooping(z2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _setUserInputEnabled(int i3, boolean z2) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(i3);
        if (cocos2dxVideoView != null) {
            cocos2dxVideoView.setUserInputEnabled(z2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _setVideoKeepRatio(int i3, boolean z2) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(i3);
        if (cocos2dxVideoView != null) {
            cocos2dxVideoView.setKeepRatio(z2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _setVideoRect(int i3, int i4, int i5, int i6, int i7) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(i3);
        if (cocos2dxVideoView != null) {
            cocos2dxVideoView.setVideoRect(i4, i5, i6, i7);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _setVideoURL(int i3, int i4, String str) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(i3);
        if (cocos2dxVideoView != null) {
            if (i4 == 0) {
                cocos2dxVideoView.setVideoFileName(str);
            } else {
                if (i4 != 1) {
                    return;
                }
                cocos2dxVideoView.setVideoURL(str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _setVideoVisible(int i3, boolean z2) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(i3);
        if (cocos2dxVideoView != null) {
            if (!z2) {
                cocos2dxVideoView.setVisibility(4);
            } else {
                cocos2dxVideoView.fixSize();
                cocos2dxVideoView.setVisibility(0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _startVideo(int i3) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(i3);
        if (cocos2dxVideoView != null) {
            cocos2dxVideoView.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _stopVideo(int i3) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(i3);
        if (cocos2dxVideoView != null) {
            cocos2dxVideoView.stop();
        }
    }

    public static int createVideoWidget() {
        Message message = new Message();
        message.what = 0;
        message.arg1 = videoTag;
        mVideoHandler.sendMessage(message);
        int i3 = videoTag;
        videoTag = i3 + 1;
        return i3;
    }

    public static native void nativeExecuteVideoCallback(int i3, int i4);

    /* JADX INFO: Access modifiers changed from: private */
    public void onBackKeyEvent() {
        int size = this.sVideoViews.size();
        for (int i3 = 0; i3 < size; i3++) {
            int iKeyAt = this.sVideoViews.keyAt(i3);
            Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(iKeyAt);
            if (cocos2dxVideoView != null) {
                cocos2dxVideoView.setFullScreenEnabled(false, 0, 0);
                this.mActivity.runOnGLThread(new VideoEventRunnable(iKeyAt, 1000));
            }
        }
    }

    public static void pauseVideo(int i3) {
        Message message = new Message();
        message.what = 5;
        message.arg1 = i3;
        mVideoHandler.sendMessage(message);
    }

    public static void removeVideoWidget(int i3) {
        Message message = new Message();
        message.what = 1;
        message.arg1 = i3;
        mVideoHandler.sendMessage(message);
    }

    public static void restartVideo(int i3) {
        Message message = new Message();
        message.what = 10;
        message.arg1 = i3;
        mVideoHandler.sendMessage(message);
    }

    public static void resumeVideo(int i3) {
        Message message = new Message();
        message.what = 6;
        message.arg1 = i3;
        mVideoHandler.sendMessage(message);
    }

    public static void seekVideoTo(int i3, int i4) {
        Message message = new Message();
        message.what = 8;
        message.arg1 = i3;
        message.arg2 = i4;
        mVideoHandler.sendMessage(message);
    }

    public static void setFullScreenEnabled(int i3, boolean z2, int i4, int i5) {
        Message message = new Message();
        message.what = 12;
        message.arg1 = i3;
        if (z2) {
            message.arg2 = 1;
        } else {
            message.arg2 = 0;
        }
        message.obj = new Rect(0, 0, i4, i5);
        mVideoHandler.sendMessage(message);
    }

    public static void setLooping(int i3, boolean z2) {
        Message message = new Message();
        message.what = 13;
        message.arg1 = i3;
        message.arg2 = z2 ? 1 : 0;
        mVideoHandler.sendMessage(message);
    }

    public static void setUserInputEnabled(int i3, boolean z2) {
        Message message = new Message();
        message.what = 14;
        message.arg1 = i3;
        message.arg2 = z2 ? 1 : 0;
        mVideoHandler.sendMessage(message);
    }

    public static void setVideoKeepRatioEnabled(int i3, boolean z2) {
        Message message = new Message();
        message.what = 11;
        message.arg1 = i3;
        if (z2) {
            message.arg2 = 1;
        } else {
            message.arg2 = 0;
        }
        mVideoHandler.sendMessage(message);
    }

    public static void setVideoRect(int i3, int i4, int i5, int i6, int i7) {
        Message message = new Message();
        message.what = 3;
        message.arg1 = i3;
        message.obj = new Rect(i4, i5, i6, i7);
        mVideoHandler.sendMessage(message);
    }

    public static void setVideoUrl(int i3, int i4, String str) {
        Message message = new Message();
        message.what = 2;
        message.arg1 = i3;
        message.arg2 = i4;
        message.obj = str;
        mVideoHandler.sendMessage(message);
    }

    public static void setVideoVisible(int i3, boolean z2) {
        Message message = new Message();
        message.what = 9;
        message.arg1 = i3;
        if (z2) {
            message.arg2 = 1;
        } else {
            message.arg2 = 0;
        }
        mVideoHandler.sendMessage(message);
    }

    public static void startVideo(int i3) {
        Message message = new Message();
        message.what = 4;
        message.arg1 = i3;
        mVideoHandler.sendMessage(message);
    }

    public static void stopVideo(int i3) {
        Message message = new Message();
        message.what = 7;
        message.arg1 = i3;
        mVideoHandler.sendMessage(message);
    }
}
