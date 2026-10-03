package kotlin.ranges;

import java.util.NoSuchElementException;
import kotlin.Deprecated;
import kotlin.DeprecatedSinceKotlin;
import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.WasExperimental;
import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.random.Random;
import kotlin.random.RandomKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000r\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0010\f\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0010\n\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0010\u000f\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0007\u001a\f\u0010\u0000\u001a\u00020\u0003*\u00020\u0004H\u0007\u001a\f\u0010\u0000\u001a\u00020\u0005*\u00020\u0006H\u0007\u001a\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u0007¢\u0006\u0002\u0010\b\u001a\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003*\u00020\u0004H\u0007¢\u0006\u0002\u0010\t\u001a\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0005*\u00020\u0006H\u0007¢\u0006\u0002\u0010\n\u001a\f\u0010\u000b\u001a\u00020\u0001*\u00020\u0002H\u0007\u001a\f\u0010\u000b\u001a\u00020\u0003*\u00020\u0004H\u0007\u001a\f\u0010\u000b\u001a\u00020\u0005*\u00020\u0006H\u0007\u001a\u0013\u0010\f\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u0007¢\u0006\u0002\u0010\b\u001a\u0013\u0010\f\u001a\u0004\u0018\u00010\u0003*\u00020\u0004H\u0007¢\u0006\u0002\u0010\t\u001a\u0013\u0010\f\u001a\u0004\u0018\u00010\u0005*\u00020\u0006H\u0007¢\u0006\u0002\u0010\n\u001a\r\u0010\r\u001a\u00020\u0001*\u00020\u000eH\u0087\b\u001a\r\u0010\r\u001a\u00020\u0003*\u00020\u000fH\u0087\b\u001a\r\u0010\r\u001a\u00020\u0005*\u00020\u0010H\u0087\b\u001a\u0014\u0010\r\u001a\u00020\u0001*\u00020\u000e2\u0006\u0010\r\u001a\u00020\u0011H\u0007\u001a\u0014\u0010\r\u001a\u00020\u0003*\u00020\u000f2\u0006\u0010\r\u001a\u00020\u0011H\u0007\u001a\u0014\u0010\r\u001a\u00020\u0005*\u00020\u00102\u0006\u0010\r\u001a\u00020\u0011H\u0007\u001a\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u0001*\u00020\u000eH\u0087\b¢\u0006\u0002\u0010\u0013\u001a\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u0003*\u00020\u000fH\u0087\b¢\u0006\u0002\u0010\u0014\u001a\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u0005*\u00020\u0010H\u0087\b¢\u0006\u0002\u0010\u0015\u001a\u001b\u0010\u0012\u001a\u0004\u0018\u00010\u0001*\u00020\u000e2\u0006\u0010\r\u001a\u00020\u0011H\u0007¢\u0006\u0002\u0010\u0016\u001a\u001b\u0010\u0012\u001a\u0004\u0018\u00010\u0003*\u00020\u000f2\u0006\u0010\r\u001a\u00020\u0011H\u0007¢\u0006\u0002\u0010\u0017\u001a\u001b\u0010\u0012\u001a\u0004\u0018\u00010\u0005*\u00020\u00102\u0006\u0010\r\u001a\u00020\u0011H\u0007¢\u0006\u0002\u0010\u0018\u001a\u001c\u0010\u0019\u001a\u00020\u001a*\u00020\u000e2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u0087\n¢\u0006\u0002\u0010\u001c\u001a\u001c\u0010\u0019\u001a\u00020\u001a*\u00020\u000f2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0003H\u0087\n¢\u0006\u0002\u0010\u001d\u001a\u001c\u0010\u0019\u001a\u00020\u001a*\u00020\u00102\b\u0010\u001b\u001a\u0004\u0018\u00010\u0005H\u0087\n¢\u0006\u0002\u0010\u001e\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00010\u001f2\u0006\u0010 \u001a\u00020!H\u0087\u0002¢\u0006\u0002\b\"\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00030\u001f2\u0006\u0010 \u001a\u00020!H\u0087\u0002¢\u0006\u0002\b#\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020$0\u001f2\u0006\u0010 \u001a\u00020!H\u0087\u0002¢\u0006\u0002\b%\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020&0\u001f2\u0006\u0010 \u001a\u00020!H\u0087\u0002¢\u0006\u0002\b'\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020(0\u001f2\u0006\u0010 \u001a\u00020!H\u0087\u0002¢\u0006\u0002\b)\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00010*2\u0006\u0010 \u001a\u00020!H\u0087\u0002¢\u0006\u0002\b\"\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00030*2\u0006\u0010 \u001a\u00020!H\u0087\u0002¢\u0006\u0002\b#\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020$0*2\u0006\u0010 \u001a\u00020!H\u0087\u0002¢\u0006\u0002\b%\u001a\u0015\u0010\u0019\u001a\u00020\u001a*\u00020\u000e2\u0006\u0010 \u001a\u00020!H\u0087\n\u001a\u0015\u0010\u0019\u001a\u00020\u001a*\u00020\u000f2\u0006\u0010 \u001a\u00020!H\u0087\n\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00010\u001f2\u0006\u0010 \u001a\u00020&H\u0087\u0002¢\u0006\u0002\b\"\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00030\u001f2\u0006\u0010 \u001a\u00020&H\u0087\u0002¢\u0006\u0002\b#\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020!0\u001f2\u0006\u0010 \u001a\u00020&H\u0087\u0002¢\u0006\u0002\b+\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020$0\u001f2\u0006\u0010 \u001a\u00020&H\u0087\u0002¢\u0006\u0002\b%\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020(0\u001f2\u0006\u0010 \u001a\u00020&H\u0087\u0002¢\u0006\u0002\b)\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00010\u001f2\u0006\u0010 \u001a\u00020(H\u0087\u0002¢\u0006\u0002\b\"\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00030\u001f2\u0006\u0010 \u001a\u00020(H\u0087\u0002¢\u0006\u0002\b#\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020!0\u001f2\u0006\u0010 \u001a\u00020(H\u0087\u0002¢\u0006\u0002\b+\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020$0\u001f2\u0006\u0010 \u001a\u00020(H\u0087\u0002¢\u0006\u0002\b%\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020&0\u001f2\u0006\u0010 \u001a\u00020(H\u0087\u0002¢\u0006\u0002\b'\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020&0*2\u0006\u0010 \u001a\u00020(H\u0087\u0002¢\u0006\u0002\b'\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00030\u001f2\u0006\u0010 \u001a\u00020\u0001H\u0087\u0002¢\u0006\u0002\b#\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020!0\u001f2\u0006\u0010 \u001a\u00020\u0001H\u0087\u0002¢\u0006\u0002\b+\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020$0\u001f2\u0006\u0010 \u001a\u00020\u0001H\u0087\u0002¢\u0006\u0002\b%\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020&0\u001f2\u0006\u0010 \u001a\u00020\u0001H\u0087\u0002¢\u0006\u0002\b'\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020(0\u001f2\u0006\u0010 \u001a\u00020\u0001H\u0087\u0002¢\u0006\u0002\b)\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00030*2\u0006\u0010 \u001a\u00020\u0001H\u0087\u0002¢\u0006\u0002\b#\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020!0*2\u0006\u0010 \u001a\u00020\u0001H\u0087\u0002¢\u0006\u0002\b+\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020$0*2\u0006\u0010 \u001a\u00020\u0001H\u0087\u0002¢\u0006\u0002\b%\u001a\u0015\u0010\u0019\u001a\u00020\u001a*\u00020\u000f2\u0006\u0010 \u001a\u00020\u0001H\u0087\n\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00010\u001f2\u0006\u0010 \u001a\u00020\u0003H\u0087\u0002¢\u0006\u0002\b\"\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020!0\u001f2\u0006\u0010 \u001a\u00020\u0003H\u0087\u0002¢\u0006\u0002\b+\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020$0\u001f2\u0006\u0010 \u001a\u00020\u0003H\u0087\u0002¢\u0006\u0002\b%\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020&0\u001f2\u0006\u0010 \u001a\u00020\u0003H\u0087\u0002¢\u0006\u0002\b'\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020(0\u001f2\u0006\u0010 \u001a\u00020\u0003H\u0087\u0002¢\u0006\u0002\b)\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00010*2\u0006\u0010 \u001a\u00020\u0003H\u0087\u0002¢\u0006\u0002\b\"\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020!0*2\u0006\u0010 \u001a\u00020\u0003H\u0087\u0002¢\u0006\u0002\b+\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020$0*2\u0006\u0010 \u001a\u00020\u0003H\u0087\u0002¢\u0006\u0002\b%\u001a\u0015\u0010\u0019\u001a\u00020\u001a*\u00020\u000e2\u0006\u0010 \u001a\u00020\u0003H\u0087\n\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00010\u001f2\u0006\u0010 \u001a\u00020$H\u0087\u0002¢\u0006\u0002\b\"\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00030\u001f2\u0006\u0010 \u001a\u00020$H\u0087\u0002¢\u0006\u0002\b#\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020!0\u001f2\u0006\u0010 \u001a\u00020$H\u0087\u0002¢\u0006\u0002\b+\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020&0\u001f2\u0006\u0010 \u001a\u00020$H\u0087\u0002¢\u0006\u0002\b'\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020(0\u001f2\u0006\u0010 \u001a\u00020$H\u0087\u0002¢\u0006\u0002\b)\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00010*2\u0006\u0010 \u001a\u00020$H\u0087\u0002¢\u0006\u0002\b\"\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00030*2\u0006\u0010 \u001a\u00020$H\u0087\u0002¢\u0006\u0002\b#\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020!0*2\u0006\u0010 \u001a\u00020$H\u0087\u0002¢\u0006\u0002\b+\u001a\u0015\u0010\u0019\u001a\u00020\u001a*\u00020\u000e2\u0006\u0010 \u001a\u00020$H\u0087\n\u001a\u0015\u0010\u0019\u001a\u00020\u001a*\u00020\u000f2\u0006\u0010 \u001a\u00020$H\u0087\n\u001a\u0015\u0010,\u001a\u00020\u0002*\u00020\u00012\u0006\u0010-\u001a\u00020!H\u0086\u0004\u001a\u0015\u0010,\u001a\u00020\u0004*\u00020\u00032\u0006\u0010-\u001a\u00020!H\u0086\u0004\u001a\u0015\u0010,\u001a\u00020\u0002*\u00020!2\u0006\u0010-\u001a\u00020!H\u0086\u0004\u001a\u0015\u0010,\u001a\u00020\u0002*\u00020$2\u0006\u0010-\u001a\u00020!H\u0086\u0004\u001a\u0015\u0010,\u001a\u00020\u0006*\u00020\u00052\u0006\u0010-\u001a\u00020\u0005H\u0086\u0004\u001a\u0015\u0010,\u001a\u00020\u0002*\u00020\u00012\u0006\u0010-\u001a\u00020\u0001H\u0086\u0004\u001a\u0015\u0010,\u001a\u00020\u0004*\u00020\u00032\u0006\u0010-\u001a\u00020\u0001H\u0086\u0004\u001a\u0015\u0010,\u001a\u00020\u0002*\u00020!2\u0006\u0010-\u001a\u00020\u0001H\u0086\u0004\u001a\u0015\u0010,\u001a\u00020\u0002*\u00020$2\u0006\u0010-\u001a\u00020\u0001H\u0086\u0004\u001a\u0015\u0010,\u001a\u00020\u0004*\u00020\u00012\u0006\u0010-\u001a\u00020\u0003H\u0086\u0004\u001a\u0015\u0010,\u001a\u00020\u0004*\u00020\u00032\u0006\u0010-\u001a\u00020\u0003H\u0086\u0004\u001a\u0015\u0010,\u001a\u00020\u0004*\u00020!2\u0006\u0010-\u001a\u00020\u0003H\u0086\u0004\u001a\u0015\u0010,\u001a\u00020\u0004*\u00020$2\u0006\u0010-\u001a\u00020\u0003H\u0086\u0004\u001a\u0015\u0010,\u001a\u00020\u0002*\u00020\u00012\u0006\u0010-\u001a\u00020$H\u0086\u0004\u001a\u0015\u0010,\u001a\u00020\u0004*\u00020\u00032\u0006\u0010-\u001a\u00020$H\u0086\u0004\u001a\u0015\u0010,\u001a\u00020\u0002*\u00020!2\u0006\u0010-\u001a\u00020$H\u0086\u0004\u001a\u0015\u0010,\u001a\u00020\u0002*\u00020$2\u0006\u0010-\u001a\u00020$H\u0086\u0004\u001a\n\u0010.\u001a\u00020\u0002*\u00020\u0002\u001a\n\u0010.\u001a\u00020\u0004*\u00020\u0004\u001a\n\u0010.\u001a\u00020\u0006*\u00020\u0006\u001a\u0015\u0010/\u001a\u00020\u0002*\u00020\u00022\u0006\u0010/\u001a\u00020\u0001H\u0086\u0004\u001a\u0015\u0010/\u001a\u00020\u0004*\u00020\u00042\u0006\u0010/\u001a\u00020\u0003H\u0086\u0004\u001a\u0015\u0010/\u001a\u00020\u0006*\u00020\u00062\u0006\u0010/\u001a\u00020\u0001H\u0086\u0004\u001a\u0013\u00100\u001a\u0004\u0018\u00010!*\u00020\u0001H\u0000¢\u0006\u0002\u00101\u001a\u0013\u00100\u001a\u0004\u0018\u00010!*\u00020\u0003H\u0000¢\u0006\u0002\u00102\u001a\u0013\u00100\u001a\u0004\u0018\u00010!*\u00020$H\u0000¢\u0006\u0002\u00103\u001a\u0013\u00100\u001a\u0004\u0018\u00010!*\u00020&H\u0000¢\u0006\u0002\u00104\u001a\u0013\u00100\u001a\u0004\u0018\u00010!*\u00020(H\u0000¢\u0006\u0002\u00105\u001a\u0013\u00106\u001a\u0004\u0018\u00010\u0001*\u00020\u0003H\u0000¢\u0006\u0002\u00107\u001a\u0013\u00106\u001a\u0004\u0018\u00010\u0001*\u00020&H\u0000¢\u0006\u0002\u00108\u001a\u0013\u00106\u001a\u0004\u0018\u00010\u0001*\u00020(H\u0000¢\u0006\u0002\u00109\u001a\u0013\u0010:\u001a\u0004\u0018\u00010\u0003*\u00020&H\u0000¢\u0006\u0002\u0010;\u001a\u0013\u0010:\u001a\u0004\u0018\u00010\u0003*\u00020(H\u0000¢\u0006\u0002\u0010<\u001a\u0013\u0010=\u001a\u0004\u0018\u00010$*\u00020\u0001H\u0000¢\u0006\u0002\u0010>\u001a\u0013\u0010=\u001a\u0004\u0018\u00010$*\u00020\u0003H\u0000¢\u0006\u0002\u0010?\u001a\u0013\u0010=\u001a\u0004\u0018\u00010$*\u00020&H\u0000¢\u0006\u0002\u0010@\u001a\u0013\u0010=\u001a\u0004\u0018\u00010$*\u00020(H\u0000¢\u0006\u0002\u0010A\u001a\u0015\u0010B\u001a\u00020\u000e*\u00020\u00012\u0006\u0010-\u001a\u00020!H\u0086\u0004\u001a\u0015\u0010B\u001a\u00020\u000f*\u00020\u00032\u0006\u0010-\u001a\u00020!H\u0086\u0004\u001a\u0015\u0010B\u001a\u00020\u000e*\u00020!2\u0006\u0010-\u001a\u00020!H\u0086\u0004\u001a\u0015\u0010B\u001a\u00020\u000e*\u00020$2\u0006\u0010-\u001a\u00020!H\u0086\u0004\u001a\u0015\u0010B\u001a\u00020\u0010*\u00020\u00052\u0006\u0010-\u001a\u00020\u0005H\u0086\u0004\u001a\u0015\u0010B\u001a\u00020\u000e*\u00020\u00012\u0006\u0010-\u001a\u00020\u0001H\u0086\u0004\u001a\u0015\u0010B\u001a\u00020\u000f*\u00020\u00032\u0006\u0010-\u001a\u00020\u0001H\u0086\u0004\u001a\u0015\u0010B\u001a\u00020\u000e*\u00020!2\u0006\u0010-\u001a\u00020\u0001H\u0086\u0004\u001a\u0015\u0010B\u001a\u00020\u000e*\u00020$2\u0006\u0010-\u001a\u00020\u0001H\u0086\u0004\u001a\u0015\u0010B\u001a\u00020\u000f*\u00020\u00012\u0006\u0010-\u001a\u00020\u0003H\u0086\u0004\u001a\u0015\u0010B\u001a\u00020\u000f*\u00020\u00032\u0006\u0010-\u001a\u00020\u0003H\u0086\u0004\u001a\u0015\u0010B\u001a\u00020\u000f*\u00020!2\u0006\u0010-\u001a\u00020\u0003H\u0086\u0004\u001a\u0015\u0010B\u001a\u00020\u000f*\u00020$2\u0006\u0010-\u001a\u00020\u0003H\u0086\u0004\u001a\u0015\u0010B\u001a\u00020\u000e*\u00020\u00012\u0006\u0010-\u001a\u00020$H\u0086\u0004\u001a\u0015\u0010B\u001a\u00020\u000f*\u00020\u00032\u0006\u0010-\u001a\u00020$H\u0086\u0004\u001a\u0015\u0010B\u001a\u00020\u000e*\u00020!2\u0006\u0010-\u001a\u00020$H\u0086\u0004\u001a\u0015\u0010B\u001a\u00020\u000e*\u00020$2\u0006\u0010-\u001a\u00020$H\u0086\u0004\u001a'\u0010C\u001a\u0002HD\"\u000e\b\u0000\u0010D*\b\u0012\u0004\u0012\u0002HD0E*\u0002HD2\u0006\u0010F\u001a\u0002HD¢\u0006\u0002\u0010G\u001a\u0012\u0010C\u001a\u00020!*\u00020!2\u0006\u0010F\u001a\u00020!\u001a\u0012\u0010C\u001a\u00020$*\u00020$2\u0006\u0010F\u001a\u00020$\u001a\u0012\u0010C\u001a\u00020\u0001*\u00020\u00012\u0006\u0010F\u001a\u00020\u0001\u001a\u0012\u0010C\u001a\u00020\u0003*\u00020\u00032\u0006\u0010F\u001a\u00020\u0003\u001a\u0012\u0010C\u001a\u00020(*\u00020(2\u0006\u0010F\u001a\u00020(\u001a\u0012\u0010C\u001a\u00020&*\u00020&2\u0006\u0010F\u001a\u00020&\u001a'\u0010H\u001a\u0002HD\"\u000e\b\u0000\u0010D*\b\u0012\u0004\u0012\u0002HD0E*\u0002HD2\u0006\u0010I\u001a\u0002HD¢\u0006\u0002\u0010G\u001a\u0012\u0010H\u001a\u00020!*\u00020!2\u0006\u0010I\u001a\u00020!\u001a\u0012\u0010H\u001a\u00020$*\u00020$2\u0006\u0010I\u001a\u00020$\u001a\u0012\u0010H\u001a\u00020\u0001*\u00020\u00012\u0006\u0010I\u001a\u00020\u0001\u001a\u0012\u0010H\u001a\u00020\u0003*\u00020\u00032\u0006\u0010I\u001a\u00020\u0003\u001a\u0012\u0010H\u001a\u00020(*\u00020(2\u0006\u0010I\u001a\u00020(\u001a\u0012\u0010H\u001a\u00020&*\u00020&2\u0006\u0010I\u001a\u00020&\u001a3\u0010J\u001a\u0002HD\"\u000e\b\u0000\u0010D*\b\u0012\u0004\u0012\u0002HD0E*\u0002HD2\b\u0010F\u001a\u0004\u0018\u0001HD2\b\u0010I\u001a\u0004\u0018\u0001HD¢\u0006\u0002\u0010K\u001a\u001a\u0010J\u001a\u00020!*\u00020!2\u0006\u0010F\u001a\u00020!2\u0006\u0010I\u001a\u00020!\u001a\u001a\u0010J\u001a\u00020$*\u00020$2\u0006\u0010F\u001a\u00020$2\u0006\u0010I\u001a\u00020$\u001a\u001a\u0010J\u001a\u00020\u0001*\u00020\u00012\u0006\u0010F\u001a\u00020\u00012\u0006\u0010I\u001a\u00020\u0001\u001a\u001a\u0010J\u001a\u00020\u0003*\u00020\u00032\u0006\u0010F\u001a\u00020\u00032\u0006\u0010I\u001a\u00020\u0003\u001a\u001a\u0010J\u001a\u00020(*\u00020(2\u0006\u0010F\u001a\u00020(2\u0006\u0010I\u001a\u00020(\u001a\u001a\u0010J\u001a\u00020&*\u00020&2\u0006\u0010F\u001a\u00020&2\u0006\u0010I\u001a\u00020&\u001a/\u0010J\u001a\u0002HD\"\u000e\b\u0000\u0010D*\b\u0012\u0004\u0012\u0002HD0E*\u0002HD2\f\u0010L\u001a\b\u0012\u0004\u0012\u0002HD0MH\u0007¢\u0006\u0002\u0010N\u001a-\u0010J\u001a\u0002HD\"\u000e\b\u0000\u0010D*\b\u0012\u0004\u0012\u0002HD0E*\u0002HD2\f\u0010L\u001a\b\u0012\u0004\u0012\u0002HD0\u001f¢\u0006\u0002\u0010O\u001a\u0018\u0010J\u001a\u00020\u0001*\u00020\u00012\f\u0010L\u001a\b\u0012\u0004\u0012\u00020\u00010\u001f\u001a\u0018\u0010J\u001a\u00020\u0003*\u00020\u00032\f\u0010L\u001a\b\u0012\u0004\u0012\u00020\u00030\u001f¨\u0006P"}, d2 = {"first", "", "Lkotlin/ranges/IntProgression;", "", "Lkotlin/ranges/LongProgression;", "", "Lkotlin/ranges/CharProgression;", "firstOrNull", "(Lkotlin/ranges/IntProgression;)Ljava/lang/Integer;", "(Lkotlin/ranges/LongProgression;)Ljava/lang/Long;", "(Lkotlin/ranges/CharProgression;)Ljava/lang/Character;", "last", "lastOrNull", "random", "Lkotlin/ranges/IntRange;", "Lkotlin/ranges/LongRange;", "Lkotlin/ranges/CharRange;", "Lkotlin/random/Random;", "randomOrNull", "(Lkotlin/ranges/IntRange;)Ljava/lang/Integer;", "(Lkotlin/ranges/LongRange;)Ljava/lang/Long;", "(Lkotlin/ranges/CharRange;)Ljava/lang/Character;", "(Lkotlin/ranges/IntRange;Lkotlin/random/Random;)Ljava/lang/Integer;", "(Lkotlin/ranges/LongRange;Lkotlin/random/Random;)Ljava/lang/Long;", "(Lkotlin/ranges/CharRange;Lkotlin/random/Random;)Ljava/lang/Character;", "contains", "", "element", "(Lkotlin/ranges/IntRange;Ljava/lang/Integer;)Z", "(Lkotlin/ranges/LongRange;Ljava/lang/Long;)Z", "(Lkotlin/ranges/CharRange;Ljava/lang/Character;)Z", "Lkotlin/ranges/ClosedRange;", "value", "", "intRangeContains", "longRangeContains", "", "shortRangeContains", "", "doubleRangeContains", "", "floatRangeContains", "Lkotlin/ranges/OpenEndRange;", "byteRangeContains", "downTo", "to", "reversed", "step", "toByteExactOrNull", "(I)Ljava/lang/Byte;", "(J)Ljava/lang/Byte;", "(S)Ljava/lang/Byte;", "(D)Ljava/lang/Byte;", "(F)Ljava/lang/Byte;", "toIntExactOrNull", "(J)Ljava/lang/Integer;", "(D)Ljava/lang/Integer;", "(F)Ljava/lang/Integer;", "toLongExactOrNull", "(D)Ljava/lang/Long;", "(F)Ljava/lang/Long;", "toShortExactOrNull", "(I)Ljava/lang/Short;", "(J)Ljava/lang/Short;", "(D)Ljava/lang/Short;", "(F)Ljava/lang/Short;", "until", "coerceAtLeast", "T", "", "minimumValue", "(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;", "coerceAtMost", "maximumValue", "coerceIn", "(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;", "range", "Lkotlin/ranges/ClosedFloatingPointRange;", "(Ljava/lang/Comparable;Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;", "(Ljava/lang/Comparable;Lkotlin/ranges/ClosedRange;)Ljava/lang/Comparable;", "kotlin-stdlib"}, k = 5, mv = {2, 2, 0}, xi = 49, xs = "kotlin/ranges/RangesKt")
@SourceDebugExtension({"SMAP\n_Ranges.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _Ranges.kt\nkotlin/ranges/RangesKt___RangesKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1572:1\n1#2:1573\n*E\n"})
public class RangesKt___RangesKt extends RangesKt__RangesKt {
    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "byteRangeContains")
    public static final /* synthetic */ boolean byteRangeContains(ClosedRange closedRange, double d3) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        Byte byteExactOrNull = toByteExactOrNull(d3);
        if (byteExactOrNull != null) {
            return closedRange.contains(byteExactOrNull);
        }
        return false;
    }

    public static final byte coerceAtLeast(byte b, byte b3) {
        return b < b3 ? b3 : b;
    }

    public static final byte coerceAtMost(byte b, byte b3) {
        return b > b3 ? b3 : b;
    }

    public static <T extends Comparable<? super T>> T coerceIn(T t2, T t3, T t4) {
        Intrinsics.checkNotNullParameter(t2, "<this>");
        if (t3 == null || t4 == null) {
            if (t3 != null && t2.compareTo(t3) < 0) {
                return t3;
            }
            if (t4 != null && t2.compareTo(t4) > 0) {
                return t4;
            }
        } else {
            if (t3.compareTo(t4) > 0) {
                throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + t4 + " is less than minimum " + t3 + '.');
            }
            if (t2.compareTo(t3) < 0) {
                return t3;
            }
            if (t2.compareTo(t4) > 0) {
                return t4;
            }
        }
        return t2;
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final boolean contains(IntRange intRange, Integer num) {
        Intrinsics.checkNotNullParameter(intRange, "<this>");
        return num != null && intRange.contains(num.intValue());
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "doubleRangeContains")
    public static final /* synthetic */ boolean doubleRangeContains(ClosedRange closedRange, byte b) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        return closedRange.contains(Double.valueOf(b));
    }

    public static final IntProgression downTo(int i3, byte b) {
        return IntProgression.INSTANCE.fromClosedRange(i3, b, -1);
    }

    @SinceKotlin(version = "1.7")
    public static final int first(IntProgression intProgression) {
        Intrinsics.checkNotNullParameter(intProgression, "<this>");
        if (!intProgression.isEmpty()) {
            return intProgression.getFirst();
        }
        throw new NoSuchElementException("Progression " + intProgression + " is empty.");
    }

    @SinceKotlin(version = "1.7")
    public static final Integer firstOrNull(IntProgression intProgression) {
        Intrinsics.checkNotNullParameter(intProgression, "<this>");
        if (intProgression.isEmpty()) {
            return null;
        }
        return Integer.valueOf(intProgression.getFirst());
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "floatRangeContains")
    public static final /* synthetic */ boolean floatRangeContains(ClosedRange closedRange, byte b) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        return closedRange.contains(Float.valueOf(b));
    }

    @JvmName(name = "intRangeContains")
    public static final boolean intRangeContains(ClosedRange<Integer> closedRange, byte b) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        return closedRange.contains(Integer.valueOf(b));
    }

    @SinceKotlin(version = "1.7")
    public static final int last(IntProgression intProgression) {
        Intrinsics.checkNotNullParameter(intProgression, "<this>");
        if (!intProgression.isEmpty()) {
            return intProgression.getLast();
        }
        throw new NoSuchElementException("Progression " + intProgression + " is empty.");
    }

    @SinceKotlin(version = "1.7")
    public static final Integer lastOrNull(IntProgression intProgression) {
        Intrinsics.checkNotNullParameter(intProgression, "<this>");
        if (intProgression.isEmpty()) {
            return null;
        }
        return Integer.valueOf(intProgression.getLast());
    }

    @JvmName(name = "longRangeContains")
    public static final boolean longRangeContains(ClosedRange<Long> closedRange, byte b) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        return closedRange.contains(Long.valueOf(b));
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final int random(IntRange intRange) {
        Intrinsics.checkNotNullParameter(intRange, "<this>");
        return random(intRange, Random.INSTANCE);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final Integer randomOrNull(IntRange intRange) {
        Intrinsics.checkNotNullParameter(intRange, "<this>");
        return randomOrNull(intRange, Random.INSTANCE);
    }

    public static final IntProgression reversed(IntProgression intProgression) {
        Intrinsics.checkNotNullParameter(intProgression, "<this>");
        return IntProgression.INSTANCE.fromClosedRange(intProgression.getLast(), intProgression.getFirst(), -intProgression.getStep());
    }

    @JvmName(name = "shortRangeContains")
    public static final boolean shortRangeContains(ClosedRange<Short> closedRange, byte b) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        return closedRange.contains(Short.valueOf(b));
    }

    public static IntProgression step(IntProgression intProgression, int i3) {
        Intrinsics.checkNotNullParameter(intProgression, "<this>");
        RangesKt__RangesKt.checkStepIsPositive(i3 > 0, Integer.valueOf(i3));
        IntProgression.Companion companion = IntProgression.INSTANCE;
        int first = intProgression.getFirst();
        int last = intProgression.getLast();
        if (intProgression.getStep() <= 0) {
            i3 = -i3;
        }
        return companion.fromClosedRange(first, last, i3);
    }

    public static final Byte toByteExactOrNull(int i3) {
        if (-128 > i3 || i3 >= 128) {
            return null;
        }
        return Byte.valueOf((byte) i3);
    }

    public static final Integer toIntExactOrNull(long j2) {
        if (-2147483648L > j2 || j2 >= 2147483648L) {
            return null;
        }
        return Integer.valueOf((int) j2);
    }

    public static final Long toLongExactOrNull(double d3) {
        if (-9.223372036854776E18d > d3 || d3 > 9.223372036854776E18d) {
            return null;
        }
        return Long.valueOf((long) d3);
    }

    public static final Short toShortExactOrNull(int i3) {
        if (-32768 > i3 || i3 >= 32768) {
            return null;
        }
        return Short.valueOf((short) i3);
    }

    public static final IntRange until(int i3, byte b) {
        return new IntRange(i3, b - 1);
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "byteRangeContains")
    public static final /* synthetic */ boolean byteRangeContains(ClosedRange closedRange, float f) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        Byte byteExactOrNull = toByteExactOrNull(f);
        if (byteExactOrNull != null) {
            return closedRange.contains(byteExactOrNull);
        }
        return false;
    }

    public static final double coerceAtLeast(double d3, double d4) {
        return d3 < d4 ? d4 : d3;
    }

    public static final double coerceAtMost(double d3, double d4) {
        return d3 > d4 ? d4 : d3;
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final boolean contains(LongRange longRange, Long l2) {
        Intrinsics.checkNotNullParameter(longRange, "<this>");
        return l2 != null && longRange.contains(l2.longValue());
    }

    @JvmName(name = "doubleRangeContains")
    public static final boolean doubleRangeContains(ClosedRange<Double> closedRange, float f) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        return closedRange.contains(Double.valueOf(f));
    }

    public static final LongProgression downTo(long j2, byte b) {
        return LongProgression.INSTANCE.fromClosedRange(j2, b, -1L);
    }

    @SinceKotlin(version = "1.7")
    public static final Long firstOrNull(LongProgression longProgression) {
        Intrinsics.checkNotNullParameter(longProgression, "<this>");
        if (longProgression.isEmpty()) {
            return null;
        }
        return Long.valueOf(longProgression.getFirst());
    }

    @JvmName(name = "floatRangeContains")
    public static final boolean floatRangeContains(ClosedRange<Float> closedRange, double d3) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        return closedRange.contains(Float.valueOf((float) d3));
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "intRangeContains")
    public static final boolean intRangeContains(OpenEndRange<Integer> openEndRange, byte b) {
        Intrinsics.checkNotNullParameter(openEndRange, "<this>");
        return openEndRange.contains(Integer.valueOf(b));
    }

    @SinceKotlin(version = "1.7")
    public static final Long lastOrNull(LongProgression longProgression) {
        Intrinsics.checkNotNullParameter(longProgression, "<this>");
        if (longProgression.isEmpty()) {
            return null;
        }
        return Long.valueOf(longProgression.getLast());
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "longRangeContains")
    public static final boolean longRangeContains(OpenEndRange<Long> openEndRange, byte b) {
        Intrinsics.checkNotNullParameter(openEndRange, "<this>");
        return openEndRange.contains(Long.valueOf(b));
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final long random(LongRange longRange) {
        Intrinsics.checkNotNullParameter(longRange, "<this>");
        return random(longRange, Random.INSTANCE);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final Long randomOrNull(LongRange longRange) {
        Intrinsics.checkNotNullParameter(longRange, "<this>");
        return randomOrNull(longRange, Random.INSTANCE);
    }

    public static final LongProgression reversed(LongProgression longProgression) {
        Intrinsics.checkNotNullParameter(longProgression, "<this>");
        return LongProgression.INSTANCE.fromClosedRange(longProgression.getLast(), longProgression.getFirst(), -longProgression.getStep());
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "shortRangeContains")
    public static final boolean shortRangeContains(OpenEndRange<Short> openEndRange, byte b) {
        Intrinsics.checkNotNullParameter(openEndRange, "<this>");
        return openEndRange.contains(Short.valueOf(b));
    }

    public static final Byte toByteExactOrNull(long j2) {
        if (-128 > j2 || j2 >= 128) {
            return null;
        }
        return Byte.valueOf((byte) j2);
    }

    public static final Integer toIntExactOrNull(double d3) {
        if (-2.147483648E9d > d3 || d3 > 2.147483647E9d) {
            return null;
        }
        return Integer.valueOf((int) d3);
    }

    public static final Long toLongExactOrNull(float f) {
        if (-9.223372E18f > f || f > 9.223372E18f) {
            return null;
        }
        return Long.valueOf((long) f);
    }

    public static final Short toShortExactOrNull(long j2) {
        if (-32768 > j2 || j2 >= 32768) {
            return null;
        }
        return Short.valueOf((short) j2);
    }

    public static final LongRange until(long j2, byte b) {
        return new LongRange(j2, ((long) b) - 1);
    }

    @JvmName(name = "byteRangeContains")
    public static final boolean byteRangeContains(ClosedRange<Byte> closedRange, int i3) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        Byte byteExactOrNull = toByteExactOrNull(i3);
        if (byteExactOrNull != null) {
            return closedRange.contains(byteExactOrNull);
        }
        return false;
    }

    public static float coerceAtLeast(float f, float f3) {
        return f < f3 ? f3 : f;
    }

    public static float coerceAtMost(float f, float f3) {
        return f > f3 ? f3 : f;
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final boolean contains(CharRange charRange, Character ch) {
        Intrinsics.checkNotNullParameter(charRange, "<this>");
        return ch != null && charRange.contains(ch.charValue());
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "doubleRangeContains")
    public static final boolean doubleRangeContains(OpenEndRange<Double> openEndRange, float f) {
        Intrinsics.checkNotNullParameter(openEndRange, "<this>");
        return openEndRange.contains(Double.valueOf(f));
    }

    public static final IntProgression downTo(byte b, byte b3) {
        return IntProgression.INSTANCE.fromClosedRange(b, b3, -1);
    }

    @SinceKotlin(version = "1.7")
    public static final Character firstOrNull(CharProgression charProgression) {
        Intrinsics.checkNotNullParameter(charProgression, "<this>");
        if (charProgression.isEmpty()) {
            return null;
        }
        return Character.valueOf(charProgression.getFirst());
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "floatRangeContains")
    public static final /* synthetic */ boolean floatRangeContains(ClosedRange closedRange, int i3) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        return closedRange.contains(Float.valueOf(i3));
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "intRangeContains")
    public static final /* synthetic */ boolean intRangeContains(ClosedRange closedRange, double d3) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        Integer intExactOrNull = toIntExactOrNull(d3);
        if (intExactOrNull != null) {
            return closedRange.contains(intExactOrNull);
        }
        return false;
    }

    @SinceKotlin(version = "1.7")
    public static final Character lastOrNull(CharProgression charProgression) {
        Intrinsics.checkNotNullParameter(charProgression, "<this>");
        if (charProgression.isEmpty()) {
            return null;
        }
        return Character.valueOf(charProgression.getLast());
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "longRangeContains")
    public static final /* synthetic */ boolean longRangeContains(ClosedRange closedRange, double d3) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        Long longExactOrNull = toLongExactOrNull(d3);
        if (longExactOrNull != null) {
            return closedRange.contains(longExactOrNull);
        }
        return false;
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final char random(CharRange charRange) {
        Intrinsics.checkNotNullParameter(charRange, "<this>");
        return random(charRange, Random.INSTANCE);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final Character randomOrNull(CharRange charRange) {
        Intrinsics.checkNotNullParameter(charRange, "<this>");
        return randomOrNull(charRange, Random.INSTANCE);
    }

    public static final CharProgression reversed(CharProgression charProgression) {
        Intrinsics.checkNotNullParameter(charProgression, "<this>");
        return CharProgression.INSTANCE.fromClosedRange(charProgression.getLast(), charProgression.getFirst(), -charProgression.getStep());
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "shortRangeContains")
    public static final /* synthetic */ boolean shortRangeContains(ClosedRange closedRange, double d3) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        Short shortExactOrNull = toShortExactOrNull(d3);
        if (shortExactOrNull != null) {
            return closedRange.contains(shortExactOrNull);
        }
        return false;
    }

    public static final LongProgression step(LongProgression longProgression, long j2) {
        Intrinsics.checkNotNullParameter(longProgression, "<this>");
        RangesKt__RangesKt.checkStepIsPositive(j2 > 0, Long.valueOf(j2));
        LongProgression.Companion companion = LongProgression.INSTANCE;
        long first = longProgression.getFirst();
        long last = longProgression.getLast();
        if (longProgression.getStep() <= 0) {
            j2 = -j2;
        }
        return companion.fromClosedRange(first, last, j2);
    }

    public static final Byte toByteExactOrNull(short s2) {
        if (-128 > s2 || s2 >= 128) {
            return null;
        }
        return Byte.valueOf((byte) s2);
    }

    public static final Integer toIntExactOrNull(float f) {
        if (-2.14748365E9f > f || f > 2.14748365E9f) {
            return null;
        }
        return Integer.valueOf((int) f);
    }

    public static final Short toShortExactOrNull(double d3) {
        if (-32768.0d > d3 || d3 > 32767.0d) {
            return null;
        }
        return Short.valueOf((short) d3);
    }

    public static final IntRange until(byte b, byte b3) {
        return new IntRange(b, b3 - 1);
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "byteRangeContains")
    public static final boolean byteRangeContains(OpenEndRange<Byte> openEndRange, int i3) {
        Intrinsics.checkNotNullParameter(openEndRange, "<this>");
        Byte byteExactOrNull = toByteExactOrNull(i3);
        if (byteExactOrNull != null) {
            return openEndRange.contains(byteExactOrNull);
        }
        return false;
    }

    public static int coerceAtLeast(int i3, int i4) {
        return i3 < i4 ? i4 : i3;
    }

    public static int coerceAtMost(int i3, int i4) {
        return i3 > i4 ? i4 : i3;
    }

    @InlineOnly
    private static final boolean contains(IntRange intRange, byte b) {
        Intrinsics.checkNotNullParameter(intRange, "<this>");
        return intRangeContains((ClosedRange<Integer>) intRange, b);
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "doubleRangeContains")
    public static final /* synthetic */ boolean doubleRangeContains(ClosedRange closedRange, int i3) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        return closedRange.contains(Double.valueOf(i3));
    }

    public static final IntProgression downTo(short s2, byte b) {
        return IntProgression.INSTANCE.fromClosedRange(s2, b, -1);
    }

    @SinceKotlin(version = "1.7")
    public static final long first(LongProgression longProgression) {
        Intrinsics.checkNotNullParameter(longProgression, "<this>");
        if (!longProgression.isEmpty()) {
            return longProgression.getFirst();
        }
        throw new NoSuchElementException("Progression " + longProgression + " is empty.");
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "floatRangeContains")
    public static final /* synthetic */ boolean floatRangeContains(ClosedRange closedRange, long j2) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        return closedRange.contains(Float.valueOf(j2));
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "intRangeContains")
    public static final /* synthetic */ boolean intRangeContains(ClosedRange closedRange, float f) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        Integer intExactOrNull = toIntExactOrNull(f);
        if (intExactOrNull != null) {
            return closedRange.contains(intExactOrNull);
        }
        return false;
    }

    @SinceKotlin(version = "1.7")
    public static final long last(LongProgression longProgression) {
        Intrinsics.checkNotNullParameter(longProgression, "<this>");
        if (!longProgression.isEmpty()) {
            return longProgression.getLast();
        }
        throw new NoSuchElementException("Progression " + longProgression + " is empty.");
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "longRangeContains")
    public static final /* synthetic */ boolean longRangeContains(ClosedRange closedRange, float f) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        Long longExactOrNull = toLongExactOrNull(f);
        if (longExactOrNull != null) {
            return closedRange.contains(longExactOrNull);
        }
        return false;
    }

    @SinceKotlin(version = "1.3")
    public static int random(IntRange intRange, Random random) {
        Intrinsics.checkNotNullParameter(intRange, "<this>");
        Intrinsics.checkNotNullParameter(random, "random");
        try {
            return RandomKt.nextInt(random, intRange);
        } catch (IllegalArgumentException e2) {
            throw new NoSuchElementException(e2.getMessage());
        }
    }

    @SinceKotlin(version = "1.4")
    public static final Integer randomOrNull(IntRange intRange, Random random) {
        Intrinsics.checkNotNullParameter(intRange, "<this>");
        Intrinsics.checkNotNullParameter(random, "random");
        if (intRange.isEmpty()) {
            return null;
        }
        return Integer.valueOf(RandomKt.nextInt(random, intRange));
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "shortRangeContains")
    public static final /* synthetic */ boolean shortRangeContains(ClosedRange closedRange, float f) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        Short shortExactOrNull = toShortExactOrNull(f);
        if (shortExactOrNull != null) {
            return closedRange.contains(shortExactOrNull);
        }
        return false;
    }

    public static final Byte toByteExactOrNull(double d3) {
        if (-128.0d > d3 || d3 > 127.0d) {
            return null;
        }
        return Byte.valueOf((byte) d3);
    }

    public static final Short toShortExactOrNull(float f) {
        if (-32768.0f > f || f > 32767.0f) {
            return null;
        }
        return Short.valueOf((short) f);
    }

    public static final IntRange until(short s2, byte b) {
        return new IntRange(s2, b - 1);
    }

    @JvmName(name = "byteRangeContains")
    public static final boolean byteRangeContains(ClosedRange<Byte> closedRange, long j2) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        Byte byteExactOrNull = toByteExactOrNull(j2);
        if (byteExactOrNull != null) {
            return closedRange.contains(byteExactOrNull);
        }
        return false;
    }

    public static long coerceAtLeast(long j2, long j3) {
        return j2 < j3 ? j3 : j2;
    }

    public static long coerceAtMost(long j2, long j3) {
        return j2 > j3 ? j3 : j2;
    }

    @InlineOnly
    private static final boolean contains(LongRange longRange, byte b) {
        Intrinsics.checkNotNullParameter(longRange, "<this>");
        return longRangeContains((ClosedRange<Long>) longRange, b);
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "doubleRangeContains")
    public static final /* synthetic */ boolean doubleRangeContains(ClosedRange closedRange, long j2) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        return closedRange.contains(Double.valueOf(j2));
    }

    public static final CharProgression downTo(char c3, char c4) {
        return CharProgression.INSTANCE.fromClosedRange(c3, c4, -1);
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "floatRangeContains")
    public static final /* synthetic */ boolean floatRangeContains(ClosedRange closedRange, short s2) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        return closedRange.contains(Float.valueOf(s2));
    }

    @JvmName(name = "intRangeContains")
    public static final boolean intRangeContains(ClosedRange<Integer> closedRange, long j2) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        Integer intExactOrNull = toIntExactOrNull(j2);
        if (intExactOrNull != null) {
            return closedRange.contains(intExactOrNull);
        }
        return false;
    }

    @JvmName(name = "longRangeContains")
    public static final boolean longRangeContains(ClosedRange<Long> closedRange, int i3) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        return closedRange.contains(Long.valueOf(i3));
    }

    @JvmName(name = "shortRangeContains")
    public static final boolean shortRangeContains(ClosedRange<Short> closedRange, int i3) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        Short shortExactOrNull = toShortExactOrNull(i3);
        if (shortExactOrNull != null) {
            return closedRange.contains(shortExactOrNull);
        }
        return false;
    }

    public static final CharProgression step(CharProgression charProgression, int i3) {
        Intrinsics.checkNotNullParameter(charProgression, "<this>");
        RangesKt__RangesKt.checkStepIsPositive(i3 > 0, Integer.valueOf(i3));
        CharProgression.Companion companion = CharProgression.INSTANCE;
        char first = charProgression.getFirst();
        char last = charProgression.getLast();
        if (charProgression.getStep() <= 0) {
            i3 = -i3;
        }
        return companion.fromClosedRange(first, last, i3);
    }

    public static final Byte toByteExactOrNull(float f) {
        if (-128.0f > f || f > 127.0f) {
            return null;
        }
        return Byte.valueOf((byte) f);
    }

    public static final CharRange until(char c3, char c4) {
        return Intrinsics.compare((int) c4, 0) <= 0 ? CharRange.INSTANCE.getEMPTY() : new CharRange(c3, (char) (c4 - 1));
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "byteRangeContains")
    public static final boolean byteRangeContains(OpenEndRange<Byte> openEndRange, long j2) {
        Intrinsics.checkNotNullParameter(openEndRange, "<this>");
        Byte byteExactOrNull = toByteExactOrNull(j2);
        if (byteExactOrNull != null) {
            return openEndRange.contains(byteExactOrNull);
        }
        return false;
    }

    public static final short coerceAtLeast(short s2, short s3) {
        return s2 < s3 ? s3 : s2;
    }

    public static final short coerceAtMost(short s2, short s3) {
        return s2 > s3 ? s3 : s2;
    }

    @InlineOnly
    private static final boolean contains(LongRange longRange, int i3) {
        Intrinsics.checkNotNullParameter(longRange, "<this>");
        return longRangeContains((ClosedRange<Long>) longRange, i3);
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "doubleRangeContains")
    public static final /* synthetic */ boolean doubleRangeContains(ClosedRange closedRange, short s2) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        return closedRange.contains(Double.valueOf(s2));
    }

    public static IntProgression downTo(int i3, int i4) {
        return IntProgression.INSTANCE.fromClosedRange(i3, i4, -1);
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "intRangeContains")
    public static final boolean intRangeContains(OpenEndRange<Integer> openEndRange, long j2) {
        Intrinsics.checkNotNullParameter(openEndRange, "<this>");
        Integer intExactOrNull = toIntExactOrNull(j2);
        if (intExactOrNull != null) {
            return openEndRange.contains(intExactOrNull);
        }
        return false;
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "longRangeContains")
    public static final boolean longRangeContains(OpenEndRange<Long> openEndRange, int i3) {
        Intrinsics.checkNotNullParameter(openEndRange, "<this>");
        return openEndRange.contains(Long.valueOf(i3));
    }

    @SinceKotlin(version = "1.3")
    public static final long random(LongRange longRange, Random random) {
        Intrinsics.checkNotNullParameter(longRange, "<this>");
        Intrinsics.checkNotNullParameter(random, "random");
        try {
            return RandomKt.nextLong(random, longRange);
        } catch (IllegalArgumentException e2) {
            throw new NoSuchElementException(e2.getMessage());
        }
    }

    @SinceKotlin(version = "1.4")
    public static final Long randomOrNull(LongRange longRange, Random random) {
        Intrinsics.checkNotNullParameter(longRange, "<this>");
        Intrinsics.checkNotNullParameter(random, "random");
        if (longRange.isEmpty()) {
            return null;
        }
        return Long.valueOf(RandomKt.nextLong(random, longRange));
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "shortRangeContains")
    public static final boolean shortRangeContains(OpenEndRange<Short> openEndRange, int i3) {
        Intrinsics.checkNotNullParameter(openEndRange, "<this>");
        Short shortExactOrNull = toShortExactOrNull(i3);
        if (shortExactOrNull != null) {
            return openEndRange.contains(shortExactOrNull);
        }
        return false;
    }

    @JvmName(name = "byteRangeContains")
    public static final boolean byteRangeContains(ClosedRange<Byte> closedRange, short s2) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        Byte byteExactOrNull = toByteExactOrNull(s2);
        if (byteExactOrNull != null) {
            return closedRange.contains(byteExactOrNull);
        }
        return false;
    }

    public static final <T extends Comparable<? super T>> T coerceAtLeast(T t2, T minimumValue) {
        Intrinsics.checkNotNullParameter(t2, "<this>");
        Intrinsics.checkNotNullParameter(minimumValue, "minimumValue");
        return t2.compareTo(minimumValue) < 0 ? minimumValue : t2;
    }

    public static final <T extends Comparable<? super T>> T coerceAtMost(T t2, T maximumValue) {
        Intrinsics.checkNotNullParameter(t2, "<this>");
        Intrinsics.checkNotNullParameter(maximumValue, "maximumValue");
        return t2.compareTo(maximumValue) > 0 ? maximumValue : t2;
    }

    public static final byte coerceIn(byte b, byte b3, byte b4) {
        if (b3 <= b4) {
            if (b < b3) {
                return b3;
            }
            return b > b4 ? b4 : b;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + ((int) b4) + " is less than minimum " + ((int) b3) + '.');
    }

    @InlineOnly
    private static final boolean contains(IntRange intRange, long j2) {
        Intrinsics.checkNotNullParameter(intRange, "<this>");
        return intRangeContains((ClosedRange<Integer>) intRange, j2);
    }

    public static final LongProgression downTo(long j2, int i3) {
        return LongProgression.INSTANCE.fromClosedRange(j2, i3, -1L);
    }

    @SinceKotlin(version = "1.7")
    public static final char first(CharProgression charProgression) {
        Intrinsics.checkNotNullParameter(charProgression, "<this>");
        if (!charProgression.isEmpty()) {
            return charProgression.getFirst();
        }
        throw new NoSuchElementException("Progression " + charProgression + " is empty.");
    }

    @JvmName(name = "intRangeContains")
    public static final boolean intRangeContains(ClosedRange<Integer> closedRange, short s2) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        return closedRange.contains(Integer.valueOf(s2));
    }

    @SinceKotlin(version = "1.7")
    public static final char last(CharProgression charProgression) {
        Intrinsics.checkNotNullParameter(charProgression, "<this>");
        if (!charProgression.isEmpty()) {
            return charProgression.getLast();
        }
        throw new NoSuchElementException("Progression " + charProgression + " is empty.");
    }

    @JvmName(name = "longRangeContains")
    public static final boolean longRangeContains(ClosedRange<Long> closedRange, short s2) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        return closedRange.contains(Long.valueOf(s2));
    }

    @JvmName(name = "shortRangeContains")
    public static final boolean shortRangeContains(ClosedRange<Short> closedRange, long j2) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        Short shortExactOrNull = toShortExactOrNull(j2);
        if (shortExactOrNull != null) {
            return closedRange.contains(shortExactOrNull);
        }
        return false;
    }

    public static IntRange until(int i3, int i4) {
        if (i4 <= Integer.MIN_VALUE) {
            return IntRange.INSTANCE.getEMPTY();
        }
        return new IntRange(i3, i4 - 1);
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "byteRangeContains")
    public static final boolean byteRangeContains(OpenEndRange<Byte> openEndRange, short s2) {
        Intrinsics.checkNotNullParameter(openEndRange, "<this>");
        Byte byteExactOrNull = toByteExactOrNull(s2);
        if (byteExactOrNull != null) {
            return openEndRange.contains(byteExactOrNull);
        }
        return false;
    }

    public static final short coerceIn(short s2, short s3, short s4) {
        if (s3 <= s4) {
            if (s2 < s3) {
                return s3;
            }
            return s2 > s4 ? s4 : s2;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + ((int) s4) + " is less than minimum " + ((int) s3) + '.');
    }

    @InlineOnly
    private static final boolean contains(IntRange intRange, short s2) {
        Intrinsics.checkNotNullParameter(intRange, "<this>");
        return intRangeContains((ClosedRange<Integer>) intRange, s2);
    }

    public static final IntProgression downTo(byte b, int i3) {
        return IntProgression.INSTANCE.fromClosedRange(b, i3, -1);
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "intRangeContains")
    public static final boolean intRangeContains(OpenEndRange<Integer> openEndRange, short s2) {
        Intrinsics.checkNotNullParameter(openEndRange, "<this>");
        return openEndRange.contains(Integer.valueOf(s2));
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "longRangeContains")
    public static final boolean longRangeContains(OpenEndRange<Long> openEndRange, short s2) {
        Intrinsics.checkNotNullParameter(openEndRange, "<this>");
        return openEndRange.contains(Long.valueOf(s2));
    }

    @SinceKotlin(version = "1.3")
    public static final char random(CharRange charRange, Random random) {
        Intrinsics.checkNotNullParameter(charRange, "<this>");
        Intrinsics.checkNotNullParameter(random, "random");
        try {
            return (char) random.nextInt(charRange.getFirst(), charRange.getLast() + 1);
        } catch (IllegalArgumentException e2) {
            throw new NoSuchElementException(e2.getMessage());
        }
    }

    @SinceKotlin(version = "1.4")
    public static final Character randomOrNull(CharRange charRange, Random random) {
        Intrinsics.checkNotNullParameter(charRange, "<this>");
        Intrinsics.checkNotNullParameter(random, "random");
        if (charRange.isEmpty()) {
            return null;
        }
        return Character.valueOf((char) random.nextInt(charRange.getFirst(), charRange.getLast() + 1));
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "shortRangeContains")
    public static final boolean shortRangeContains(OpenEndRange<Short> openEndRange, long j2) {
        Intrinsics.checkNotNullParameter(openEndRange, "<this>");
        Short shortExactOrNull = toShortExactOrNull(j2);
        if (shortExactOrNull != null) {
            return openEndRange.contains(shortExactOrNull);
        }
        return false;
    }

    public static int coerceIn(int i3, int i4, int i5) {
        if (i4 <= i5) {
            if (i3 < i4) {
                return i4;
            }
            return i3 > i5 ? i5 : i3;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + i5 + " is less than minimum " + i4 + '.');
    }

    @InlineOnly
    private static final boolean contains(LongRange longRange, short s2) {
        Intrinsics.checkNotNullParameter(longRange, "<this>");
        return longRangeContains((ClosedRange<Long>) longRange, s2);
    }

    public static final IntProgression downTo(short s2, int i3) {
        return IntProgression.INSTANCE.fromClosedRange(s2, i3, -1);
    }

    public static final LongRange until(long j2, int i3) {
        return new LongRange(j2, ((long) i3) - 1);
    }

    public static long coerceIn(long j2, long j3, long j4) {
        if (j3 <= j4) {
            if (j2 < j3) {
                return j3;
            }
            return j2 > j4 ? j4 : j2;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + j4 + " is less than minimum " + j3 + '.');
    }

    public static final LongProgression downTo(int i3, long j2) {
        return LongProgression.INSTANCE.fromClosedRange(i3, j2, -1L);
    }

    public static final IntRange until(byte b, int i3) {
        if (i3 <= Integer.MIN_VALUE) {
            return IntRange.INSTANCE.getEMPTY();
        }
        return new IntRange(b, i3 - 1);
    }

    public static float coerceIn(float f, float f3, float f4) {
        if (f3 <= f4) {
            if (f < f3) {
                return f3;
            }
            return f > f4 ? f4 : f;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + f4 + " is less than minimum " + f3 + '.');
    }

    public static final LongProgression downTo(long j2, long j3) {
        return LongProgression.INSTANCE.fromClosedRange(j2, j3, -1L);
    }

    public static final double coerceIn(double d3, double d4, double d5) {
        if (d4 <= d5) {
            if (d3 < d4) {
                return d4;
            }
            return d3 > d5 ? d5 : d3;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + d5 + " is less than minimum " + d4 + '.');
    }

    public static final LongProgression downTo(byte b, long j2) {
        return LongProgression.INSTANCE.fromClosedRange(b, j2, -1L);
    }

    public static final IntRange until(short s2, int i3) {
        if (i3 <= Integer.MIN_VALUE) {
            return IntRange.INSTANCE.getEMPTY();
        }
        return new IntRange(s2, i3 - 1);
    }

    @SinceKotlin(version = "1.1")
    public static final <T extends Comparable<? super T>> T coerceIn(T t2, ClosedFloatingPointRange<T> range) {
        Intrinsics.checkNotNullParameter(t2, "<this>");
        Intrinsics.checkNotNullParameter(range, "range");
        if (!range.isEmpty()) {
            if (!range.lessThanOrEquals(t2, range.getStart()) || range.lessThanOrEquals(range.getStart(), t2)) {
                return (!range.lessThanOrEquals(range.getEndInclusive(), t2) || range.lessThanOrEquals(t2, range.getEndInclusive())) ? t2 : range.getEndInclusive();
            }
            return range.getStart();
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + range + '.');
    }

    public static final LongProgression downTo(short s2, long j2) {
        return LongProgression.INSTANCE.fromClosedRange(s2, j2, -1L);
    }

    public static final IntProgression downTo(int i3, short s2) {
        return IntProgression.INSTANCE.fromClosedRange(i3, s2, -1);
    }

    public static final LongRange until(int i3, long j2) {
        if (j2 <= Long.MIN_VALUE) {
            return LongRange.INSTANCE.getEMPTY();
        }
        return new LongRange(i3, j2 - 1);
    }

    public static final LongProgression downTo(long j2, short s2) {
        return LongProgression.INSTANCE.fromClosedRange(j2, s2, -1L);
    }

    public static final IntProgression downTo(byte b, short s2) {
        return IntProgression.INSTANCE.fromClosedRange(b, s2, -1);
    }

    public static final LongRange until(long j2, long j3) {
        if (j3 <= Long.MIN_VALUE) {
            return LongRange.INSTANCE.getEMPTY();
        }
        return new LongRange(j2, j3 - 1);
    }

    public static final <T extends Comparable<? super T>> T coerceIn(T t2, ClosedRange<T> range) {
        Intrinsics.checkNotNullParameter(t2, "<this>");
        Intrinsics.checkNotNullParameter(range, "range");
        if (range instanceof ClosedFloatingPointRange) {
            return (T) coerceIn((Comparable) t2, (ClosedFloatingPointRange) range);
        }
        if (!range.isEmpty()) {
            if (t2.compareTo(range.getStart()) < 0) {
                return (T) range.getStart();
            }
            return t2.compareTo(range.getEndInclusive()) > 0 ? (T) range.getEndInclusive() : t2;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + range + '.');
    }

    public static final IntProgression downTo(short s2, short s3) {
        return IntProgression.INSTANCE.fromClosedRange(s2, s3, -1);
    }

    public static final LongRange until(byte b, long j2) {
        if (j2 <= Long.MIN_VALUE) {
            return LongRange.INSTANCE.getEMPTY();
        }
        return new LongRange(b, j2 - 1);
    }

    public static final LongRange until(short s2, long j2) {
        if (j2 <= Long.MIN_VALUE) {
            return LongRange.INSTANCE.getEMPTY();
        }
        return new LongRange(s2, j2 - 1);
    }

    public static final IntRange until(int i3, short s2) {
        return new IntRange(i3, s2 - 1);
    }

    public static final int coerceIn(int i3, ClosedRange<Integer> range) {
        Intrinsics.checkNotNullParameter(range, "range");
        if (range instanceof ClosedFloatingPointRange) {
            return ((Number) coerceIn(Integer.valueOf(i3), (ClosedFloatingPointRange<Integer>) range)).intValue();
        }
        if (!range.isEmpty()) {
            if (i3 < ((Number) range.getStart()).intValue()) {
                return ((Number) range.getStart()).intValue();
            }
            return i3 > ((Number) range.getEndInclusive()).intValue() ? ((Number) range.getEndInclusive()).intValue() : i3;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + range + '.');
    }

    public static final LongRange until(long j2, short s2) {
        return new LongRange(j2, ((long) s2) - 1);
    }

    public static final IntRange until(byte b, short s2) {
        return new IntRange(b, s2 - 1);
    }

    public static final IntRange until(short s2, short s3) {
        return new IntRange(s2, s3 - 1);
    }

    public static long coerceIn(long j2, ClosedRange<Long> range) {
        Intrinsics.checkNotNullParameter(range, "range");
        if (range instanceof ClosedFloatingPointRange) {
            return ((Number) coerceIn(Long.valueOf(j2), (ClosedFloatingPointRange<Long>) range)).longValue();
        }
        if (!range.isEmpty()) {
            if (j2 < ((Number) range.getStart()).longValue()) {
                return ((Number) range.getStart()).longValue();
            }
            return j2 > ((Number) range.getEndInclusive()).longValue() ? ((Number) range.getEndInclusive()).longValue() : j2;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + range + '.');
    }
}
