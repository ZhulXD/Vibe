package com.bumptech.glide;

import A1.C0009b;
import A1.C0013d;
import A1.C0015e;
import A1.C0021h;
import C1.S0;
import C1.ViewOnClickListenerC0088n0;
import C1.X0;
import S.G;
import android.app.DownloadManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.AssetFileDescriptor;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.ArrayAdapter;
import android.widget.LinearLayout;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.content.ContextCompat;
import androidx.core.view.MotionEventCompat;
import com.google.gson.reflect.TypeToken;
import com.minhub.gamehub.R;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.data.GameEngine;
import com.minhub.gamehub.data.GameKt;
import com.minhub.gamehub.data.TranslationOverlayInstaller;
import com.minhub.gamehub.data.TranslationOverlayPaths;
import com.minhub.gamehub.hub.GameDetailActivity;
import com.minhub.gamehub.hub.OnlineGameDetailActivity;
import com.minhub.gamehub.hub.catalog.OnlineCatalogItem;
import com.minhub.gamehub.hub.catalog.OnlineTranslationPackage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.net.ConnectException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.UnknownHostException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import k.P0;
import k.Z0;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt__UtilsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.json.JSONException;
import org.json.JSONObject;
import p011e.C0244f;
import p024j.C0269h;
import p025j0.B;
import p025j0.C0272a;
import p025j0.C0277f;
import p025j0.D;
import p025j0.r;
import p025j0.z;
import p033m0.C0351a;
import p033m0.C0352b;
import p033m0.C0353c;
import p033m0.E;
import p033m0.q;
import p033m0.u;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f3205a = true;

    public static boolean I(int i3, Rect rect, Rect rect2) {
        if (i3 == 17) {
            int i4 = rect.right;
            int i5 = rect2.right;
            return (i4 > i5 || rect.left >= i5) && rect.left > rect2.left;
        }
        if (i3 == 33) {
            int i6 = rect.bottom;
            int i7 = rect2.bottom;
            return (i6 > i7 || rect.top >= i7) && rect.top > rect2.top;
        }
        if (i3 == 66) {
            int i8 = rect.left;
            int i9 = rect2.left;
            return (i8 < i9 || rect.right <= i9) && rect.right < rect2.right;
        }
        if (i3 != 130) {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        int i10 = rect.top;
        int i11 = rect2.top;
        return (i10 < i11 || rect.bottom <= i11) && rect.bottom < rect2.bottom;
    }

    public static boolean K(Context context) {
        return context.getResources().getConfiguration().fontScale >= 1.3f;
    }

    public static int O(int i3, Rect rect, Rect rect2) {
        int i4;
        int i5;
        if (i3 == 17) {
            i4 = rect.left;
            i5 = rect2.right;
        } else if (i3 == 33) {
            i4 = rect.top;
            i5 = rect2.bottom;
        } else if (i3 == 66) {
            i4 = rect2.left;
            i5 = rect.right;
        } else {
            if (i3 != 130) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            i4 = rect2.top;
            i5 = rect.bottom;
        }
        return Math.max(0, i4 - i5);
    }

    public static int P(int i3, Rect rect, Rect rect2) {
        if (i3 != 17) {
            if (i3 != 33) {
                if (i3 != 66) {
                    if (i3 != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
            }
            return Math.abs(((rect.width() / 2) + rect.left) - ((rect2.width() / 2) + rect2.left));
        }
        return Math.abs(((rect.height() / 2) + rect.top) - ((rect2.height() / 2) + rect2.top));
    }

    public static final String Q(String str) {
        String upperCase;
        String string;
        if (str == null || (string = StringsKt.trim((CharSequence) str).toString()) == null) {
            upperCase = null;
        } else {
            upperCase = string.toUpperCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
        }
        if (upperCase == null) {
            return "web";
        }
        switch (upperCase.hashCode()) {
            case -1881250573:
                return !upperCase.equals("RENPY7") ? "web" : "renpy";
            case -1881250572:
                return !upperCase.equals("RENPY8") ? "web" : "renpy";
            case 2307093:
                return !upperCase.equals("KIRI") ? "web" : "kirikiri";
            case 67991361:
                return !upperCase.equals("GODOT") ? "web" : "godot";
            case 77861828:
                return !upperCase.equals("RENPY") ? "web" : "renpy";
            case 82109025:
                return !upperCase.equals("VXACE") ? "web" : "vxace";
            case 347362730:
                return !upperCase.equals("KIRIKIRI") ? "web" : "kirikiri";
            default:
                return "web";
        }
    }

    public static void R(InputConnection inputConnection, EditorInfo editorInfo, TextView textView) {
        if (inputConnection == null || editorInfo.hintText != null) {
            return;
        }
        for (ViewParent parent = textView.getParent(); parent instanceof View; parent = parent.getParent()) {
        }
    }

    public static R1.a S(JSONObject json, String lang) throws JSONException {
        long j2 = json.getLong("version_code");
        String string = json.getString("version_name");
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String strOptString = json.optString("download_url", "");
        Intrinsics.checkNotNullExpressionValue(strOptString, "optString(...)");
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(lang, "lang");
        String strOptString2 = json.optString("changelog", "");
        if (Intrinsics.areEqual(lang, "vi")) {
            Intrinsics.checkNotNull(strOptString2);
        } else {
            String strOptString3 = json.optString("changelog_en", "");
            if (!StringsKt.isBlank(strOptString3)) {
                strOptString2 = strOptString3;
            }
            Intrinsics.checkNotNullExpressionValue(strOptString2, "ifBlank(...)");
        }
        return new R1.a(j2, string, strOptString, strOptString2);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x02f3  */
    /* JADX WARN: Code duplicated, block: B:104:0x0317 A[LOOP:6: B:102:0x0311->B:104:0x0317, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:108:0x0339  */
    /* JADX WARN: Code duplicated, block: B:110:0x0347  */
    /* JADX WARN: Code duplicated, block: B:111:0x035c  */
    /* JADX WARN: Code duplicated, block: B:117:0x0380 A[LOOP:8: B:115:0x037a->B:117:0x0380, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:149:0x035f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:152:0x0333 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:80:0x0277  */
    /* JADX WARN: Code duplicated, block: B:83:0x02a5  */
    /* JADX WARN: Code duplicated, block: B:86:0x02b4  */
    /* JADX WARN: Code duplicated, block: B:88:0x02be  */
    /* JADX WARN: Code duplicated, block: B:91:0x02c7  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v18, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v32, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r6v11, types: [java.lang.Iterable, java.util.List] */
    public static H1.b T(H1.a fixture) {
        Set setEmptySet;
        LinkedHashMap linkedHashMap;
        ArrayList arrayList;
        String message;
        I1.i iVar;
        K1.k kVar;
        ArrayList arrayList2;
        ?? EmptyList;
        LinkedHashMap linkedHashMap2;
        ArrayList arrayList3;
        LinkedHashMap linkedHashMap3;
        O1.d dVar;
        H1.c cVar;
        List list;
        String str;
        String str2 = fixture.f1087a;
        Set set = fixture.g;
        Intrinsics.checkNotNullParameter(fixture, "fixture");
        List list2 = O1.a.f1512a;
        ArrayList arrayList4 = new ArrayList();
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            String str3 = ((O1.b) it.next()).f;
            if (str3 != null) {
                arrayList4.add(str3);
            }
        }
        List listSorted = CollectionsKt___CollectionsKt.sorted(CollectionsKt.distinct(arrayList4));
        LinkedHashMap linkedHashMap4 = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(listSorted, 10)), 16));
        for (Object obj : listSorted) {
            linkedHashMap4.put(obj, Boolean.valueOf(set.contains((String) obj)));
        }
        ArrayList arrayList5 = new ArrayList();
        for (Object obj2 : list2) {
            O1.b bVar = (O1.b) obj2;
            if (Intrinsics.areEqual(bVar.b.b, str2) && bVar.f1516e && ((str = bVar.f) == null || set.contains(str))) {
                arrayList5.add(obj2);
            }
        }
        ArrayList arrayList6 = new ArrayList();
        if (!Intrinsics.areEqual(str2, "mv") && !Intrinsics.areEqual(str2, "mz")) {
            arrayList6.add("No strict MV/MZ match for engine=" + str2 + ".");
        }
        arrayList6.add("Engine version is unknown; no synthetic core can be selected.");
        ArrayList arrayList7 = new ArrayList();
        for (Object obj3 : listSorted) {
            if (!set.contains((String) obj3)) {
                arrayList7.add(obj3);
            }
        }
        ArrayList arrayList8 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList7, 10));
        int size = arrayList7.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj4 = arrayList7.get(i3);
            i3++;
            arrayList8.add("Utility gate " + ((String) obj4) + " not enabled (explicit input required).");
        }
        CollectionsKt__MutableCollectionsKt.addAll(arrayList6, arrayList8);
        H1.c cVar2 = null;
        if (Intrinsics.areEqual(str2, "mv") || Intrinsics.areEqual(str2, "mz")) {
            ArrayList arrayList9 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList5, 10));
            int size2 = arrayList5.size();
            int i4 = 0;
            while (i4 < size2) {
                Object obj5 = arrayList5.get(i4);
                i4++;
                O1.b bVar2 = (O1.b) obj5;
                arrayList9.add(new K1.f(bVar2.f1513a, fixture.f1087a, bVar2.f1515d, StringsKt__StringsJVMKt.repeat("0", 64), bVar2.f1514c));
            }
            String strO = kotlin.collections.unsigned.a.o("dry-run-", str2);
            ArrayList arrayList10 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList9, 10));
            int size3 = arrayList9.size();
            int i5 = 0;
            while (i5 < size3) {
                Object obj6 = arrayList9.get(i5);
                i5++;
                arrayList10.add(((K1.f) obj6).f1229a);
            }
            K1.k manifest = new K1.k(CollectionsKt__CollectionsKt.listOfNotNull((K1.e) null), CollectionsKt.listOf(new K1.h(strO, str2, arrayList10)), arrayList9);
            String str4 = fixture.f1087a;
            String str5 = fixture.b;
            List list3 = fixture.f;
            if (list3 == null || (setEmptySet = CollectionsKt.toSet(list3)) == null) {
                setEmptySet = SetsKt.emptySet();
            }
            Set set2 = setEmptySet;
            int i6 = fixture.f1088c;
            K1.i iVar2 = fixture.f1089d;
            I1.i iVar3 = I1.i.b;
            I1.i iVar4 = fixture.f1090e;
            K1.a input = new K1.a(str4, str5, set2, i6, iVar2, iVar4);
            Intrinsics.checkNotNullParameter(manifest, "manifest");
            Intrinsics.checkNotNullParameter(input, "input");
            Intrinsics.checkNotNullParameter(manifest, "manifest");
            K1.k registry = new K1.k(manifest);
            linkedHashMap = linkedHashMap4;
            Intrinsics.checkNotNullParameter(registry, "registry");
            Intrinsics.checkNotNullParameter(input, "input");
            ArrayList arrayList11 = new ArrayList();
            ArrayList arrayList12 = new ArrayList();
            try {
                K1.b bVarD = K1.d.d(manifest, input);
                K1.h hVar = bVarD.f1226a;
                if (hVar == null) {
                    arrayList11.add("No matching profile; using core fallback and no profile patches.");
                    arrayList = arrayList6;
                } else {
                    arrayList = arrayList6;
                    try {
                        arrayList11.add("Selected profile: " + hVar.f1239a + ".");
                    } catch (IllegalArgumentException e2) {
                        e = e2;
                        cVar2 = null;
                        message = e.getMessage();
                        if (message == null) {
                            message = "registry validation or dependency error";
                        }
                        arrayList12.add("Patch plan rejected: " + message + ".");
                        StringBuilder sb = new StringBuilder("Requested mode=");
                        iVar = input.f;
                        sb.append(iVar);
                        sb.append("; actual mode=LEGACY; activation=false.");
                        arrayList11.add(sb.toString());
                        if (iVar == I1.i.f1184c) {
                            arrayList11.add("PINNED is recorded as requested only; dry-run does not activate it.");
                        }
                        kVar = new K1.k(CollectionsKt.emptyList(), iVar, arrayList11, arrayList12);
                        if (kVar != null) {
                            arrayList2 = arrayList;
                            CollectionsKt__MutableCollectionsKt.addAll(arrayList2, kVar.f1247c);
                        } else {
                            arrayList2 = arrayList;
                        }
                        if (fixture.f1090e == I1.i.f1184c) {
                            arrayList2.add("PINNED is recorded as requested only; actual mode remains LEGACY.");
                        }
                        if (kVar != null) {
                            EmptyList = CollectionsKt.emptyList();
                        } else {
                            EmptyList = CollectionsKt.emptyList();
                        }
                        ?? r6 = EmptyList;
                        List list4 = O1.a.b;
                        linkedHashMap2 = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(list4, 10)), 16));
                        for (Object obj7 : list4) {
                            linkedHashMap2.put(((O1.d) obj7).f1521c, obj7);
                        }
                        I1.i iVar5 = I1.i.b;
                        List listDistinct = CollectionsKt.distinct(arrayList2);
                        arrayList3 = new ArrayList();
                        for (String str6 : r6) {
                            dVar = (O1.d) linkedHashMap2.get(str6);
                            if (dVar != null) {
                                String str7 = dVar.f1520a;
                                int i7 = dVar.b;
                                List list5 = O1.a.f1512a;
                                O1.b bVarB = O1.a.b(str6);
                                Intrinsics.checkNotNull(bVarB);
                                cVar = new H1.c(str6, str7, i7, bVarB.f1514c);
                            } else {
                                cVar = cVar2;
                            }
                            if (cVar != null) {
                                arrayList3.add(cVar);
                            }
                        }
                        linkedHashMap3 = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(r6, 10)), 16));
                        for (Object obj8 : r6) {
                            List list6 = O1.a.f1512a;
                            O1.b bVarB2 = O1.a.b((String) obj8);
                            Intrinsics.checkNotNull(bVarB2);
                            linkedHashMap3.put(obj8, bVarB2.f1514c);
                        }
                        return new H1.b(r6, listDistinct, arrayList3, linkedHashMap3, linkedHashMap, fixture.f1090e);
                    }
                }
                StringBuilder sb2 = new StringBuilder("No compatible core for engine=");
                sb2.append(str4);
                sb2.append(", version=");
                cVar2 = null;
                try {
                    sb2.append((String) null);
                    sb2.append(", app=");
                    sb2.append(i6);
                    sb2.append(", channel=");
                    sb2.append(iVar2);
                    sb2.append(".");
                    arrayList12.add(sb2.toString());
                    arrayList11.add("Requested mode=" + iVar4 + "; actual mode=LEGACY; activation=false.");
                    if (iVar4 == I1.i.f1184c) {
                        arrayList11.add("PINNED is recorded as requested only; dry-run does not activate it.");
                    }
                    kVar = new K1.k(bVarD.b, iVar4, arrayList11, arrayList12);
                } catch (IllegalArgumentException e3) {
                    e = e3;
                    message = e.getMessage();
                    if (message == null) {
                        message = "registry validation or dependency error";
                    }
                    arrayList12.add("Patch plan rejected: " + message + ".");
                    StringBuilder sb3 = new StringBuilder("Requested mode=");
                    iVar = input.f;
                    sb3.append(iVar);
                    sb3.append("; actual mode=LEGACY; activation=false.");
                    arrayList11.add(sb3.toString());
                    if (iVar == I1.i.f1184c) {
                        arrayList11.add("PINNED is recorded as requested only; dry-run does not activate it.");
                    }
                    kVar = new K1.k(CollectionsKt.emptyList(), iVar, arrayList11, arrayList12);
                }
            } catch (IllegalArgumentException e4) {
                e = e4;
                arrayList = arrayList6;
            }
        } else {
            arrayList = arrayList6;
            kVar = null;
            linkedHashMap = linkedHashMap4;
        }
        if (kVar != null) {
            arrayList2 = arrayList;
            CollectionsKt__MutableCollectionsKt.addAll(arrayList2, kVar.f1247c);
        } else {
            arrayList2 = arrayList;
        }
        if (fixture.f1090e == I1.i.f1184c) {
            arrayList2.add("PINNED is recorded as requested only; actual mode remains LEGACY.");
        }
        if (kVar != null || (list = kVar.f1246a) == null) {
            EmptyList = CollectionsKt.emptyList();
        } else {
            EmptyList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                EmptyList.add(((K1.f) it2.next()).f1229a);
            }
        }
        ?? r7 = EmptyList;
        List list7 = O1.a.b;
        linkedHashMap2 = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(list7, 10)), 16));
        while (r0.hasNext()) {
            linkedHashMap2.put(((O1.d) obj7).f1521c, obj7);
        }
        I1.i iVar6 = I1.i.b;
        List listDistinct2 = CollectionsKt.distinct(arrayList2);
        arrayList3 = new ArrayList();
        while (r0.hasNext()) {
            dVar = (O1.d) linkedHashMap2.get(str6);
            if (dVar != null) {
                String str8 = dVar.f1520a;
                int i8 = dVar.b;
                List list8 = O1.a.f1512a;
                O1.b bVarB3 = O1.a.b(str6);
                Intrinsics.checkNotNull(bVarB3);
                cVar = new H1.c(str6, str8, i8, bVarB3.f1514c);
            } else {
                cVar = cVar2;
            }
            if (cVar != null) {
                arrayList3.add(cVar);
            }
        }
        linkedHashMap3 = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(r7, 10)), 16));
        while (r0.hasNext()) {
            List list9 = O1.a.f1512a;
            O1.b bVarB4 = O1.a.b((String) obj8);
            Intrinsics.checkNotNull(bVarB4);
            linkedHashMap3.put(obj8, bVarB4.f1514c);
        }
        return new H1.b(r7, listDistinct2, arrayList3, linkedHashMap3, linkedHashMap, fixture.f1090e);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0033  */
    /* JADX WARN: Code duplicated, block: B:18:0x003d  */
    /* JADX WARN: Code duplicated, block: B:19:0x003f  */
    /* JADX WARN: Code duplicated, block: B:22:0x004a  */
    /* JADX WARN: Code duplicated, block: B:25:0x0061  */
    public static L1.c W(List builds, L1.e eVar) {
        Iterator it;
        Object next;
        L1.e eVar2;
        Object next2;
        L1.e eVar3;
        L1.a aVar;
        Object next3;
        L1.b bVar;
        Intrinsics.checkNotNullParameter(builds, "builds");
        Intrinsics.checkNotNullParameter(builds, "builds");
        if (builds.isEmpty()) {
            aVar = null;
        } else if (eVar != null) {
            Iterator it2 = builds.iterator();
            do {
                if (!it2.hasNext()) {
                    next3 = null;
                    break;
                }
                next3 = it2.next();
            } while (((L1.a) next3).b.compareTo(eVar) != 0);
            aVar = (L1.a) next3;
            if (aVar == null) {
                it = builds.iterator();
                if (it.hasNext()) {
                    next = it.next();
                    if (it.hasNext()) {
                        eVar2 = ((L1.a) next).b;
                        do {
                            next2 = it.next();
                            eVar3 = ((L1.a) next2).b;
                            eVar2.getClass();
                            if (eVar2.compareTo(eVar3) < 0) {
                                next = next2;
                                eVar2 = eVar3;
                            }
                        } while (it.hasNext());
                    }
                } else {
                    next = null;
                }
                aVar = (L1.a) next;
            }
        } else {
            it = builds.iterator();
            if (it.hasNext()) {
                next = null;
            } else {
                next = it.next();
                if (it.hasNext()) {
                    eVar2 = ((L1.a) next).b;
                    do {
                        next2 = it.next();
                        eVar3 = ((L1.a) next2).b;
                        eVar2.getClass();
                        if (eVar2.compareTo(eVar3) < 0) {
                            next = next2;
                            eVar2 = eVar3;
                        }
                    } while (it.hasNext());
                }
            }
            aVar = (L1.a) next;
        }
        if (aVar == null) {
            return null;
        }
        L1.e eVar4 = aVar.b;
        if (eVar == null) {
            bVar = L1.b.f1284e;
        } else if (eVar4.compareTo(eVar) == 0) {
            bVar = L1.b.b;
        } else {
            bVar = eVar4.compareTo(eVar) > 0 ? L1.b.f1282c : L1.b.f1283d;
        }
        return new L1.c(aVar, bVar);
    }

    public static void Y(ViewGroup viewGroup, boolean z2) {
        if (Build.VERSION.SDK_INT >= 29) {
            G.b(viewGroup, z2);
        } else if (f3205a) {
            try {
                G.b(viewGroup, z2);
            } catch (NoSuchMethodError unused) {
                f3205a = false;
            }
        }
    }

    public static final int Z(String str) {
        Object objM9constructorimpl;
        Intrinsics.checkNotNullParameter(str, "<this>");
        try {
            Result.Companion companion = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(Integer.valueOf(Color.parseColor(str)));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
        }
        Integer numValueOf = Integer.valueOf(Color.parseColor("#EF4444"));
        if (Result.m15isFailureimpl(objM9constructorimpl)) {
            objM9constructorimpl = numValueOf;
        }
        return ((Number) objM9constructorimpl).intValue();
    }

    public static Context a(Context context, String langCode) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(langCode, "langCode");
        Locale locale = new Locale(langCode);
        Locale.setDefault(locale);
        Configuration configuration = new Configuration(context.getResources().getConfiguration());
        configuration.setLocale(locale);
        Context contextCreateConfigurationContext = context.createConfigurationContext(configuration);
        Intrinsics.checkNotNullExpressionValue(contextCreateConfigurationContext, "createConfigurationContext(...)");
        return contextCreateConfigurationContext;
    }

    public static final File a0(GameDetailActivity gameDetailActivity, Game g) {
        Intrinsics.checkNotNullParameter(gameDetailActivity, "<this>");
        Intrinsics.checkNotNullParameter(g, "g");
        TranslationOverlayPaths translationOverlayPaths = TranslationOverlayPaths.INSTANCE;
        File filesDir = gameDetailActivity.getFilesDir();
        Intrinsics.checkNotNullExpressionValue(filesDir, "getFilesDir(...)");
        return translationOverlayPaths.backupRoot(filesDir, g.getId());
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0042  */
    /* JADX WARN: Code duplicated, block: B:25:0x0044 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:29:0x004d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:30:0x004f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:31:0x0051 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:32:0x0053  */
    /* JADX WARN: Code duplicated, block: B:34:0x0059  */
    /* JADX WARN: Code duplicated, block: B:36:0x005f  */
    /* JADX WARN: Code duplicated, block: B:37:0x0064  */
    /* JADX WARN: Code duplicated, block: B:38:0x0069  */
    /* JADX WARN: Code duplicated, block: B:44:? A[RETURN, SYNTHETIC] */
    public static boolean b(int i3, Rect rect, Rect rect2, Rect rect3) {
        int iO;
        int i4;
        int i5;
        boolean zC = c(i3, rect, rect2);
        if (c(i3, rect, rect3) || !zC) {
            return false;
        }
        if (i3 != 17) {
            if (i3 != 33) {
                if (i3 != 66) {
                    if (i3 != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                    if (rect.bottom <= rect3.top) {
                        if (i3 != 17 && i3 != 66) {
                            iO = O(i3, rect, rect2);
                            if (i3 != 17) {
                                i4 = rect.left;
                                i5 = rect3.left;
                            } else if (i3 != 33) {
                                i4 = rect.top;
                                i5 = rect3.top;
                            } else if (i3 != 66) {
                                i4 = rect3.right;
                                i5 = rect.right;
                            } else {
                                if (i3 == 130) {
                                    throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                                }
                                i4 = rect3.bottom;
                                i5 = rect.bottom;
                            }
                            if (iO < Math.max(1, i4 - i5)) {
                                return false;
                            }
                        }
                    }
                } else if (rect.right <= rect3.left) {
                    if (i3 != 17) {
                        iO = O(i3, rect, rect2);
                        if (i3 != 17) {
                            i4 = rect.left;
                            i5 = rect3.left;
                        } else if (i3 != 33) {
                            i4 = rect.top;
                            i5 = rect3.top;
                        } else if (i3 != 66) {
                            i4 = rect3.right;
                            i5 = rect.right;
                        } else {
                            if (i3 == 130) {
                                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                            }
                            i4 = rect3.bottom;
                            i5 = rect.bottom;
                        }
                        if (iO < Math.max(1, i4 - i5)) {
                            return false;
                        }
                    }
                }
            } else if (rect.top >= rect3.bottom) {
                if (i3 != 17) {
                    iO = O(i3, rect, rect2);
                    if (i3 != 17) {
                        i4 = rect.left;
                        i5 = rect3.left;
                    } else if (i3 != 33) {
                        i4 = rect.top;
                        i5 = rect3.top;
                    } else if (i3 != 66) {
                        i4 = rect3.right;
                        i5 = rect.right;
                    } else {
                        if (i3 == 130) {
                            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                        }
                        i4 = rect3.bottom;
                        i5 = rect.bottom;
                    }
                    if (iO < Math.max(1, i4 - i5)) {
                        return false;
                    }
                }
            }
        } else if (rect.left >= rect3.right) {
            if (i3 != 17) {
                iO = O(i3, rect, rect2);
                if (i3 != 17) {
                    i4 = rect.left;
                    i5 = rect3.left;
                } else if (i3 != 33) {
                    i4 = rect.top;
                    i5 = rect3.top;
                } else if (i3 != 66) {
                    i4 = rect3.right;
                    i5 = rect.right;
                } else {
                    if (i3 == 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                    i4 = rect3.bottom;
                    i5 = rect.bottom;
                }
                if (iO < Math.max(1, i4 - i5)) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean c(int i3, Rect rect, Rect rect2) {
        if (i3 != 17) {
            if (i3 != 33) {
                if (i3 != 66) {
                    if (i3 != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
            }
            return rect2.right >= rect.left && rect2.left <= rect.right;
        }
        return rect2.bottom >= rect.top && rect2.top <= rect.bottom;
    }

    /* JADX WARN: Code duplicated, block: B:113:0x02ac  */
    /* JADX WARN: Code duplicated, block: B:98:0x026d  */
    public static final void d(GameDetailActivity gameDetailActivity, Game g) {
        Object objM9constructorimpl;
        ArrayList packages;
        String activeLabel;
        String activeCode;
        int size;
        int i3;
        int i4;
        int i5;
        int iIntValue;
        int iIntValue2;
        Object obj;
        Intrinsics.checkNotNullParameter(gameDetailActivity, "<this>");
        Intrinsics.checkNotNullParameter(g, "g");
        p023i1.l lVar = X0.f526a;
        Intrinsics.checkNotNullParameter(g, "game");
        try {
            Result.Companion companion = Result.INSTANCE;
            p023i1.l lVar2 = X0.f526a;
            String translationPackagesJson = g.getTranslationPackagesJson();
            Type type = new TypeToken<List<? extends OnlineTranslationPackage>>() { // from class: com.minhub.gamehub.hub.GameDetailPureFunctionsKt$installedTranslationPackages$rawPackages$1$1
            }.getType();
            lVar2.getClass();
            objM9constructorimpl = Result.m9constructorimpl((List) lVar2.b(translationPackagesJson, TypeToken.get(type)));
            while (true) {
                i5 = -1;
                if (i4 >= size) {
                    i3 = -1;
                    break;
                }
                Object obj2 = packages.get(i4);
                i4++;
                OnlineTranslationPackage onlineTranslationPackage = (OnlineTranslationPackage) obj2;
                if (Intrinsics.areEqual(onlineTranslationPackage.getLabel(), activeLabel) && Intrinsics.areEqual(onlineTranslationPackage.getCode(), activeCode)) {
                    break;
                } else {
                    i3++;
                }
            }
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m15isFailureimpl(objM9constructorimpl)) {
            objM9constructorimpl = null;
        }
        List<OnlineTranslationPackage> listEmptyList = (List) objM9constructorimpl;
        if (listEmptyList == null) {
            listEmptyList = CollectionsKt.emptyList();
        }
        packages = new ArrayList();
        for (OnlineTranslationPackage onlineTranslationPackage2 : listEmptyList) {
            String string = StringsKt.trim((CharSequence) onlineTranslationPackage2.getLabel()).toString();
            String string2 = StringsKt.trim((CharSequence) onlineTranslationPackage2.getUrl()).toString();
            OnlineTranslationPackage onlineTranslationPackageCopy = (StringsKt.isBlank(string) || StringsKt.isBlank(string2)) ? null : onlineTranslationPackage2.copy(string, string2, StringsKt.trim((CharSequence) onlineTranslationPackage2.getCode()).toString());
            if (onlineTranslationPackageCopy != null) {
                packages.add(onlineTranslationPackageCopy);
            }
        }
        Intrinsics.checkNotNullParameter(gameDetailActivity, "<this>");
        Intrinsics.checkNotNullParameter(g, "g");
        File fileA0 = a0(gameDetailActivity, g);
        int i6 = 0;
        boolean zHasRenpyGameZipBackup = (GameKt.getEngineEnum(g) == GameEngine.RENPY8 || (GameKt.getEngineEnum(g) == GameEngine.RENPY7 && new File(g.getGamePath(), "game.zip").exists())) ? TranslationOverlayInstaller.INSTANCE.hasRenpyGameZipBackup(fileA0) : !TranslationOverlayInstaller.INSTANCE.readManifest(fileA0).getEntries().isEmpty();
        String string3 = gameDetailActivity.f3770n;
        if (StringsKt.isBlank(string3)) {
            string3 = StringsKt.isBlank(g.getActiveTranslationLabel()) ? gameDetailActivity.getString(R.string.game_detail_translation_status_original) : gameDetailActivity.getString(R.string.game_detail_translation_status_active, g.getActiveTranslationLabel());
            Intrinsics.checkNotNull(string3);
        }
        LinearLayout layoutTranslationSection = gameDetailActivity.n().f5744p;
        Intrinsics.checkNotNullExpressionValue(layoutTranslationSection, "layoutTranslationSection");
        layoutTranslationSection.setVisibility((packages.isEmpty() && StringsKt.isBlank(g.getActiveTranslationLabel()) && !zHasRenpyGameZipBackup) ? 8 : 0);
        gameDetailActivity.n().f5729N.setText(string3);
        gameDetailActivity.n().f5728M.setText(packages.isEmpty() ? gameDetailActivity.getString(R.string.game_detail_translation_none) : gameDetailActivity.getString(R.string.game_detail_translation_available_prefix, CollectionsKt.o(packages, ", ", null, null, new C0015e(16), 30)));
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        String string4 = gameDetailActivity.getString(R.string.game_detail_translation_selector_placeholder);
        Intrinsics.checkNotNullExpressionValue(string4, "getString(...)");
        listCreateListBuilder.add(string4);
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(packages, 10));
        int size2 = packages.size();
        int i7 = 0;
        while (i7 < size2) {
            Object obj3 = packages.get(i7);
            i7++;
            arrayList.add(X0.b((OnlineTranslationPackage) obj3));
        }
        listCreateListBuilder.addAll(arrayList);
        ArrayAdapter arrayAdapter = new ArrayAdapter(gameDetailActivity, android.R.layout.simple_spinner_item, CollectionsKt.build(listCreateListBuilder));
        arrayAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        gameDetailActivity.n().f5750v.setAdapter((SpinnerAdapter) arrayAdapter);
        activeLabel = g.getActiveTranslationLabel();
        activeCode = g.getActiveTranslationCode();
        Intrinsics.checkNotNullParameter(packages, "packages");
        Intrinsics.checkNotNullParameter(activeLabel, "activeLabel");
        Intrinsics.checkNotNullParameter(activeCode, "activeCode");
        size = packages.size();
        i3 = 0;
        i4 = 0;
        Integer numValueOf = Integer.valueOf(i3);
        if (i3 < 0) {
            numValueOf = null;
        }
        if (numValueOf == null) {
            int size3 = packages.size();
            int i8 = 0;
            int i9 = 0;
            while (true) {
                if (i9 >= size3) {
                    iIntValue = -1;
                    break;
                }
                Object obj4 = packages.get(i9);
                i9++;
                OnlineTranslationPackage onlineTranslationPackage3 = (OnlineTranslationPackage) obj4;
                if (StringsKt.isBlank(activeCode) && Intrinsics.areEqual(onlineTranslationPackage3.getLabel(), activeLabel)) {
                    iIntValue = i8;
                    break;
                }
                i8++;
            }
        } else {
            iIntValue = numValueOf.intValue();
        }
        if (!gameDetailActivity.f3769m) {
            OnlineTranslationPackage onlineTranslationPackage4 = gameDetailActivity.f3771o;
            if (onlineTranslationPackage4 == null) {
                onlineTranslationPackage4 = (OnlineTranslationPackage) CollectionsKt.getOrNull(packages, iIntValue);
            } else {
                if (packages.isEmpty()) {
                    onlineTranslationPackage4 = null;
                    break;
                }
                int size4 = packages.size();
                int i10 = 0;
                do {
                    if (i10 >= size4) {
                        onlineTranslationPackage4 = null;
                        break;
                    } else {
                        obj = packages.get(i10);
                        i10++;
                    }
                } while (!Intrinsics.areEqual(((OnlineTranslationPackage) obj).getUrl(), onlineTranslationPackage4.getUrl()));
                if (onlineTranslationPackage4 == null) {
                    onlineTranslationPackage4 = (OnlineTranslationPackage) CollectionsKt.getOrNull(packages, iIntValue);
                }
            }
            gameDetailActivity.f3771o = onlineTranslationPackage4;
        }
        OnlineTranslationPackage onlineTranslationPackage5 = gameDetailActivity.f3771o;
        if (onlineTranslationPackage5 != null) {
            int size5 = packages.size();
            int i11 = 0;
            int i12 = 0;
            while (i12 < size5) {
                Object obj5 = packages.get(i12);
                i12++;
                if (Intrinsics.areEqual(((OnlineTranslationPackage) obj5).getUrl(), onlineTranslationPackage5.getUrl())) {
                    i5 = i11;
                    break;
                }
                i11++;
            }
            Integer numValueOf2 = i5 >= 0 ? Integer.valueOf(i5) : null;
            if (numValueOf2 != null) {
                iIntValue2 = numValueOf2.intValue() + 1;
            } else {
                iIntValue2 = 0;
            }
        } else {
            iIntValue2 = 0;
        }
        if (gameDetailActivity.n().f5750v.getSelectedItemPosition() != iIntValue2) {
            gameDetailActivity.n().f5750v.setSelection(iIntValue2, false);
        }
        gameDetailActivity.n().f5750v.setEnabled((packages.isEmpty() || gameDetailActivity.f3769m) ? false : true);
        gameDetailActivity.n().f5750v.setOnItemSelectedListener(new S0(gameDetailActivity, packages, i6));
        gameDetailActivity.n().g.setEnabled((gameDetailActivity.f3771o == null || gameDetailActivity.f3769m) ? false : true);
        gameDetailActivity.n().f5736h.setEnabled((!zHasRenpyGameZipBackup || StringsKt.isBlank(g.getActiveTranslationLabel()) || gameDetailActivity.f3769m) ? false : true);
        gameDetailActivity.n().g.setOnClickListener(new ViewOnClickListenerC0088n0(gameDetailActivity, g, 4));
        gameDetailActivity.n().f5736h.setOnClickListener(new ViewOnClickListenerC0088n0(gameDetailActivity, g, 5));
    }

    public static boolean d0(File target, byte[] bytes) {
        Intrinsics.checkNotNullParameter(target, "target");
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        File parentFile = target.getParentFile();
        if (parentFile == null) {
            return false;
        }
        if (target.isFile()) {
            File file = new File(parentFile, E.b.m(".", target.getName(), ".minhub-orig"));
            if (!file.exists()) {
                try {
                    FilesKt__UtilsKt.copyTo$default(target, file, false, 0, 4, null);
                } catch (Exception unused) {
                    file.delete();
                }
            }
        }
        File file2 = new File(parentFile, E.b.m(".", target.getName(), ".minhub-tmp"));
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            try {
                fileOutputStream.write(bytes);
                fileOutputStream.flush();
                fileOutputStream.getFD().sync();
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(fileOutputStream, null);
                if (!file2.renameTo(target) && (!target.delete() || !file2.renameTo(target))) {
                    file2.delete();
                    return false;
                }
                return true;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(fileOutputStream, th);
                    throw th2;
                }
            }
        } catch (Exception unused2) {
            file2.delete();
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static i j(b bVar, ArrayList arrayList) {
        p009d0.k fVar;
        p009d0.k c0351a;
        Class cls;
        p016g0.b bVar2 = bVar.b;
        p016g0.g gVar = bVar.f3202e;
        e eVar = bVar.f3201d;
        Context applicationContext = eVar.getApplicationContext();
        C0009b c0009b = eVar.f3211h;
        i iVar = new i();
        p033m0.m mVar = new p033m0.m();
        Y.c cVar = iVar.g;
        synchronized (cVar) {
            cVar.f2378a.add(mVar);
        }
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 27) {
            u uVar = new u();
            Y.c cVar2 = iVar.g;
            synchronized (cVar2) {
                cVar2.f2378a.add(uVar);
            }
        }
        Resources resources = applicationContext.getResources();
        ArrayList arrayListE = iVar.e();
        p042q0.a aVar = new p042q0.a(applicationContext, arrayListE, bVar2, gVar);
        p009d0.k e2 = new E(bVar2, new com.google.android.material.datepicker.c(25));
        q qVar = new q(iVar.e(), resources.getDisplayMetrics(), bVar2, gVar);
        if (i3 < 28 || !((Map) c0009b.b).containsKey(c.class)) {
            fVar = new p033m0.f(qVar, 0);
            c0351a = new C0351a(2, qVar, gVar);
        } else {
            c0351a = new p033m0.g(1);
            fVar = new p033m0.g(0);
        }
        if (i3 >= 28) {
            iVar.d("Animation", InputStream.class, Drawable.class, new p038o0.b(new C0013d(18, arrayListE, gVar), 1));
            iVar.d("Animation", ByteBuffer.class, Drawable.class, new p038o0.b(new C0013d(18, arrayListE, gVar), 0));
        }
        p009d0.k dVar = new p038o0.d(applicationContext);
        p009d0.l c0352b = new C0352b(gVar);
        p044r0.a c0244f = new C0244f(2);
        p044r0.a cVar3 = new p044r0.c(1);
        ContentResolver contentResolver = applicationContext.getContentResolver();
        iVar.a(ByteBuffer.class, new B(5));
        iVar.a(InputStream.class, new C0269h(3, gVar));
        iVar.d("Bitmap", ByteBuffer.class, Bitmap.class, fVar);
        iVar.d("Bitmap", InputStream.class, Bitmap.class, c0351a);
        String str = Build.FINGERPRINT;
        if ("robolectric".equals(str)) {
            cls = ParcelFileDescriptor.class;
        } else {
            p009d0.k fVar2 = new p033m0.f(qVar, 1);
            cls = ParcelFileDescriptor.class;
            iVar.d("Bitmap", cls, Bitmap.class, fVar2);
        }
        iVar.d("Bitmap", AssetFileDescriptor.class, Bitmap.class, new E(bVar2, new com.google.android.material.datepicker.c(22)));
        iVar.d("Bitmap", cls, Bitmap.class, e2);
        r rVar = B.f4610c;
        iVar.c(Bitmap.class, Bitmap.class, rVar);
        iVar.d("Bitmap", Bitmap.class, Bitmap.class, new p033m0.B(0));
        iVar.b(Bitmap.class, c0352b);
        iVar.d("BitmapDrawable", ByteBuffer.class, BitmapDrawable.class, new C0351a(resources, fVar));
        iVar.d("BitmapDrawable", InputStream.class, BitmapDrawable.class, new C0351a(resources, c0351a));
        iVar.d("BitmapDrawable", cls, BitmapDrawable.class, new C0351a(resources, e2));
        iVar.b(BitmapDrawable.class, new C0013d(16, bVar2, c0352b));
        iVar.d("Animation", InputStream.class, p042q0.b.class, new p042q0.h(arrayListE, aVar, gVar));
        iVar.d("Animation", ByteBuffer.class, p042q0.b.class, aVar);
        iVar.b(p042q0.b.class, new com.google.android.material.datepicker.c(29));
        iVar.c(p006c0.d.class, p006c0.d.class, rVar);
        iVar.d("Bitmap", p006c0.d.class, Bitmap.class, new C0353c(bVar2));
        iVar.d("legacy_append", Uri.class, Drawable.class, dVar);
        iVar.d("legacy_append", Uri.class, Bitmap.class, new C0351a(1, dVar, bVar2));
        iVar.h(new com.bumptech.glide.load.data.h(2));
        iVar.c(File.class, ByteBuffer.class, new B(6));
        iVar.c(File.class, InputStream.class, new C0277f(new B(9)));
        iVar.d("legacy_append", File.class, File.class, new p033m0.B(2));
        iVar.c(File.class, cls, new C0277f(new B(8)));
        iVar.c(File.class, File.class, rVar);
        iVar.h(new com.bumptech.glide.load.data.m(gVar));
        if (!"robolectric".equals(str)) {
            iVar.h(new com.bumptech.glide.load.data.h(1));
        }
        r c0021h = new C0021h(applicationContext, 7, false);
        r c0021h2 = new C0021h(applicationContext, 5, false);
        r c0021h3 = new C0021h(applicationContext, 6, false);
        Class cls2 = Integer.TYPE;
        iVar.c(cls2, InputStream.class, c0021h);
        iVar.c(Integer.class, InputStream.class, c0021h);
        iVar.c(cls2, AssetFileDescriptor.class, c0021h2);
        iVar.c(Integer.class, AssetFileDescriptor.class, c0021h2);
        iVar.c(cls2, Drawable.class, c0021h3);
        iVar.c(Integer.class, Drawable.class, c0021h3);
        iVar.c(Uri.class, InputStream.class, new C0021h(applicationContext, 10, false));
        iVar.c(Uri.class, AssetFileDescriptor.class, new C0021h(applicationContext, 9, false));
        r zVar = new z(resources, 2);
        r zVar2 = new z(resources, 0 == true ? 1 : 0);
        r zVar3 = new z(resources, 1);
        iVar.c(Integer.class, Uri.class, zVar);
        iVar.c(cls2, Uri.class, zVar);
        iVar.c(Integer.class, AssetFileDescriptor.class, zVar2);
        iVar.c(cls2, AssetFileDescriptor.class, zVar2);
        iVar.c(Integer.class, InputStream.class, zVar3);
        iVar.c(cls2, InputStream.class, zVar3);
        iVar.c(String.class, InputStream.class, new C0269h(1));
        iVar.c(Uri.class, InputStream.class, new C0269h(1));
        iVar.c(String.class, InputStream.class, new B(12));
        iVar.c(String.class, cls, new B(11));
        iVar.c(String.class, AssetFileDescriptor.class, new B(10));
        iVar.c(Uri.class, InputStream.class, new C0272a(applicationContext.getAssets(), 1));
        iVar.c(Uri.class, AssetFileDescriptor.class, new C0272a(applicationContext.getAssets(), 0));
        iVar.c(Uri.class, InputStream.class, new C0021h(applicationContext, 11, 0 == true ? 1 : 0));
        iVar.c(Uri.class, InputStream.class, new C0021h(applicationContext, 12, 0 == true ? 1 : 0));
        if (i3 >= 29) {
            iVar.c(Uri.class, InputStream.class, new p027k0.b(applicationContext, InputStream.class));
            iVar.c(Uri.class, cls, new p027k0.b(applicationContext, cls));
        }
        iVar.c(Uri.class, InputStream.class, new D(contentResolver, 2));
        iVar.c(Uri.class, cls, new D(contentResolver, 1));
        iVar.c(Uri.class, AssetFileDescriptor.class, new D(contentResolver, 0));
        iVar.c(Uri.class, InputStream.class, new B(13));
        iVar.c(URL.class, InputStream.class, new com.google.android.material.datepicker.c(11));
        iVar.c(Uri.class, File.class, new C0021h(applicationContext, 8, false));
        iVar.c(p025j0.g.class, InputStream.class, new C0269h(7));
        iVar.c(byte[].class, ByteBuffer.class, new B(2));
        iVar.c(byte[].class, InputStream.class, new B(4));
        iVar.c(Uri.class, Uri.class, rVar);
        iVar.c(Drawable.class, Drawable.class, rVar);
        iVar.d("legacy_append", Drawable.class, Drawable.class, new p033m0.B(1));
        iVar.i(Bitmap.class, BitmapDrawable.class, new z(resources, 3));
        iVar.i(Bitmap.class, byte[].class, c0244f);
        iVar.i(Drawable.class, byte[].class, new F.b(bVar2, c0244f, cVar3, 13));
        iVar.i(p042q0.b.class, byte[].class, cVar3);
        p009d0.k e3 = new E(bVar2, new com.google.android.material.datepicker.c(23));
        iVar.d("legacy_append", ByteBuffer.class, Bitmap.class, e3);
        iVar.d("legacy_append", ByteBuffer.class, BitmapDrawable.class, new C0351a(resources, e3));
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            throw E.b.g(it);
        }
        return iVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:40:0x00a3  */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0037, code lost:
    
        return new p061x1.a(r12, "Esc", "Escape", r13, r14, 60, 24, "ROUNDED", "#888888", 0.55f, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x003e, code lost:
    
        if (r12.equals("btn_sel") == false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0047, code lost:
    
        if (r12.equals("btn_select") != false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0061, code lost:
    
        return new p061x1.a(r12, "Enter", "Enter", r13, r14, 60, 24, "ROUNDED", "#888888", 0.55f, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0013, code lost:
    
        if (r12.equals("btn_start") == false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001c, code lost:
    
        if (r12.equals("btn_sta") == false) goto L20;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p061x1.a k(java.lang.String r12, float r13, float r14) {
        /*
            Method dump skipped, instruction units count: 654
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.d.k(java.lang.String, float, float):x1.a");
    }

    public static Intent l(Context context, OnlineCatalogItem item) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(item, "item");
        Intent intent = new Intent(context, (Class<?>) OnlineGameDetailActivity.class);
        Intrinsics.checkNotNullParameter(item, "item");
        String strG = new p023i1.l().g(item);
        Intrinsics.checkNotNullExpressionValue(strG, "toJson(...)");
        Intent intentPutExtra = intent.putExtra("extra_item_json", strG);
        Intrinsics.checkNotNullExpressionValue(intentPutExtra, "putExtra(...)");
        return intentPutExtra;
    }

    public static List m() {
        return CollectionsKt.listOf((Object[]) new p061x1.a[]{k("dpad", 0.13f, 0.8f), k("btn_sel", 0.78f, 0.88f), k("btn_sta", 0.9f, 0.88f)});
    }

    public static final String n(GameDetailActivity gameDetailActivity, Exception e2) {
        Intrinsics.checkNotNullParameter(gameDetailActivity, "<this>");
        Intrinsics.checkNotNullParameter(e2, "e");
        String simpleName = e2.getClass().getSimpleName();
        String message = e2.getMessage();
        if (message == null) {
            message = "";
        }
        String strH = kotlin.collections.unsigned.a.h(simpleName, ": ", message);
        List listListOf = CollectionsKt.listOf((Object[]) new String[]{"SSL", "TLSV1_ALERT", "CertPathValidator", "Trust anchor", "certificate", "OPENSSL_internal"});
        if (listListOf == null || !listListOf.isEmpty()) {
            Iterator it = listListOf.iterator();
            while (it.hasNext()) {
                if (StringsKt__StringsKt.contains(strH, (CharSequence) ((String) it.next()), true)) {
                    String string = gameDetailActivity.getString(R.string.translation_failed_host_tls);
                    Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                    return string;
                }
            }
        }
        if ((e2 instanceof UnknownHostException) || (e2 instanceof SocketTimeoutException) || (e2 instanceof ConnectException)) {
            String string2 = gameDetailActivity.getString(R.string.translation_failed_network);
            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
            return string2;
        }
        String message2 = e2.getMessage();
        String str = message2 != null ? message2 : "";
        if (!StringsKt.isBlank(str)) {
            return str;
        }
        String simpleName2 = e2.getClass().getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName2, "getSimpleName(...)");
        return simpleName2;
    }

    public static void o(Context context, R1.a aVar, String str) {
        File file = new File(context.getExternalFilesDir(null), "minhub-update.apk");
        if (file.exists()) {
            file.delete();
        }
        Object systemService = context.getSystemService("download");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.DownloadManager");
        DownloadManager downloadManager = (DownloadManager) systemService;
        R1.b bVar = new R1.b(downloadManager.enqueue(new DownloadManager.Request(Uri.parse(str)).setTitle("MinHub " + aVar.b).setDescription("Đang tải bản cập nhật…").setNotificationVisibility(1).setDestinationUri(Uri.fromFile(file)).setMimeType("application/vnd.android.package-archive")), downloadManager, file);
        if (Build.VERSION.SDK_INT >= 33) {
            context.registerReceiver(bVar, new IntentFilter("android.intent.action.DOWNLOAD_COMPLETE"), 2);
        } else {
            context.registerReceiver(bVar, new IntentFilter("android.intent.action.DOWNLOAD_COMPLETE"));
        }
    }

    public static ColorStateList r(Context context, TypedArray typedArray, int i3) {
        int resourceId;
        ColorStateList colorStateList;
        return (!typedArray.hasValue(i3) || (resourceId = typedArray.getResourceId(i3, 0)) == 0 || (colorStateList = ContextCompat.getColorStateList(context, resourceId)) == null) ? typedArray.getColorStateList(i3) : colorStateList;
    }

    public static ColorStateList s(Context context, Z0 z2, int i3) {
        int resourceId;
        ColorStateList colorStateList;
        TypedArray typedArray = z2.b;
        return (!typedArray.hasValue(i3) || (resourceId = typedArray.getResourceId(i3, 0)) == 0 || (colorStateList = ContextCompat.getColorStateList(context, resourceId)) == null) ? z2.a(i3) : colorStateList;
    }

    public static ColorStateList t(Drawable drawable) {
        if (drawable instanceof ColorDrawable) {
            return ColorStateList.valueOf(((ColorDrawable) drawable).getColor());
        }
        if (Build.VERSION.SDK_INT < 29 || !P0.a.u(drawable)) {
            return null;
        }
        return P0.a.e(drawable).getColorStateList();
    }

    public static Drawable v(Context context, int i3) {
        return P0.b().c(context, i3);
    }

    public static Drawable w(Context context, TypedArray typedArray, int i3) {
        int resourceId;
        Drawable drawableV;
        return (!typedArray.hasValue(i3) || (resourceId = typedArray.getResourceId(i3, 0)) == 0 || (drawableV = v(context, resourceId)) == null) ? typedArray.getDrawable(i3) : drawableV;
    }

    public static Set x() {
        try {
            Object objInvoke = Class.forName("android.text.EmojiConsistency").getMethod("getEmojiConsistencySet", null).invoke(null, null);
            if (objInvoke == null) {
                return Collections.EMPTY_SET;
            }
            Set set = (Set) objInvoke;
            Iterator it = set.iterator();
            while (it.hasNext()) {
                if (!(it.next() instanceof int[])) {
                    return Collections.EMPTY_SET;
                }
            }
            return set;
        } catch (Throwable unused) {
            return Collections.EMPTY_SET;
        }
    }

    public static String z(Context context, int i3) {
        if (context == null) {
            return "";
        }
        if (i3 == 1) {
            return context.getString(R.string.fingerprint_error_hw_not_available);
        }
        if (i3 != 7) {
            switch (i3) {
                case 9:
                    break;
                case 10:
                    return context.getString(R.string.fingerprint_error_user_canceled);
                case MotionEventCompat.AXIS_Z /* 11 */:
                    return context.getString(R.string.fingerprint_error_no_fingerprints);
                case 12:
                    return context.getString(R.string.fingerprint_error_hw_not_present);
                default:
                    Log.e("BiometricUtils", "Unknown error code: " + i3);
                    return context.getString(R.string.default_error_msg);
            }
        }
        return context.getString(R.string.fingerprint_error_lockout);
    }

    public abstract int A();

    public abstract List B();

    public abstract int C();

    public abstract int D();

    public abstract int E(View view);

    public abstract int F(CoordinatorLayout coordinatorLayout);

    public abstract String[] G(Class cls);

    public abstract int H();

    public abstract boolean J(float f);

    public abstract boolean L(Class cls);

    public abstract boolean M(View view);

    public abstract boolean N(float f, float f3);

    public abstract void U(p046s.f fVar, p046s.f fVar2);

    public abstract void V(p046s.f fVar, Thread thread);

    public abstract boolean X(View view, float f);

    public abstract void b0(ViewGroup.MarginLayoutParams marginLayoutParams, int i3);

    public abstract void c0(ViewGroup.MarginLayoutParams marginLayoutParams, int i3, int i4);

    public abstract int e(ViewGroup.MarginLayoutParams marginLayoutParams);

    public abstract float f(int i3);

    public abstract boolean g(p046s.g gVar, p046s.c cVar, p046s.c cVar2);

    public abstract boolean h(p046s.g gVar, Object obj, Object obj2);

    public abstract boolean i(p046s.g gVar, p046s.f fVar, p046s.f fVar2);

    public abstract Method p(Class cls, Field field);

    public abstract Constructor q(Class cls);

    public abstract int u(ViewGroup.MarginLayoutParams marginLayoutParams);

    public abstract int y();
}
