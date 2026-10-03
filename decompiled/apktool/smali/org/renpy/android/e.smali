.class public final synthetic Lorg/renpy/android/e;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Landroid/app/AlertDialog;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/renpy/android/e;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/renpy/android/e;->c:Landroid/app/AlertDialog;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/renpy/android/e;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/renpy/android/e;->c:Landroid/app/AlertDialog;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lorg/renpy/android/PythonSDLActivity;->j(Landroid/app/AlertDialog;Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object v0, p0, Lorg/renpy/android/e;->c:Landroid/app/AlertDialog;

    .line 13
    .line 14
    invoke-static {v0, p1}, Lorg/renpy/android/PythonSDLActivity;->q(Landroid/app/AlertDialog;Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_1
    iget-object v0, p0, Lorg/renpy/android/e;->c:Landroid/app/AlertDialog;

    .line 19
    .line 20
    invoke-static {v0, p1}, Lorg/renpy/android/PythonSDLActivity;->m(Landroid/app/AlertDialog;Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_2
    iget-object v0, p0, Lorg/renpy/android/e;->c:Landroid/app/AlertDialog;

    .line 25
    .line 26
    invoke-static {v0, p1}, Lorg/renpy/android/PythonSDLActivity;->i(Landroid/app/AlertDialog;Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
