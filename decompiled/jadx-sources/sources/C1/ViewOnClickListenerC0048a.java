package C1;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.view.ContextThemeWrapper;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.PopupMenu;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.widget.NestedScrollView;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.minhub.gamehub.R;
import com.minhub.gamehub.hub.AddGameActivity;
import com.minhub.gamehub.hub.OnlineDownloadsActivity;
import com.minhub.gamehub.hub.catalog.CatalogDiskCache;
import com.minhub.gamehub.hub.catalog.CatalogMemoryCache;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.ranges.RangesKt;

/* JADX INFO: renamed from: C1.a, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnClickListenerC0048a implements View.OnClickListener {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AddGameActivity f545c;

    public /* synthetic */ ViewOnClickListenerC0048a(AddGameActivity addGameActivity, int i3) {
        this.b = i3;
        this.f545c = addGameActivity;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v5, types: [C1.c0, T] */
    /* JADX WARN: Type inference failed for: r5v7, types: [C1.Y, T] */
    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i3 = this.b;
        p058w1.a aVar = null;
        final AddGameActivity addGameActivity = this.f545c;
        switch (i3) {
            case 0:
                E1 e2 = addGameActivity.f3750p;
                if (e2.f423c || e2.f424d == null) {
                    return;
                }
                addGameActivity.u(addGameActivity.f3751q.f422a, 1);
                return;
            case 1:
                E1 e3 = addGameActivity.f3750p;
                addGameActivity.A(E1.a(e3, RangesKt.coerceAtLeast(e3.f422a - 1, 1), false, null, 14).f422a);
                return;
            case 2:
                E1 e4 = addGameActivity.f3750p;
                addGameActivity.A(E1.a(e4, RangesKt.coerceIn(e4.f422a + 1, 1, RangesKt.coerceAtLeast(e4.b, 1)), false, null, 14).f422a);
                return;
            case 3:
                int i4 = AddGameActivity.f3740y;
                addGameActivity.finish();
                return;
            case 4:
                int i5 = AddGameActivity.f3740y;
                ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(addGameActivity, R.style.ThemeOverlay_MinHub_PopupMenu);
                p058w1.a aVar2 = addGameActivity.f3741e;
                if (aVar2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("b");
                } else {
                    aVar = aVar2;
                }
                PopupMenu popupMenu = new PopupMenu(contextThemeWrapper, aVar.f5615e);
                popupMenu.getMenuInflater().inflate(R.menu.add_game_actions, popupMenu.getMenu());
                popupMenu.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener() { // from class: C1.d
                    @Override // android.widget.PopupMenu.OnMenuItemClickListener
                    public final boolean onMenuItemClick(MenuItem menuItem) {
                        int i6 = AddGameActivity.f3740y;
                        int itemId = menuItem.getItemId();
                        AddGameActivity context = addGameActivity;
                        p058w1.a aVar3 = null;
                        int i7 = 0;
                        if (itemId == R.id.action_refresh_catalog) {
                            CatalogDiskCache catalogDiskCache = CatalogDiskCache.INSTANCE;
                            Context applicationContext = context.getApplicationContext();
                            Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
                            catalogDiskCache.invalidate(applicationContext);
                            CatalogMemoryCache.INSTANCE.invalidate();
                            E1 e5 = new E1();
                            context.f3751q = e5;
                            context.f3750p = e5;
                            context.f3752r = CollectionsKt.emptyList();
                            context.f3753s = CollectionsKt.emptyList();
                            context.f3754t = CollectionsKt.emptyList();
                            context.f3756v = false;
                            context.f3757w = false;
                            context.f3758x = false;
                            context.f3755u = new Z(null, null, null, 15);
                            p058w1.a aVar4 = context.f3741e;
                            if (aVar4 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("b");
                            } else {
                                aVar3 = aVar4;
                            }
                            aVar3.f5613c.setEnabled(false);
                            context.u(1, 1);
                            return true;
                        }
                        if (itemId == R.id.action_import_zip) {
                            Intrinsics.checkNotNullParameter(context, "<this>");
                            try {
                                context.f3745k.launch("*/*");
                                return true;
                            } catch (ActivityNotFoundException unused) {
                                Toast.makeText(context, context.getString(R.string.no_file_manager), 1).show();
                                return true;
                            }
                        }
                        if (itemId != R.id.action_import_folder) {
                            if (itemId != R.id.action_downloads) {
                                return false;
                            }
                            Intrinsics.checkNotNullParameter(context, "context");
                            context.startActivity(new Intent(context, (Class<?>) OnlineDownloadsActivity.class));
                            return true;
                        }
                        Intrinsics.checkNotNullParameter(context, "<this>");
                        H0.o oVar = new H0.o(context);
                        View viewInflate = context.getLayoutInflater().inflate(R.layout.sheet_folder_import, (ViewGroup) null);
                        oVar.setContentView(viewInflate);
                        Window window = oVar.getWindow();
                        if (window != null) {
                            window.setBackgroundDrawableResource(android.R.color.transparent);
                        }
                        oVar.setOnShowListener(new L(oVar, 0));
                        context.f3747m = oVar;
                        context.f3748n = null;
                        EditText editText = (EditText) viewInflate.findViewById(R.id.et_game_name);
                        TextView textView = (TextView) viewInflate.findViewById(R.id.tv_selected_file);
                        Button button = (Button) viewInflate.findViewById(R.id.btn_pick_file);
                        Button button2 = (Button) viewInflate.findViewById(R.id.btn_folder_import_confirm);
                        Button button3 = (Button) viewInflate.findViewById(R.id.btn_folder_import_cancel);
                        editText.addTextChangedListener(new N(button2, editText, context));
                        context.f3749o = new C0107u(context, textView, editText, button2);
                        button.setOnClickListener(new ViewOnClickListenerC0048a(context, 7));
                        button3.setOnClickListener(new ViewOnClickListenerC0110v(oVar, 0));
                        button2.setOnClickListener(new ViewOnClickListenerC0113w(editText, context, oVar, i7));
                        oVar.setOnDismissListener(new DialogInterfaceOnDismissListenerC0116x(i7, context));
                        oVar.show();
                        return true;
                    }
                });
                popupMenu.show();
                return;
            case 5:
                final AddGameActivity addGameActivity2 = this.f545c;
                boolean z2 = addGameActivity2.f3756v;
                boolean z3 = addGameActivity2.f3757w;
                if (z2 && z3) {
                    H0.o oVar = new H0.o(addGameActivity2);
                    View viewInflate = oVar.getLayoutInflater().inflate(R.layout.sheet_catalog_filter, (ViewGroup) null, false);
                    int i6 = R.id.btn_apply;
                    Button button = (Button) viewInflate.findViewById(R.id.btn_apply);
                    if (button != null) {
                        i6 = R.id.btn_reset;
                        Button button2 = (Button) viewInflate.findViewById(R.id.btn_reset);
                        if (button2 != null) {
                            i6 = R.id.et_query;
                            EditText editText = (EditText) viewInflate.findViewById(R.id.et_query);
                            if (editText != null) {
                                i6 = R.id.list_engine_options;
                                final LinearLayout listEngineOptions = (LinearLayout) viewInflate.findViewById(R.id.list_engine_options);
                                if (listEngineOptions != null) {
                                    i6 = R.id.list_language_options;
                                    final LinearLayout listLanguageOptions = (LinearLayout) viewInflate.findViewById(R.id.list_language_options);
                                    if (listLanguageOptions != null) {
                                        i6 = R.id.row_engine;
                                        LinearLayout rowEngine = (LinearLayout) viewInflate.findViewById(R.id.row_engine);
                                        if (rowEngine != null) {
                                            i6 = R.id.row_language;
                                            LinearLayout rowLanguage = (LinearLayout) viewInflate.findViewById(R.id.row_language);
                                            if (rowLanguage != null) {
                                                i6 = R.id.scroll_engine_options;
                                                final NestedScrollView scrollEngineOptions = (NestedScrollView) viewInflate.findViewById(R.id.scroll_engine_options);
                                                if (scrollEngineOptions != null) {
                                                    i6 = R.id.scroll_language_options;
                                                    final NestedScrollView scrollLanguageOptions = (NestedScrollView) viewInflate.findViewById(R.id.scroll_language_options);
                                                    if (scrollLanguageOptions != null) {
                                                        i6 = R.id.tv_engine_chevron;
                                                        final TextView tvEngineChevron = (TextView) viewInflate.findViewById(R.id.tv_engine_chevron);
                                                        if (tvEngineChevron != null) {
                                                            i6 = R.id.tv_engine_value;
                                                            TextView textView = (TextView) viewInflate.findViewById(R.id.tv_engine_value);
                                                            if (textView != null) {
                                                                i6 = R.id.tv_language_chevron;
                                                                final TextView tvLanguageChevron = (TextView) viewInflate.findViewById(R.id.tv_language_chevron);
                                                                if (tvLanguageChevron != null) {
                                                                    i6 = R.id.tv_language_value;
                                                                    TextView textView2 = (TextView) viewInflate.findViewById(R.id.tv_language_value);
                                                                    if (textView2 != null) {
                                                                        LinearLayout linearLayout = (LinearLayout) viewInflate;
                                                                        final k.m1 m1Var = new k.m1(linearLayout, button, button2, editText, listEngineOptions, listLanguageOptions, rowEngine, rowLanguage, scrollEngineOptions, scrollLanguageOptions, tvEngineChevron, textView, tvLanguageChevron, textView2);
                                                                        Intrinsics.checkNotNullExpressionValue(m1Var, "inflate(...)");
                                                                        oVar.setContentView(linearLayout);
                                                                        if (oVar.f1075d == null) {
                                                                            oVar.e();
                                                                        }
                                                                        BottomSheetBehavior bottomSheetBehavior = oVar.f1075d;
                                                                        bottomSheetBehavior.K = false;
                                                                        if (bottomSheetBehavior == null) {
                                                                            oVar.e();
                                                                        }
                                                                        oVar.f1075d.H(3);
                                                                        editText.setText(addGameActivity2.f3755u.f539a);
                                                                        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
                                                                        objectRef.element = addGameActivity2.f3755u.f540c;
                                                                        final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
                                                                        objectRef2.element = addGameActivity2.f3755u.f541d;
                                                                        textView.setText(addGameActivity2.s((Y) objectRef.element));
                                                                        String string = ((EnumC0055c0) objectRef2.element).b;
                                                                        if (string == null) {
                                                                            string = addGameActivity2.getString(R.string.catalog_language_all);
                                                                            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                                                                        }
                                                                        textView2.setText(string);
                                                                        Intrinsics.checkNotNullExpressionValue(rowEngine, "rowEngine");
                                                                        Intrinsics.checkNotNullExpressionValue(tvEngineChevron, "tvEngineChevron");
                                                                        Intrinsics.checkNotNullExpressionValue(listEngineOptions, "listEngineOptions");
                                                                        Intrinsics.checkNotNullExpressionValue(scrollEngineOptions, "scrollEngineOptions");
                                                                        final EnumEntries enumEntries = Y.f533e;
                                                                        final int i7 = 0;
                                                                        final C0096q c0096q = new C0096q(0, addGameActivity2);
                                                                        T t2 = objectRef.element;
                                                                        final Function0 function0 = new Function0() { // from class: C1.f
                                                                            @Override // kotlin.jvm.functions.Function0
                                                                            public final Object invoke() {
                                                                                int i8 = i7;
                                                                                k.m1 m1Var2 = m1Var;
                                                                                AddGameActivity addGameActivity3 = addGameActivity2;
                                                                                switch (i8) {
                                                                                    case 0:
                                                                                        int i9 = AddGameActivity.f3740y;
                                                                                        TextView tvLanguageChevron2 = (TextView) m1Var2.f;
                                                                                        Intrinsics.checkNotNullExpressionValue(tvLanguageChevron2, "tvLanguageChevron");
                                                                                        NestedScrollView scrollLanguageOptions2 = (NestedScrollView) m1Var2.f4882d;
                                                                                        Intrinsics.checkNotNullExpressionValue(scrollLanguageOptions2, "scrollLanguageOptions");
                                                                                        addGameActivity3.p(tvLanguageChevron2, scrollLanguageOptions2);
                                                                                        break;
                                                                                    default:
                                                                                        int i10 = AddGameActivity.f3740y;
                                                                                        TextView tvEngineChevron2 = m1Var2.f4880a;
                                                                                        Intrinsics.checkNotNullExpressionValue(tvEngineChevron2, "tvEngineChevron");
                                                                                        NestedScrollView scrollEngineOptions2 = (NestedScrollView) m1Var2.f4881c;
                                                                                        Intrinsics.checkNotNullExpressionValue(scrollEngineOptions2, "scrollEngineOptions");
                                                                                        addGameActivity3.p(tvEngineChevron2, scrollEngineOptions2);
                                                                                        break;
                                                                                }
                                                                                return Unit.INSTANCE;
                                                                            }
                                                                        };
                                                                        final Function1 function1 = new Function1() { // from class: C1.g
                                                                            /* JADX WARN: Multi-variable type inference failed */
                                                                            /* JADX WARN: Type inference failed for: r6v1, types: [C1.Y, T, java.lang.Object] */
                                                                            /* JADX WARN: Type inference failed for: r6v4, types: [C1.c0, T, java.lang.Object] */
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
                                                                                int i8 = i7;
                                                                                AddGameActivity addGameActivity3 = addGameActivity2;
                                                                                k.m1 m1Var2 = m1Var;
                                                                                Ref.ObjectRef objectRef3 = objectRef;
                                                                                switch (i8) {
                                                                                    case 0:
                                                                                        ?? picked = (Y) obj;
                                                                                        int i9 = AddGameActivity.f3740y;
                                                                                        Intrinsics.checkNotNullParameter(picked, "picked");
                                                                                        objectRef3.element = picked;
                                                                                        ((TextView) m1Var2.f4883e).setText(addGameActivity3.s(picked));
                                                                                        break;
                                                                                    default:
                                                                                        ?? picked2 = (EnumC0055c0) obj;
                                                                                        int i10 = AddGameActivity.f3740y;
                                                                                        Intrinsics.checkNotNullParameter(picked2, "picked");
                                                                                        objectRef3.element = picked2;
                                                                                        TextView textView3 = (TextView) m1Var2.g;
                                                                                        String string2 = picked2.b;
                                                                                        if (string2 == null) {
                                                                                            string2 = addGameActivity3.getString(R.string.catalog_language_all);
                                                                                            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                                                                                        }
                                                                                        textView3.setText(string2);
                                                                                        break;
                                                                                }
                                                                                return Unit.INSTANCE;
                                                                            }
                                                                        };
                                                                        final Ref.ObjectRef objectRef3 = new Ref.ObjectRef();
                                                                        objectRef3.element = t2;
                                                                        rowEngine.setOnClickListener(new View.OnClickListener(addGameActivity2, tvEngineChevron, function0, listEngineOptions, enumEntries, objectRef3, c0096q, function1) { // from class: C1.l

                                                                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                                                                            public final /* synthetic */ AddGameActivity f637c;

                                                                            /* JADX INFO: renamed from: d, reason: collision with root package name */
                                                                            public final /* synthetic */ TextView f638d;

                                                                            /* JADX INFO: renamed from: e, reason: collision with root package name */
                                                                            public final /* synthetic */ Function0 f639e;
                                                                            public final /* synthetic */ LinearLayout f;
                                                                            public final /* synthetic */ List g;

                                                                            /* JADX INFO: renamed from: h, reason: collision with root package name */
                                                                            public final /* synthetic */ Ref.ObjectRef f640h;

                                                                            /* JADX INFO: renamed from: i, reason: collision with root package name */
                                                                            public final /* synthetic */ FunctionReferenceImpl f641i;

                                                                            /* JADX INFO: renamed from: j, reason: collision with root package name */
                                                                            public final /* synthetic */ Function1 f642j;

                                                                            /* JADX WARN: Multi-variable type inference failed */
                                                                            {
                                                                                this.f641i = (FunctionReferenceImpl) c0096q;
                                                                                this.f642j = function1;
                                                                            }

                                                                            /* JADX WARN: Type inference failed for: r4v1, types: [kotlin.jvm.functions.Function1, kotlin.jvm.internal.FunctionReferenceImpl] */
                                                                            @Override // android.view.View.OnClickListener
                                                                            public final void onClick(View view2) {
                                                                                int i8 = AddGameActivity.f3740y;
                                                                                NestedScrollView nestedScrollView = this.b;
                                                                                int visibility = nestedScrollView.getVisibility();
                                                                                AddGameActivity addGameActivity3 = this.f637c;
                                                                                TextView textView3 = this.f638d;
                                                                                if (visibility == 0) {
                                                                                    addGameActivity3.p(textView3, nestedScrollView);
                                                                                    return;
                                                                                }
                                                                                this.f639e.invoke();
                                                                                LinearLayout linearLayout2 = this.f;
                                                                                List list = this.g;
                                                                                Ref.ObjectRef objectRef4 = this.f640h;
                                                                                AddGameActivity.o(linearLayout2, list, objectRef4, addGameActivity3, this.f641i, this.f642j, textView3, nestedScrollView);
                                                                                nestedScrollView.setVisibility(0);
                                                                                textView3.setText(addGameActivity3.getString(R.string.filter_chevron_open));
                                                                                nestedScrollView.post(new RunnableC0087n(0, list, objectRef4, nestedScrollView, addGameActivity3));
                                                                            }
                                                                        });
                                                                        AddGameActivity.o(listEngineOptions, enumEntries, objectRef3, addGameActivity2, c0096q, function1, tvEngineChevron, scrollEngineOptions);
                                                                        Intrinsics.checkNotNullExpressionValue(rowLanguage, "rowLanguage");
                                                                        Intrinsics.checkNotNullExpressionValue(tvLanguageChevron, "tvLanguageChevron");
                                                                        Intrinsics.checkNotNullExpressionValue(listLanguageOptions, "listLanguageOptions");
                                                                        Intrinsics.checkNotNullExpressionValue(scrollLanguageOptions, "scrollLanguageOptions");
                                                                        final EnumEntries enumEntries2 = EnumC0055c0.f567e;
                                                                        final int i8 = 1;
                                                                        final C0096q c0096q2 = new C0096q(1, addGameActivity2);
                                                                        T t3 = objectRef2.element;
                                                                        final Function0 function2 = new Function0() { // from class: C1.f
                                                                            @Override // kotlin.jvm.functions.Function0
                                                                            public final Object invoke() {
                                                                                int i9 = i8;
                                                                                k.m1 m1Var2 = m1Var;
                                                                                AddGameActivity addGameActivity3 = addGameActivity2;
                                                                                switch (i9) {
                                                                                    case 0:
                                                                                        int i10 = AddGameActivity.f3740y;
                                                                                        TextView tvLanguageChevron2 = (TextView) m1Var2.f;
                                                                                        Intrinsics.checkNotNullExpressionValue(tvLanguageChevron2, "tvLanguageChevron");
                                                                                        NestedScrollView scrollLanguageOptions2 = (NestedScrollView) m1Var2.f4882d;
                                                                                        Intrinsics.checkNotNullExpressionValue(scrollLanguageOptions2, "scrollLanguageOptions");
                                                                                        addGameActivity3.p(tvLanguageChevron2, scrollLanguageOptions2);
                                                                                        break;
                                                                                    default:
                                                                                        int i11 = AddGameActivity.f3740y;
                                                                                        TextView tvEngineChevron2 = m1Var2.f4880a;
                                                                                        Intrinsics.checkNotNullExpressionValue(tvEngineChevron2, "tvEngineChevron");
                                                                                        NestedScrollView scrollEngineOptions2 = (NestedScrollView) m1Var2.f4881c;
                                                                                        Intrinsics.checkNotNullExpressionValue(scrollEngineOptions2, "scrollEngineOptions");
                                                                                        addGameActivity3.p(tvEngineChevron2, scrollEngineOptions2);
                                                                                        break;
                                                                                }
                                                                                return Unit.INSTANCE;
                                                                            }
                                                                        };
                                                                        final Function1 function3 = new Function1() { // from class: C1.g
                                                                            /* JADX WARN: Multi-variable type inference failed */
                                                                            /* JADX WARN: Type inference failed for: r6v1, types: [C1.Y, T, java.lang.Object] */
                                                                            /* JADX WARN: Type inference failed for: r6v4, types: [C1.c0, T, java.lang.Object] */
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
                                                                                int i9 = i8;
                                                                                AddGameActivity addGameActivity3 = addGameActivity2;
                                                                                k.m1 m1Var2 = m1Var;
                                                                                Ref.ObjectRef objectRef4 = objectRef2;
                                                                                switch (i9) {
                                                                                    case 0:
                                                                                        ?? picked = (Y) obj;
                                                                                        int i10 = AddGameActivity.f3740y;
                                                                                        Intrinsics.checkNotNullParameter(picked, "picked");
                                                                                        objectRef4.element = picked;
                                                                                        ((TextView) m1Var2.f4883e).setText(addGameActivity3.s(picked));
                                                                                        break;
                                                                                    default:
                                                                                        ?? picked2 = (EnumC0055c0) obj;
                                                                                        int i11 = AddGameActivity.f3740y;
                                                                                        Intrinsics.checkNotNullParameter(picked2, "picked");
                                                                                        objectRef4.element = picked2;
                                                                                        TextView textView3 = (TextView) m1Var2.g;
                                                                                        String string2 = picked2.b;
                                                                                        if (string2 == null) {
                                                                                            string2 = addGameActivity3.getString(R.string.catalog_language_all);
                                                                                            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                                                                                        }
                                                                                        textView3.setText(string2);
                                                                                        break;
                                                                                }
                                                                                return Unit.INSTANCE;
                                                                            }
                                                                        };
                                                                        final Ref.ObjectRef objectRef4 = new Ref.ObjectRef();
                                                                        objectRef4.element = t3;
                                                                        rowLanguage.setOnClickListener(new View.OnClickListener(addGameActivity2, tvLanguageChevron, function2, listLanguageOptions, enumEntries2, objectRef4, c0096q2, function3) { // from class: C1.l

                                                                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                                                                            public final /* synthetic */ AddGameActivity f637c;

                                                                            /* JADX INFO: renamed from: d, reason: collision with root package name */
                                                                            public final /* synthetic */ TextView f638d;

                                                                            /* JADX INFO: renamed from: e, reason: collision with root package name */
                                                                            public final /* synthetic */ Function0 f639e;
                                                                            public final /* synthetic */ LinearLayout f;
                                                                            public final /* synthetic */ List g;

                                                                            /* JADX INFO: renamed from: h, reason: collision with root package name */
                                                                            public final /* synthetic */ Ref.ObjectRef f640h;

                                                                            /* JADX INFO: renamed from: i, reason: collision with root package name */
                                                                            public final /* synthetic */ FunctionReferenceImpl f641i;

                                                                            /* JADX INFO: renamed from: j, reason: collision with root package name */
                                                                            public final /* synthetic */ Function1 f642j;

                                                                            /* JADX WARN: Multi-variable type inference failed */
                                                                            {
                                                                                this.f641i = (FunctionReferenceImpl) c0096q2;
                                                                                this.f642j = function3;
                                                                            }

                                                                            /* JADX WARN: Type inference failed for: r4v1, types: [kotlin.jvm.functions.Function1, kotlin.jvm.internal.FunctionReferenceImpl] */
                                                                            @Override // android.view.View.OnClickListener
                                                                            public final void onClick(View view2) {
                                                                                int i9 = AddGameActivity.f3740y;
                                                                                NestedScrollView nestedScrollView = this.b;
                                                                                int visibility = nestedScrollView.getVisibility();
                                                                                AddGameActivity addGameActivity3 = this.f637c;
                                                                                TextView textView3 = this.f638d;
                                                                                if (visibility == 0) {
                                                                                    addGameActivity3.p(textView3, nestedScrollView);
                                                                                    return;
                                                                                }
                                                                                this.f639e.invoke();
                                                                                LinearLayout linearLayout2 = this.f;
                                                                                List list = this.g;
                                                                                Ref.ObjectRef objectRef5 = this.f640h;
                                                                                AddGameActivity.o(linearLayout2, list, objectRef5, addGameActivity3, this.f641i, this.f642j, textView3, nestedScrollView);
                                                                                nestedScrollView.setVisibility(0);
                                                                                textView3.setText(addGameActivity3.getString(R.string.filter_chevron_open));
                                                                                nestedScrollView.post(new RunnableC0087n(0, list, objectRef5, nestedScrollView, addGameActivity3));
                                                                            }
                                                                        });
                                                                        AddGameActivity.o(listLanguageOptions, enumEntries2, objectRef4, addGameActivity2, c0096q2, function3, tvLanguageChevron, scrollLanguageOptions);
                                                                        button.setOnClickListener(new ViewOnClickListenerC0072i(addGameActivity2, m1Var, objectRef, objectRef2, oVar, 0));
                                                                        button2.setOnClickListener(new ViewOnClickListenerC0075j(0, addGameActivity2, oVar));
                                                                        oVar.show();
                                                                        return;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i6)));
                }
                return;
            case 6:
                int i9 = AddGameActivity.f3740y;
                addGameActivity.finish();
                return;
            default:
                try {
                    addGameActivity.f3746l.launch(null);
                    return;
                } catch (ActivityNotFoundException unused) {
                    Toast.makeText(addGameActivity, addGameActivity.getString(R.string.no_file_manager), 1).show();
                    return;
                }
        }
    }
}
