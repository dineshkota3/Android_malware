.class Lcom/gp/monolith/SoundPoolEvent;
.super Ljava/lang/Object;
.source "SoundPoolManager.java"


# static fields
.field public static final SOUND_MUSIC_PAUSE:I = 0x3

.field public static final SOUND_MUSIC_PLAY:I = 0x2

.field public static final SOUND_MUSIC_RESUME:I = 0x5

.field public static final SOUND_MUSIC_STOP:I = 0x4

.field public static final SOUND_PLAY:I = 0x0

.field public static final SOUND_STOP:I = 0x1


# instance fields
.field public eventSound:I

.field public eventType:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "eventType"    # I
    .param p2, "eventSound"    # I

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/gp/monolith/SoundPoolEvent;->eventType:I

    .line 9
    iput p2, p0, Lcom/gp/monolith/SoundPoolEvent;->eventSound:I

    .line 10
    return-void
.end method
