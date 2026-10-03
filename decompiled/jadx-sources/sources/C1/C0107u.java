package C1;

import android.net.Uri;
import android.text.Editable;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.minhub.gamehub.R;
import com.minhub.gamehub.hub.AddGameActivity;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: renamed from: C1.u, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0107u implements Function1 {
    public final /* synthetic */ AddGameActivity b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TextView f689c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ EditText f690d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Button f691e;

    public /* synthetic */ C0107u(AddGameActivity addGameActivity, TextView textView, EditText editText, Button button) {
        this.b = addGameActivity;
        this.f689c = textView;
        this.f690d = editText;
        this.f691e = button;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        AddGameActivity addGameActivity = this.b;
        Uri uri = (Uri) obj;
        Intrinsics.checkNotNullParameter(uri, "uri");
        try {
            Result.Companion companion = Result.INSTANCE;
            addGameActivity.getContentResolver().takePersistableUriPermission(uri, 1);
            Result.m9constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m9constructorimpl(ResultKt.createFailure(th));
        }
        addGameActivity.f3748n = uri;
        String strH = E.a.g(addGameActivity, uri).h();
        if (strH == null) {
            strH = "game";
        }
        TextView textView = this.f689c;
        textView.setText(strH);
        textView.setTextColor(addGameActivity.getColor(R.color.text_pri));
        EditText editText = this.f690d;
        Editable text = editText.getText();
        Intrinsics.checkNotNullExpressionValue(text, "getText(...)");
        if (StringsKt.isBlank(text)) {
            editText.setText(strH);
        }
        Editable text2 = editText.getText();
        Intrinsics.checkNotNullExpressionValue(text2, "getText(...)");
        this.f691e.setEnabled((StringsKt.isBlank(text2) || addGameActivity.f3748n == null) ? false : true);
        return Unit.INSTANCE;
    }
}
