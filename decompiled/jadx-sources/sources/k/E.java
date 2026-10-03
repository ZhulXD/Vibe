package k;

import A1.C0009b;
import A1.C0013d;
import android.R;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Shader;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.AbsSeekBar;
import android.widget.EditText;
import android.widget.TextView;
import androidx.core.graphics.drawable.WrappedDrawable;
import androidx.core.util.Preconditions;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class E {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[] f4672d = {R.attr.indeterminateDrawable, R.attr.progressDrawable};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4673a = 0;
    public final View b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f4674c;

    public E(TextView textView) {
        this.b = (TextView) Preconditions.checkNotNull(textView);
    }

    public KeyListener a(KeyListener keyListener) {
        if (keyListener instanceof NumberKeyListener) {
            return keyListener;
        }
        ((C0013d) ((C0009b) this.f4674c).b).getClass();
        if (keyListener instanceof H.e) {
            return keyListener;
        }
        if (keyListener == null) {
            return null;
        }
        return keyListener instanceof NumberKeyListener ? keyListener : new H.e(keyListener);
    }

    public void b(AttributeSet attributeSet, int i3) {
        switch (this.f4673a) {
            case 0:
                AbsSeekBar absSeekBar = (AbsSeekBar) this.b;
                Z0 z0E = Z0.e(absSeekBar.getContext(), attributeSet, f4672d, i3);
                Drawable drawableC = z0E.c(0);
                if (drawableC != null) {
                    if (drawableC instanceof AnimationDrawable) {
                        AnimationDrawable animationDrawable = (AnimationDrawable) drawableC;
                        int numberOfFrames = animationDrawable.getNumberOfFrames();
                        AnimationDrawable animationDrawable2 = new AnimationDrawable();
                        animationDrawable2.setOneShot(animationDrawable.isOneShot());
                        for (int i4 = 0; i4 < numberOfFrames; i4++) {
                            Drawable drawableE = e(animationDrawable.getFrame(i4), true);
                            drawableE.setLevel(10000);
                            animationDrawable2.addFrame(drawableE, animationDrawable.getDuration(i4));
                        }
                        animationDrawable2.setLevel(10000);
                        drawableC = animationDrawable2;
                    }
                    absSeekBar.setIndeterminateDrawable(drawableC);
                }
                Drawable drawableC2 = z0E.c(1);
                if (drawableC2 != null) {
                    absSeekBar.setProgressDrawable(e(drawableC2, false));
                }
                z0E.f();
                return;
            default:
                TypedArray typedArrayObtainStyledAttributes = ((EditText) this.b).getContext().obtainStyledAttributes(attributeSet, p008d.a.f3846i, i3, 0);
                try {
                    boolean z2 = true;
                    if (typedArrayObtainStyledAttributes.hasValue(14)) {
                        z2 = typedArrayObtainStyledAttributes.getBoolean(14, true);
                        break;
                    }
                    typedArrayObtainStyledAttributes.recycle();
                    d(z2);
                    return;
                } catch (Throwable th) {
                    typedArrayObtainStyledAttributes.recycle();
                    throw th;
                }
        }
    }

    public H.b c(InputConnection inputConnection, EditorInfo editorInfo) {
        C0009b c0009b = (C0009b) this.f4674c;
        if (inputConnection == null) {
            c0009b.getClass();
            inputConnection = null;
        } else {
            C0013d c0013d = (C0013d) c0009b.b;
            c0013d.getClass();
            if (!(inputConnection instanceof H.b)) {
                inputConnection = new H.b((EditText) c0013d.f177c, inputConnection, editorInfo);
            }
        }
        return (H.b) inputConnection;
    }

    public void d(boolean z2) {
        H.i iVar = (H.i) ((C0013d) ((C0009b) this.f4674c).b).f178d;
        if (iVar.f1053d != z2) {
            if (iVar.f1052c != null) {
                androidx.emoji2.text.j jVarA = androidx.emoji2.text.j.a();
                H.h hVar = iVar.f1052c;
                jVarA.getClass();
                Preconditions.checkNotNull(hVar, "initCallback cannot be null");
                ReentrantReadWriteLock reentrantReadWriteLock = jVarA.f2877a;
                reentrantReadWriteLock.writeLock().lock();
                try {
                    jVarA.b.remove(hVar);
                    reentrantReadWriteLock.writeLock().unlock();
                } catch (Throwable th) {
                    reentrantReadWriteLock.writeLock().unlock();
                    throw th;
                }
            }
            iVar.f1053d = z2;
            if (z2) {
                H.i.a(iVar.b, androidx.emoji2.text.j.a().b());
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Drawable e(Drawable drawable, boolean z2) {
        if (drawable instanceof WrappedDrawable) {
            WrappedDrawable wrappedDrawable = (WrappedDrawable) drawable;
            Drawable wrappedDrawable2 = wrappedDrawable.getWrappedDrawable();
            if (wrappedDrawable2 != null) {
                wrappedDrawable.setWrappedDrawable(e(wrappedDrawable2, z2));
                return drawable;
            }
        } else {
            if (drawable instanceof LayerDrawable) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                int numberOfLayers = layerDrawable.getNumberOfLayers();
                Drawable[] drawableArr = new Drawable[numberOfLayers];
                for (int i3 = 0; i3 < numberOfLayers; i3++) {
                    int id = layerDrawable.getId(i3);
                    drawableArr[i3] = e(layerDrawable.getDrawable(i3), id == 16908301 || id == 16908303);
                }
                LayerDrawable layerDrawable2 = new LayerDrawable(drawableArr);
                for (int i4 = 0; i4 < numberOfLayers; i4++) {
                    layerDrawable2.setId(i4, layerDrawable.getId(i4));
                    layerDrawable2.setLayerGravity(i4, layerDrawable.getLayerGravity(i4));
                    layerDrawable2.setLayerWidth(i4, layerDrawable.getLayerWidth(i4));
                    layerDrawable2.setLayerHeight(i4, layerDrawable.getLayerHeight(i4));
                    layerDrawable2.setLayerInsetLeft(i4, layerDrawable.getLayerInsetLeft(i4));
                    layerDrawable2.setLayerInsetRight(i4, layerDrawable.getLayerInsetRight(i4));
                    layerDrawable2.setLayerInsetTop(i4, layerDrawable.getLayerInsetTop(i4));
                    layerDrawable2.setLayerInsetBottom(i4, layerDrawable.getLayerInsetBottom(i4));
                    layerDrawable2.setLayerInsetStart(i4, layerDrawable.getLayerInsetStart(i4));
                    layerDrawable2.setLayerInsetEnd(i4, layerDrawable.getLayerInsetEnd(i4));
                }
                return layerDrawable2;
            }
            if (drawable instanceof BitmapDrawable) {
                BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
                Bitmap bitmap = bitmapDrawable.getBitmap();
                if (((Bitmap) this.f4674c) == null) {
                    this.f4674c = bitmap;
                }
                ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null));
                shapeDrawable.getPaint().setShader(new BitmapShader(bitmap, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP));
                shapeDrawable.getPaint().setColorFilter(bitmapDrawable.getPaint().getColorFilter());
                return z2 ? new ClipDrawable(shapeDrawable, 3, 1) : shapeDrawable;
            }
        }
        return drawable;
    }

    public E(AbsSeekBar absSeekBar) {
        this.b = absSeekBar;
    }

    public E(EditText editText) {
        this.b = editText;
        C0009b c0009b = new C0009b();
        Preconditions.checkNotNull(editText, "editText cannot be null");
        c0009b.b = new C0013d(editText);
        this.f4674c = c0009b;
    }
}
