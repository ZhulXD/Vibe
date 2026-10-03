.class Lorg/godotengine/godot/tts/GodotUtterance;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field final id:J

.field offset:I

.field final pitch:F

.field final rate:F

.field start:I

.field final text:Ljava/lang/String;

.field final voice:Ljava/lang/String;

.field final volume:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IFFJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lorg/godotengine/godot/tts/GodotUtterance;->offset:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lorg/godotengine/godot/tts/GodotUtterance;->start:I

    .line 9
    .line 10
    iput-object p1, p0, Lorg/godotengine/godot/tts/GodotUtterance;->text:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p2, p0, Lorg/godotengine/godot/tts/GodotUtterance;->voice:Ljava/lang/String;

    .line 13
    .line 14
    iput p3, p0, Lorg/godotengine/godot/tts/GodotUtterance;->volume:I

    .line 15
    .line 16
    iput p4, p0, Lorg/godotengine/godot/tts/GodotUtterance;->pitch:F

    .line 17
    .line 18
    iput p5, p0, Lorg/godotengine/godot/tts/GodotUtterance;->rate:F

    .line 19
    .line 20
    iput-wide p6, p0, Lorg/godotengine/godot/tts/GodotUtterance;->id:J

    .line 21
    .line 22
    return-void
.end method
