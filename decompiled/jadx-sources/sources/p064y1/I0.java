package p064y1;

import C1.ViewOnClickListenerC0075j;
import I1.j;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;
import com.minhub.gamehub.R;
import com.minhub.gamehub.editor.EditModeOverlay;
import com.minhub.gamehub.game.GodotGameActivity;
import java.io.File;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import org.renpy.android.b;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class I0 implements View.OnClickListener {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f6086c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ GodotGameActivity f6087d;

    public /* synthetic */ I0(View view, GodotGameActivity godotGameActivity, int i3) {
        this.b = i3;
        this.f6086c = view;
        this.f6087d = godotGameActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i3 = this.b;
        final int i4 = 3;
        final int i5 = 2;
        GodotGameActivity godotGameActivity = this.f6087d;
        View view2 = this.f6086c;
        final int i6 = 1;
        final int i7 = 0;
        switch (i3) {
            case 0:
                int i8 = GodotGameActivity.f3707q;
                godotGameActivity.s(0, 111);
                godotGameActivity.s(1, 111);
                view2.setVisibility(8);
                break;
            case 1:
                int i9 = GodotGameActivity.f3707q;
                view2.setVisibility(8);
                FrameLayout frameLayout = godotGameActivity.f3713j;
                if (frameLayout != null) {
                    View decorView = godotGameActivity.getWindow().getDecorView();
                    Intrinsics.checkNotNull(decorView, "null cannot be cast to non-null type android.view.ViewGroup");
                    ((ViewGroup) decorView).removeView(frameLayout);
                    godotGameActivity.f3713j = null;
                } else {
                    FrameLayout frameLayoutK = godotGameActivity.k();
                    View decorView2 = godotGameActivity.getWindow().getDecorView();
                    Intrinsics.checkNotNull(decorView2, "null cannot be cast to non-null type android.view.ViewGroup");
                    ((ViewGroup) decorView2).addView(frameLayoutK);
                    godotGameActivity.f3713j = frameLayoutK;
                }
                break;
            case 2:
                int i10 = GodotGameActivity.f3707q;
                view2.setVisibility(8);
                if (godotGameActivity.f3714k == null) {
                    View decorView3 = godotGameActivity.getWindow().getDecorView();
                    Intrinsics.checkNotNull(decorView3, "null cannot be cast to non-null type android.view.ViewGroup");
                    float f = godotGameActivity.getResources().getDisplayMetrics().density;
                    FrameLayout frameLayout2 = new FrameLayout(godotGameActivity);
                    frameLayout2.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                    frameLayout2.setElevation(20 * f);
                    ((ViewGroup) decorView3).addView(frameLayout2);
                    godotGameActivity.f3714k = frameLayout2;
                    godotGameActivity.f3715l = new j(frameLayout2, new F0(godotGameActivity, i7), new D0(godotGameActivity, i5));
                }
                final j jVar = godotGameActivity.f3715l;
                if (jVar != null) {
                    FrameLayout frameLayout3 = (FrameLayout) jVar.b;
                    View viewInflate = (View) jVar.f;
                    if (viewInflate == null) {
                        viewInflate = LayoutInflater.from(frameLayout3.getContext()).inflate(R.layout.view_ingame_keyboard_panel, (ViewGroup) frameLayout3, false);
                        viewInflate.setOnClickListener(new View.OnClickListener() { // from class: y1.L0
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view3) {
                                switch (i7) {
                                    case 0:
                                        j jVar2 = jVar;
                                        View view4 = (View) jVar2.f;
                                        if (view4 != null) {
                                            view4.setVisibility(8);
                                        }
                                        ((FrameLayout) jVar2.b).setVisibility(8);
                                        break;
                                    case 1:
                                        j jVar3 = jVar;
                                        View view5 = (View) jVar3.f;
                                        if (view5 != null) {
                                            view5.setVisibility(8);
                                        }
                                        ((FrameLayout) jVar3.b).setVisibility(8);
                                        break;
                                    case 2:
                                        j jVar4 = jVar;
                                        jVar4.f1188c = "gamepad";
                                        jVar4.c();
                                        break;
                                    default:
                                        j jVar5 = jVar;
                                        jVar5.f1188c = "keyboard";
                                        jVar5.c();
                                        break;
                                }
                            }
                        });
                        viewInflate.findViewById(R.id.layout_keyboard_sheet).setOnClickListener(new b(i4));
                        ((Button) viewInflate.findViewById(R.id.btn_done_keyboard)).setOnClickListener(new View.OnClickListener() { // from class: y1.L0
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view3) {
                                switch (i6) {
                                    case 0:
                                        j jVar2 = jVar;
                                        View view4 = (View) jVar2.f;
                                        if (view4 != null) {
                                            view4.setVisibility(8);
                                        }
                                        ((FrameLayout) jVar2.b).setVisibility(8);
                                        break;
                                    case 1:
                                        j jVar3 = jVar;
                                        View view5 = (View) jVar3.f;
                                        if (view5 != null) {
                                            view5.setVisibility(8);
                                        }
                                        ((FrameLayout) jVar3.b).setVisibility(8);
                                        break;
                                    case 2:
                                        j jVar4 = jVar;
                                        jVar4.f1188c = "gamepad";
                                        jVar4.c();
                                        break;
                                    default:
                                        j jVar5 = jVar;
                                        jVar5.f1188c = "keyboard";
                                        jVar5.c();
                                        break;
                                }
                            }
                        });
                        TextView textView = (TextView) viewInflate.findViewById(R.id.tab_special);
                        textView.setText(frameLayout3.getContext().getString(R.string.godot_tab_gamepad));
                        textView.setOnClickListener(new View.OnClickListener() { // from class: y1.L0
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view3) {
                                switch (i5) {
                                    case 0:
                                        j jVar2 = jVar;
                                        View view4 = (View) jVar2.f;
                                        if (view4 != null) {
                                            view4.setVisibility(8);
                                        }
                                        ((FrameLayout) jVar2.b).setVisibility(8);
                                        break;
                                    case 1:
                                        j jVar3 = jVar;
                                        View view5 = (View) jVar3.f;
                                        if (view5 != null) {
                                            view5.setVisibility(8);
                                        }
                                        ((FrameLayout) jVar3.b).setVisibility(8);
                                        break;
                                    case 2:
                                        j jVar4 = jVar;
                                        jVar4.f1188c = "gamepad";
                                        jVar4.c();
                                        break;
                                    default:
                                        j jVar5 = jVar;
                                        jVar5.f1188c = "keyboard";
                                        jVar5.c();
                                        break;
                                }
                            }
                        });
                        TextView textView2 = (TextView) viewInflate.findViewById(R.id.tab_keyboard);
                        textView2.setText(frameLayout3.getContext().getString(R.string.label_keyboard));
                        textView2.setOnClickListener(new View.OnClickListener() { // from class: y1.L0
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view3) {
                                switch (i4) {
                                    case 0:
                                        j jVar2 = jVar;
                                        View view4 = (View) jVar2.f;
                                        if (view4 != null) {
                                            view4.setVisibility(8);
                                        }
                                        ((FrameLayout) jVar2.b).setVisibility(8);
                                        break;
                                    case 1:
                                        j jVar3 = jVar;
                                        View view5 = (View) jVar3.f;
                                        if (view5 != null) {
                                            view5.setVisibility(8);
                                        }
                                        ((FrameLayout) jVar3.b).setVisibility(8);
                                        break;
                                    case 2:
                                        j jVar4 = jVar;
                                        jVar4.f1188c = "gamepad";
                                        jVar4.c();
                                        break;
                                    default:
                                        j jVar5 = jVar;
                                        jVar5.f1188c = "keyboard";
                                        jVar5.c();
                                        break;
                                }
                            }
                        });
                        frameLayout3.removeAllViews();
                        frameLayout3.addView(viewInflate);
                        jVar.f = viewInflate;
                        Intrinsics.checkNotNull(viewInflate);
                    }
                    jVar.c();
                    viewInflate.setVisibility(0);
                    frameLayout3.setVisibility(0);
                }
                break;
            case 3:
                int i11 = GodotGameActivity.f3707q;
                view2.setVisibility(8);
                View decorView4 = godotGameActivity.getWindow().getDecorView();
                Intrinsics.checkNotNull(decorView4, "null cannot be cast to non-null type android.view.ViewGroup");
                ViewGroup viewGroup = (ViewGroup) decorView4;
                FrameLayout frameLayout4 = godotGameActivity.f3713j;
                int i12 = 4;
                if (frameLayout4 != null) {
                    frameLayout4.setVisibility(4);
                }
                if (godotGameActivity.f3716m == null) {
                    EditModeOverlay editModeOverlay = new EditModeOverlay(godotGameActivity, null);
                    editModeOverlay.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                    editModeOverlay.setElevation(editModeOverlay.getResources().getDisplayMetrics().density * 16.0f);
                    viewGroup.addView(editModeOverlay);
                    godotGameActivity.f3716m = editModeOverlay;
                    editModeOverlay.setOnButtonSelected(new F0(godotGameActivity, i6));
                    editModeOverlay.setOnLayoutChanged(new F0(godotGameActivity, i5));
                }
                if (godotGameActivity.f3717n == null) {
                    View viewInflate2 = LayoutInflater.from(godotGameActivity).inflate(R.layout.view_arrange_toolbar, viewGroup, false);
                    viewGroup.addView(viewInflate2);
                    godotGameActivity.f3717n = viewInflate2;
                    viewInflate2.findViewById(R.id.btn_arrange_cancel).setOnClickListener(new ViewOnClickListenerC0431z0(godotGameActivity, i6));
                    viewInflate2.findViewById(R.id.btn_arrange_save).setOnClickListener(new ViewOnClickListenerC0431z0(godotGameActivity, i5));
                }
                if (godotGameActivity.f3718o == null) {
                    View viewInflate3 = LayoutInflater.from(godotGameActivity).inflate(R.layout.view_arrange_properties, viewGroup, false);
                    viewGroup.addView(viewInflate3);
                    godotGameActivity.f3718o = viewInflate3;
                    if (viewInflate3 != null) {
                        viewInflate3.findViewById(R.id.btn_shape_circle).setOnClickListener(new ViewOnClickListenerC0431z0(godotGameActivity, i4));
                        viewInflate3.findViewById(R.id.btn_shape_rounded).setOnClickListener(new ViewOnClickListenerC0431z0(godotGameActivity, i12));
                        viewInflate3.findViewById(R.id.btn_shape_rect).setOnClickListener(new ViewOnClickListenerC0431z0(godotGameActivity, 5));
                        for (Map.Entry entry : MapsKt.mapOf(TuplesKt.to(Integer.valueOf(R.id.color_green), "#22C55E"), TuplesKt.to(Integer.valueOf(R.id.color_red), "#EF4444"), TuplesKt.to(Integer.valueOf(R.id.color_blue), "#3B82F6"), TuplesKt.to(Integer.valueOf(R.id.color_yellow), "#F59E0B"), TuplesKt.to(Integer.valueOf(R.id.color_purple), "#8B5CF6"), TuplesKt.to(Integer.valueOf(R.id.color_orange), "#F97316"), TuplesKt.to(Integer.valueOf(R.id.color_pink), "#EC4899"), TuplesKt.to(Integer.valueOf(R.id.color_gray), "#6B7280"), TuplesKt.to(Integer.valueOf(R.id.color_white), "#F5F5F5")).entrySet()) {
                            viewInflate3.findViewById(((Number) entry.getKey()).intValue()).setOnClickListener(new ViewOnClickListenerC0075j(28, godotGameActivity, (String) entry.getValue()));
                        }
                        viewInflate3.findViewById(R.id.btn_close_customize).setOnClickListener(new ViewOnClickListenerC0431z0(godotGameActivity, 6));
                        viewInflate3.findViewById(R.id.btn_toggle_customize).setOnClickListener(new ViewOnClickListenerC0431z0(godotGameActivity, 7));
                        ((SeekBar) viewInflate3.findViewById(R.id.seek_size)).setOnSeekBarChangeListener(new K0(godotGameActivity, i7));
                        ((SeekBar) viewInflate3.findViewById(R.id.seek_opacity)).setOnSeekBarChangeListener(new K0(godotGameActivity, i6));
                    }
                }
                EditModeOverlay editModeOverlay2 = godotGameActivity.f3716m;
                if (editModeOverlay2 != null) {
                    editModeOverlay2.setVisibility(0);
                }
                View view3 = godotGameActivity.f3717n;
                if (view3 != null) {
                    view3.setVisibility(0);
                }
                View view4 = godotGameActivity.f3718o;
                if (view4 != null) {
                    view4.setVisibility(8);
                }
                godotGameActivity.f3719p = false;
                EditModeOverlay editModeOverlay3 = godotGameActivity.f3716m;
                if (editModeOverlay3 != null) {
                    editModeOverlay3.d(godotGameActivity.p());
                }
                godotGameActivity.r();
                break;
            default:
                int i13 = GodotGameActivity.f3707q;
                view2.setVisibility(8);
                GodotGameActivity godotGameActivity2 = this.f6087d;
                File file = godotGameActivity2.f3709d;
                String str = godotGameActivity2.f3710e;
                C0425x0 c0425x0 = new C0425x0(godotGameActivity2, file, str != null ? new File(str) : null, new D0(godotGameActivity2, i7), new D0(godotGameActivity2, i6));
                if (file == null) {
                    Toast.makeText(godotGameActivity2, R.string.godot_cheat_no_save, 0).show();
                } else {
                    new Thread(new RunnableC0390l0(c0425x0, file, i7)).start();
                }
                break;
        }
    }

    public /* synthetic */ I0(GodotGameActivity godotGameActivity, View view) {
        this.b = 0;
        this.f6087d = godotGameActivity;
        this.f6086c = view;
    }
}
