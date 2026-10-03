package org.godotengine.godot.tts;

import android.content.Context;
import android.os.Bundle;
import android.speech.tts.TextToSpeech;
import android.speech.tts.UtteranceProgressListener;
import android.speech.tts.Voice;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Set;
import org.godotengine.godot.GodotLib;
import p005c.a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@a
public class GodotTTS extends UtteranceProgressListener implements TextToSpeech.OnInitListener {
    private static final int EVENT_BOUNDARY = 3;
    private static final int EVENT_CANCEL = 2;
    private static final int EVENT_END = 1;
    private static final int EVENT_START = 0;
    private static final int INIT_STATE_FAIL = -1;
    private static final int INIT_STATE_SUCCESS = 1;
    private static final int INIT_STATE_UNKNOWN = 0;
    private final Context context;
    private GodotUtterance lastUtterance;
    private final Object lock = new Object();
    private boolean paused;
    private LinkedList<GodotUtterance> queue;
    private boolean speaking;
    private int state;
    private TextToSpeech synth;

    public GodotTTS(Context context) {
        this.context = context;
    }

    private void updateTTS() {
        if (this.speaking || this.queue.size() <= 0) {
            return;
        }
        GodotUtterance godotUtterancePollFirst = this.queue.pollFirst();
        Set<Voice> voices = this.synth.getVoices();
        if (voices == null) {
            return;
        }
        for (Voice voice : voices) {
            if (voice.getName().equals(godotUtterancePollFirst.voice)) {
                this.synth.setVoice(voice);
                break;
            }
        }
        this.synth.setPitch(godotUtterancePollFirst.pitch);
        this.synth.setSpeechRate(godotUtterancePollFirst.rate);
        Bundle bundle = new Bundle();
        bundle.putFloat("volume", godotUtterancePollFirst.volume / 100.0f);
        this.lastUtterance = godotUtterancePollFirst;
        godotUtterancePollFirst.start = 0;
        godotUtterancePollFirst.offset = 0;
        this.paused = false;
        this.synth.speak(godotUtterancePollFirst.text, 0, bundle, String.valueOf(godotUtterancePollFirst.id));
        this.speaking = true;
    }

    public int getState() {
        int i3;
        synchronized (this.lock) {
            i3 = this.state;
        }
        return i3;
    }

