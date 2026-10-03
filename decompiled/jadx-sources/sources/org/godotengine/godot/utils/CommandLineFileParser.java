package org.godotengine.godot.utils;

import java.io.InputStream;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0012\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\bJ\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0002¨\u0006\r"}, d2 = {"Lorg/godotengine/godot/utils/CommandLineFileParser;", "", "<init>", "()V", "parseCommandLine", "", "", "inputStream", "Ljava/io/InputStream;", "decodeHeaderIntValue", "", "headerBytes", "", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CommandLineFileParser {
    public static final CommandLineFileParser INSTANCE = new CommandLineFileParser();

    private CommandLineFileParser() {
    }

    private final int decodeHeaderIntValue(byte[] headerBytes) {
        return (headerBytes[0] & UByte.MAX_VALUE) | ((headerBytes[3] & UByte.MAX_VALUE) << 24) | ((headerBytes[2] & UByte.MAX_VALUE) << 16) | ((headerBytes[1] & UByte.MAX_VALUE) << 8);
    }

    public final List<String> parseCommandLine(InputStream inputStream) {
        Intrinsics.checkNotNullParameter(inputStream, "inputStream");
        try {
            byte[] bArr = new byte[4];
            if (inputStream.read(bArr) < 4) {
                return new ArrayList();
            }
            int iDecodeHeaderIntValue = decodeHeaderIntValue(bArr);
            ArrayList arrayList = new ArrayList(iDecodeHeaderIntValue);
            for (int i3 = 0; i3 < iDecodeHeaderIntValue; i3++) {
                if (inputStream.read(bArr) < 4) {
                    return new ArrayList();
                }
                int iDecodeHeaderIntValue2 = decodeHeaderIntValue(bArr);
                if (iDecodeHeaderIntValue2 > 65535) {
                    return new ArrayList();
                }
                byte[] bArr2 = new byte[iDecodeHeaderIntValue2];
                if (inputStream.read(bArr2) == iDecodeHeaderIntValue2) {
                    Charset UTF_8 = StandardCharsets.UTF_8;
                    Intrinsics.checkNotNullExpressionValue(UTF_8, "UTF_8");
                    arrayList.add(new String(bArr2, UTF_8));
                }
            }
            return arrayList;
        } catch (Exception unused) {
            return new ArrayList();
        }
    }
}
