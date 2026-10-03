.class Lorg/tvp/kirikiri2/KR2Activity$DialogMessage$1;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->makeButton(Landroid/app/Dialog;IZ)Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$index:I


# direct methods
.method public constructor <init>(Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;Landroid/app/Dialog;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage$1;->this$0:Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage$1;->val$dialog:Landroid/app/Dialog;

    .line 4
    .line 5
    iput p3, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage$1;->val$index:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage$1;->val$dialog:Landroid/app/Dialog;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage$1;->this$0:Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;

    .line 7
    .line 8
    iget v0, p0, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage$1;->val$index:I

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->onButtonClick(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
