package A1;

import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class F implements Function1 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f59c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f60d;

    public /* synthetic */ F(int i3, Object obj, int i4) {
        this.b = i4;
        this.f59c = i3;
        this.f60d = obj;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0262  */
    /* JADX WARN: Code duplicated, block: B:103:0x0267  */
    /* JADX WARN: Code duplicated, block: B:105:0x026b  */
    /* JADX WARN: Code duplicated, block: B:106:0x0270  */
    /* JADX WARN: Code duplicated, block: B:113:0x02c4  */
    /* JADX WARN: Code duplicated, block: B:116:0x02db  */
    /* JADX WARN: Code duplicated, block: B:119:0x0347  */
    /* JADX WARN: Code duplicated, block: B:120:0x0349  */
    /* JADX WARN: Code duplicated, block: B:127:0x035e  */
    /* JADX WARN: Code duplicated, block: B:131:0x037c  */
    /* JADX WARN: Code duplicated, block: B:135:0x0388  */
    /* JADX WARN: Code duplicated, block: B:139:0x03ad  */
    /* JADX WARN: Code duplicated, block: B:142:0x055a  */
    /* JADX WARN: Code duplicated, block: B:143:0x055f  */
    /* JADX WARN: Code duplicated, block: B:149:0x056a  */
    /* JADX WARN: Code duplicated, block: B:157:0x0578  */
    /* JADX WARN: Code duplicated, block: B:160:0x0581  */
    /* JADX WARN: Code duplicated, block: B:161:0x0583  */
    /* JADX WARN: Code duplicated, block: B:164:0x0590  */
    /* JADX WARN: Code duplicated, block: B:165:0x0592  */
    /* JADX WARN: Code duplicated, block: B:168:0x059f  */
    /* JADX WARN: Code duplicated, block: B:169:0x05a1  */
    /* JADX WARN: Code duplicated, block: B:16:0x003c  */
    /* JADX WARN: Code duplicated, block: B:172:0x05ae  */
    /* JADX WARN: Code duplicated, block: B:173:0x05b0  */
    /* JADX WARN: Code duplicated, block: B:176:0x05bf  */
    /* JADX WARN: Code duplicated, block: B:177:0x05c3  */
    /* JADX WARN: Code duplicated, block: B:183:0x05db  */
    /* JADX WARN: Code duplicated, block: B:186:0x063d  */
    /* JADX WARN: Code duplicated, block: B:187:0x0641  */
    /* JADX WARN: Code duplicated, block: B:18:0x0044  */
    /* JADX WARN: Code duplicated, block: B:190:0x068b  */
    /* JADX WARN: Code duplicated, block: B:204:0x07a9  */
    /* JADX WARN: Code duplicated, block: B:20:0x0051  */
    /* JADX WARN: Code duplicated, block: B:217:0x0067 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:27:0x007a  */
    /* JADX WARN: Code duplicated, block: B:29:0x009d  */
    /* JADX WARN: Code duplicated, block: B:32:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:35:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:38:0x00ed A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:42:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:45:0x0116  */
    /* JADX WARN: Code duplicated, block: B:49:0x012a  */
    /* JADX WARN: Code duplicated, block: B:52:0x013d  */
    /* JADX WARN: Code duplicated, block: B:53:0x0141  */
    /* JADX WARN: Code duplicated, block: B:68:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:70:0x01c8  */
    /* JADX WARN: Code duplicated, block: B:72:0x01d6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:73:0x01d8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:74:0x01da A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:75:0x01dc A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:76:0x01de  */
    /* JADX WARN: Code duplicated, block: B:78:0x01e4  */
    /* JADX WARN: Code duplicated, block: B:80:0x01ef  */
    /* JADX WARN: Code duplicated, block: B:81:0x01f6  */
    /* JADX WARN: Code duplicated, block: B:82:0x01fd  */
    /* JADX WARN: Code duplicated, block: B:83:0x0204  */
    /* JADX WARN: Code duplicated, block: B:86:0x021d  */
    /* JADX WARN: Code duplicated, block: B:88:0x0224  */
    /* JADX WARN: Code duplicated, block: B:90:0x0229  */
    /* JADX WARN: Code duplicated, block: B:94:0x0232 A[Catch: Exception -> 0x0237, TRY_LEAVE, TryCatch #1 {Exception -> 0x0237, blocks: (B:92:0x022e, B:94:0x0232), top: B:212:0x022e }] */
    /* JADX WARN: Code duplicated, block: B:96:0x0237  */
    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r5v49 java.lang.Object, still in use, count: 2, list:
          (r5v49 java.lang.Object) from 0x01a1: PHI (r5 I:??) = (r5v6 java.lang.Object), (r5v49 java.lang.Object) binds: [B:65:0x01a0, B:221:0x01a1] A[DONT_GENERATE, DONT_INLINE]
          (r5v49 java.lang.Object) from 0x0197: CHECK_CAST (com.minhub.gamehub.data.Game) (r5v49 java.lang.Object)
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
    @Override // kotlin.jvm.functions.Function1
    public final java.lang.Object invoke(java.lang.Object r25) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 2016
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: A1.F.invoke(java.lang.Object):java.lang.Object");
    }

    public /* synthetic */ F(Object obj, int i3, int i4) {
        this.b = i4;
        this.f60d = obj;
        this.f59c = i3;
    }
}
