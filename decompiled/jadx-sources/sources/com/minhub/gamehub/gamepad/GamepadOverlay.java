package com.minhub.gamehub.gamepad;

import A1.C0035p;
import A1.C0036q;
import A1.G0;
import B1.j;
import B1.k;
import B1.m;
import B1.n;
import B1.o;
import B1.p;
import B1.w;
import S1.d;
import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.webkit.WebView;
import android.widget.FrameLayout;
import com.minhub.gamehub.gamepad.GamepadOverlay;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.json.JSONException;
import org.json.JSONObject;
import p061x1.a;
import p061x1.e;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u001d\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fJ\u0013\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r¢\u0006\u0004\b\u000f\u0010\u0010R\"\u0010\u0016\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\fRT\u0010\"\u001a4\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(\u001a\u0012\u0013\u0012\u00110\b¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(\u001b\u0012\u0004\u0012\u00020\n\u0018\u00010\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!¨\u0006#"}, d2 = {"Lcom/minhub/gamehub/gamepad/GamepadOverlay;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "ctx", "Landroid/util/AttributeSet;", "attr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "mode", "", "setAdelMode", "(Z)V", "", "", "getEnabledButtonIds", "()Ljava/util/Set;", "f", "Z", "getDefaultButtonsEnabled", "()Z", "setDefaultButtonsEnabled", "defaultButtonsEnabled", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "keyCode", "down", "g", "Lkotlin/jvm/functions/Function2;", "getNativeKeySender", "()Lkotlin/jvm/functions/Function2;", "setNativeKeySender", "(Lkotlin/jvm/functions/Function2;)V", "nativeKeySender", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGamepadOverlay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GamepadOverlay.kt\ncom/minhub/gamehub/gamepad/GamepadOverlay\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,507:1\n774#2:508\n865#2,2:509\n1563#2:511\n1634#2,3:512\n1563#2:515\n1634#2,3:516\n774#2:519\n865#2,2:520\n1869#2,2:522\n1869#2:524\n2746#2,3:525\n1870#2:528\n1563#2:529\n1634#2,3:530\n1869#2,2:533\n1563#2:535\n1634#2,3:536\n1869#2,2:540\n1869#2,2:542\n1869#2,2:544\n1869#2,2:546\n1869#2,2:548\n1563#2:550\n1634#2,3:551\n774#2:554\n865#2,2:555\n774#2:557\n865#2,2:558\n1869#2,2:560\n1869#2:562\n2746#2,3:563\n1870#2:566\n1563#2:567\n1634#2,3:568\n1869#2,2:571\n1869#2,2:573\n1869#2,2:575\n1#3:539\n*S KotlinDebug\n*F\n+ 1 GamepadOverlay.kt\ncom/minhub/gamehub/gamepad/GamepadOverlay\n*L\n72#1:508\n72#1:509,2\n72#1:511\n72#1:512,3\n92#1:515\n92#1:516,3\n92#1:519\n92#1:520,2\n94#1:522,2\n99#1:524\n100#1:525,3\n99#1:528\n105#1:529\n105#1:530,3\n113#1:533,2\n118#1:535\n118#1:536,3\n250#1:540,2\n251#1:542,2\n252#1:544,2\n273#1:546,2\n274#1:548,2\n291#1:550\n291#1:551,3\n293#1:554\n293#1:555,2\n293#1:557\n293#1:558,2\n295#1:560,2\n308#1:562\n309#1:563,3\n308#1:566\n314#1:567\n314#1:568,3\n485#1:571,2\n500#1:573,2\n503#1:575,2\n*E\n"})
public final class GamepadOverlay extends FrameLayout {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ int f3736h = 0;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public WebView f3737c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public n f3738d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f3739e;

    /* JADX INFO: renamed from: f, reason: from kotlin metadata */
    public boolean defaultButtonsEnabled;

    /* JADX INFO: renamed from: g, reason: from kotlin metadata */
    public Function2 nativeKeySender;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public GamepadOverlay(Context ctx, AttributeSet attributeSet) {
        super(ctx, attributeSet);
        Intrinsics.checkNotNullParameter(ctx, "ctx");
        this.b = -1;
        this.f3738d = n.b;
        this.defaultButtonsEnabled = true;
        post(new p(this, 0));
    }

    public final int a(int i3) {
        return (int) TypedValue.applyDimension(1, i3, getResources().getDisplayMetrics());
    }

    public final Map b() {
        String str = "{}";
        try {
            Set set = d.f2060a;
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            int i3 = this.b;
            Intrinsics.checkNotNullParameter(context, "<this>");
            String string = d.s(context).getString("button_visibility_" + i3, "{}");
            if (string == null) {
                string = "{}";
            }
            if (StringsKt.isBlank(string)) {
                string = null;
            }
            if (string != null) {
                str = string;
            }
            JSONObject jSONObject = new JSONObject(str);
            Map mapCreateMapBuilder = MapsKt.createMapBuilder();
            Context context2 = getContext();
            Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
            int i4 = this.b;
            RangesKt.coerceAtLeast(getWidth(), 1.0f);
            RangesKt.coerceAtLeast(getHeight(), 1.0f);
            for (a aVar : e.a(context2, i4, true)) {
                String str2 = aVar.f5994a;
                mapCreateMapBuilder.put(str2, Boolean.valueOf(jSONObject.optBoolean(str2, aVar.f6001k)));
            }
            return MapsKt.build(mapCreateMapBuilder);
        } catch (Exception unused) {
            return MapsKt.emptyMap();
        }
    }

    public final void c(n dir) {
        List listEmptyList;
        Intrinsics.checkNotNullParameter(dir, "dir");
        switch (dir.ordinal()) {
            case 0:
                listEmptyList = CollectionsKt.emptyList();
                break;
            case 1:
                listEmptyList = CollectionsKt.listOf("ArrowUp");
                break;
            case 2:
                listEmptyList = CollectionsKt.listOf("ArrowDown");
                break;
            case 3:
                listEmptyList = CollectionsKt.listOf("ArrowLeft");
                break;
            case 4:
                listEmptyList = CollectionsKt.listOf("ArrowRight");
                break;
            case 5:
                listEmptyList = CollectionsKt.listOf((Object[]) new String[]{"ArrowUp", "ArrowLeft"});
                break;
            case 6:
                listEmptyList = CollectionsKt.listOf((Object[]) new String[]{"ArrowUp", "ArrowRight"});
                break;
            case 7:
                listEmptyList = CollectionsKt.listOf((Object[]) new String[]{"ArrowDown", "ArrowLeft"});
                break;
            case 8:
                listEmptyList = CollectionsKt.listOf((Object[]) new String[]{"ArrowDown", "ArrowRight"});
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        if (this.nativeKeySender != null) {
            int iOrdinal = dir.ordinal();
            if (iOrdinal == 5) {
                listEmptyList = CollectionsKt.listOf("Numpad7");
            } else if (iOrdinal == 6) {
                listEmptyList = CollectionsKt.listOf("Numpad9");
            } else if (iOrdinal == 7) {
                listEmptyList = CollectionsKt.listOf("Numpad1");
            } else if (iOrdinal == 8) {
                listEmptyList = CollectionsKt.listOf("Numpad3");
            }
            Iterator it = CollectionsKt.listOf((Object[]) new String[]{"ArrowUp", "ArrowDown", "ArrowLeft", "ArrowRight"}).iterator();
            while (it.hasNext()) {
                e((String) it.next(), false);
            }
            Iterator it2 = CollectionsKt.listOf((Object[]) new String[]{"Numpad1", "Numpad3", "Numpad7", "Numpad9"}).iterator();
            while (it2.hasNext()) {
                e((String) it2.next(), false);
            }
            Iterator it3 = listEmptyList.iterator();
            while (it3.hasNext()) {
                e((String) it3.next(), true);
            }
            return;
        }
        List listListOf = CollectionsKt.listOf((Object[]) new String[]{"ArrowUp", "ArrowDown", "ArrowLeft", "ArrowRight"});
        StringBuilder sb = new StringBuilder("(function(){function dk(k,t){var m={ArrowUp:{key:'ArrowUp',code:'ArrowUp',keyCode:38},ArrowDown:{key:'ArrowDown',code:'ArrowDown',keyCode:40},ArrowLeft:{key:'ArrowLeft',code:'ArrowLeft',keyCode:37},ArrowRight:{key:'ArrowRight',code:'ArrowRight',keyCode:39}};var r=m[k]||{key:k,code:k,keyCode:0};var e=new KeyboardEvent(t,{key:r.key,code:r.code,keyCode:r.keyCode,which:r.keyCode,bubbles:true,cancelable:true});document.dispatchEvent(e);window.dispatchEvent(e);}");
        Iterator it4 = listListOf.iterator();
        while (it4.hasNext()) {
            sb.append("dk('" + ((String) it4.next()) + "','keyup');");
        }
        Iterator it5 = listEmptyList.iterator();
        while (it5.hasNext()) {
            sb.append("dk('" + ((String) it5.next()) + "','keydown');");
        }
        sb.append("})()");
        String string = sb.toString();
        WebView webView = this.f3737c;
        if (webView != null) {
            webView.evaluateJavascript(string, null);
        }
    }

    public final void d() {
        int color;
        if (getWidth() == 0 || getHeight() == 0) {
            post(new p(this, 1));
            return;
        }
        removeAllViews();
        Map mapB = b();
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        int i3 = this.b;
        RangesKt.coerceAtLeast(getWidth(), 1.0f);
        RangesKt.coerceAtLeast(getHeight(), 1.0f);
        List<a> listA = e.a(context, i3, this.defaultButtonsEnabled);
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listA, 10));
        for (a aVar : listA) {
            Boolean bool = (Boolean) mapB.get(aVar.f5994a);
            arrayList.add(a.a(aVar, null, 0.0f, 0.0f, 0, 0, null, null, 0.0f, bool != null ? bool.booleanValue() : aVar.f6001k, 1023));
        }
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i4 = 0;
        int i5 = 0;
        while (i5 < size) {
            Object obj = arrayList.get(i5);
            i5++;
            if (((a) obj).f6001k) {
                arrayList2.add(obj);
            }
        }
        ArrayList arrayList3 = new ArrayList();
        int size2 = arrayList2.size();
        int i6 = 0;
        while (i6 < size2) {
            Object obj2 = arrayList2.get(i6);
            i6++;
            a aVar2 = (a) obj2;
            if (this.f3739e ? StringsKt.N(aVar2.f5994a, "adel_") : !StringsKt.N(aVar2.f5994a, "adel_")) {
                arrayList3.add(obj2);
            }
        }
        int size3 = arrayList3.size();
        while (i4 < size3) {
            Object obj3 = arrayList3.get(i4);
            i4++;
            final a aVar3 = (a) obj3;
            String str = aVar3.f5994a;
            float f = aVar3.f5997e;
            float f3 = aVar3.f5996d;
            int i7 = aVar3.f;
            if (Intrinsics.areEqual(str, "dpad")) {
                int iA = a(i7);
                Context context2 = getContext();
                Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
                o oVar = new o(context2);
                oVar.setLayoutParams(new FrameLayout.LayoutParams(iA, iA));
                oVar.setOnDir(new C0035p(2, this));
                addView(oVar);
                float f4 = iA / 2.0f;
                oVar.setX((f3 * getWidth()) - f4);
                oVar.setY((f * getHeight()) - f4);
            } else if (Intrinsics.areEqual(str, "joystick")) {
                int iA2 = a(i7);
                Context context3 = getContext();
                Intrinsics.checkNotNullExpressionValue(context3, "getContext(...)");
                w wVar = new w(context3);
                wVar.setLayoutParams(new FrameLayout.LayoutParams(iA2, iA2));
                wVar.setOnAxis(new B1.d(this, 1));
                addView(wVar);
                float f5 = iA2 / 2.0f;
                wVar.setX((f3 * getWidth()) - f5);
                wVar.setY((f * getHeight()) - f5);
            } else {
                int iA3 = a(i7);
                int iA4 = a(aVar3.g);
                Context context4 = getContext();
                Intrinsics.checkNotNullExpressionValue(context4, "getContext(...)");
                m mVar = new m(context4);
                mVar.setLabel(aVar3.b);
                try {
                    color = Color.parseColor(aVar3.f5999i);
                } catch (Exception unused) {
                    color = -7829368;
                }
                mVar.setBtnColor(color);
                mVar.setShape(aVar3.b());
                mVar.setAlpha(aVar3.f6000j);
                mVar.setLayoutParams(new FrameLayout.LayoutParams(iA3, iA4));
                String str2 = aVar3.f5995c;
                if (Intrinsics.areEqual(str2, "__mouse_left")) {
                    final int i8 = 1;
                    mVar.setOnPress(new Function0(this) { // from class: B1.q

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public final /* synthetic */ GamepadOverlay f347c;

                        {
                            this.f347c = this;
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            int i9 = i8;
                            GamepadOverlay gamepadOverlay = this.f347c;
                            switch (i9) {
                                case 0:
                                    int i10 = GamepadOverlay.f3736h;
                                    gamepadOverlay.g(120);
                                    break;
                                case 1:
                                    int i11 = GamepadOverlay.f3736h;
                                    gamepadOverlay.f(0, true);
                                    break;
                                case 2:
                                    int i12 = GamepadOverlay.f3736h;
                                    gamepadOverlay.f(0, false);
                                    break;
                                case 3:
                                    int i13 = GamepadOverlay.f3736h;
                                    gamepadOverlay.f(2, true);
                                    break;
                                case 4:
                                    int i14 = GamepadOverlay.f3736h;
                                    gamepadOverlay.f(2, false);
                                    break;
                                default:
                                    int i15 = GamepadOverlay.f3736h;
                                    gamepadOverlay.g(-120);
                                    break;
                            }
                            return Unit.INSTANCE;
                        }
                    });
                    final int i9 = 2;
                    mVar.setOnRelease(new Function0(this) { // from class: B1.q

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public final /* synthetic */ GamepadOverlay f347c;

                        {
                            this.f347c = this;
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            int i10 = i9;
                            GamepadOverlay gamepadOverlay = this.f347c;
                            switch (i10) {
                                case 0:
                                    int i11 = GamepadOverlay.f3736h;
                                    gamepadOverlay.g(120);
                                    break;
                                case 1:
                                    int i12 = GamepadOverlay.f3736h;
                                    gamepadOverlay.f(0, true);
                                    break;
                                case 2:
                                    int i13 = GamepadOverlay.f3736h;
                                    gamepadOverlay.f(0, false);
                                    break;
                                case 3:
                                    int i14 = GamepadOverlay.f3736h;
                                    gamepadOverlay.f(2, true);
                                    break;
                                case 4:
                                    int i15 = GamepadOverlay.f3736h;
                                    gamepadOverlay.f(2, false);
                                    break;
                                default:
                                    int i16 = GamepadOverlay.f3736h;
                                    gamepadOverlay.g(-120);
                                    break;
                            }
                            return Unit.INSTANCE;
                        }
                    });
                } else if (Intrinsics.areEqual(str2, "__mouse_right")) {
                    final int i10 = 3;
                    mVar.setOnPress(new Function0(this) { // from class: B1.q

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public final /* synthetic */ GamepadOverlay f347c;

                        {
                            this.f347c = this;
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            int i11 = i10;
                            GamepadOverlay gamepadOverlay = this.f347c;
                            switch (i11) {
                                case 0:
                                    int i12 = GamepadOverlay.f3736h;
                                    gamepadOverlay.g(120);
                                    break;
                                case 1:
                                    int i13 = GamepadOverlay.f3736h;
                                    gamepadOverlay.f(0, true);
                                    break;
                                case 2:
                                    int i14 = GamepadOverlay.f3736h;
                                    gamepadOverlay.f(0, false);
                                    break;
                                case 3:
                                    int i15 = GamepadOverlay.f3736h;
                                    gamepadOverlay.f(2, true);
                                    break;
                                case 4:
                                    int i16 = GamepadOverlay.f3736h;
                                    gamepadOverlay.f(2, false);
                                    break;
                                default:
                                    int i17 = GamepadOverlay.f3736h;
                                    gamepadOverlay.g(-120);
                                    break;
                            }
                            return Unit.INSTANCE;
                        }
                    });
                    final int i11 = 4;
                    mVar.setOnRelease(new Function0(this) { // from class: B1.q

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public final /* synthetic */ GamepadOverlay f347c;

                        {
                            this.f347c = this;
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            int i12 = i11;
                            GamepadOverlay gamepadOverlay = this.f347c;
                            switch (i12) {
                                case 0:
                                    int i13 = GamepadOverlay.f3736h;
                                    gamepadOverlay.g(120);
                                    break;
                                case 1:
                                    int i14 = GamepadOverlay.f3736h;
                                    gamepadOverlay.f(0, true);
                                    break;
                                case 2:
                                    int i15 = GamepadOverlay.f3736h;
                                    gamepadOverlay.f(0, false);
                                    break;
                                case 3:
                                    int i16 = GamepadOverlay.f3736h;
                                    gamepadOverlay.f(2, true);
                                    break;
                                case 4:
                                    int i17 = GamepadOverlay.f3736h;
                                    gamepadOverlay.f(2, false);
                                    break;
                                default:
                                    int i18 = GamepadOverlay.f3736h;
                                    gamepadOverlay.g(-120);
                                    break;
                            }
                            return Unit.INSTANCE;
                        }
                    });
                } else if (Intrinsics.areEqual(str2, "__scroll_up")) {
                    final int i12 = 5;
                    mVar.setOnPress(new Function0(this) { // from class: B1.q

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public final /* synthetic */ GamepadOverlay f347c;

                        {
                            this.f347c = this;
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            int i13 = i12;
                            GamepadOverlay gamepadOverlay = this.f347c;
                            switch (i13) {
                                case 0:
                                    int i14 = GamepadOverlay.f3736h;
                                    gamepadOverlay.g(120);
                                    break;
                                case 1:
                                    int i15 = GamepadOverlay.f3736h;
                                    gamepadOverlay.f(0, true);
                                    break;
                                case 2:
                                    int i16 = GamepadOverlay.f3736h;
                                    gamepadOverlay.f(0, false);
                                    break;
                                case 3:
                                    int i17 = GamepadOverlay.f3736h;
                                    gamepadOverlay.f(2, true);
                                    break;
                                case 4:
                                    int i18 = GamepadOverlay.f3736h;
                                    gamepadOverlay.f(2, false);
                                    break;
                                default:
                                    int i19 = GamepadOverlay.f3736h;
                                    gamepadOverlay.g(-120);
                                    break;
                            }
                            return Unit.INSTANCE;
                        }
                    });
                    mVar.setOnRelease(new C0036q(4));
                } else if (Intrinsics.areEqual(str2, "__scroll_down")) {
                    final int i13 = 0;
                    mVar.setOnPress(new Function0(this) { // from class: B1.q

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public final /* synthetic */ GamepadOverlay f347c;

                        {
                            this.f347c = this;
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            int i14 = i13;
                            GamepadOverlay gamepadOverlay = this.f347c;
                            switch (i14) {
                                case 0:
                                    int i15 = GamepadOverlay.f3736h;
                                    gamepadOverlay.g(120);
                                    break;
                                case 1:
                                    int i16 = GamepadOverlay.f3736h;
                                    gamepadOverlay.f(0, true);
                                    break;
                                case 2:
                                    int i17 = GamepadOverlay.f3736h;
                                    gamepadOverlay.f(0, false);
                                    break;
                                case 3:
                                    int i18 = GamepadOverlay.f3736h;
                                    gamepadOverlay.f(2, true);
                                    break;
                                case 4:
                                    int i19 = GamepadOverlay.f3736h;
                                    gamepadOverlay.f(2, false);
                                    break;
                                default:
                                    int i110 = GamepadOverlay.f3736h;
                                    gamepadOverlay.g(-120);
                                    break;
                            }
                            return Unit.INSTANCE;
                        }
                    });
                    mVar.setOnRelease(new C0036q(5));
                } else if (StringsKt.N(str2, "__adel:")) {
                    mVar.setOnPress(new G0(1, this, StringsKt__StringsKt.removePrefix(str2, (CharSequence) "__adel:")));
                    mVar.setOnRelease(new C0036q(6));
                } else {
                    final int i14 = 0;
                    mVar.setOnPress(new Function0(this) { // from class: B1.r

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public final /* synthetic */ GamepadOverlay f348c;

                        {
                            this.f348c = this;
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            int i15 = i14;
                            p061x1.a aVar4 = aVar3;
                            GamepadOverlay gamepadOverlay = this.f348c;
                            switch (i15) {
                                case 0:
                                    int i16 = GamepadOverlay.f3736h;
                                    gamepadOverlay.e(aVar4.f5995c, true);
                                    break;
                                default:
                                    int i17 = GamepadOverlay.f3736h;
                                    gamepadOverlay.e(aVar4.f5995c, false);
                                    break;
                            }
                            return Unit.INSTANCE;
                        }
                    });
                    final int i15 = 1;
                    mVar.setOnRelease(new Function0(this) { // from class: B1.r

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public final /* synthetic */ GamepadOverlay f348c;

                        {
                            this.f348c = this;
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            int i16 = i15;
                            p061x1.a aVar4 = aVar3;
                            GamepadOverlay gamepadOverlay = this.f348c;
                            switch (i16) {
                                case 0:
                                    int i17 = GamepadOverlay.f3736h;
                                    gamepadOverlay.e(aVar4.f5995c, true);
                                    break;
                                default:
                                    int i18 = GamepadOverlay.f3736h;
                                    gamepadOverlay.e(aVar4.f5995c, false);
                                    break;
                            }
                            return Unit.INSTANCE;
                        }
                    });
                }
                addView(mVar);
                mVar.setX((f3 * getWidth()) - (iA3 / 2.0f));
                mVar.setY((f * getHeight()) - (iA4 / 2.0f));
            }
        }
    }

    public final void e(String str, boolean z2) {
        Function2 function2 = this.nativeKeySender;
        if (function2 != null) {
            function2.invoke(str, Boolean.valueOf(z2));
            return;
        }
        String str2 = z2 ? "keydown" : "keyup";
        String strReplace$default = StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(str, "\\", "\\\\", false, 4, (Object) null), "'", "\\'", false, 4, (Object) null);
        WebView webView = this.f3737c;
        if (webView != null) {
            webView.evaluateJavascript(StringsKt.trimIndent("\n            (function(){\n              var raw = '" + strReplace$default + "';\n              var aliases = {\n                Backquote: { key: '`', code: 'Backquote', keyCode: 192 },\n                Minus: { key: '-', code: 'Minus', keyCode: 189 },\n                Equal: { key: '=', code: 'Equal', keyCode: 187 },\n                BracketLeft: { key: '[', code: 'BracketLeft', keyCode: 219 },\n                BracketRight: { key: ']', code: 'BracketRight', keyCode: 221 },\n                Backslash: { key: '\\\\\\\\', code: 'Backslash', keyCode: 220 },\n                Semicolon: { key: ';', code: 'Semicolon', keyCode: 186 },\n                Quote: { key: \"'\", code: 'Quote', keyCode: 222 },\n                Comma: { key: ',', code: 'Comma', keyCode: 188 },\n                Period: { key: '.', code: 'Period', keyCode: 190 },\n                Slash: { key: '/', code: 'Slash', keyCode: 191 },\n                Space: { key: ' ', code: 'Space', keyCode: 32 },\n                ' ': { key: ' ', code: 'Space', keyCode: 32 },\n                ShiftLeft: { key: 'Shift', code: 'ShiftLeft', keyCode: 16 },\n                ShiftRight: { key: 'Shift', code: 'ShiftRight', keyCode: 16 },\n                ControlLeft: { key: 'Control', code: 'ControlLeft', keyCode: 17 },\n                ControlRight: { key: 'Control', code: 'ControlRight', keyCode: 17 },\n                AltLeft: { key: 'Alt', code: 'AltLeft', keyCode: 18 },\n                AltRight: { key: 'Alt', code: 'AltRight', keyCode: 18 },\n                CapsLock: { key: 'CapsLock', code: 'CapsLock', keyCode: 20 },\n                Tab: { key: 'Tab', code: 'Tab', keyCode: 9 },\n                Enter: { key: 'Enter', code: 'Enter', keyCode: 13 },\n                Escape: { key: 'Escape', code: 'Escape', keyCode: 27 },\n                Backspace: { key: 'Backspace', code: 'Backspace', keyCode: 8 },\n                Insert: { key: 'Insert', code: 'Insert', keyCode: 45 },\n                Delete: { key: 'Delete', code: 'Delete', keyCode: 46 },\n                Home: { key: 'Home', code: 'Home', keyCode: 36 },\n                End: { key: 'End', code: 'End', keyCode: 35 },\n                PageUp: { key: 'PageUp', code: 'PageUp', keyCode: 33 },\n                PageDown: { key: 'PageDown', code: 'PageDown', keyCode: 34 },\n                ArrowUp: { key: 'ArrowUp', code: 'ArrowUp', keyCode: 38 },\n                ArrowDown: { key: 'ArrowDown', code: 'ArrowDown', keyCode: 40 },\n                ArrowLeft: { key: 'ArrowLeft', code: 'ArrowLeft', keyCode: 37 },\n                ArrowRight: { key: 'ArrowRight', code: 'ArrowRight', keyCode: 39 },\n                F1: { key: 'F1', code: 'F1', keyCode: 112 },\n                F2: { key: 'F2', code: 'F2', keyCode: 113 },\n                F3: { key: 'F3', code: 'F3', keyCode: 114 },\n                F4: { key: 'F4', code: 'F4', keyCode: 115 },\n                F5: { key: 'F5', code: 'F5', keyCode: 116 },\n                F6: { key: 'F6', code: 'F6', keyCode: 117 },\n                F7: { key: 'F7', code: 'F7', keyCode: 118 },\n                F8: { key: 'F8', code: 'F8', keyCode: 119 },\n                F9: { key: 'F9', code: 'F9', keyCode: 120 },\n                F10: { key: 'F10', code: 'F10', keyCode: 121 },\n                F11: { key: 'F11', code: 'F11', keyCode: 122 },\n                F12: { key: 'F12', code: 'F12', keyCode: 123 }\n              };\n              var resolved = aliases[raw];\n              if (!resolved && raw.length === 1) {\n                var isDigit = /[0-9]/.test(raw);\n                resolved = {\n                  key: raw,\n                  code: isDigit ? ('Digit' + raw) : ('Key' + raw.toUpperCase()),\n                  keyCode: raw.toUpperCase().charCodeAt(0)\n                };\n              }\n              if (!resolved) {\n                resolved = { key: raw, code: raw, keyCode: 0 };\n              }\n              var e = new KeyboardEvent('" + str2 + "', {\n                key: resolved.key,\n                code: resolved.code,\n                keyCode: resolved.keyCode,\n                which: resolved.keyCode,\n                bubbles: true,\n                cancelable: true\n              });\n              document.dispatchEvent(e);\n              window.dispatchEvent(e);\n            })();\n            "), null);
        }
    }

    public final void f(int i3, boolean z2) {
        int i4;
        String str;
        String str2 = z2 ? "mousedown" : "mouseup";
        if (z2) {
            i4 = i3 == 0 ? 1 : 2;
        } else {
            i4 = 0;
        }
        if (z2 || i3 != 0) {
            str = (z2 && i3 == 2) ? "el.dispatchEvent(new MouseEvent('contextmenu',{bubbles:true,cancelable:true,clientX:cx,clientY:cy,button:2,buttons:2}));" : "";
        } else {
            str = "el.dispatchEvent(new MouseEvent('click',{bubbles:true,cancelable:true,clientX:cx,clientY:cy,button:0,buttons:0}));";
        }
        WebView webView = this.f3737c;
        if (webView != null) {
            webView.evaluateJavascript(StringsKt.trimIndent("\n            (function(){\n              try {\n                var el = document.querySelector('canvas') || document.querySelector('#GameCanvas') || document.body;\n                var rect = el.getBoundingClientRect();\n                var cx = rect.left + rect.width / 2;\n                var cy = rect.top + rect.height / 2;\n                el.dispatchEvent(new MouseEvent('" + str2 + "',{bubbles:true,cancelable:true,clientX:cx,clientY:cy,button:" + i3 + ",buttons:" + i4 + "}));\n                " + str + "\n              } catch(e) {}\n            })();\n        "), null);
        }
    }

    public final void g(int i3) {
        WebView webView = this.f3737c;
        if (webView != null) {
            webView.evaluateJavascript(StringsKt.trimIndent("\n            (function(){\n              try {\n                var el = document.querySelector('canvas') || document.querySelector('#GameCanvas') || document.body;\n                var rect = el.getBoundingClientRect();\n                var cx = rect.left + rect.width / 2;\n                var cy = rect.top + rect.height / 2;\n                el.dispatchEvent(new WheelEvent('wheel',{bubbles:true,cancelable:true,clientX:cx,clientY:cy,deltaY:" + i3 + ",deltaMode:0}));\n              } catch(e) {}\n            })();\n        "), null);
        }
    }

    public final boolean getDefaultButtonsEnabled() {
        return this.defaultButtonsEnabled;
    }

    public final Set<String> getEnabledButtonIds() {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        int i3 = this.b;
        RangesKt.coerceAtLeast(getWidth(), 1.0f);
        RangesKt.coerceAtLeast(getHeight(), 1.0f);
        List listA = e.a(context, i3, true);
        Map mapB = b();
        ArrayList arrayList = new ArrayList();
        for (Object obj : listA) {
            a aVar = (a) obj;
            Boolean bool = (Boolean) mapB.get(aVar.f5994a);
            if (bool != null ? bool.booleanValue() : aVar.f6001k) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
        int size = arrayList.size();
        int i4 = 0;
        while (i4 < size) {
            Object obj2 = arrayList.get(i4);
            i4++;
            arrayList2.add(((a) obj2).f5994a);
        }
        return (Set) CollectionsKt___CollectionsKt.toCollection(arrayList2, new LinkedHashSet());
    }

    public final Function2<String, Boolean, Unit> getNativeKeySender() {
        return this.nativeKeySender;
    }

    public final void h(String id) throws JSONException {
        j jVar;
        a aVarA;
        float f;
        int i3;
        String str;
        float f3;
        float f4;
        int i4;
        int i5;
        String str2;
        String str3;
        float f5;
        int i6;
        String str4;
        float f6;
        float f7;
        int i7;
        int i8;
        String str5;
        String str6;
        Intrinsics.checkNotNullParameter(id, "id");
        LinkedHashSet enabled = (LinkedHashSet) CollectionsKt___CollectionsKt.toCollection(getEnabledButtonIds(), new LinkedHashSet());
        Intrinsics.checkNotNullParameter(enabled, "enabled");
        Intrinsics.checkNotNullParameter(id, "id");
        LinkedHashSet enabled2 = new LinkedHashSet(enabled);
        if (enabled2.contains(id)) {
            enabled2.remove(id);
            Intrinsics.checkNotNullParameter(enabled2, "enabled");
            jVar = new j(enabled2);
        } else {
            if (Intrinsics.areEqual(id, "dpad")) {
                enabled2.remove("joystick");
            }
            if (Intrinsics.areEqual(id, "joystick")) {
                enabled2.remove("dpad");
            }
            enabled2.add(id);
            Intrinsics.checkNotNullParameter(enabled2, "enabled");
            jVar = new j(enabled2);
        }
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        int i9 = this.b;
        RangesKt.coerceAtLeast(getWidth(), 1.0f);
        RangesKt.coerceAtLeast(getHeight(), 1.0f);
        List<a> mutableList = CollectionsKt.toMutableList((Collection) e.a(context, i9, true));
        LinkedHashSet<String> linkedHashSet = jVar.f322a;
        for (String id2 : linkedHashSet) {
            if (mutableList == null || !mutableList.isEmpty()) {
                Iterator it = mutableList.iterator();
                do {
                    if (it.hasNext()) {
                    }
                } while (!Intrinsics.areEqual(((a) it.next()).f5994a, id2));
            }
            Pair pairB = k.b(mutableList, id2);
            float fFloatValue = ((Number) pairB.getFirst()).floatValue();
            float fFloatValue2 = ((Number) pairB.getSecond()).floatValue();
            Intrinsics.checkNotNullParameter(id2, "id");
            mutableList.add(com.bumptech.glide.d.k(id2, fFloatValue, fFloatValue2));
        }
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(mutableList, 10));
        for (a aVar : mutableList) {
            boolean zContains = linkedHashSet.contains(aVar.f5994a);
            String str7 = aVar.f5994a;
            if (Intrinsics.areEqual(str7, "dpad")) {
                if (linkedHashSet.contains("joystick")) {
                    zContains = false;
                    i6 = 1023;
                    str4 = null;
                    f6 = 0.0f;
                    f7 = 0.0f;
                    i7 = 0;
                    i8 = 0;
                    str5 = null;
                    str6 = null;
                    f5 = 0.0f;
                } else {
                    f5 = 0.0f;
                    i6 = 1023;
                    str4 = null;
                    f6 = 0.0f;
                    f7 = 0.0f;
                    i7 = 0;
                    i8 = 0;
                    str5 = null;
                    str6 = null;
                }
                aVarA = a.a(aVar, str4, f6, f7, i7, i8, str5, str6, f5, zContains, i6);
            } else if (Intrinsics.areEqual(str7, "joystick")) {
                if (linkedHashSet.contains("dpad")) {
                    zContains = false;
                    i3 = 1023;
                    str = null;
                    f3 = 0.0f;
                    f4 = 0.0f;
                    i4 = 0;
                    i5 = 0;
                    str2 = null;
                    str3 = null;
                    f = 0.0f;
                } else {
                    f = 0.0f;
                    i3 = 1023;
                    str = null;
                    f3 = 0.0f;
                    f4 = 0.0f;
                    i4 = 0;
                    i5 = 0;
                    str2 = null;
                    str3 = null;
                }
                aVarA = a.a(aVar, str, f3, f4, i4, i5, str2, str3, f, zContains, i3);
            } else {
                aVarA = a.a(aVar, null, 0.0f, 0.0f, 0, 0, null, null, 0.0f, zContains, 1023);
            }
            arrayList.add(aVarA);
        }
        Context context2 = getContext();
        Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
        e.b(context2, this.b, arrayList);
        JSONObject jSONObject = new JSONObject();
        Context context3 = getContext();
        Intrinsics.checkNotNullExpressionValue(context3, "getContext(...)");
        int i10 = this.b;
        RangesKt.coerceAtLeast(getWidth(), 1.0f);
        RangesKt.coerceAtLeast(getHeight(), 1.0f);
        Iterator it2 = e.a(context3, i10, true).iterator();
        while (it2.hasNext()) {
            String str8 = ((a) it2.next()).f5994a;
            jSONObject.put(str8, linkedHashSet.contains(str8));
        }
        Iterator it3 = linkedHashSet.iterator();
        while (it3.hasNext()) {
            jSONObject.put((String) it3.next(), true);
        }
        Set set = d.f2060a;
        Context context4 = getContext();
        Intrinsics.checkNotNullExpressionValue(context4, "getContext(...)");
        int i11 = this.b;
        String json = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(json, "toString(...)");
        Intrinsics.checkNotNullParameter(context4, "<this>");
        Intrinsics.checkNotNullParameter(json, "json");
        d.s(context4).edit().putString("button_visibility_" + i11, json).apply();
        d();
    }

    @Override // android.view.View
    public final void onSizeChanged(int i3, int i4, int i5, int i6) {
        super.onSizeChanged(i3, i4, i5, i6);
        if (i3 == i5 && i4 == i6) {
            return;
        }
        d();
    }

    public final void setAdelMode(boolean mode) {
        this.f3739e = mode;
        d();
    }

    public final void setDefaultButtonsEnabled(boolean z2) {
        this.defaultButtonsEnabled = z2;
    }

    public final void setNativeKeySender(Function2<? super String, ? super Boolean, Unit> function2) {
        this.nativeKeySender = function2;
    }
}
