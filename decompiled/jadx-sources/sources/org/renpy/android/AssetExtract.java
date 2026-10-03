package org.renpy.android;

import A1.C0009b;
import android.app.Activity;
import android.content.res.AssetManager;
import android.util.Log;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPInputStream;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class AssetExtract {
    private Activity mActivity;
    private AssetManager mAssetManager;

    public AssetExtract(Activity activity) {
        this.mAssetManager = null;
        this.mActivity = activity;
        this.mAssetManager = activity.getAssets();
    }

    public boolean extractTar(String str, String str2) {
        BufferedOutputStream bufferedOutputStream;
        byte[] bArr = new byte[1048576];
        Log.i("python", "extracting " + str + " to " + str2);
        try {
            InputStream inputStreamOpen = this.mAssetManager.open(str, 2);
            i2.b bVar = new i2.b(new BufferedInputStream(new GZIPInputStream(new BufferedInputStream(inputStreamOpen, 8192)), 8192));
            while (true) {
                try {
                    C0009b c0009bA = bVar.a();
                    if (c0009bA == null) {
                        try {
                            bVar.close();
                            inputStreamOpen.close();
                            return true;
                        } catch (IOException unused) {
                            return true;
                        }
                    }
                    i2.a aVar = (i2.a) c0009bA.b;
                    if (aVar == null || !(aVar.f4458c == 53 || aVar.f4457a.toString().endsWith("/"))) {
                        String str3 = str2 + "/" + c0009bA.m();
                        try {
                            bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(str3), 8192);
                        } catch (FileNotFoundException | SecurityException unused2) {
                            bufferedOutputStream = null;
                        }
                        if (bufferedOutputStream == null) {
                            Log.e("python", "could not open " + str3);
                            return false;
                        }
                        while (true) {
                            try {
                                int i3 = bVar.read(bArr);
                                if (i3 == -1) {
                                    break;
                                }
                                bufferedOutputStream.write(bArr, 0, i3);
                            } catch (IOException e2) {
                                Log.e("python", "extracting tar", e2);
                                return false;
                            }
                        }
                        bufferedOutputStream.flush();
                        bufferedOutputStream.close();
                    } else {
                        try {
                            new File(str2 + "/" + c0009bA.m()).mkdirs();
                        } catch (SecurityException unused3) {
                        }
                    }
                } catch (IOException e3) {
                    Log.e("python", "extracting tar", e3);
                    return false;
                }
            }
        } catch (IOException e4) {
            Log.e("python", "opening up extract tar", e4);
            return false;
        }
    }
}