    public String[] getVoices() {
        synchronized (this.lock) {
            try {
                int i3 = 0;
                if (this.state != 1) {
                    return new String[0];
                }
                Set<Voice> voices = this.synth.getVoices();
                if (voices == null) {
                    return new String[0];
                }
                String[] strArr = new String[voices.size()];
                for (Voice voice : voices) {
                    strArr[i3] = voice.getLocale().toString() + ";" + voice.getName();
                    i3++;
                }
                return strArr;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void init() {
        this.state = 0;
        this.synth = new TextToSpeech(this.context, this);
        this.queue = new LinkedList<>();
        this.synth.setOnUtteranceProgressListener(this);
    }

    public boolean isPaused() {
        return this.paused;
    }

    public boolean isSpeaking() {
        return this.speaking;
    }

    @Override // android.speech.tts.UtteranceProgressListener
    public void onDone(String str) {
        synchronized (this.lock) {
            try {
                if (this.lastUtterance != null && !this.paused) {
                    long j2 = Long.parseLong(str);
                    long j3 = this.lastUtterance.id;
                    if (j2 == j3) {
                        GodotLib.ttsCallback(1, j3, 0);
                        this.speaking = false;
                        updateTTS();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.speech.tts.UtteranceProgressListener
    public void onError(String str, int i3) {
        synchronized (this.lock) {
            try {
                if (this.lastUtterance != null && !this.paused) {
                    long j2 = Long.parseLong(str);
                    long j3 = this.lastUtterance.id;
                    if (j2 == j3) {
                        GodotLib.ttsCallback(2, j3, 0);
                        this.speaking = false;
                        updateTTS();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.speech.tts.TextToSpeech.OnInitListener
    public void onInit(int i3) {
        synchronized (this.lock) {
            try {
                if (i3 == 0) {
                    this.state = 1;
                } else {
                    this.state = -1;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.speech.tts.UtteranceProgressListener
    public void onRangeStart(String str, int i3, int i4, int i5) {
        synchronized (this.lock) {
            try {
                if (this.lastUtterance != null) {
                    long j2 = Long.parseLong(str);
                    GodotUtterance godotUtterance = this.lastUtterance;
                    long j3 = godotUtterance.id;
                    if (j2 == j3) {
                        godotUtterance.offset = i3;
                        GodotLib.ttsCallback(3, j3, i3 + godotUtterance.start);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.speech.tts.UtteranceProgressListener
    public void onStart(String str) {
        synchronized (this.lock) {
            try {
                GodotUtterance godotUtterance = this.lastUtterance;
                if (godotUtterance != null && godotUtterance.start == 0) {
                    long j2 = Long.parseLong(str);
                    long j3 = this.lastUtterance.id;
                    if (j2 == j3) {
                        GodotLib.ttsCallback(0, j3, 0);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.speech.tts.UtteranceProgressListener
    public void onStop(String str, boolean z2) {
        synchronized (this.lock) {
            try {
                if (this.lastUtterance != null && !this.paused) {
                    long j2 = Long.parseLong(str);
                    long j3 = this.lastUtterance.id;
                    if (j2 == j3) {
                        GodotLib.ttsCallback(2, j3, 0);
                        this.speaking = false;
                        updateTTS();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void pauseSpeaking() {
        synchronized (this.lock) {
            try {
                if (this.state != 1) {
                    return;
                }
                if (!this.paused) {
                    this.paused = true;
                    this.synth.stop();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void resumeSpeaking() {
        synchronized (this.lock) {
            try {
                if (this.state != 1) {
                    return;
                }
                if (this.lastUtterance == null || !this.paused) {
                    this.paused = false;
                } else {
                    Set<Voice> voices = this.synth.getVoices();
                    if (voices == null) {
                        return;
                    }
                    for (Voice voice : voices) {
                        if (voice.getName().equals(this.lastUtterance.voice)) {
                            this.synth.setVoice(voice);
                            break;
                        }
                    }
                    this.synth.setPitch(this.lastUtterance.pitch);
                    this.synth.setSpeechRate(this.lastUtterance.rate);
                    Bundle bundle = new Bundle();
                    bundle.putFloat("volume", this.lastUtterance.volume / 100.0f);
                    GodotUtterance godotUtterance = this.lastUtterance;
                    int i3 = godotUtterance.offset;
                    godotUtterance.start = i3;
                    godotUtterance.offset = 0;
                    this.paused = false;
                    this.synth.speak(godotUtterance.text.substring(i3), 0, bundle, String.valueOf(this.lastUtterance.id));
                    this.speaking = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void speak(String str, String str2, int i3, float f, float f3, long j2, boolean z2) {
        synchronized (this.lock) {
            try {
                if (this.state != 1) {
                    return;
                }
                this.queue.addLast(new GodotUtterance(str, str2, i3, f, f3, j2));
                if (isPaused()) {
                    resumeSpeaking();
                } else {
                    updateTTS();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void stopSpeaking() {
        synchronized (this.lock) {
            try {
                if (this.state != 1) {
                    return;
                }
                Iterator<GodotUtterance> it = this.queue.iterator();
                while (it.hasNext()) {
                    GodotLib.ttsCallback(2, it.next().id, 0);
                }
                this.queue.clear();
                GodotUtterance godotUtterance = this.lastUtterance;
                if (godotUtterance != null) {
                    GodotLib.ttsCallback(2, godotUtterance.id, 0);
                }
                this.lastUtterance = null;
                this.paused = false;
                this.speaking = false;
                this.synth.stop();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.speech.tts.UtteranceProgressListener
    public void onError(String str) {
        synchronized (this.lock) {
            try {
                if (this.lastUtterance != null && !this.paused) {
                    long j2 = Long.parseLong(str);
                    long j3 = this.lastUtterance.id;
                    if (j2 == j3) {
                        GodotLib.ttsCallback(2, j3, 0);
                        this.speaking = false;
                        updateTTS();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
