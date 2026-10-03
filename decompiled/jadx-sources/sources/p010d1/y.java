package p010d1;

import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.EditText;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class y extends AccessibilityDelegateCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextInputLayout f3979a;

    public y(TextInputLayout textInputLayout) {
        this.f3979a = textInputLayout;
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        TextInputLayout textInputLayout = this.f3979a;
        EditText editText = textInputLayout.getEditText();
        CharSequence text = editText != null ? editText.getText() : null;
        CharSequence hint = textInputLayout.getHint();
        CharSequence error = textInputLayout.getError();
        CharSequence placeholderText = textInputLayout.getPlaceholderText();
        int counterMaxLength = textInputLayout.getCounterMaxLength();
        CharSequence counterOverflowDescription = textInputLayout.getCounterOverflowDescription();
        boolean zIsEmpty = TextUtils.isEmpty(text);
        boolean zIsEmpty2 = TextUtils.isEmpty(hint);
        boolean z2 = textInputLayout.f3618v0;
        boolean zIsEmpty3 = TextUtils.isEmpty(error);
        boolean z3 = (zIsEmpty3 && TextUtils.isEmpty(counterOverflowDescription)) ? false : true;
        String string = !zIsEmpty2 ? hint.toString() : "";
        w wVar = textInputLayout.f3584c;
        View view2 = wVar.f3970c;
        if (view2.getVisibility() == 0) {
            accessibilityNodeInfoCompat.setLabelFor(view2);
            accessibilityNodeInfoCompat.setTraversalAfter(view2);
        } else {
            accessibilityNodeInfoCompat.setTraversalAfter(wVar.f3972e);
        }
        if (!zIsEmpty) {
            accessibilityNodeInfoCompat.setText(text);
        } else if (!TextUtils.isEmpty(string)) {
            accessibilityNodeInfoCompat.setText(string);
            if (!z2 && placeholderText != null) {
                accessibilityNodeInfoCompat.setText(string + ", " + ((Object) placeholderText));
            }
        } else if (placeholderText != null) {
            accessibilityNodeInfoCompat.setText(placeholderText);
        }
        if (!TextUtils.isEmpty(string)) {
            if (Build.VERSION.SDK_INT >= 26) {
                accessibilityNodeInfoCompat.setHintText(string);
            } else {
                if (!zIsEmpty) {
                    string = ((Object) text) + ", " + string;
                }
                accessibilityNodeInfoCompat.setText(string);
            }
            accessibilityNodeInfoCompat.setShowingHintText(zIsEmpty);
        }
        if (text == null || text.length() != counterMaxLength) {
            counterMaxLength = -1;
        }
        accessibilityNodeInfoCompat.setMaxTextLength(counterMaxLength);
        if (z3) {
            if (zIsEmpty3) {
                error = counterOverflowDescription;
            }
            accessibilityNodeInfoCompat.setError(error);
        }
        View view3 = textInputLayout.f3598k.f3958y;
        if (view3 != null) {
            accessibilityNodeInfoCompat.setLabelFor(view3);
        }
        textInputLayout.f3586d.b().m(accessibilityNodeInfoCompat);
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(view, accessibilityEvent);
        this.f3979a.f3586d.b().n(accessibilityEvent);
    }
}
