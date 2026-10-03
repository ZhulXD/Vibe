package android.support.v4.app;

import android.app.Notification;
import android.os.IInterface;
import kotlin.text.Typography;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public interface c extends IInterface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f2601a = "android$support$v4$app$INotificationSideChannel".replace(Typography.dollar, '.');

    void cancel(String str, int i3, String str2);

    void cancelAll(String str);

    void notify(String str, int i3, String str2, Notification notification);
}
