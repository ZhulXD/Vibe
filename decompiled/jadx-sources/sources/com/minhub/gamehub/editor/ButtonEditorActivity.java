package com.minhub.gamehub.editor;

import C1.RunnableC0068g1;
import S1.c;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.minhub.gamehub.R;
import com.minhub.gamehub.editor.ButtonEditorActivity;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import p061x1.a;
import p061x1.d;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/minhub/gamehub/editor/ButtonEditorActivity;", "LS1/c;", "<init>", "()V", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nButtonEditorActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ButtonEditorActivity.kt\ncom/minhub/gamehub/editor/ButtonEditorActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,244:1\n1#2:245\n*E\n"})
public final class ButtonEditorActivity extends c {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ int f3665i = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public p058w1.c f3666e;
    public String g;
    public List f = CollectionsKt.emptyList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f3667h = -1;

    public final void m(String str) {
        Object next;
        p058w1.c cVar = null;
        if (str == null) {
            p058w1.c cVar2 = this.f3666e;
            if (cVar2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("b");
                cVar2 = null;
            }
            cVar2.f5649d.setVisibility(8);
            p058w1.c cVar3 = this.f3666e;
            if (cVar3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("b");
                cVar3 = null;
            }
            cVar3.f5650e.setText(getString(R.string.label_not_selected));
            p058w1.c cVar4 = this.f3666e;
            if (cVar4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("b");
                cVar4 = null;
            }
            ((Button) cVar4.f).setEnabled(false);
            p058w1.c cVar5 = this.f3666e;
            if (cVar5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("b");
            } else {
                cVar = cVar5;
            }
            ((Button) cVar.b).setEnabled(false);
            return;
        }
        p058w1.c cVar6 = this.f3666e;
        if (cVar6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("b");
            cVar6 = null;
        }
        cVar6.f5649d.setVisibility(0);
        Iterator it = this.f.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.areEqual(((a) next).f5994a, str));
        a aVar = (a) next;
        if (aVar == null) {
            return;
        }
        p058w1.c cVar7 = this.f3666e;
        if (cVar7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("b");
            cVar7 = null;
        }
        cVar7.f5650e.setText(getString(R.string.format_label_keycode, aVar.b, aVar.f5995c));
        int iCoerceIn = RangesKt.coerceIn(((aVar.f - 28) * 100) / 84, 0, 100);
        p058w1.c cVar8 = this.f3666e;
        if (cVar8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("b");
            cVar8 = null;
        }
        ((SeekBar) cVar8.f5654k).setProgress(iCoerceIn);
        int iCoerceIn2 = RangesKt.coerceIn((int) (aVar.f6000j * 100), 0, 100);
        p058w1.c cVar9 = this.f3666e;
        if (cVar9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("b");
            cVar9 = null;
        }
        ((SeekBar) cVar9.f5653j).setProgress(iCoerceIn2);
        p058w1.c cVar10 = this.f3666e;
        if (cVar10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("b");
            cVar10 = null;
        }
        ((Button) cVar10.f).setEnabled(true);
        p058w1.c cVar11 = this.f3666e;
        if (cVar11 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("b");
        } else {
            cVar = cVar11;
        }
        ((Button) cVar.b).setEnabled(true);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        int intExtra = getIntent().getIntExtra("game_id", -1);
        Integer numValueOf = Integer.valueOf(intExtra);
        p058w1.c cVar = null;
        if (intExtra < 0) {
            numValueOf = null;
        }
        if (numValueOf == null) {
            finish();
            return;
        }
        this.f3667h = numValueOf.intValue();
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_button_editor, (ViewGroup) null, false);
        int i3 = R.id.btn_add_button;
        Button button = (Button) viewInflate.findViewById(R.id.btn_add_button);
        if (button != null) {
            i3 = R.id.btn_back;
            ImageButton imageButton = (ImageButton) viewInflate.findViewById(R.id.btn_back);
            if (imageButton != null) {
                i3 = R.id.btn_delete_button;
                Button button2 = (Button) viewInflate.findViewById(R.id.btn_delete_button);
                if (button2 != null) {
                    i3 = R.id.btn_key_binding;
                    Button button3 = (Button) viewInflate.findViewById(R.id.btn_key_binding);
                    if (button3 != null) {
                        i3 = R.id.btn_reset_pos;
                        Button button4 = (Button) viewInflate.findViewById(R.id.btn_reset_pos);
                        if (button4 != null) {
                            i3 = R.id.btn_save;
                            Button button5 = (Button) viewInflate.findViewById(R.id.btn_save);
                            if (button5 != null) {
                                i3 = R.id.edit_overlay;
                                EditModeOverlay editModeOverlay = (EditModeOverlay) viewInflate.findViewById(R.id.edit_overlay);
                                if (editModeOverlay != null) {
                                    i3 = R.id.game_area;
                                    if (((FrameLayout) viewInflate.findViewById(R.id.game_area)) != null) {
                                        i3 = R.id.panel_properties;
                                        LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.panel_properties);
                                        if (linearLayout != null) {
                                            i3 = R.id.sb_opacity;
                                            SeekBar seekBar = (SeekBar) viewInflate.findViewById(R.id.sb_opacity);
                                            if (seekBar != null) {
                                                i3 = R.id.sb_size;
                                                SeekBar seekBar2 = (SeekBar) viewInflate.findViewById(R.id.sb_size);
                                                if (seekBar2 != null) {
                                                    i3 = R.id.tv_selected_name;
                                                    TextView textView = (TextView) viewInflate.findViewById(R.id.tv_selected_name);
                                                    if (textView != null) {
                                                        FrameLayout frameLayout = (FrameLayout) viewInflate;
                                                        p058w1.c cVar2 = new p058w1.c(frameLayout, button, imageButton, button2, button3, button4, button5, editModeOverlay, linearLayout, seekBar, seekBar2, textView);
                                                        Intrinsics.checkNotNullExpressionValue(cVar2, "inflate(...)");
                                                        this.f3666e = cVar2;
                                                        setContentView(frameLayout);
                                                        p058w1.c cVar3 = this.f3666e;
                                                        if (cVar3 == null) {
                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                            cVar3 = null;
                                                        }
                                                        final int i4 = 0;
                                                        ((EditModeOverlay) cVar3.f5652i).setOnButtonSelected(new Function1(this) { // from class: x1.b

                                                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                                                            public final /* synthetic */ ButtonEditorActivity f6002c;

                                                            {
                                                                this.f6002c = this;
                                                            }

                                                            @Override // kotlin.jvm.functions.Function1
                                                            public final Object invoke(Object obj) {
                                                                int i5 = i4;
                                                                ButtonEditorActivity buttonEditorActivity = this.f6002c;
                                                                switch (i5) {
                                                                    case 0:
                                                                        String str = (String) obj;
                                                                        buttonEditorActivity.g = str;
                                                                        buttonEditorActivity.m(str);
                                                                        break;
                                                                    default:
                                                                        List configs = (List) obj;
                                                                        int i6 = ButtonEditorActivity.f3665i;
                                                                        Intrinsics.checkNotNullParameter(configs, "configs");
                                                                        buttonEditorActivity.f = configs;
                                                                        break;
                                                                }
                                                                return Unit.INSTANCE;
                                                            }
                                                        });
                                                        p058w1.c cVar4 = this.f3666e;
                                                        if (cVar4 == null) {
                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                            cVar4 = null;
                                                        }
                                                        final int i5 = 1;
                                                        ((EditModeOverlay) cVar4.f5652i).setOnLayoutChanged(new Function1(this) { // from class: x1.b

                                                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                                                            public final /* synthetic */ ButtonEditorActivity f6002c;

                                                            {
                                                                this.f6002c = this;
                                                            }

                                                            @Override // kotlin.jvm.functions.Function1
                                                            public final Object invoke(Object obj) {
                                                                int i6 = i5;
                                                                ButtonEditorActivity buttonEditorActivity = this.f6002c;
                                                                switch (i6) {
                                                                    case 0:
                                                                        String str = (String) obj;
                                                                        buttonEditorActivity.g = str;
                                                                        buttonEditorActivity.m(str);
                                                                        break;
                                                                    default:
                                                                        List configs = (List) obj;
                                                                        int i7 = ButtonEditorActivity.f3665i;
                                                                        Intrinsics.checkNotNullParameter(configs, "configs");
                                                                        buttonEditorActivity.f = configs;
                                                                        break;
                                                                }
                                                                return Unit.INSTANCE;
                                                            }
                                                        });
                                                        p058w1.c cVar5 = this.f3666e;
                                                        if (cVar5 == null) {
                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                            cVar5 = null;
                                                        }
                                                        final int i6 = 0;
                                                        ((ImageButton) cVar5.f5648c).setOnClickListener(new View.OnClickListener(this) { // from class: x1.c

                                                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                                                            public final /* synthetic */ ButtonEditorActivity f6003c;

                                                            {
                                                                this.f6003c = this;
                                                            }

                                                            /* JADX WARN: Code duplicated, block: B:21:0x008a  */
                                                            /* JADX WARN: Code duplicated, block: B:40:0x010a  */
                                                            /* JADX WARN: Code duplicated, block: B:42:0x010e  */
                                                            /* JADX WARN: Code duplicated, block: B:43:0x0112  */
                                                            /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
                                                                jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r2v5 java.lang.Object, still in use, count: 2, list:
                                                                  (r2v5 java.lang.Object) from 0x0106: PHI (r2 I:??) = (r2v2 java.lang.Object), (r2v5 java.lang.Object) binds: [B:37:0x0105, B:58:0x0106] A[DONT_GENERATE, DONT_INLINE]
                                                                  (r2v5 java.lang.Object) from 0x00fa: CHECK_CAST (x1.a) (r2v5 java.lang.Object)
                                                                	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
                                                                	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
                                                                	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:93)
                                                                	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:132)
                                                                	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:67)
                                                                	at jadx.core.dex.visitors.regions.TernaryMod.enterRegion(TernaryMod.java:50)
                                                                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:96)
                                                                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
                                                                	at jadx.core.dex.visitors.regions.TernaryMod.process(TernaryMod.java:36)
                                                                	at jadx.core.dex.visitors.regions.IfRegionVisitor.process(IfRegionVisitor.java:44)
                                                                	at jadx.core.dex.visitors.regions.IfRegionVisitor.visit(IfRegionVisitor.java:30)
                                                                */
                                                            @Override // android.view.View.OnClickListener
                                                            public final void onClick(android.view.View r9) {
                                                                /*
                                                                    Method dump skipped, instruction units count: 346
                                                                    To view this dump add '--comments-level debug' option
                                                                */
                                                                throw new UnsupportedOperationException("Method not decompiled: p061x1.c.onClick(android.view.View):void");
                                                            }
                                                        });
                                                        p058w1.c cVar6 = this.f3666e;
                                                        if (cVar6 == null) {
                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                            cVar6 = null;
                                                        }
                                                        final int i7 = 1;
                                                        ((Button) cVar6.f5651h).setOnClickListener(new View.OnClickListener(this) { // from class: x1.c

                                                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                                                            public final /* synthetic */ ButtonEditorActivity f6003c;

                                                            {
                                                                this.f6003c = this;
                                                            }

                                                            /* JADX WARN: Code duplicated, block: B:21:0x008a  */
                                                            /* JADX WARN: Code duplicated, block: B:40:0x010a  */
                                                            /* JADX WARN: Code duplicated, block: B:42:0x010e  */
                                                            /* JADX WARN: Code duplicated, block: B:43:0x0112  */
                                                            /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
                                                                jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r2v5 java.lang.Object, still in use, count: 2, list:
                                                                  (r2v5 java.lang.Object) from 0x0106: PHI (r2 I:??) = (r2v2 java.lang.Object), (r2v5 java.lang.Object) binds: [B:37:0x0105, B:58:0x0106] A[DONT_GENERATE, DONT_INLINE]
                                                                  (r2v5 java.lang.Object) from 0x00fa: CHECK_CAST (x1.a) (r2v5 java.lang.Object)
                                                                	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
                                                                	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
                                                                	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:93)
                                                                	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:132)
                                                                	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:67)
                                                                	at jadx.core.dex.visitors.regions.TernaryMod.enterRegion(TernaryMod.java:50)
                                                                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:96)
                                                                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
                                                                	at jadx.core.dex.visitors.regions.TernaryMod.process(TernaryMod.java:36)
                                                                	at jadx.core.dex.visitors.regions.IfRegionVisitor.process(IfRegionVisitor.java:44)
                                                                */
                                                            @Override // android.view.View.OnClickListener
                                                            public final void onClick(android.view.View r9) {
                                                                /*
                                                                    Method dump skipped, instruction units count: 346
                                                                    To view this dump add '--comments-level debug' option
                                                                */
                                                                throw new UnsupportedOperationException("Method not decompiled: p061x1.c.onClick(android.view.View):void");
                                                            }
                                                        });
                                                        p058w1.c cVar7 = this.f3666e;
                                                        if (cVar7 == null) {
                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                            cVar7 = null;
                                                        }
                                                        ((SeekBar) cVar7.f5654k).setOnSeekBarChangeListener(new d(this, 0));
                                                        p058w1.c cVar8 = this.f3666e;
                                                        if (cVar8 == null) {
                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                            cVar8 = null;
                                                        }
                                                        ((SeekBar) cVar8.f5653j).setOnSeekBarChangeListener(new d(this, 1));
                                                        p058w1.c cVar9 = this.f3666e;
                                                        if (cVar9 == null) {
                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                            cVar9 = null;
                                                        }
                                                        final int i8 = 2;
                                                        ((Button) cVar9.g).setOnClickListener(new View.OnClickListener(this) { // from class: x1.c

                                                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                                                            public final /* synthetic */ ButtonEditorActivity f6003c;

                                                            {
                                                                this.f6003c = this;
                                                            }

                                                            /* JADX WARN: Code duplicated, block: B:21:0x008a  */
                                                            /* JADX WARN: Code duplicated, block: B:40:0x010a  */
                                                            /* JADX WARN: Code duplicated, block: B:42:0x010e  */
                                                            /* JADX WARN: Code duplicated, block: B:43:0x0112  */
                                                            /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
                                                                jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r2v5 java.lang.Object, still in use, count: 2, list:
                                                                  (r2v5 java.lang.Object) from 0x0106: PHI (r2 I:??) = (r2v2 java.lang.Object), (r2v5 java.lang.Object) binds: [B:37:0x0105, B:58:0x0106] A[DONT_GENERATE, DONT_INLINE]
                                                                  (r2v5 java.lang.Object) from 0x00fa: CHECK_CAST (x1.a) (r2v5 java.lang.Object)
                                                                	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
                                                                	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
                                                                	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:93)
                                                                	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:132)
                                                                	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:67)
                                                                	at jadx.core.dex.visitors.regions.TernaryMod.enterRegion(TernaryMod.java:50)
                                                                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:96)
                                                                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
                                                                	at jadx.core.dex.visitors.regions.TernaryMod.process(TernaryMod.java:36)
                                                                */
                                                            @Override // android.view.View.OnClickListener
                                                            public final void onClick(android.view.View r9) {
                                                                /*
                                                                    Method dump skipped, instruction units count: 346
                                                                    To view this dump add '--comments-level debug' option
                                                                */
                                                                throw new UnsupportedOperationException("Method not decompiled: p061x1.c.onClick(android.view.View):void");
                                                            }
                                                        });
                                                        p058w1.c cVar10 = this.f3666e;
                                                        if (cVar10 == null) {
                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                            cVar10 = null;
                                                        }
                                                        final int i9 = 3;
                                                        ((Button) cVar10.f).setOnClickListener(new View.OnClickListener(this) { // from class: x1.c

                                                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                                                            public final /* synthetic */ ButtonEditorActivity f6003c;

                                                            {
                                                                this.f6003c = this;
                                                            }

                                                            /* JADX WARN: Code duplicated, block: B:21:0x008a  */
                                                            /* JADX WARN: Code duplicated, block: B:40:0x010a  */
                                                            /* JADX WARN: Code duplicated, block: B:42:0x010e  */
                                                            /* JADX WARN: Code duplicated, block: B:43:0x0112  */
                                                            /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
                                                                jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r2v5 java.lang.Object, still in use, count: 2, list:
                                                                  (r2v5 java.lang.Object) from 0x0106: PHI (r2 I:??) = (r2v2 java.lang.Object), (r2v5 java.lang.Object) binds: [B:37:0x0105, B:58:0x0106] A[DONT_GENERATE, DONT_INLINE]
                                                                  (r2v5 java.lang.Object) from 0x00fa: CHECK_CAST (x1.a) (r2v5 java.lang.Object)
                                                                	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
                                                                	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
                                                                	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:93)
                                                                	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:132)
                                                                	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:67)
                                                                	at jadx.core.dex.visitors.regions.TernaryMod.enterRegion(TernaryMod.java:50)
                                                                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:96)
                                                                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
                                                                */
                                                            @Override // android.view.View.OnClickListener
                                                            public final void onClick(android.view.View r9) {
                                                                /*
                                                                    Method dump skipped, instruction units count: 346
                                                                    To view this dump add '--comments-level debug' option
                                                                */
                                                                throw new UnsupportedOperationException("Method not decompiled: p061x1.c.onClick(android.view.View):void");
                                                            }
                                                        });
                                                        p058w1.c cVar11 = this.f3666e;
                                                        if (cVar11 == null) {
                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                            cVar11 = null;
                                                        }
                                                        final int i10 = 4;
                                                        ((Button) cVar11.f5647a).setOnClickListener(new View.OnClickListener(this) { // from class: x1.c

                                                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                                                            public final /* synthetic */ ButtonEditorActivity f6003c;

                                                            {
                                                                this.f6003c = this;
                                                            }

                                                            /* JADX WARN: Code duplicated, block: B:21:0x008a  */
                                                            /* JADX WARN: Code duplicated, block: B:40:0x010a  */
                                                            /* JADX WARN: Code duplicated, block: B:42:0x010e  */
                                                            /* JADX WARN: Code duplicated, block: B:43:0x0112  */
                                                            /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
                                                                jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r2v5 java.lang.Object, still in use, count: 2, list:
                                                                  (r2v5 java.lang.Object) from 0x0106: PHI (r2 I:??) = (r2v2 java.lang.Object), (r2v5 java.lang.Object) binds: [B:37:0x0105, B:58:0x0106] A[DONT_GENERATE, DONT_INLINE]
                                                                  (r2v5 java.lang.Object) from 0x00fa: CHECK_CAST (x1.a) (r2v5 java.lang.Object)
                                                                	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
                                                                	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
                                                                	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:93)
                                                                	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:132)
                                                                	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:67)
                                                                	at jadx.core.dex.visitors.regions.TernaryMod.enterRegion(TernaryMod.java:50)
                                                                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:96)
                                                                */
                                                            @Override // android.view.View.OnClickListener
                                                            public final void onClick(android.view.View r9) {
                                                                /*
                                                                    Method dump skipped, instruction units count: 346
                                                                    To view this dump add '--comments-level debug' option
                                                                */
                                                                throw new UnsupportedOperationException("Method not decompiled: p061x1.c.onClick(android.view.View):void");
                                                            }
                                                        });
                                                        p058w1.c cVar12 = this.f3666e;
                                                        if (cVar12 == null) {
                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                            cVar12 = null;
                                                        }
                                                        final int i11 = 5;
                                                        ((Button) cVar12.b).setOnClickListener(new View.OnClickListener(this) { // from class: x1.c

                                                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                                                            public final /* synthetic */ ButtonEditorActivity f6003c;

                                                            {
                                                                this.f6003c = this;
                                                            }

                                                            /* JADX WARN: Code duplicated, block: B:21:0x008a  */
                                                            /* JADX WARN: Code duplicated, block: B:40:0x010a  */
                                                            /* JADX WARN: Code duplicated, block: B:42:0x010e  */
                                                            /* JADX WARN: Code duplicated, block: B:43:0x0112  */
                                                            /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
                                                                jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r2v5 java.lang.Object, still in use, count: 2, list:
                                                                  (r2v5 java.lang.Object) from 0x0106: PHI (r2 I:??) = (r2v2 java.lang.Object), (r2v5 java.lang.Object) binds: [B:37:0x0105, B:58:0x0106] A[DONT_GENERATE, DONT_INLINE]
                                                                  (r2v5 java.lang.Object) from 0x00fa: CHECK_CAST (x1.a) (r2v5 java.lang.Object)
                                                                	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
                                                                	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
                                                                	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:93)
                                                                	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:132)
                                                                	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:67)
                                                                	at jadx.core.dex.visitors.regions.TernaryMod.enterRegion(TernaryMod.java:50)
                                                                */
                                                            @Override // android.view.View.OnClickListener
                                                            public final void onClick(android.view.View r9) {
                                                                /*
                                                                    Method dump skipped, instruction units count: 346
                                                                    To view this dump add '--comments-level debug' option
                                                                */
                                                                throw new UnsupportedOperationException("Method not decompiled: p061x1.c.onClick(android.view.View):void");
                                                            }
                                                        });
                                                        p058w1.c cVar13 = this.f3666e;
                                                        if (cVar13 == null) {
                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                        } else {
                                                            cVar = cVar13;
                                                        }
                                                        ((EditModeOverlay) cVar.f5652i).post(new RunnableC0068g1(17, this));
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
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i3)));
    }
}
