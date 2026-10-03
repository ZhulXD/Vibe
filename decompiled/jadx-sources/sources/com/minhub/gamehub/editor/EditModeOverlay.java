package com.minhub.gamehub.editor;

import B1.EnumC0045a;
import B1.m;
import C1.RunnableC0078k;
import C1.ViewOnClickListenerC0075j;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.minhub.gamehub.editor.EditModeOverlay;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt__StringsJVMKt;
import p061x1.a;
import p061x1.h;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0017B\u001d\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J#\u0010\f\u001a\u00020\n2\u0014\u0010\u000b\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\u0004\u0012\u00020\n0\b¢\u0006\u0004\b\f\u0010\rJ'\u0010\u0010\u001a\u00020\n2\u0018\u0010\u000b\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\u0004\u0012\u00020\n0\b¢\u0006\u0004\b\u0010\u0010\rJ\u000f\u0010\u0011\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u0013\u0010\u0014J\u0013\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e¢\u0006\u0004\b\u0015\u0010\u0016¨\u0006\u0018"}, d2 = {"Lcom/minhub/gamehub/editor/EditModeOverlay;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "ctx", "Landroid/util/AttributeSet;", "attr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "Lkotlin/Function1;", "", "", "listener", "setOnButtonSelected", "(Lkotlin/jvm/functions/Function1;)V", "", "Lx1/a;", "setOnLayoutChanged", "getSelectedButtonId", "()Ljava/lang/String;", "getSelectedButtonConfig", "()Lx1/a;", "getCurrentConfigs", "()Ljava/util/List;", "x1/h", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SuppressLint({"ClickableViewAccessibility"})
@SourceDebugExtension({"SMAP\nEditModeOverlay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditModeOverlay.kt\ncom/minhub/gamehub/editor/EditModeOverlay\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,261:1\n1#2:262\n774#3:263\n865#3,2:264\n1869#3,2:266\n1563#3:268\n1634#3,3:269\n216#4,2:272\n*S KotlinDebug\n*F\n+ 1 EditModeOverlay.kt\ncom/minhub/gamehub/editor/EditModeOverlay\n*L\n75#1:263\n75#1:264,2\n75#1:266,2\n99#1:268\n99#1:269,3\n216#1:272,2\n*E\n"})
public final class EditModeOverlay extends FrameLayout {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final /* synthetic */ int f3668l = 0;
    public final LinkedHashMap b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f3669c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Function1 f3670d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Function1 f3671e;
    public View f;
    public float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f3672h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f3673i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f3674j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f3675k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public EditModeOverlay(Context ctx, AttributeSet attributeSet) {
        super(ctx, attributeSet);
        Intrinsics.checkNotNullParameter(ctx, "ctx");
        this.b = new LinkedHashMap();
        this.f3675k = ViewConfiguration.get(getContext()).getScaledTouchSlop();
    }

    public final void a() {
        for (Map.Entry entry : this.b.entrySet()) {
            String str = (String) entry.getKey();
            h hVar = (h) entry.getValue();
            if (Intrinsics.areEqual(str, this.f3669c)) {
                hVar.b.setScaleX(1.08f);
                hVar.b.setScaleY(1.08f);
            } else {
                hVar.b.setScaleX(1.0f);
                hVar.b.setScaleY(1.0f);
            }
        }
    }

