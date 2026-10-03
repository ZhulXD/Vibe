package com.bumptech.glide.manager;

import A1.C0021h;
import a2.w;
import android.content.Context;
import android.net.ConnectivityManager;
import android.os.Trace;
import android.util.Log;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Constructor;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;
import p024j.C0269h;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class q implements p063y0.g {
    public static volatile q f;
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f3270c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f3271d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Collection f3272e;

    public q() {
        this.b = 2;
        this.f3271d = Collections.newSetFromMap(new WeakHashMap());
        this.f3272e = new HashSet();
    }

    public static String a(Class cls) {
        int modifiers = cls.getModifiers();
        if (Modifier.isInterface(modifiers)) {
            return "Interfaces can't be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Interface name: ".concat(cls.getName());
        }
        if (Modifier.isAbstract(modifiers)) {
            return "Abstract classes can't be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Class name: ".concat(cls.getName());
        }
        return null;
    }

    public static q c(Context context) {
        if (f == null) {
            synchronized (q.class) {
                try {
                    if (f == null) {
                        f = new q(context.getApplicationContext());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f;
    }

    public boolean b(p052u0.c cVar) {
        boolean z2 = true;
        if (cVar == null) {
            return true;
        }
        boolean zRemove = ((Set) this.f3271d).remove(cVar);
        if (!((HashSet) this.f3272e).remove(cVar) && !zRemove) {
            z2 = false;
        }
        if (z2) {
            cVar.clear();
        }
        return z2;
    }

    public p028k1.n d(TypeToken typeToken) {
        p028k1.e eVar;
        String str;
        p028k1.n wVar;
        Type type = typeToken.getType();
        Class rawType = typeToken.getRawType();
        Map map = (Map) this.f3271d;
        if (map.get(type) != null) {
            throw new ClassCastException();
        }
        if (map.get(rawType) != null) {
            throw new ClassCastException();
        }
        com.google.android.material.datepicker.c cVar = null;
        if (EnumSet.class.isAssignableFrom(rawType)) {
            eVar = new p028k1.e(type, 0);
        } else {
            eVar = rawType == EnumMap.class ? new p028k1.e(type, 1) : null;
        }
        if (eVar != null) {
            return eVar;
        }
        p028k1.d.e((List) this.f3272e);
        if (Modifier.isAbstract(rawType.getModifiers())) {
            wVar = null;
        } else {
            try {
                Constructor declaredConstructor = rawType.getDeclaredConstructor(null);
                com.bumptech.glide.d dVar = p036n1.c.f5154a;
                try {
                    declaredConstructor.setAccessible(true);
                    str = null;
                } catch (Exception e2) {
                    str = "Failed making constructor '" + p036n1.c.b(declaredConstructor) + "' accessible; either increase its visibility or write a custom InstanceCreator or TypeAdapter for its declaring type: " + e2.getMessage();
                }
                wVar = str != null ? new w(str, 4) : new C0269h(9, declaredConstructor);
            } catch (NoSuchMethodException unused) {
                wVar = null;
            }
        }
        if (wVar != null) {
            return wVar;
        }
        if (Collection.class.isAssignableFrom(rawType)) {
            if (SortedSet.class.isAssignableFrom(rawType)) {
                cVar = new com.google.android.material.datepicker.c(12);
            } else if (Set.class.isAssignableFrom(rawType)) {
                cVar = new com.google.android.material.datepicker.c(13);
            } else {
                cVar = Queue.class.isAssignableFrom(rawType) ? new com.google.android.material.datepicker.c(14) : new com.google.android.material.datepicker.c(15);
            }
        } else if (Map.class.isAssignableFrom(rawType)) {
            if (ConcurrentNavigableMap.class.isAssignableFrom(rawType)) {
                cVar = new com.google.android.material.datepicker.c(16);
            } else if (ConcurrentMap.class.isAssignableFrom(rawType)) {
                cVar = new com.google.android.material.datepicker.c(17);
            } else if (SortedMap.class.isAssignableFrom(rawType)) {
                cVar = new com.google.android.material.datepicker.c(18);
            } else {
                cVar = (!(type instanceof ParameterizedType) || String.class.isAssignableFrom(TypeToken.get(((ParameterizedType) type).getActualTypeArguments()[0]).getRawType())) ? new com.google.android.material.datepicker.c(20) : new com.google.android.material.datepicker.c(19);
            }
        }
        if (cVar != null) {
            return cVar;
        }
        String strA = a(rawType);
        if (strA != null) {
            return new w(strA, 3);
        }
        if (this.f3270c) {
            return new C0269h(8, rawType);
        }
        return new w("Unable to create instance of " + rawType + "; usage of JDK Unsafe is disabled. Registering an InstanceCreator or a TypeAdapter for this type, adding a no-args constructor, or enabling usage of JDK Unsafe may fix this problem.", 2);
    }

    public void e() {
        if (this.f3270c || ((HashSet) this.f3272e).isEmpty()) {
            return;
        }
        p003b0.c cVar = (p003b0.c) this.f3271d;
        p014f0.q qVar = (p014f0.q) cVar.f3078c;
        boolean z2 = false;
        cVar.f3077a = ((ConnectivityManager) qVar.get()).getActiveNetwork() != null;
        try {
            ((ConnectivityManager) qVar.get()).registerDefaultNetworkCallback((p) cVar.f3079d);
            z2 = true;
        } catch (RuntimeException e2) {
            if (Log.isLoggable("ConnectivityMonitor", 5)) {
                Log.w("ConnectivityMonitor", "Failed to register callback", e2);
            }
        }
        this.f3270c = z2;
    }

    @Override // p063y0.g
    public Object get() {
        if (this.f3270c) {
            throw new IllegalStateException("Recursive Registry initialization! In your AppGlideModule and LibraryGlideModules, Make sure you're using the provided Registry rather calling glide.getRegistry()!");
        }
        com.bumptech.glide.c.b("Glide registry");
        this.f3270c = true;
        try {
            return com.bumptech.glide.d.j((com.bumptech.glide.b) this.f3271d, (ArrayList) this.f3272e);
        } finally {
            this.f3270c = false;
            Trace.endSection();
        }
    }

    public String toString() {
        switch (this.b) {
            case 2:
                return super.toString() + "{numRequests=" + ((Set) this.f3271d).size() + ", isPaused=" + this.f3270c + "}";
            case 3:
                return ((Map) this.f3271d).toString();
            default:
                return super.toString();
        }
    }

    public q(Map map, boolean z2, List list) {
        this.b = 3;
        this.f3271d = map;
        this.f3270c = z2;
        this.f3272e = list;
    }

    public q(Context context) {
        this.b = 0;
        this.f3272e = new HashSet();
        this.f3271d = new p003b0.c(new p014f0.q(new C0021h(context, 3, false)), new n(this));
    }

    public q(com.bumptech.glide.b bVar, ArrayList arrayList, p000a.a aVar) {
        this.b = 1;
        this.f3271d = bVar;
        this.f3272e = arrayList;
    }
}
