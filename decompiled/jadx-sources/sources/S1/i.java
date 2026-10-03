package S1;

import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.SNIHostName;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class i extends SSLSocketFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f2064a;
    public final SSLSocketFactory b;

    public i(String host, SSLSocketFactory delegate) {
        Intrinsics.checkNotNullParameter(host, "host");
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.f2064a = host;
        this.b = delegate;
    }

    public final void a(Socket socket) {
        if (socket instanceof SSLSocket) {
            SSLSocket sSLSocket = (SSLSocket) socket;
            SSLParameters sSLParameters = sSLSocket.getSSLParameters();
            sSLParameters.setServerNames(CollectionsKt.listOf(new SNIHostName(this.f2064a)));
            sSLSocket.setSSLParameters(sSLParameters);
        }
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final Socket createSocket(Socket socket, String str, int i3, boolean z2) throws IOException {
        Socket socketCreateSocket = this.b.createSocket(socket, this.f2064a, i3, z2);
        Intrinsics.checkNotNullExpressionValue(socketCreateSocket, "createSocket(...)");
        a(socketCreateSocket);
        return socketCreateSocket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getDefaultCipherSuites() {
        String[] defaultCipherSuites = this.b.getDefaultCipherSuites();
        Intrinsics.checkNotNullExpressionValue(defaultCipherSuites, "getDefaultCipherSuites(...)");
        return defaultCipherSuites;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getSupportedCipherSuites() {
        String[] supportedCipherSuites = this.b.getSupportedCipherSuites();
        Intrinsics.checkNotNullExpressionValue(supportedCipherSuites, "getSupportedCipherSuites(...)");
        return supportedCipherSuites;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i3) throws IOException {
        Socket socketCreateSocket = this.b.createSocket(str, i3);
        Intrinsics.checkNotNullExpressionValue(socketCreateSocket, "createSocket(...)");
        a(socketCreateSocket);
        return socketCreateSocket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i3, InetAddress inetAddress, int i4) throws IOException {
        Socket socketCreateSocket = this.b.createSocket(str, i3, inetAddress, i4);
        Intrinsics.checkNotNullExpressionValue(socketCreateSocket, "createSocket(...)");
        a(socketCreateSocket);
        return socketCreateSocket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i3) throws IOException {
        Socket socketCreateSocket = this.b.createSocket(inetAddress, i3);
        Intrinsics.checkNotNullExpressionValue(socketCreateSocket, "createSocket(...)");
        a(socketCreateSocket);
        return socketCreateSocket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i3, InetAddress inetAddress2, int i4) throws IOException {
        Socket socketCreateSocket = this.b.createSocket(inetAddress, i3, inetAddress2, i4);
        Intrinsics.checkNotNullExpressionValue(socketCreateSocket, "createSocket(...)");
        a(socketCreateSocket);
        return socketCreateSocket;
    }
}
