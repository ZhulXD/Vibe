package C1;

import android.view.View;
import java.util.List;
import kotlin.jvm.internal.Ref;
import org.godotengine.godot.utils.DialogUtils;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class O1 implements View.OnClickListener {
    public final /* synthetic */ int b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f480c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f481d;

    public /* synthetic */ O1(int i3, Ref.ObjectRef objectRef) {
        this.f480c = i3;
        this.f481d = objectRef;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.b) {
            case 0:
                C0076j0 c0076j0 = (C0076j0) this.f481d;
                B1.d dVar = (B1.d) c0076j0.f;
                if (dVar != null) {
                    dVar.invoke(Integer.valueOf(this.f480c), (List) c0076j0.f625e);
                }
                break;
            default:
                DialogUtils.Companion.showDialog$lambda$4$lambda$2$lambda$1(this.f480c, (Ref.ObjectRef) this.f481d, view);
                break;
        }
    }

    public /* synthetic */ O1(C0076j0 c0076j0, int i3) {
        this.f481d = c0076j0;
        this.f480c = i3;
    }
}
