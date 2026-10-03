package com.minhub.gamehub.hub;

import B1.C0046b;
import C1.C0095p1;
import C1.C0098q1;
import C1.C0100r1;
import C1.V;
import S1.c;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import androidx.viewpager2.widget.ViewPager2;
import com.minhub.gamehub.R;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lcom/minhub/gamehub/hub/ImageViewerActivity;", "LS1/c;", "<init>", "()V", "Y0/e", "C1/p1", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nImageViewerActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageViewerActivity.kt\ncom/minhub/gamehub/hub/ImageViewerActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,148:1\n1#2:149\n*E\n"})
public final class ImageViewerActivity extends c {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ int f3783e = 0;

    public static final void m(boolean z2, LinearLayout linearLayout, TextView textView, ArrayList arrayList, int i3) {
        if (z2) {
            int childCount = linearLayout.getChildCount();
            int i4 = 0;
            while (i4 < childCount) {
                linearLayout.getChildAt(i4).setAlpha(i4 == i3 ? 1.0f : 0.35f);
                i4++;
            }
            return;
        }
        textView.setText((i3 + 1) + " / " + arrayList.size());
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ArrayList<String> stringArrayListExtra = getIntent().getStringArrayListExtra("image_urls");
        if (stringArrayListExtra == null) {
            finish();
            return;
        }
        int intExtra = getIntent().getIntExtra("start_index", 0);
        String stringExtra = getIntent().getStringExtra("viewer_title");
        if (stringExtra == null) {
            stringExtra = "";
        }
        boolean booleanExtra = getIntent().getBooleanExtra("is_local", false);
        setContentView(R.layout.activity_image_viewer);
        ViewPager2 viewPager2 = (ViewPager2) findViewById(R.id.pager);
        TextView textView = (TextView) findViewById(R.id.tv_page);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.dots_container);
        TextView textView2 = (TextView) findViewById(R.id.tv_title);
        ImageButton imageButton = (ImageButton) findViewById(R.id.btn_close);
        ViewCompat.setOnApplyWindowInsetsListener(findViewById(R.id.top_bar), new C0046b(1, this));
        textView2.setText(stringExtra);
        textView2.setVisibility(!StringsKt.isBlank(stringExtra) ? 0 : 8);
        imageButton.setOnClickListener(new V(1, this));
        boolean z2 = stringArrayListExtra.size() <= 10;
        linearLayout.setVisibility(z2 ? 0 : 8);
        textView.setVisibility(z2 ? 8 : 0);
        if (z2) {
            int i3 = (int) (7 * getResources().getDisplayMetrics().density);
            int i4 = (int) (8 * getResources().getDisplayMetrics().density);
            int size = stringArrayListExtra.size();
            int i5 = 0;
            while (i5 < size) {
                View view = new View(this);
                view.setBackgroundResource(R.drawable.dot_indicator);
                view.setAlpha(i5 == intExtra ? 1.0f : 0.35f);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i3, i3);
                if (i5 < CollectionsKt.getLastIndex(stringArrayListExtra)) {
                    layoutParams.setMarginEnd(i4);
                }
                view.setLayoutParams(layoutParams);
                linearLayout.addView(view);
                i5++;
            }
        }
        m(z2, linearLayout, textView, stringArrayListExtra, intExtra);
        viewPager2.setAdapter(new C0095p1(stringArrayListExtra, booleanExtra));
        viewPager2.b(intExtra, false);
        ((ArrayList) viewPager2.f3060d.b).add(new C0098q1(z2, linearLayout, textView, stringArrayListExtra));
        getOnBackPressedDispatcher().addCallback(this, new C0100r1(this));
    }
}
