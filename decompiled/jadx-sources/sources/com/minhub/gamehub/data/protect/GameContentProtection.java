package com.minhub.gamehub.data.protect;

import android.util.Log;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.util.Arrays;
import javax.crypto.SecretKey;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.ByteStreamsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u000b\u001a\u00020\tJ\u0006\u0010\f\u001a\u00020\rJ\b\u0010\u000e\u001a\u00020\tH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\n¨\u0006\u000f"}, d2 = {"Lcom/minhub/gamehub/data/protect/GameContentProtection;", "", "<init>", "()V", "TAG", "", "PROBE", "", "cached", "", "Ljava/lang/Boolean;", "isUsable", "invalidate", "", "runProbe", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGameContentProtection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameContentProtection.kt\ncom/minhub/gamehub/data/protect/GameContentProtection\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,71:1\n1#2:72\n*E\n"})
public final class GameContentProtection {
    public static final GameContentProtection INSTANCE = new GameContentProtection();
    private static final byte[] PROBE;
    private static final String TAG = "MinHub-Protect";
    private static volatile Boolean cached;

    static {
        byte[] bytes = "MinHub content protection probe — kiểm tra thật".getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        PROBE = bytes;
    }

    private GameContentProtection() {
    }

    private final boolean runProbe() {
        try {
            SecretKey orCreate = GameContentKeys.INSTANCE.getOrCreate();
            if (orCreate == null) {
                return false;
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GameContentCipher gameContentCipher = GameContentCipher.INSTANCE;
            byte[] bArr = PROBE;
            GameContentCipher.encrypt$default(gameContentCipher, new ByteArrayInputStream(bArr), byteArrayOutputStream, orCreate, null, 8, null);
            boolean zEquals = Arrays.equals(ByteStreamsKt.readBytes(gameContentCipher.decrypt(new ByteArrayInputStream(byteArrayOutputStream.toByteArray()), orCreate)), bArr);
            if (zEquals) {
                return zEquals;
            }
            Log.w(TAG, "probe round-trip returned different bytes; refusing to protect content");
            return zEquals;
        } catch (Exception e2) {
            Log.w(TAG, "probe failed: " + e2.getClass().getSimpleName() + ": " + e2.getMessage());
            return false;
        }
    }

    public final void invalidate() {
        synchronized (this) {
            cached = null;
            Unit unit = Unit.INSTANCE;
        }
    }

    public final boolean isUsable() {
        String str;
        boolean zBooleanValue;
        Boolean bool = cached;
        if (bool != null) {
            return bool.booleanValue();
        }
        synchronized (this) {
            try {
                Boolean bool2 = cached;
                if (bool2 != null) {
                    zBooleanValue = bool2.booleanValue();
                } else {
                    boolean zRunProbe = INSTANCE.runProbe();
                    cached = Boolean.valueOf(zRunProbe);
                    if (zRunProbe) {
                        str = "content protection available; key backed by " + GameContentKeys.INSTANCE.backingDescription();
                    } else {
                        str = "content protection NOT available";
                    }
                    Log.i(TAG, str);
                    zBooleanValue = zRunProbe;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zBooleanValue;
    }
}
