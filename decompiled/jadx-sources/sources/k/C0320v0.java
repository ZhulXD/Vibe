package k;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.widget.ListViewAutoScrollHelper;
import com.minhub.gamehub.R;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: renamed from: k.v0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class C0320v0 extends ListView {
    public final Rect b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4925c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4926d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4927e;
    public int f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public C0316t0 f4928h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f4929i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f4930j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f4931k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ListViewAutoScrollHelper f4932l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public A1.u0 f4933m;

    public C0320v0(Context context, boolean z2) {
        super(context, null, R.attr.dropDownListViewStyle);
        this.b = new Rect();
        this.f4925c = 0;
        this.f4926d = 0;
        this.f4927e = 0;
        this.f = 0;
        this.f4930j = z2;
        setCacheColorHint(0);
    }

    public final int a(int i3, int i4) {
        int listPaddingTop = getListPaddingTop();
        int listPaddingBottom = getListPaddingBottom();
        int dividerHeight = getDividerHeight();
        Drawable divider = getDivider();
        ListAdapter adapter = getAdapter();
        if (adapter == null) {
            return listPaddingTop + listPaddingBottom;
        }
        int measuredHeight = listPaddingTop + listPaddingBottom;
        if (dividerHeight <= 0 || divider == null) {
            dividerHeight = 0;
        }
        int count = adapter.getCount();
        int i5 = 0;
        View view = null;
        for (int i6 = 0; i6 < count; i6++) {
            int itemViewType = adapter.getItemViewType(i6);
            if (itemViewType != i5) {
                view = null;
                i5 = itemViewType;
            }
            view = adapter.getView(i6, view, this);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = generateDefaultLayoutParams();
                view.setLayoutParams(layoutParams);
            }
            int i7 = layoutParams.height;
            view.measure(i3, i7 > 0 ? View.MeasureSpec.makeMeasureSpec(i7, 1073741824) : View.MeasureSpec.makeMeasureSpec(0, 0));
            view.forceLayout();
            if (i6 > 0) {
                measuredHeight += dividerHeight;
            }
            measuredHeight += view.getMeasuredHeight();
            if (measuredHeight >= i4) {
                return i4;
            }
        }
        return measuredHeight;
    }

    /* JADX WARN: Code duplicated, block: B:82:0x014c  */
    /* JADX WARN: Code duplicated, block: B:84:0x0162  */
    /* JADX WARN: Code duplicated, block: B:86:0x0167  */
    /* JADX WARN: Code duplicated, block: B:88:0x016b  */
    /* JADX WARN: Code duplicated, block: B:90:0x017e  */
    /* JADX WARN: Code duplicated, block: B:92:0x0182  */
    /* JADX WARN: Code duplicated, block: B:9:0x0015  */
    public final boolean b(MotionEvent motionEvent, int i3) {
        boolean z2;
        boolean zA;
        View childAt;
        View childAt2;
        ListViewAutoScrollHelper listViewAutoScrollHelper;
        int actionMasked = motionEvent.getActionMasked();
        boolean z3 = false;
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                z2 = true;
            } else if (actionMasked != 3) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2 || z3) {
                this.f4931k = false;
                setPressed(false);
                drawableStateChanged();
                childAt2 = getChildAt(this.g - getFirstVisiblePosition());
                if (childAt2 != null) {
                    childAt2.setPressed(false);
                }
            }
            if (z2) {
                if (this.f4932l == null) {
                    this.f4932l = new ListViewAutoScrollHelper(this);
                }
                this.f4932l.setEnabled(true);
                this.f4932l.onTouch(this, motionEvent);
            } else {
                listViewAutoScrollHelper = this.f4932l;
                if (listViewAutoScrollHelper != null) {
                    listViewAutoScrollHelper.setEnabled(false);
                }
            }
            return z2;
        }
        z2 = false;
        int iFindPointerIndex = motionEvent.findPointerIndex(i3);
        if (iFindPointerIndex < 0) {
            z2 = false;
        } else {
            int x2 = (int) motionEvent.getX(iFindPointerIndex);
            int y2 = (int) motionEvent.getY(iFindPointerIndex);
            int iPointToPosition = pointToPosition(x2, y2);
            if (iPointToPosition == -1) {
                z3 = true;
            } else {
                View childAt3 = getChildAt(iPointToPosition - getFirstVisiblePosition());
                float f = x2;
                float f3 = y2;
                this.f4931k = true;
                int i4 = Build.VERSION.SDK_INT;
                AbstractC0311q0.a(this, f, f3);
                if (!isPressed()) {
                    setPressed(true);
                }
                layoutChildren();
                int i5 = this.g;
                if (i5 != -1 && (childAt = getChildAt(i5 - getFirstVisiblePosition())) != null && childAt != childAt3 && childAt.isPressed()) {
                    childAt.setPressed(false);
                }
                this.g = iPointToPosition;
                AbstractC0311q0.a(childAt3, f - childAt3.getLeft(), f3 - childAt3.getTop());
                if (!childAt3.isPressed()) {
                    childAt3.setPressed(true);
                }
                Drawable selector = getSelector();
                boolean z4 = (selector == null || iPointToPosition == -1) ? false : true;
                if (z4) {
                    selector.setVisible(false, false);
                }
                int left = childAt3.getLeft();
                int top = childAt3.getTop();
                int right = childAt3.getRight();
                int bottom = childAt3.getBottom();
                Rect rect = this.b;
                rect.set(left, top, right, bottom);
                rect.left -= this.f4925c;
                rect.top -= this.f4926d;
                rect.right += this.f4927e;
                rect.bottom += this.f;
                if (i4 >= 33) {
                    zA = AbstractC0314s0.a(this);
                } else {
                    Field field = AbstractC0318u0.f4920a;
                    if (field != null) {
                        try {
                            zA = field.getBoolean(this);
                        } catch (IllegalAccessException e2) {
                            e2.printStackTrace();
                            zA = false;
                        }
                    } else {
                        zA = false;
                    }
                }
                if (childAt3.isEnabled() != zA) {
                    boolean z5 = !zA;
                    if (Build.VERSION.SDK_INT >= 33) {
                        AbstractC0314s0.b(this, z5);
                    } else {
                        Field field2 = AbstractC0318u0.f4920a;
                        if (field2 != null) {
                            try {
                                field2.set(this, Boolean.valueOf(z5));
                            } catch (IllegalAccessException e3) {
                                e3.printStackTrace();
                            }
                        }
                    }
                    if (iPointToPosition != -1) {
                        refreshDrawableState();
                    }
                }
                if (z4) {
                    float fExactCenterX = rect.exactCenterX();
                    float fExactCenterY = rect.exactCenterY();
                    selector.setVisible(getVisibility() == 0, false);
                    DrawableCompat.setHotspot(selector, fExactCenterX, fExactCenterY);
                }
                Drawable selector2 = getSelector();
                if (selector2 != null && iPointToPosition != -1) {
                    DrawableCompat.setHotspot(selector2, f, f3);
                }
                C0316t0 c0316t0 = this.f4928h;
                if (c0316t0 != null) {
                    c0316t0.f4915c = false;
                }
                refreshDrawableState();
                if (actionMasked == 1) {
                    performItemClick(childAt3, iPointToPosition, getItemIdAtPosition(iPointToPosition));
                }
                z2 = true;
                z3 = false;
            }
        }
        if (z2) {
            this.f4931k = false;
            setPressed(false);
            drawableStateChanged();
            childAt2 = getChildAt(this.g - getFirstVisiblePosition());
            if (childAt2 != null) {
                childAt2.setPressed(false);
            }
        } else {
            this.f4931k = false;
            setPressed(false);
            drawableStateChanged();
            childAt2 = getChildAt(this.g - getFirstVisiblePosition());
            if (childAt2 != null) {
                childAt2.setPressed(false);
            }
        }
        if (z2) {
            if (this.f4932l == null) {
                this.f4932l = new ListViewAutoScrollHelper(this);
            }
            this.f4932l.setEnabled(true);
            this.f4932l.onTouch(this, motionEvent);
        } else {
            listViewAutoScrollHelper = this.f4932l;
            if (listViewAutoScrollHelper != null) {
                listViewAutoScrollHelper.setEnabled(false);
            }
        }
        return z2;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        Drawable selector;
        Rect rect = this.b;
        if (!rect.isEmpty() && (selector = getSelector()) != null) {
            selector.setBounds(rect);
            selector.draw(canvas);
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        if (this.f4933m != null) {
            return;
        }
        super.drawableStateChanged();
        C0316t0 c0316t0 = this.f4928h;
        if (c0316t0 != null) {
            c0316t0.f4915c = true;
        }
        Drawable selector = getSelector();
        if (selector != null && this.f4931k && isPressed()) {
            selector.setState(getDrawableState());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean hasFocus() {
        return this.f4930j || super.hasFocus();
    }

    @Override // android.view.View
    public final boolean hasWindowFocus() {
        return this.f4930j || super.hasWindowFocus();
    }

    @Override // android.view.View
    public final boolean isFocused() {
        return this.f4930j || super.isFocused();
    }

    @Override // android.view.View
    public final boolean isInTouchMode() {
        return (this.f4930j && this.f4929i) || super.isInTouchMode();
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        this.f4933m = null;
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int i3 = Build.VERSION.SDK_INT;
        if (i3 < 26) {
            return super.onHoverEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 10 && this.f4933m == null) {
            A1.u0 u0Var = new A1.u0(12, this);
            this.f4933m = u0Var;
            post(u0Var);
        }
        boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked != 9 && actionMasked != 7) {
            setSelection(-1);
            return zOnHoverEvent;
        }
        int iPointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        if (iPointToPosition != -1 && iPointToPosition != getSelectedItemPosition()) {
            View childAt = getChildAt(iPointToPosition - getFirstVisiblePosition());
            if (childAt.isEnabled()) {
                requestFocus();
                if (i3 < 30 || !AbstractC0312r0.f4908d) {
                    setSelectionFromTop(iPointToPosition, childAt.getTop() - getTop());
                } else {
                    try {
                        AbstractC0312r0.f4906a.invoke(this, Integer.valueOf(iPointToPosition), childAt, Boolean.FALSE, -1, -1);
                        AbstractC0312r0.b.invoke(this, Integer.valueOf(iPointToPosition));
                        AbstractC0312r0.f4907c.invoke(this, Integer.valueOf(iPointToPosition));
                    } catch (IllegalAccessException e2) {
                        e2.printStackTrace();
                    } catch (InvocationTargetException e3) {
                        e3.printStackTrace();
                    }
                }
            }
            Drawable selector = getSelector();
            if (selector != null && this.f4931k && isPressed()) {
                selector.setState(getDrawableState());
            }
        }
        return zOnHoverEvent;
    }

    @Override // android.widget.AbsListView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.g = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        A1.u0 u0Var = this.f4933m;
        if (u0Var != null) {
            C0320v0 c0320v0 = (C0320v0) u0Var.f236c;
            c0320v0.f4933m = null;
            c0320v0.removeCallbacks(u0Var);
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setListSelectionHidden(boolean z2) {
        this.f4929i = z2;
    }

    @Override // android.widget.AbsListView
    public void setSelector(Drawable drawable) {
        C0316t0 c0316t0 = null;
        if (drawable != null) {
            C0316t0 c0316t1 = new C0316t0();
            Drawable drawable2 = c0316t1.b;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            c0316t1.b = drawable;
            drawable.setCallback(c0316t1);
            c0316t1.f4915c = true;
            c0316t0 = c0316t1;
        }
        this.f4928h = c0316t0;
        super.setSelector(c0316t0);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.f4925c = rect.left;
        this.f4926d = rect.top;
        this.f4927e = rect.right;
        this.f = rect.bottom;
    }
}
