package C1;

import android.content.Intent;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.GradientDrawable;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.minhub.gamehub.R;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.data.GameKt;
import com.minhub.gamehub.data.GameStatus;
import com.minhub.gamehub.hub.GameDetailActivity;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: C1.a1, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0050a1 implements Function1 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ C0059d1 f546c;

    public /* synthetic */ C0050a1(C0059d1 c0059d1, int i3) {
        this.b = i3;
        this.f546c = c0059d1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                Game game = (Game) obj;
                Intrinsics.checkNotNullParameter(game, "game");
                C0059d1 c0059d1 = this.f546c;
                c0059d1.getClass();
                c0059d1.startActivity(new Intent(c0059d1.requireContext(), (Class<?>) GameDetailActivity.class).putExtra("game_id", game.getId()));
                break;
            default:
                List list = (List) obj;
                C0059d1 c0059d2 = this.f546c;
                p058w1.c cVar = c0059d2.b;
                Intrinsics.checkNotNull(cVar);
                cVar.f5650e.setText(list.size() + " " + c0059d2.getString(R.string.home_installed));
                Intrinsics.checkNotNull(list);
                ArrayList arrayList = new ArrayList();
                for (Object obj2 : list) {
                    if (GameKt.getStatusEnum((Game) obj2) == GameStatus.DOWNLOADING) {
                        arrayList.add(obj2);
                    }
                }
                p058w1.c cVar2 = c0059d2.b;
                Intrinsics.checkNotNull(cVar2);
                cVar2.f5649d.removeAllViews();
                int i3 = 0;
                if (arrayList.isEmpty()) {
                    p058w1.c cVar3 = c0059d2.b;
                    Intrinsics.checkNotNull(cVar3);
                    cVar3.f5649d.setVisibility(8);
                } else {
                    p058w1.c cVar4 = c0059d2.b;
                    Intrinsics.checkNotNull(cVar4);
                    cVar4.f5649d.setVisibility(0);
                    float f = c0059d2.getResources().getDisplayMetrics().density;
                    int size = arrayList.size();
                    int i4 = 0;
                    while (i4 < size) {
                        Object obj3 = arrayList.get(i4);
                        i4++;
                        Game game2 = (Game) obj3;
                        GradientDrawable gradientDrawable = new GradientDrawable();
                        gradientDrawable.setShape(i3);
                        gradientDrawable.setCornerRadius(f * 12.0f);
                        gradientDrawable.setColor(Color.parseColor("#18181f"));
                        gradientDrawable.setStroke((int) (1 * f), Color.parseColor("#222230"));
                        LinearLayout linearLayout = new LinearLayout(c0059d2.requireContext());
                        linearLayout.setOrientation(1);
                        linearLayout.setBackground(gradientDrawable);
                        int i5 = (int) (14 * f);
                        int i6 = (int) (10 * f);
                        linearLayout.setPadding(i5, i6, i5, i6);
                        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
                        layoutParams.topMargin = (int) (12 * f);
                        linearLayout.setLayoutParams(layoutParams);
                        LinearLayout linearLayout2 = new LinearLayout(c0059d2.requireContext());
                        linearLayout2.setOrientation(i3);
                        linearLayout2.setGravity(16);
                        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
                        layoutParams2.bottomMargin = (int) (6 * f);
                        linearLayout2.setLayoutParams(layoutParams2);
                        TextView textView = new TextView(c0059d2.requireContext());
                        textView.setText(game2.getTitle());
                        textView.setTextSize(12.0f);
                        textView.setTextColor(Color.parseColor("#F0F0F6"));
                        textView.setTypeface(null, 1);
                        textView.setLayoutParams(new LinearLayout.LayoutParams(i3, -2, 1.0f));
                        TextView textView2 = new TextView(c0059d2.requireContext());
                        textView2.setText(game2.getDownloadProgress() + "%");
                        textView2.setTextSize(11.0f);
                        textView2.setTextColor(Color.parseColor("#EF4444"));
                        textView2.setTypeface(null, 1);
                        ArrayList arrayList2 = arrayList;
                        ProgressBar progressBar = new ProgressBar(c0059d2.requireContext(), null, android.R.attr.progressBarStyleHorizontal);
                        progressBar.setMax(100);
                        progressBar.setProgress(game2.getDownloadProgress());
                        progressBar.getProgressDrawable().setColorFilter(new PorterDuffColorFilter(Color.parseColor("#EF4444"), PorterDuff.Mode.SRC_IN));
                        progressBar.setLayoutParams(new LinearLayout.LayoutParams(-1, (int) (3 * f)));
                        linearLayout2.addView(textView);
                        linearLayout2.addView(textView2);
                        linearLayout.addView(linearLayout2);
                        linearLayout.addView(progressBar);
                        p058w1.c cVar5 = c0059d2.b;
                        Intrinsics.checkNotNull(cVar5);
                        cVar5.f5649d.addView(linearLayout);
                        arrayList = arrayList2;
                        i3 = 0;
                    }
                }
                c0059d2.b(list, i3);
                break;
        }
        return Unit.INSTANCE;
    }
}
