package C1;

import com.minhub.gamehub.hub.GameDetailActivity;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class F0 implements Function1 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GameDetailActivity f426c;

    public /* synthetic */ F0(GameDetailActivity gameDetailActivity, int i3) {
        this.b = i3;
        this.f426c = gameDetailActivity;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:58:0x0214  */
    /* JADX WARN: Code duplicated, block: B:59:0x0215 A[PHI: r5
      0x0215: PHI (r5v5 boolean) = (r5v4 boolean), (r5v9 boolean), (r5v10 boolean) binds: [B:58:0x0214, B:96:0x0322, B:92:0x02ff] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x021e, code lost:
    
        if (r0.equals("combo") == false) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0279, code lost:
    
        if (r0.equals("select") == false) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x027c, code lost:
    
        r0 = r16.getOptions();
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0284, code lost:
    
        if (r0.isEmpty() == false) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0286, code lost:
    
        r0 = kotlin.collections.CollectionsKt.listOf(new com.minhub.gamehub.data.PluginParamOption(r14, r14));
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x028f, code lost:
    
        r2 = new android.widget.Spinner(r8);
        r7 = new java.util.ArrayList(kotlin.collections.CollectionsKt__IterablesKt.collectionSizeOrDefault(r0, 10));
        r9 = r0.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x02a5, code lost:
    
        if (r9.hasNext() == false) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x02a7, code lost:
    
        r7.add(((com.minhub.gamehub.data.PluginParamOption) r9.next()).getLabel());
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x02b8, code lost:
    
        r2.setAdapter((android.widget.SpinnerAdapter) new android.widget.ArrayAdapter(r8, android.R.layout.simple_spinner_dropdown_item, r7));
        r5 = r0.iterator();
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x02cc, code lost:
    
        if (r5.hasNext() == false) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x02dc, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r5.next().getValue(), r14) == false) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x02de, code lost:
    
        r5 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x02e0, code lost:
    
        r7 = r7 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x02e3, code lost:
    
        r7 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x02e5, code lost:
    
        r2.setSelection(kotlin.ranges.RangesKt.coerceAtLeast(r7, 0));
        r15.addView(r2);
        r2 = new A1.G0(3, r0, r2);
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:57:0x0211. Please report as an issue. */
    @Override // kotlin.jvm.functions.Function1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invoke(java.lang.Object r20) {
        /*
            Method dump skipped, instruction units count: 992
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: C1.F0.invoke(java.lang.Object):java.lang.Object");
    }
}
