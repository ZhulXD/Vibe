package E1;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.google.android.material.switchmaterial.SwitchMaterial;
import com.minhub.gamehub.R;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C implements Function0 {
    public final /* synthetic */ Map b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ G1.r f864c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ TextView f865d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ I f866e;
    public final /* synthetic */ LinearLayout f;
    public final /* synthetic */ List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Context f867h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ LayoutInflater f868i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Ref.ObjectRef f869j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ j f870k;

    public /* synthetic */ C(Map map, G1.r rVar, TextView textView, I i3, LinearLayout linearLayout, List list, Context context, LayoutInflater layoutInflater, Ref.ObjectRef objectRef, j jVar) {
        this.b = map;
        this.f864c = rVar;
        this.f865d = textView;
        this.f866e = i3;
        this.f = linearLayout;
        this.g = list;
        this.f867h = context;
        this.f868i = layoutInflater;
        this.f869j = objectRef;
        this.f870k = jVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        G1.o oVar = this.f864c.f1038a;
        Map map = this.b;
        Boolean bool = (Boolean) map.get(oVar);
        boolean zBooleanValue = bool != null ? bool.booleanValue() : false;
        map.put(oVar, Boolean.valueOf(!zBooleanValue));
        int i3 = !zBooleanValue ? R.string.settings_utilities_hide : R.string.settings_utilities_show;
        final I i4 = this.f866e;
        this.f865d.setText(i4.getString(i3));
        ViewGroup viewGroup = this.f;
        if (!zBooleanValue && viewGroup.getChildCount() <= 0) {
            List<G1.n> list = this.g;
            boolean zIsEmpty = list.isEmpty();
            Context context = this.f867h;
            if (!zIsEmpty || oVar == G1.o.b) {
                for (final G1.n nVar : list) {
                    final View viewInflate = this.f868i.inflate(R.layout.item_utility, viewGroup, false);
                    ((TextView) viewInflate.findViewById(R.id.tv_util_label)).setText(i4.getString(nVar.f1014c));
                    ((TextView) viewInflate.findViewById(R.id.tv_util_desc)).setText(i4.getString(nVar.f1015d));
                    SwitchMaterial switchMaterial = (SwitchMaterial) viewInflate.findViewById(R.id.switch_util);
                    final Ref.ObjectRef objectRef = this.f869j;
                    switchMaterial.setChecked(((G1.s) objectRef.element).b(nVar.f1013a));
                    final j jVar = this.f870k;
                    switchMaterial.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(nVar, jVar, i4, viewInflate) { // from class: E1.E
                        public final /* synthetic */ G1.n b;

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public final /* synthetic */ j f873c;

                        /* JADX INFO: renamed from: d, reason: collision with root package name */
                        public final /* synthetic */ View f874d;

                        {
                            this.f874d = viewInflate;
                        }

                        /* JADX WARN: Multi-variable type inference failed */
                        /* JADX WARN: Type inference failed for: r0v4, types: [G1.s, T, java.lang.Object] */
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
                        @Override // android.widget.CompoundButton.OnCheckedChangeListener
                        public final void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
                            Ref.ObjectRef objectRef2 = this.f872a;
                            G1.s sVar = (G1.s) objectRef2.element;
                            G1.p id = this.b.f1013a;
                            sVar.getClass();
                            Intrinsics.checkNotNullParameter(id, "id");
                            LinkedHashMap linkedHashMap = new LinkedHashMap(sVar.f1040a);
                            linkedHashMap.put(id, Boolean.valueOf(z2));
                            ?? sVar2 = new G1.s(linkedHashMap);
                            objectRef2.element = sVar2;
                            this.f873c.invoke(sVar2);
                            View view = this.f874d;
                            Intrinsics.checkNotNull(view);
                            I.d(view, z2);
                        }
                    });
                    Intrinsics.checkNotNull(viewInflate);
                    I.d(viewInflate, switchMaterial.isChecked());
                    viewGroup.addView(viewInflate);
                }
                if (oVar == G1.o.b) {
                    LinearLayout linearLayout = new LinearLayout(context);
                    linearLayout.setOrientation(1);
                    linearLayout.setPadding(i4.c(8), i4.c(16), i4.c(8), i4.c(8));
                    LinearLayout linearLayout2 = new LinearLayout(context);
                    linearLayout2.setOrientation(0);
                    linearLayout2.setGravity(16);
                    TextView textView = new TextView(context);
                    textView.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
                    textView.setText(i4.getString(R.string.settings_util_font_size_title));
                    textView.setTextSize(13.0f);
                    textView.setTextColor(textView.getResources().getColor(R.color.text_pri, context.getTheme()));
                    Set set = S1.d.f2060a;
                    Context contextRequireContext = i4.requireContext();
                    Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
                    Intrinsics.checkNotNullParameter(contextRequireContext, "<this>");
                    int i5 = S1.d.s(contextRequireContext).getInt("mv_mz_font_size", 0);
                    TextView textView2 = new TextView(context);
                    textView2.setText(i5 == 0 ? i4.getString(R.string.settings_util_font_size_default) : i5 + "px");
                    textView2.setTextSize(12.0f);
                    textView2.setTextColor(textView2.getResources().getColor(R.color.accent, context.getTheme()));
                    linearLayout2.addView(textView);
                    linearLayout2.addView(textView2);
                    TextView textView3 = new TextView(context);
                    textView3.setText(i4.getString(R.string.settings_util_font_size_desc));
                    textView3.setTextSize(11.0f);
                    textView3.setTextColor(textView3.getResources().getColor(R.color.text_mut, context.getTheme()));
                    textView3.setPadding(0, i4.c(2), 0, i4.c(6));
                    SeekBar seekBar = new SeekBar(context);
                    seekBar.setMax(14);
                    seekBar.setProgress(i5 == 0 ? 0 : RangesKt.coerceIn((i5 - 18) / 2, 1, 14));
                    seekBar.setOnSeekBarChangeListener(new H(i4, textView2));
                    linearLayout.addView(linearLayout2);
                    linearLayout.addView(textView3);
                    linearLayout.addView(seekBar);
                    viewGroup.addView(linearLayout);
                }
            } else {
                TextView textView4 = new TextView(context);
                textView4.setText(i4.getString(R.string.settings_utilities_group_empty));
                textView4.setTextSize(11.0f);
                textView4.setTextColor(textView4.getResources().getColor(R.color.text_mut, context.getTheme()));
                textView4.setPadding(i4.c(4), i4.c(4), i4.c(4), i4.c(4));
                viewGroup.addView(textView4);
            }
        }
        viewGroup.setVisibility(zBooleanValue ? 8 : 0);
        return Unit.INSTANCE;
    }
}
