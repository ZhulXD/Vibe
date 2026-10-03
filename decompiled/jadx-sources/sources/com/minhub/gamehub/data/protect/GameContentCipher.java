package com.minhub.gamehub.data.protect;

import E.b;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.collections.ArraysKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001&B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0005J(\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\b\b\u0002\u0010\u0019\u001a\u00020\u001aJ\u0016\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0018J(\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u0007H\u0002J\u0010\u0010!\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020\u0007H\u0002J \u0010#\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010$\u001a\u00020\u00052\u0006\u0010%\u001a\u00020\u0007H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Lcom/minhub/gamehub/data/protect/GameContentCipher;", "", "<init>", "()V", "MAGIC", "", "FORMAT_VERSION", "", "HEADER_BYTES", "NONCE_PREFIX_BYTES", "TAG_BITS", "TAG_BYTES", "CHUNK_PLAIN_BYTES", "CHUNK_CIPHER_BYTES", "hasMagic", "", "header", "encrypt", "", "source", "Ljava/io/InputStream;", "sink", "Ljava/io/OutputStream;", "key", "Ljavax/crypto/SecretKey;", "random", "Ljava/security/SecureRandom;", "decrypt", "chunkCipher", "Ljavax/crypto/Cipher;", "mode", "noncePrefix", "index", "intBytes", "value", "readFully", "into", "limit", "ChunkDecryptingStream", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGameContentCipher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameContentCipher.kt\ncom/minhub/gamehub/data/protect/GameContentCipher\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,187:1\n1740#2,3:188\n1#3:191\n*S KotlinDebug\n*F\n+ 1 GameContentCipher.kt\ncom/minhub/gamehub/data/protect/GameContentCipher\n*L\n61#1:188,3\n*E\n"})
public final class GameContentCipher {
    private static final int CHUNK_CIPHER_BYTES = 65552;
    public static final int CHUNK_PLAIN_BYTES = 65536;
    public static final int FORMAT_VERSION = 1;
    public static final int HEADER_BYTES = 16;
    public static final GameContentCipher INSTANCE = new GameContentCipher();
    private static final byte[] MAGIC = {77, 72, 71, 67};
    private static final int NONCE_PREFIX_BYTES = 8;
    private static final int TAG_BITS = 128;
    private static final int TAG_BYTES = 16;

    private GameContentCipher() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Cipher chunkCipher(int mode, SecretKey key, byte[] noncePrefix, int index) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        byte[] bArrCopyOf = Arrays.copyOf(noncePrefix, 12);
        Intrinsics.checkNotNullExpressionValue(bArrCopyOf, "copyOf(...)");
        byte[] bArrIntBytes = intBytes(index);
        System.arraycopy(bArrIntBytes, 0, bArrCopyOf, 8, 4);
        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
        cipher.init(mode, key, new GCMParameterSpec(128, bArrCopyOf));
        cipher.updateAAD(bArrIntBytes);
        Intrinsics.checkNotNullExpressionValue(cipher, "apply(...)");
        return cipher;
    }

    public static /* synthetic */ void encrypt$default(GameContentCipher gameContentCipher, InputStream inputStream, OutputStream outputStream, SecretKey secretKey, SecureRandom secureRandom, int i3, Object obj) throws IOException {
        if ((i3 & 8) != 0) {
            secureRandom = new SecureRandom();
        }
        gameContentCipher.encrypt(inputStream, outputStream, secretKey, secureRandom);
    }

    private final byte[] intBytes(int value) {
        return new byte[]{(byte) (value >>> 24), (byte) (value >>> 16), (byte) (value >>> 8), (byte) value};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int readFully(InputStream source, byte[] into, int limit) throws IOException {
        int i3 = 0;
        while (i3 < limit) {
            int i4 = source.read(into, i3, limit - i3);
            if (i4 < 0) {
                break;
            }
            i3 += i4;
        }
        return i3;
    }

    public final InputStream decrypt(InputStream source, SecretKey key) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(key, "key");
        byte[] bArr = new byte[16];
        if (readFully(source, bArr, 16) != 16) {
            throw new IOException("Protected file is shorter than its header");
        }
        if (!hasMagic(bArr)) {
            throw new IOException("Not a protected game file");
        }
        int i3 = bArr[4] & UByte.MAX_VALUE;
        if (i3 == 1) {
            return new ChunkDecryptingStream(source, key, ArraysKt.copyOfRange(bArr, 8, 16));
        }
        throw new IOException(b.i(i3, "Unsupported protected-content version "));
    }

    public final void encrypt(InputStream source, OutputStream sink, SecretKey key, SecureRandom random) throws IOException {
        int fully;
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(sink, "sink");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(random, "random");
        byte[] bArr = new byte[8];
        random.nextBytes(bArr);
        sink.write(MAGIC);
        sink.write(1);
        sink.write(new byte[3]);
        sink.write(bArr);
        byte[] bArr2 = new byte[65536];
        int i3 = 0;
        do {
            fully = readFully(source, bArr2, 65536);
            sink.write(chunkCipher(1, key, bArr, i3).doFinal(bArr2, 0, fully));
            i3++;
        } while (fully >= 65536);
    }

    public final boolean hasMagic(byte[] header) {
        Intrinsics.checkNotNullParameter(header, "header");
        int length = header.length;
        byte[] bArr = MAGIC;
        if (length < bArr.length) {
            return false;
        }
        Iterable indices = ArraysKt.getIndices(bArr);
        if ((indices instanceof Collection) && ((Collection) indices).isEmpty()) {
            return true;
        }
        Iterator it = indices.iterator();
        while (it.hasNext()) {
            int iNextInt = ((IntIterator) it).nextInt();
            if (header[iNextInt] != MAGIC[iNextInt]) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\b\u0010\u0010\u001a\u00020\fH\u0016J \u0010\u0010\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\fH\u0016J\b\u0010\u0014\u001a\u00020\fH\u0016J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u000fH\u0002R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/minhub/gamehub/data/protect/GameContentCipher$ChunkDecryptingStream;", "Ljava/io/InputStream;", "source", "key", "Ljavax/crypto/SecretKey;", "noncePrefix", "", "<init>", "(Ljava/io/InputStream;Ljavax/crypto/SecretKey;[B)V", "raw", "chunk", "offset", "", "index", "atEnd", "", "read", "destination", "destinationOffset", "length", "available", "close", "", "fill", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class ChunkDecryptingStream extends InputStream {
        private boolean atEnd;
        private byte[] chunk;
        private int index;
        private final SecretKey key;
        private final byte[] noncePrefix;
        private int offset;
        private final byte[] raw;
        private final InputStream source;

        public ChunkDecryptingStream(InputStream source, SecretKey key, byte[] noncePrefix) {
            Intrinsics.checkNotNullParameter(source, "source");
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(noncePrefix, "noncePrefix");
            this.source = source;
            this.key = key;
            this.noncePrefix = noncePrefix;
            this.raw = new byte[GameContentCipher.CHUNK_CIPHER_BYTES];
            this.chunk = new byte[0];
        }

        private final boolean fill() throws BadPaddingException, IllegalBlockSizeException, IOException {
            if (this.atEnd) {
                return false;
            }
            GameContentCipher gameContentCipher = GameContentCipher.INSTANCE;
            int fully = gameContentCipher.readFully(this.source, this.raw, GameContentCipher.CHUNK_CIPHER_BYTES);
            if (fully < 16) {
                throw new IOException("Protected file ended mid-chunk");
            }
            byte[] bArrDoFinal = gameContentCipher.chunkCipher(2, this.key, this.noncePrefix, this.index).doFinal(this.raw, 0, fully);
            Intrinsics.checkNotNullExpressionValue(bArrDoFinal, "doFinal(...)");
            this.chunk = bArrDoFinal;
            this.offset = 0;
            this.index++;
            if (bArrDoFinal.length < 65536) {
                this.atEnd = true;
            }
            return true;
        }

        @Override // java.io.InputStream
        public int available() {
            return this.chunk.length - this.offset;
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.source.close();
        }

        @Override // java.io.InputStream
        public int read() {
            byte[] bArr = new byte[1];
            if (read(bArr, 0, 1) < 0) {
                return -1;
            }
            return bArr[0] & UByte.MAX_VALUE;
        }

        @Override // java.io.InputStream
        public int read(byte[] destination, int destinationOffset, int length) {
            Intrinsics.checkNotNullParameter(destination, "destination");
            if (length == 0) {
                return 0;
            }
            do {
                int i3 = this.offset;
                byte[] bArr = this.chunk;
                if (i3 < bArr.length) {
                    int iMin = Math.min(length, bArr.length - i3);
                    System.arraycopy(this.chunk, this.offset, destination, destinationOffset, iMin);
                    this.offset += iMin;
                    return iMin;
                }
            } while (fill());
            return -1;
        }
    }
}
