package C1;

import A1.RunnableC0034o;
import android.animation.ObjectAnimator;
import android.os.Build;
import android.util.Property;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.OvershootInterpolator;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.minhub.gamehub.R;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class V1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextView f513a;
    public final LinearLayout b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f514c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final TextView f515d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LinearLayout f516e;
    public boolean f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f517h;

    public V1(TextView title, LinearLayout dotsRow, List dots, TextView hint, LinearLayout pad) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(dotsRow, "dotsRow");
        Intrinsics.checkNotNullParameter(dots, "dots");
        Intrinsics.checkNotNullParameter(hint, "hint");
        Intrinsics.checkNotNullParameter(pad, "pad");
        this.f513a = title;
        this.b = dotsRow;
        this.f514c = dots;
        this.f515d = hint;
        this.f516e = pad;
        this.f517h = title.getResources().getDisplayMetrics().density;
    }

    public final void a(ImageButton v2, Function0 onDelete, final Function0 onClear) {
        Intrinsics.checkNotNullParameter(v2, "key");
        Intrinsics.checkNotNullParameter(onDelete, "onDelete");
        Intrinsics.checkNotNullParameter(onClear, "onClear");
        Intrinsics.checkNotNullParameter(v2, "v");
        v2.setOnTouchListener(new S1());
        v2.setOnClickListener(new ViewOnClickListenerC0075j(14, this, onDelete));
        v2.setOnLongClickListener(new View.OnLongClickListener() { // from class: C1.R1
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                if (this.b.f) {
                    return true;
                }
                view.performHapticFeedback(0);
                onClear.invoke();
                return true;
            }
        });
    }

    public final void b(List keys, final Function1 onDigit) {
        Intrinsics.checkNotNullParameter(keys, "keys");
        Intrinsics.checkNotNullParameter(onDigit, "onDigit");
        final int i3 = 0;
        for (Object obj : keys) {
            int i4 = i3 + 1;
            if (i3 < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            View v2 = (View) obj;
            Intrinsics.checkNotNullParameter(v2, "v");
            v2.setOnTouchListener(new S1());
            v2.setOnClickListener(new View.OnClickListener() { // from class: C1.T1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    if (this.b.f) {
                        return;
                    }
                    view.performHapticFeedback(3);
                    onDigit.invoke(String.valueOf(i3));
                }
            });
            i3 = i4;
        }
    }

    public final void c(CharSequence text) {
        Intrinsics.checkNotNullParameter(text, "text");
        TextView textView = this.f513a;
        if (Intrinsics.areEqual(textView.getText(), text)) {
            return;
        }
        textView.animate().setStartDelay(0L).alpha(0.0f).translationY(-(10.0f * this.f517h)).setDuration(130L).setInterpolator(new AccelerateInterpolator()).withEndAction(new RunnableC0078k(5, this, text)).start();
    }

    public final void d(String message, Function0 after) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(after, "after");
        this.f = true;
        int i3 = Build.VERSION.SDK_INT >= 30 ? 17 : 0;
        LinearLayout linearLayout = this.b;
        linearLayout.performHapticFeedback(i3);
        TextView textView = this.f515d;
        textView.setText(message);
        textView.setVisibility(0);
        textView.setAlpha(0.0f);
        textView.animate().setStartDelay(0L).alpha(1.0f).setDuration(180L).start();
        float f = 14.0f * this.f517h;
        float f3 = -f;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(linearLayout, (Property<LinearLayout, Float>) View.TRANSLATION_X, 0.0f, f3, f, f3 * 0.75f, 0.75f * f, f3 * 0.4f, 0.4f * f, 0.0f);
        objectAnimatorOfFloat.setDuration(440L);
        objectAnimatorOfFloat.addListener(new U1(this, after));
        objectAnimatorOfFloat.start();
    }

    public final void e() {
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        listCreateListBuilder.add(this.f513a);
        listCreateListBuilder.add(this.b);
        LinearLayout linearLayout = this.f516e;
        int childCount = linearLayout.getChildCount();
        int i3 = 0;
        for (int i4 = 0; i4 < childCount; i4++) {
            listCreateListBuilder.add(linearLayout.getChildAt(i4));
        }
        for (Object obj : CollectionsKt.build(listCreateListBuilder)) {
            int i5 = i3 + 1;
            if (i3 < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            View view = (View) obj;
            view.setAlpha(0.0f);
            view.setTranslationY(28.0f * this.f517h);
            view.animate().setStartDelay((((long) i3) * 45) + 40).alpha(1.0f).translationY(0.0f).setDuration(420L).setInterpolator(new DecelerateInterpolator(2.0f)).start();
            i3 = i5;
        }
    }

    public final void f(int i3) {
        int i4 = 0;
        for (Object obj : this.f514c) {
            int i5 = i4 + 1;
            if (i4 < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            ImageView imageView = (ImageView) obj;
            boolean z2 = i4 < i3;
            boolean z3 = i4 < this.g;
            imageView.setImageResource(z2 ? R.drawable.ic_dot_filled : R.drawable.ic_dot_empty);
            if (z2 && !z3) {
                imageView.setScaleX(0.3f);
                imageView.setScaleY(0.3f);
                imageView.animate().setStartDelay(0L).scaleX(1.0f).scaleY(1.0f).setDuration(240L).setInterpolator(new OvershootInterpolator(2.5f)).start();
            } else if (!z2 && z3) {
                imageView.setScaleX(1.3f);
                imageView.setScaleY(1.3f);
                imageView.animate().setStartDelay(0L).scaleX(1.0f).scaleY(1.0f).setDuration(200L).setInterpolator(new DecelerateInterpolator()).start();
            }
            i4 = i5;
        }
        this.g = i3;
        if (i3 > 0) {
            TextView textView = this.f515d;
            if (textView.getVisibility() != 0) {
                return;
            }
            textView.animate().setStartDelay(0L).alpha(0.0f).setDuration(160L).withEndAction(new Q1(this, 0)).start();
        }
    }

    public final void g(Function0 after) {
        Intrinsics.checkNotNullParameter(after, "after");
        this.f = true;
        int i3 = Build.VERSION.SDK_INT >= 30 ? 16 : 1;
        LinearLayout linearLayout = this.b;
        linearLayout.performHapticFeedback(i3);
        List list = this.f514c;
        f(list.size());
        int i4 = 0;
        for (Object obj : list) {
            int i5 = i4 + 1;
            if (i4 < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            ImageView imageView = (ImageView) obj;
            imageView.animate().setStartDelay(((long) i4) * 50).scaleX(1.4f).scaleY(1.4f).setDuration(150L).setInterpolator(new DecelerateInterpolator()).withEndAction(new RunnableC0068g1(3, imageView)).start();
            i4 = i5;
        }
        linearLayout.postDelayed(new RunnableC0034o(1, after), 360L);
    }
}
