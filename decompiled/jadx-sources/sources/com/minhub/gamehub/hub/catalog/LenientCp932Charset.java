package com.minhub.gamehub.hub.catalog;

import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u0011\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0001H\u0096\u0002J\b\u0010\b\u001a\u00020\tH\u0016J\b\u0010\n\u001a\u00020\u000bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/minhub/gamehub/hub/catalog/LenientCp932Charset;", "Ljava/nio/charset/Charset;", "base", "<init>", "(Ljava/nio/charset/Charset;)V", "contains", "", "cs", "newDecoder", "Ljava/nio/charset/CharsetDecoder;", "newEncoder", "Ljava/nio/charset/CharsetEncoder;", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
final class LenientCp932Charset extends Charset {
    private final Charset base;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LenientCp932Charset(Charset base) {
        super("x-lenient-cp932", new String[0]);
        Intrinsics.checkNotNullParameter(base, "base");
        this.base = base;
    }

    @Override // java.nio.charset.Charset
    public boolean contains(Charset cs) {
        Intrinsics.checkNotNullParameter(cs, "cs");
        return this.base.contains(cs);
    }

    @Override // java.nio.charset.Charset
    public CharsetDecoder newDecoder() {
        CharsetDecoder charsetDecoderNewDecoder = this.base.newDecoder();
        CodingErrorAction codingErrorAction = CodingErrorAction.REPLACE;
        final CharsetDecoder charsetDecoderOnUnmappableCharacter = charsetDecoderNewDecoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction);
        return new CharsetDecoder(this, charsetDecoderOnUnmappableCharacter.averageCharsPerByte(), charsetDecoderOnUnmappableCharacter.maxCharsPerByte()) { // from class: com.minhub.gamehub.hub.catalog.LenientCp932Charset.newDecoder.1
            @Override // java.nio.charset.CharsetDecoder
            public CoderResult decodeLoop(ByteBuffer inp, CharBuffer out) {
                Intrinsics.checkNotNullParameter(inp, "inp");
                Intrinsics.checkNotNullParameter(out, "out");
                CoderResult coderResultDecode = charsetDecoderOnUnmappableCharacter.decode(inp, out, false);
                Intrinsics.checkNotNullExpressionValue(coderResultDecode, "decode(...)");
                return coderResultDecode;
            }

            @Override // java.nio.charset.CharsetDecoder
            public CoderResult implFlush(CharBuffer out) {
                Object objM9constructorimpl;
                Intrinsics.checkNotNullParameter(out, "out");
                CharsetDecoder charsetDecoder = charsetDecoderOnUnmappableCharacter;
                try {
                    Result.Companion companion = Result.INSTANCE;
                    charsetDecoder.decode(ByteBuffer.allocate(0), out, true);
                    objM9constructorimpl = Result.m9constructorimpl(charsetDecoder.flush(out));
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
                }
                CoderResult coderResult = CoderResult.UNDERFLOW;
                if (Result.m15isFailureimpl(objM9constructorimpl)) {
                    objM9constructorimpl = coderResult;
                }
                Intrinsics.checkNotNullExpressionValue(objM9constructorimpl, "getOrDefault(...)");
                return (CoderResult) objM9constructorimpl;
            }

            @Override // java.nio.charset.CharsetDecoder
            public void implReset() {
                charsetDecoderOnUnmappableCharacter.reset();
            }
        };
    }

    @Override // java.nio.charset.Charset
    public CharsetEncoder newEncoder() {
        CharsetEncoder charsetEncoderNewEncoder = this.base.newEncoder();
        Intrinsics.checkNotNullExpressionValue(charsetEncoderNewEncoder, "newEncoder(...)");
        return charsetEncoderNewEncoder;
    }
}
