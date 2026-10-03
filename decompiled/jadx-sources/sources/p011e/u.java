package p011e;

import android.content.res.Configuration;
import android.os.LocaleList;
import androidx.core.os.LocaleListCompat;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class u {
    public static void a(Configuration configuration, Configuration configuration2, Configuration configuration3) {
        LocaleList locales = configuration.getLocales();
        LocaleList locales2 = configuration2.getLocales();
        if (locales.equals(locales2)) {
            return;
        }
        configuration3.setLocales(locales2);
        configuration3.locale = configuration2.locale;
    }

    public static LocaleListCompat b(Configuration configuration) {
        return LocaleListCompat.forLanguageTags(configuration.getLocales().toLanguageTags());
    }

    public static void c(LocaleListCompat localeListCompat) {
        LocaleList.setDefault(LocaleList.forLanguageTags(localeListCompat.toLanguageTags()));
    }

    public static void d(Configuration configuration, LocaleListCompat localeListCompat) {
        configuration.setLocales(LocaleList.forLanguageTags(localeListCompat.toLanguageTags()));
    }
}
