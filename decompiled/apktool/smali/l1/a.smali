.class public final Ll1/a;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Li1/z;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Ll1/a;->b:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Li1/l;Lcom/google/gson/reflect/TypeToken;)Li1/y;
    .locals 2

    .line 1
    iget v0, p0, Ll1/a;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    const-class v0, Ljava/sql/Timestamp;

    .line 11
    .line 12
    if-ne p2, v0, :cond_0

    .line 13
    .line 14
    const-class p2, Ljava/util/Date;

    .line 15
    .line 16
    invoke-static {p2}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/google/gson/reflect/TypeToken;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p1, p2}, Li1/l;->d(Lcom/google/gson/reflect/TypeToken;)Li1/y;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance p2, Lo1/a;

    .line 25
    .line 26
    invoke-direct {p2, p1}, Lo1/a;-><init>(Li1/y;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p2, 0x0

    .line 31
    :goto_0
    return-object p2

    .line 32
    :pswitch_0
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-class p2, Ljava/sql/Time;

    .line 37
    .line 38
    if-ne p1, p2, :cond_1

    .line 39
    .line 40
    new-instance p1, Lo1/a;

    .line 41
    .line 42
    const/4 p2, 0x1

    .line 43
    invoke-direct {p1, p2}, Lo1/a;-><init>(I)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/4 p1, 0x0

    .line 48
    :goto_1
    return-object p1

    .line 49
    :pswitch_1
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const-class p2, Ljava/sql/Date;

    .line 54
    .line 55
    if-ne p1, p2, :cond_2

    .line 56
    .line 57
    new-instance p1, Lo1/a;

    .line 58
    .line 59
    const/4 p2, 0x0

    .line 60
    invoke-direct {p1, p2}, Lo1/a;-><init>(I)V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    const/4 p1, 0x0

    .line 65
    :goto_2
    return-object p1

    .line 66
    :pswitch_2
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-class p2, Ljava/lang/Enum;

    .line 71
    .line 72
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_5

    .line 77
    .line 78
    if-ne p1, p2, :cond_3

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    if-nez p2, :cond_4

    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    :cond_4
    new-instance p2, Ll1/g;

    .line 92
    .line 93
    invoke-direct {p2, p1}, Ll1/g;-><init>(Ljava/lang/Class;)V

    .line 94
    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_5
    :goto_3
    const/4 p2, 0x0

    .line 98
    :goto_4
    return-object p2

    .line 99
    :pswitch_3
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    const-class p2, Ljava/util/Date;

    .line 104
    .line 105
    if-ne p1, p2, :cond_6

    .line 106
    .line 107
    new-instance p1, Ll1/d;

    .line 108
    .line 109
    invoke-direct {p1}, Ll1/d;-><init>()V

    .line 110
    .line 111
    .line 112
    goto :goto_5

    .line 113
    :cond_6
    const/4 p1, 0x0

    .line 114
    :goto_5
    return-object p1

    .line 115
    :pswitch_4
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    instance-of v0, p2, Ljava/lang/reflect/GenericArrayType;

    .line 120
    .line 121
    if-nez v0, :cond_8

    .line 122
    .line 123
    instance-of v1, p2, Ljava/lang/Class;

    .line 124
    .line 125
    if-eqz v1, :cond_7

    .line 126
    .line 127
    move-object v1, p2

    .line 128
    check-cast v1, Ljava/lang/Class;

    .line 129
    .line 130
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-nez v1, :cond_8

    .line 135
    .line 136
    :cond_7
    const/4 p1, 0x0

    .line 137
    goto :goto_7

    .line 138
    :cond_8
    if-eqz v0, :cond_9

    .line 139
    .line 140
    check-cast p2, Ljava/lang/reflect/GenericArrayType;

    .line 141
    .line 142
    invoke-interface {p2}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    goto :goto_6

    .line 147
    :cond_9
    check-cast p2, Ljava/lang/Class;

    .line 148
    .line 149
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    :goto_6
    invoke-static {p2}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {p1, v0}, Li1/l;->d(Lcom/google/gson/reflect/TypeToken;)Li1/y;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    new-instance v1, Ll1/b;

    .line 162
    .line 163
    invoke-static {p2}, Lk1/d;->g(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    invoke-direct {v1, p1, v0, p2}, Ll1/b;-><init>(Li1/l;Li1/y;Ljava/lang/Class;)V

    .line 168
    .line 169
    .line 170
    move-object p1, v1

    .line 171
    :goto_7
    return-object p1

    .line 172
    nop

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
