package H;

import android.os.Bundle;
import android.text.Editable;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.widget.EditText;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b extends InputConnectionWrapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final EditText f1043a;
    public final Y0.e b;

    public b(EditText editText, InputConnection inputConnection, EditorInfo editorInfo) {
        Y0.e eVar = new Y0.e(7);
        super(inputConnection, false);
        this.f1043a = editText;
        this.b = eVar;
        if (androidx.emoji2.text.j.f2876k != null) {
            androidx.emoji2.text.j jVarA = androidx.emoji2.text.j.a();
            if (jVarA.b() != 1 || editorInfo == null) {
                return;
            }
            if (editorInfo.extras == null) {
                editorInfo.extras = new Bundle();
            }
            androidx.emoji2.text.f fVar = jVarA.f2880e;
            fVar.getClass();
            Bundle bundle = editorInfo.extras;
            G.b bVar = (G.b) fVar.f2874c.f1493a;
            int iA = bVar.a(4);
            bundle.putInt("android.support.text.emoji.emojiCompat_metadataVersion", iA != 0 ? bVar.b.getInt(iA + bVar.f984a) : 0);
            editorInfo.extras.putBoolean("android.support.text.emoji.emojiCompat_replaceAll", false);
        }
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean deleteSurroundingText(int i3, int i4) {
        Editable editableText = this.f1043a.getEditableText();
        this.b.getClass();
        return Y0.e.m(this, editableText, i3, i4, false) || super.deleteSurroundingText(i3, i4);
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean deleteSurroundingTextInCodePoints(int i3, int i4) {
        Editable editableText = this.f1043a.getEditableText();
        this.b.getClass();
        return Y0.e.m(this, editableText, i3, i4, true) || super.deleteSurroundingTextInCodePoints(i3, i4);
    }
}
