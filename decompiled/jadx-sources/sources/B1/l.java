package B1;

import android.content.Context;
import android.content.Intent;
import android.os.Vibrator;
import android.widget.Toast;
import androidx.core.content.ContextCompat;
import com.minhub.gamehub.R;
import com.minhub.gamehub.hub.LoginActivity;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class l implements Function0 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f324c;

    public /* synthetic */ l(Context context, int i3) {
        this.b = i3;
        this.f324c = context;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i3 = this.b;
        Context context = this.f324c;
        switch (i3) {
            case 0:
                return (Vibrator) ContextCompat.getSystemService(context, Vibrator.class);
            default:
                int i4 = LoginActivity.f3793l;
                Toast.makeText(context, context.getString(R.string.login_session_expired), 1).show();
                Intent intent = new Intent(context, (Class<?>) LoginActivity.class);
                intent.addFlags(268468224);
                context.startActivity(intent);
                return Unit.INSTANCE;
        }
    }
}
