package com.bumptech.glide.load.data;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class l implements e {
    public final p025j0.g b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f3251c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public HttpURLConnection f3252d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public InputStream f3253e;
    public volatile boolean f;

    public l(p025j0.g gVar, int i3) {
        this.b = gVar;
        this.f3251c = i3;
    }

    public static int c(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getResponseCode();
        } catch (IOException e2) {
            if (!Log.isLoggable("HttpUrlFetcher", 3)) {
                return -1;
            }
            Log.d("HttpUrlFetcher", "Failed to get a response code", e2);
            return -1;
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final Class a() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void b() {
        InputStream inputStream = this.f3253e;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
        HttpURLConnection httpURLConnection = this.f3252d;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        this.f3252d = null;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void cancel() {
        this.f = true;
    }

    @Override // com.bumptech.glide.load.data.e
    public final int d() {
        return 2;
    }

    public final InputStream e(URL url, int i3, URL url2, Map map) throws p009d0.c {
        if (i3 >= 5) {
            throw new p009d0.c("Too many (> 5) redirects!", -1, null);
        }
        if (url2 != null) {
            try {
                if (url.toURI().equals(url2.toURI())) {
                    throw new p009d0.c("In re-direct loop", -1, null);
                }
            } catch (URISyntaxException unused) {
            }
        }
        int i4 = this.f3251c;
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            for (Map.Entry entry : map.entrySet()) {
                httpURLConnection.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
            }
            httpURLConnection.setConnectTimeout(i4);
            httpURLConnection.setReadTimeout(i4);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setInstanceFollowRedirects(false);
            this.f3252d = httpURLConnection;
            try {
                httpURLConnection.connect();
                this.f3253e = this.f3252d.getInputStream();
                if (this.f) {
                    return null;
                }
                int iC = c(this.f3252d);
                int i5 = iC / 100;
                if (i5 == 2) {
                    HttpURLConnection httpURLConnection2 = this.f3252d;
                    try {
                        if (TextUtils.isEmpty(httpURLConnection2.getContentEncoding())) {
                            this.f3253e = new p063y0.d(httpURLConnection2.getInputStream(), httpURLConnection2.getContentLength());
                        } else {
                            if (Log.isLoggable("HttpUrlFetcher", 3)) {
                                Log.d("HttpUrlFetcher", "Got non empty content encoding: " + httpURLConnection2.getContentEncoding());
                            }
                            this.f3253e = httpURLConnection2.getInputStream();
                        }
                        return this.f3253e;
                    } catch (IOException e2) {
                        throw new p009d0.c("Failed to obtain InputStream", c(httpURLConnection2), e2);
                    }
                }
                if (i5 != 3) {
                    if (iC == -1) {
                        throw new p009d0.c("Http request failed", iC, null);
                    }
                    try {
                        throw new p009d0.c(this.f3252d.getResponseMessage(), iC, null);
                    } catch (IOException e3) {
                        throw new p009d0.c("Failed to get a response message", iC, e3);
                    }
                }
                String headerField = this.f3252d.getHeaderField("Location");
                if (TextUtils.isEmpty(headerField)) {
                    throw new p009d0.c("Received empty or null redirect url", iC, null);
                }
                try {
                    URL url3 = new URL(url, headerField);
                    b();
                    return e(url3, i3 + 1, url, map);
                } catch (MalformedURLException e4) {
                    throw new p009d0.c(kotlin.collections.unsigned.a.o("Bad redirect url: ", headerField), iC, e4);
                }
            } catch (IOException e5) {
                throw new p009d0.c("Failed to connect or obtain data", c(this.f3252d), e5);
            }
        } catch (IOException e6) {
            throw new p009d0.c("URL.openConnection threw", 0, e6);
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final void f(com.bumptech.glide.g gVar, d dVar) {
        p025j0.g gVar2 = this.b;
        int i3 = p063y0.h.b;
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        try {
            dVar.e(e(gVar2.d(), 0, null, gVar2.b.a()));
        } catch (IOException e2) {
            if (Log.isLoggable("HttpUrlFetcher", 3)) {
                Log.d("HttpUrlFetcher", "Failed to load data for url", e2);
            }
            dVar.c(e2);
        } finally {
            if (Log.isLoggable("HttpUrlFetcher", 2)) {
                Log.v("HttpUrlFetcher", "Finished http url fetcher fetch in " + p063y0.h.a(jElapsedRealtimeNanos));
            }
        }
    }
}
