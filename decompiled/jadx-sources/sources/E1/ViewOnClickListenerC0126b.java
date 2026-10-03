package E1;

import android.view.View;

/* JADX INFO: renamed from: E1.b, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnClickListenerC0126b implements View.OnClickListener {
    public final /* synthetic */ int b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ C0131g f881c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ H0.o f882d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ B1.B f883e;

    public /* synthetic */ ViewOnClickListenerC0126b(C0131g c0131g, B1.B b, H0.o oVar) {
        this.f881c = c0131g;
        this.f883e = b;
        this.f882d = oVar;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0091  */
    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r4v4 java.lang.Object, still in use, count: 2, list:
          (r4v4 java.lang.Object) from 0x008c: PHI (r4 I:??) = (r4v1 java.lang.Object), (r4v4 java.lang.Object) binds: [B:18:0x008b, B:25:0x008c] A[DONT_GENERATE, DONT_INLINE]
          (r4v4 java.lang.Object) from 0x007f: CHECK_CAST (B1.B) (r4v4 java.lang.Object)
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
    public final void onClick(android.view.View r8) {
        /*
            r7 = this;
            int r8 = r7.b
            switch(r8) {
                case 0: goto L44;
                default: goto L5;
            }
        L5:
            B1.B r8 = r7.f883e
            java.lang.String r8 = r8.f301a
            O0.b r0 = new O0.b
            E1.g r1 = r7.f881c
            android.content.Context r2 = r1.requireContext()
            r3 = 0
            r0.<init>(r2, r3)
            r2 = 2131886271(0x7f1200bf, float:1.9407116E38)
            r0.j(r2)
            r2 = 2131886270(0x7f1200be, float:1.9407114E38)
            java.lang.Object[] r3 = new java.lang.Object[]{r8}
            java.lang.String r2 = r1.getString(r2, r3)
            java.lang.Object r3 = r0.f4145c
            e.b r3 = (p011e.C0240b) r3
            r3.f = r2
            r2 = 2131886268(0x7f1200bc, float:1.940711E38)
            r3 = 0
            r0.f(r2, r3)
            C1.s0 r2 = new C1.s0
            H0.o r3 = r7.f882d
            r2.<init>(r1, r8, r3)
            r8 = 2131886269(0x7f1200bd, float:1.9407112E38)
            r0.h(r8, r2)
            r0.e()
            return
        L44:
            E1.g r8 = r7.f881c
            B1.z r0 = r8.f888c
            r1 = 0
            if (r0 != 0) goto L51
            java.lang.String r0 = "mappingManager"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r0)
            r0 = r1
        L51:
            B1.B r2 = r7.f883e
            java.lang.String r2 = r2.f301a
            r0.getClass()
            java.lang.String r3 = "name"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r3)
            java.lang.CharSequence r2 = kotlin.text.StringsKt.trim(r2)
            java.lang.String r2 = r2.toString()
            boolean r3 = kotlin.text.StringsKt.isBlank(r2)
            if (r3 == 0) goto L6c
            goto Lb4
        L6c:
            java.util.List r3 = r0.d()
            java.util.Iterator r3 = r3.iterator()
        L74:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L8b
            java.lang.Object r4 = r3.next()
            r5 = r4
            B1.B r5 = (B1.B) r5
            java.lang.String r5 = r5.f301a
            r6 = 1
            boolean r5 = kotlin.text.StringsKt.equals(r5, r2, r6)
            if (r5 == 0) goto L74
            goto L8c
        L8b:
            r4 = r1
        L8c:
            B1.B r4 = (B1.B) r4
            if (r4 != 0) goto L91
            goto Lb4
        L91:
            java.util.LinkedHashMap r2 = r4.b
            r0.h(r2)
            r8.f890e = r1
            r8.e()
            r8.f()
            r8.i()
            android.content.Context r0 = r8.requireContext()
            r1 = 2131887102(0x7f1203fe, float:1.9408802E38)
            java.lang.String r8 = r8.getString(r1)
            r1 = 0
            android.widget.Toast r8 = android.widget.Toast.makeText(r0, r8, r1)
            r8.show()
        Lb4:
            H0.o r8 = r7.f882d
            r8.dismiss()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: E1.ViewOnClickListenerC0126b.onClick(android.view.View):void");
    }

    public /* synthetic */ ViewOnClickListenerC0126b(C0131g c0131g, H0.o oVar, B1.B b) {
        this.f881c = c0131g;
        this.f882d = oVar;
        this.f883e = b;
    }
}
