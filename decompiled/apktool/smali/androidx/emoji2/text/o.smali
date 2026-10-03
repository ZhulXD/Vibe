.class public final Landroidx/emoji2/text/o;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public a:I

.field public final b:Landroidx/emoji2/text/s;

.field public c:Landroidx/emoji2/text/s;

.field public d:Landroidx/emoji2/text/s;

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/s;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Landroidx/emoji2/text/o;->a:I

    .line 6
    .line 7
    iput-object p1, p0, Landroidx/emoji2/text/o;->b:Landroidx/emoji2/text/s;

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/emoji2/text/o;->c:Landroidx/emoji2/text/s;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroidx/emoji2/text/o;->a:I

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/emoji2/text/o;->b:Landroidx/emoji2/text/s;

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/emoji2/text/o;->c:Landroidx/emoji2/text/s;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Landroidx/emoji2/text/o;->f:I

    .line 10
    .line 11
    return-void
.end method

.method public final b()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/o;->c:Landroidx/emoji2/text/s;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/emoji2/text/s;->b:Landroidx/emoji2/text/v;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/emoji2/text/v;->b()LG/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x6

    .line 10
    invoke-virtual {v0, v1}, LG/c;->a(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v3, v0, LG/c;->b:Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    iget v0, v0, LG/c;->a:I

    .line 20
    .line 21
    add-int/2addr v1, v0

    .line 22
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    return v2

    .line 29
    :cond_0
    iget v0, p0, Landroidx/emoji2/text/o;->e:I

    .line 30
    .line 31
    const v1, 0xfe0f

    .line 32
    .line 33
    .line 34
    if-ne v0, v1, :cond_1

    .line 35
    .line 36
    return v2

    .line 37
    :cond_1
    const/4 v0, 0x0

    .line 38
    return v0
.end method
