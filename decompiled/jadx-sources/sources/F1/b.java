package F1;

import A1.r;
import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import androidx.fragment.app.DialogFragment;
import com.minhub.gamehub.R;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import p011e.C0240b;
import p011e.DialogInterfaceC0245g;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"LF1/b;", "Landroidx/fragment/app/DialogFragment;", "<init>", "()V", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nKeyMapDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KeyMapDialog.kt\ncom/minhub/gamehub/keyboard/KeyMapDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,107:1\n1869#2:108\n1869#2,2:109\n1870#2:111\n1869#2,2:112\n*S KotlinDebug\n*F\n+ 1 KeyMapDialog.kt\ncom/minhub/gamehub/keyboard/KeyMapDialog\n*L\n66#1:108\n69#1:109,2\n66#1:111\n88#1:112,2\n*E\n"})
public final class b extends DialogFragment {
    public r b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f972c = "";

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        String string;
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        if (arguments == null || (string = arguments.getString("button_label")) == null) {
            string = "";
        }
        this.f972c = string;
    }

    @Override // androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        View viewInflate = LayoutInflater.from(requireContext()).inflate(R.layout.dialog_key_map, (ViewGroup) null);
        Intrinsics.checkNotNull(viewInflate);
        final int i3 = 0;
        final int i4 = 1;
        List<List> listListOf = CollectionsKt.listOf((Object[]) new List[]{CollectionsKt.listOf((Object[]) new String[]{"Esc", "1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "-", "=", "⌫"}), CollectionsKt.listOf((Object[]) new String[]{"Tab", "Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P", "[", "]"}), CollectionsKt.listOf((Object[]) new String[]{"Caps", "A", "S", "D", "F", "G", "H", "J", "K", "L", ";", "'", "Enter"}), CollectionsKt.listOf((Object[]) new String[]{"Shift", "Z", "X", "C", "V", "B", "N", "M", ",", ".", "/", "Shift"}), CollectionsKt.listOf((Object[]) new String[]{"Ctrl", "Alt", "Space", "Alt", "Ctrl"})});
        ViewGroup viewGroup = (ViewGroup) viewInflate.findViewById(R.id.mini_keyboard_container);
        for (List<String> list : listListOf) {
            View viewInflate2 = LayoutInflater.from(getContext()).inflate(R.layout.row_mini_keyboard, viewGroup, false);
            Intrinsics.checkNotNull(viewInflate2, "null cannot be cast to non-null type android.view.ViewGroup");
            ViewGroup viewGroup2 = (ViewGroup) viewInflate2;
            for (final String str : list) {
                Button button = new Button(requireContext());
                button.setText(str);
                button.setTextSize(10.0f);
                button.setOnClickListener(new View.OnClickListener(this) { // from class: F1.a

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ b f970c;

                    {
                        this.f970c = this;
                    }

                    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        switch (i3) {
                            case 0:
                                b bVar = this.f970c;
                                r rVar = bVar.b;
                                if (rVar != null) {
                                    String lowerCase = str.toLowerCase(Locale.ROOT);
                                    Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                                    rVar.invoke(lowerCase);
                                }
                                bVar.dismiss();
                                break;
                            default:
                                b bVar2 = this.f970c;
                                r rVar2 = bVar2.b;
                                if (rVar2 != null) {
                                    String str2 = str;
                                    switch (str2.hashCode()) {
                                        case 8592:
                                            if (str2.equals("←")) {
                                                str2 = "ArrowLeft";
                                            }
                                            break;
                                        case 8593:
                                            if (str2.equals("↑")) {
                                                str2 = "ArrowUp";
                                            }
                                            break;
                                        case 8594:
                                            if (str2.equals("→")) {
                                                str2 = "ArrowRight";
                                            }
                                            break;
                                        case 8595:
                                            if (str2.equals("↓")) {
                                                str2 = "ArrowDown";
                                            }
                                            break;
                                    }
                                    String lowerCase2 = str2.toLowerCase(Locale.ROOT);
                                    Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
                                    rVar2.invoke(lowerCase2);
                                }
                                bVar2.dismiss();
                                break;
                        }
                    }
                });
                viewGroup2.addView(button);
            }
            viewGroup.addView(viewGroup2);
        }
        ViewGroup viewGroup3 = (ViewGroup) viewInflate.findViewById(R.id.special_keys_container);
        for (final String str2 : CollectionsKt.listOf((Object[]) new String[]{"↑", "↓", "←", "→", "Enter", "Space"})) {
            Button button2 = new Button(requireContext());
            button2.setText(str2);
            button2.setTextSize(10.0f);
            button2.setOnClickListener(new View.OnClickListener(this) { // from class: F1.a

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ b f970c;

                {
                    this.f970c = this;
                }

                /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    switch (i4) {
                        case 0:
                            b bVar = this.f970c;
                            r rVar = bVar.b;
                            if (rVar != null) {
                                String lowerCase = str2.toLowerCase(Locale.ROOT);
                                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                                rVar.invoke(lowerCase);
                            }
                            bVar.dismiss();
                            break;
                        default:
                            b bVar2 = this.f970c;
                            r rVar2 = bVar2.b;
                            if (rVar2 != null) {
                                String str3 = str2;
                                switch (str3.hashCode()) {
                                    case 8592:
                                        if (str3.equals("←")) {
                                            str3 = "ArrowLeft";
                                        }
                                        break;
                                    case 8593:
                                        if (str3.equals("↑")) {
                                            str3 = "ArrowUp";
                                        }
                                        break;
                                    case 8594:
                                        if (str3.equals("→")) {
                                            str3 = "ArrowRight";
                                        }
                                        break;
                                    case 8595:
                                        if (str3.equals("↓")) {
                                            str3 = "ArrowDown";
                                        }
                                        break;
                                }
                                String lowerCase2 = str3.toLowerCase(Locale.ROOT);
                                Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
                                rVar2.invoke(lowerCase2);
                            }
                            bVar2.dismiss();
                            break;
                    }
                }
            });
            viewGroup3.addView(button2);
        }
        O0.b bVar = new O0.b(requireContext(), 0);
        String string = getString(R.string.dialog_keymap_title, this.f972c);
        C0240b c0240b = (C0240b) bVar.f4145c;
        c0240b.f4098d = string;
        c0240b.f4112t = viewInflate;
        bVar.g(getString(R.string.dialog_cancel), null);
        DialogInterfaceC0245g dialogInterfaceC0245gC = bVar.c();
        Intrinsics.checkNotNullExpressionValue(dialogInterfaceC0245gC, "create(...)");
        return dialogInterfaceC0245gC;
    }
}
