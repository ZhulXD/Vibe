.class public final synthetic Lorg/renpy/android/d;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic b:Lorg/renpy/android/PythonSDLActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/renpy/android/PythonSDLActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/renpy/android/d;->b:Lorg/renpy/android/PythonSDLActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/renpy/android/d;->b:Lorg/renpy/android/PythonSDLActivity;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3}, Lorg/renpy/android/PythonSDLActivity;->n(Lorg/renpy/android/PythonSDLActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
