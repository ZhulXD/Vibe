.class public final LC1/F1;
.super LP/y0;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final u:LN1/w;


# direct methods
.method public constructor <init>(LN1/w;)V
    .locals 1

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, LN1/w;->a:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/material/card/MaterialCardView;

    .line 9
    .line 10
    invoke-direct {p0, v0}, LP/y0;-><init>(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, LC1/F1;->u:LN1/w;

    .line 14
    .line 15
    return-void
.end method
