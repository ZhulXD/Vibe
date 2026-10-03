package org.godotengine.godot.utils;

import java.security.MessageDigest;
import java.util.Random;
import kotlin.UByte;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class Crypt {
    public static long createAbsRandomLong() {
        return Math.abs(createRandomLong());
    }

    public static String createRandomHash() {
        return md5(Long.toString(createRandomLong()));
    }

    public static long createRandomLong() {
        return new Random().nextLong();
    }

    public static String md5(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            byte[] bArrDigest = messageDigest.digest();
            StringBuilder sb = new StringBuilder();
            for (byte b : bArrDigest) {
                sb.append(Integer.toHexString(b & UByte.MAX_VALUE));
            }
            return sb.toString();
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }
}