    public final h b(final a aVar, float f, float f3) {
        int color;
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        m mVar = new m(context);
        String str = aVar.b;
        String str2 = aVar.f5994a;
        mVar.setLabel(str);
        try {
            color = Color.parseColor(aVar.f5999i);
        } catch (Exception unused) {
            color = -7829368;
        }
        mVar.setBtnColor(color);
        mVar.setShape(aVar.b());
        mVar.setAlpha(aVar.f6000j);
        mVar.setLayoutParams(new FrameLayout.LayoutParams(c(aVar.f), c(aVar.g)));
        mVar.setOnTouchListener(new View.OnTouchListener() { // from class: x1.g
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                int i3 = EditModeOverlay.f3668l;
                Intrinsics.checkNotNull(view);
                Intrinsics.checkNotNull(motionEvent);
                String str3 = aVar.f5994a;
                int actionMasked = motionEvent.getActionMasked();
                EditModeOverlay editModeOverlay = this.b;
                if (actionMasked == 0) {
                    editModeOverlay.f = view;
                    editModeOverlay.g = motionEvent.getRawX();
                    editModeOverlay.f3672h = motionEvent.getRawY();
                    editModeOverlay.f3673i = view.getX() - motionEvent.getRawX();
                    editModeOverlay.f3674j = view.getY() - motionEvent.getRawY();
                    return true;
                }
                if (actionMasked != 1) {
                    if (actionMasked == 2) {
                        View view2 = editModeOverlay.f;
                        if (view2 != null) {
                            float rawX = motionEvent.getRawX() + editModeOverlay.f3673i;
                            float rawY = motionEvent.getRawY() + editModeOverlay.f3674j;
                            view2.setX(RangesKt.coerceIn(rawX, 0.0f, editModeOverlay.getWidth() - view2.getWidth()));
                            view2.setY(RangesKt.coerceIn(rawY, 0.0f, editModeOverlay.getHeight() - view2.getHeight()));
                            Function1 function1 = editModeOverlay.f3671e;
                            if (function1 != null) {
                                function1.invoke(editModeOverlay.getCurrentConfigs());
                            }
                        }
                        return true;
                    }
                    if (actionMasked != 3) {
                        return false;
                    }
                }
                float rawX2 = motionEvent.getRawX() - editModeOverlay.g;
                float rawY2 = motionEvent.getRawY() - editModeOverlay.f3672h;
                if (motionEvent.getActionMasked() == 1) {
                    float f4 = editModeOverlay.f3675k;
                    if (Math.abs(rawX2) <= f4 && Math.abs(rawY2) <= f4) {
                        editModeOverlay.e(str3);
                    }
                }
                editModeOverlay.f = null;
                return true;
            }
        });
        mVar.setOnClickListener(new ViewOnClickListenerC0075j(25, this, aVar));
        TextView textView = new TextView(getContext());
        String upperCase = StringsKt__StringsJVMKt.replace$default(str2, "btn_", "", false, 4, (Object) null).toUpperCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
        textView.setText(upperCase);
        textView.setTextSize(8.0f);
        textView.setTextColor(-1);
        textView.setBackgroundColor(Color.parseColor("#66000000"));
        textView.setPadding(4, 2, 4, 2);
        mVar.setX((aVar.f5996d * f) - (mVar.getLayoutParams().width / 2.0f));
        mVar.setY((aVar.f5997e * f3) - (mVar.getLayoutParams().height / 2.0f));
        return new h(str2, mVar, aVar);
    }

    public final int c(int i3) {
        return (int) TypedValue.applyDimension(1, i3, getResources().getDisplayMetrics());
    }

    public final void d(List configs) {
        Intrinsics.checkNotNullParameter(configs, "configs");
        if (getWidth() == 0 || getHeight() == 0) {
            post(new RunnableC0078k(19, this, configs));
            return;
        }
        this.f3669c = null;
        this.f = null;
        Function1 function1 = this.f3670d;
        if (function1 != null) {
            function1.invoke(null);
        }
        removeAllViews();
        LinkedHashMap linkedHashMap = this.b;
        linkedHashMap.clear();
        float fCoerceAtLeast = RangesKt.coerceAtLeast(getWidth(), 1.0f);
        float fCoerceAtLeast2 = RangesKt.coerceAtLeast(getHeight(), 1.0f);
        ArrayList arrayList = new ArrayList();
        for (Object obj : configs) {
            if (((a) obj).f6001k) {
                arrayList.add(obj);
            }
        }
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj2 = arrayList.get(i3);
            i3++;
            a aVar = (a) obj2;
            h hVarB = b(aVar, fCoerceAtLeast, fCoerceAtLeast2);
            linkedHashMap.put(aVar.f5994a, hVarB);
            addView(hVarB.b);
        }
    }

    public final void e(String str) {
        this.f3669c = str;
        Function1 function1 = this.f3670d;
        if (function1 != null) {
            function1.invoke(str);
        }
        a();
    }

    public final void f(String id, a newConfig) {
        int color;
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        h hVar = (h) this.b.get(id);
        if (hVar != null) {
            Intrinsics.checkNotNullParameter(newConfig, "<set-?>");
            hVar.f6010c = newConfig;
            final m mVar = hVar.b;
            final float width = (mVar.getWidth() / 2.0f) + mVar.getX();
            final float height = (mVar.getHeight() / 2.0f) + mVar.getY();
            String newLabel = newConfig.b;
            try {
                color = Color.parseColor(newConfig.f5999i);
            } catch (Exception unused) {
                color = -7829368;
            }
            EnumC0045a newShape = newConfig.b();
            float f = newConfig.f6000j;
            Intrinsics.checkNotNullParameter(newLabel, "newLabel");
            Intrinsics.checkNotNullParameter(newShape, "newShape");
            mVar.b = newLabel;
            mVar.f325c = color;
            mVar.f326d = newShape;
            mVar.setAlpha(f);
            mVar.invalidate();
            mVar.requestLayout();
            ViewGroup.LayoutParams layoutParams = mVar.getLayoutParams();
            layoutParams.width = c(newConfig.f);
            layoutParams.height = c(newConfig.g);
            mVar.setLayoutParams(layoutParams);
            mVar.post(new Runnable() { // from class: x1.f
                @Override // java.lang.Runnable
                public final void run() {
                    int i3 = EditModeOverlay.f3668l;
                    m mVar2 = mVar;
                    float width2 = width - (mVar2.getWidth() / 2.0f);
                    EditModeOverlay editModeOverlay = this;
                    mVar2.setX(RangesKt.coerceIn(width2, 0.0f, editModeOverlay.getWidth() - mVar2.getWidth()));
                    mVar2.setY(RangesKt.coerceIn(height - (mVar2.getHeight() / 2.0f), 0.0f, editModeOverlay.getHeight() - mVar2.getHeight()));
                    editModeOverlay.a();
                    Function1 function1 = editModeOverlay.f3671e;
                    if (function1 != null) {
                        function1.invoke(editModeOverlay.getCurrentConfigs());
                    }
                }
            });
        }
    }

    public final void g(Function1 transform) {
        h hVar;
        a aVar;
        Intrinsics.checkNotNullParameter(transform, "transform");
        String str = this.f3669c;
        if (str == null || (hVar = (h) this.b.get(str)) == null || (aVar = hVar.f6010c) == null) {
            return;
        }
        f(str, (a) transform.invoke(aVar));
    }

    public final List<a> getCurrentConfigs() {
        float fCoerceAtLeast = RangesKt.coerceAtLeast(getWidth(), 1.0f);
        float fCoerceAtLeast2 = RangesKt.coerceAtLeast(getHeight(), 1.0f);
        Collection<h> collectionValues = this.b.values();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(collectionValues, 10));
        for (h hVar : collectionValues) {
            a aVar = hVar.f6010c;
            m mVar = hVar.b;
            arrayList.add(a.a(aVar, null, ((mVar.getWidth() / 2.0f) + mVar.getX()) / fCoerceAtLeast, ((mVar.getHeight() / 2.0f) + mVar.getY()) / fCoerceAtLeast2, 0, 0, null, null, 0.0f, false, 2023));
        }
        return arrayList;
    }

    public final a getSelectedButtonConfig() {
        h hVar;
        String str = this.f3669c;
        if (str == null || (hVar = (h) this.b.get(str)) == null) {
            return null;
        }
        return hVar.f6010c;
    }

    /* JADX INFO: renamed from: getSelectedButtonId, reason: from getter */
    public final String getF3669c() {
        return this.f3669c;
    }

    public final void setOnButtonSelected(Function1<? super String, Unit> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f3670d = listener;
    }

    public final void setOnLayoutChanged(Function1<? super List<a>, Unit> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f3671e = listener;
    }
}
