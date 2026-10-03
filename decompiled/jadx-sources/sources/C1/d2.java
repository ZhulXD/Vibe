package C1;

import A1.C0033n;
import A1.C0035p;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.Fragment;
import com.minhub.gamehub.R;
import java.util.Locale;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt___StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"LC1/d2;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nProfileFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProfileFragment.kt\ncom/minhub/gamehub/hub/ProfileFragment\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,60:1\n257#2,2:61\n1#3:63\n*S KotlinDebug\n*F\n+ 1 ProfileFragment.kt\ncom/minhub/gamehub/hub/ProfileFragment\n*L\n34#1:61,2\n*E\n"})
public final class d2 extends Fragment {
    public p058w1.h b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Lazy f578c = LazyKt.lazy(new C0033n(6, this));

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater i3, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkNotNullParameter(i3, "i");
        View viewInflate = i3.inflate(R.layout.fragment_profile, viewGroup, false);
        int i4 = R.id.btn_logout;
        Button button = (Button) viewInflate.findViewById(R.id.btn_logout);
        if (button != null) {
            i4 = R.id.tv_avatar_letter;
            TextView textView = (TextView) viewInflate.findViewById(R.id.tv_avatar_letter);
            if (textView != null) {
                i4 = R.id.tv_email;
                TextView textView2 = (TextView) viewInflate.findViewById(R.id.tv_email);
                if (textView2 != null) {
                    i4 = R.id.tv_hours;
                    TextView textView3 = (TextView) viewInflate.findViewById(R.id.tv_hours);
                    if (textView3 != null) {
                        i4 = R.id.tv_installed;
                        TextView textView4 = (TextView) viewInflate.findViewById(R.id.tv_installed);
                        if (textView4 != null) {
                            i4 = R.id.tv_patreon_badge;
                            TextView textView5 = (TextView) viewInflate.findViewById(R.id.tv_patreon_badge);
                            if (textView5 != null) {
                                i4 = R.id.tv_plugins;
                                TextView textView6 = (TextView) viewInflate.findViewById(R.id.tv_plugins);
                                if (textView6 != null) {
                                    i4 = R.id.tv_saves;
                                    TextView textView7 = (TextView) viewInflate.findViewById(R.id.tv_saves);
                                    if (textView7 != null) {
                                        i4 = R.id.tv_username;
                                        TextView textView8 = (TextView) viewInflate.findViewById(R.id.tv_username);
                                        if (textView8 != null) {
                                            ScrollView scrollView = (ScrollView) viewInflate;
                                            p058w1.h hVar = new p058w1.h(scrollView, button, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8);
                                            this.b = hVar;
                                            Intrinsics.checkNotNull(hVar);
                                            Intrinsics.checkNotNullExpressionValue(scrollView, "getRoot(...)");
                                            return scrollView;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i4)));
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
        this.b = null;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0085  */
    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View v2, Bundle bundle) {
        String upperCase;
        Intrinsics.checkNotNullParameter(v2, "v");
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        p058w1.h hVar = this.b;
        Intrinsics.checkNotNull(hVar);
        TextView textView = hVar.f5805i;
        Set set = S1.d.f2060a;
        Intrinsics.checkNotNullParameter(contextRequireContext, "<this>");
        String string = S1.d.s(contextRequireContext).getString("username", "RPG Player");
        if (string == null) {
            string = "RPG Player";
        }
        textView.setText(string);
        p058w1.h hVar2 = this.b;
        Intrinsics.checkNotNull(hVar2);
        TextView textView2 = hVar2.f5801c;
        Intrinsics.checkNotNullParameter(contextRequireContext, "<this>");
        String string2 = contextRequireContext.getSharedPreferences("minhub_prefs", 0).getString(NotificationCompat.CATEGORY_EMAIL, "player@minhub.app");
        textView2.setText(string2 != null ? string2 : "player@minhub.app");
        p058w1.h hVar3 = this.b;
        Intrinsics.checkNotNull(hVar3);
        TextView textView3 = hVar3.b;
        Intrinsics.checkNotNullParameter(contextRequireContext, "<this>");
        String string3 = S1.d.s(contextRequireContext).getString("username", "RPG Player");
        Character chFirstOrNull = StringsKt___StringsKt.firstOrNull(string3 != null ? string3 : "RPG Player");
        if (chFirstOrNull != null) {
            String strValueOf = String.valueOf(chFirstOrNull.charValue());
            Intrinsics.checkNotNull(strValueOf, "null cannot be cast to non-null type java.lang.String");
            upperCase = strValueOf.toUpperCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
            if (upperCase == null) {
                upperCase = "?";
            }
        } else {
            upperCase = "?";
        }
        textView3.setText(upperCase);
        p058w1.h hVar4 = this.b;
        Intrinsics.checkNotNull(hVar4);
        TextView tvPatreonBadge = hVar4.f;
        Intrinsics.checkNotNullExpressionValue(tvPatreonBadge, "tvPatreonBadge");
        tvPatreonBadge.setVisibility(S1.d.p(contextRequireContext) ? 0 : 8);
        ((Z0) this.f578c.getValue()).b.observe(getViewLifecycleOwner(), new C0117x0(new C0035p(9, this)));
        p058w1.h hVar5 = this.b;
        Intrinsics.checkNotNull(hVar5);
        hVar5.f5800a.setOnClickListener(new ViewOnClickListenerC0075j(16, contextRequireContext, this));
    }
}
