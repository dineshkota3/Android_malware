.class public Lcom/masshabit/common/resource/AnimationState;
.super Ljava/lang/Object;
.source "AnimationState.java"


# static fields
.field public static final PLAYHEAD_END:I = 0x1

.field public static final PLAYHEAD_START:I = 0x0

.field public static final TAG:Ljava/lang/String; = "AnimationState"


# instance fields
.field public mAnim:Lcom/masshabit/common/resource/Animation;

.field public mCurrent:Landroid/graphics/Bitmap;

.field protected mIndex:I

.field protected mPlaying:Z

.field protected mTime:J

.field protected mTrack:I

.field protected mTrackDone:Z


# direct methods
.method public constructor <init>(Lcom/masshabit/common/resource/Animation;)V
    .locals 3
    .param p1, "anim"    # Lcom/masshabit/common/resource/Animation;

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v2, p0, Lcom/masshabit/common/resource/AnimationState;->mIndex:I

    .line 20
    iput v2, p0, Lcom/masshabit/common/resource/AnimationState;->mTrack:I

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/masshabit/common/resource/AnimationState;->mPlaying:Z

    .line 27
    iput-object p1, p0, Lcom/masshabit/common/resource/AnimationState;->mAnim:Lcom/masshabit/common/resource/Animation;

    .line 28
    iget-object v0, p0, Lcom/masshabit/common/resource/AnimationState;->mAnim:Lcom/masshabit/common/resource/Animation;

    iget-object v0, v0, Lcom/masshabit/common/resource/Animation;->mTracks:[Lcom/masshabit/common/resource/Animation$Track;

    iget v1, p0, Lcom/masshabit/common/resource/AnimationState;->mTrack:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/masshabit/common/resource/Animation$Track;->mBitmaps:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/masshabit/common/resource/AnimationState;->mIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/masshabit/common/resource/AnimationState;->mCurrent:Landroid/graphics/Bitmap;

    .line 29
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    iget-object v0, v0, Lcom/masshabit/common/Environment;->mClock:Lcom/masshabit/common/Clock;

    invoke-virtual {v0}, Lcom/masshabit/common/Clock;->getTimeRaw()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/masshabit/common/resource/AnimationState;->mTime:J

    .line 30
    iput-boolean v2, p0, Lcom/masshabit/common/resource/AnimationState;->mTrackDone:Z

    .line 31
    return-void
.end method


# virtual methods
.method public getTrackDuration()I
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/masshabit/common/resource/AnimationState;->mAnim:Lcom/masshabit/common/resource/Animation;

    iget-object v0, v0, Lcom/masshabit/common/resource/Animation;->mTracks:[Lcom/masshabit/common/resource/Animation$Track;

    iget v1, p0, Lcom/masshabit/common/resource/AnimationState;->mTrack:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/masshabit/common/resource/Animation$Track;->mDuration:I

    return v0
.end method

.method public isTrackDone()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/masshabit/common/resource/AnimationState;->mTrackDone:Z

    return v0
.end method

.method public play()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/masshabit/common/resource/AnimationState;->mPlaying:Z

    .line 54
    return-void
.end method

.method public rewindAndPlay()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/masshabit/common/resource/AnimationState;->setPlayhead(I)V

    .line 77
    invoke-virtual {p0}, Lcom/masshabit/common/resource/AnimationState;->play()V

    .line 78
    return-void
.end method

.method public rewindAndStop()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/masshabit/common/resource/AnimationState;->setPlayhead(I)V

    .line 83
    invoke-virtual {p0}, Lcom/masshabit/common/resource/AnimationState;->stop()V

    .line 84
    return-void
.end method

.method public setPlayhead(I)V
    .locals 3
    .param p1, "location"    # I

    .prologue
    const/4 v2, 0x1

    .line 63
    if-nez p1, :cond_1

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/masshabit/common/resource/AnimationState;->mIndex:I

    .line 71
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/masshabit/common/resource/AnimationState;->mAnim:Lcom/masshabit/common/resource/Animation;

    iget-object v0, v0, Lcom/masshabit/common/resource/Animation;->mTracks:[Lcom/masshabit/common/resource/Animation$Track;

    iget v1, p0, Lcom/masshabit/common/resource/AnimationState;->mTrack:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/masshabit/common/resource/Animation$Track;->mBitmaps:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/masshabit/common/resource/AnimationState;->mIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/masshabit/common/resource/AnimationState;->mCurrent:Landroid/graphics/Bitmap;

    .line 72
    return-void

    .line 67
    :cond_1
    if-ne p1, v2, :cond_0

    .line 69
    iget-object v0, p0, Lcom/masshabit/common/resource/AnimationState;->mAnim:Lcom/masshabit/common/resource/Animation;

    iget-object v0, v0, Lcom/masshabit/common/resource/Animation;->mTracks:[Lcom/masshabit/common/resource/Animation$Track;

    iget v1, p0, Lcom/masshabit/common/resource/AnimationState;->mTrack:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/masshabit/common/resource/Animation$Track;->mDurations:[J

    array-length v0, v0

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/masshabit/common/resource/AnimationState;->mIndex:I

    goto :goto_0
.end method

.method public setTrack(Ljava/lang/String;)V
    .locals 3
    .param p1, "trackName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 35
    iget-object v0, p0, Lcom/masshabit/common/resource/AnimationState;->mAnim:Lcom/masshabit/common/resource/Animation;

    iget-object v0, v0, Lcom/masshabit/common/resource/Animation;->mIndices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/masshabit/common/resource/AnimationState;->mTrack:I

    .line 36
    iput v2, p0, Lcom/masshabit/common/resource/AnimationState;->mIndex:I

    .line 37
    iget-object v0, p0, Lcom/masshabit/common/resource/AnimationState;->mAnim:Lcom/masshabit/common/resource/Animation;

    iget-object v0, v0, Lcom/masshabit/common/resource/Animation;->mTracks:[Lcom/masshabit/common/resource/Animation$Track;

    iget v1, p0, Lcom/masshabit/common/resource/AnimationState;->mTrack:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/masshabit/common/resource/Animation$Track;->mBitmaps:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/masshabit/common/resource/AnimationState;->mIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/masshabit/common/resource/AnimationState;->mCurrent:Landroid/graphics/Bitmap;

    .line 38
    iput-boolean v2, p0, Lcom/masshabit/common/resource/AnimationState;->mTrackDone:Z

    .line 39
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/masshabit/common/resource/AnimationState;->mPlaying:Z

    .line 59
    return-void
.end method

.method public update(F)V
    .locals 9
    .param p1, "dt"    # F

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 88
    sget-object v4, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    iget-object v4, v4, Lcom/masshabit/common/Environment;->mClock:Lcom/masshabit/common/Clock;

    invoke-virtual {v4}, Lcom/masshabit/common/Clock;->getTimeRaw()J

    move-result-wide v0

    .line 90
    .local v0, "now":J
    iget-boolean v4, p0, Lcom/masshabit/common/resource/AnimationState;->mPlaying:Z

    if-eqz v4, :cond_2

    .line 92
    iget-wide v4, p0, Lcom/masshabit/common/resource/AnimationState;->mTime:J

    sub-long v2, v0, v4

    .line 93
    .local v2, "step":J
    :goto_0
    iget-object v4, p0, Lcom/masshabit/common/resource/AnimationState;->mAnim:Lcom/masshabit/common/resource/Animation;

    iget-object v4, v4, Lcom/masshabit/common/resource/Animation;->mTracks:[Lcom/masshabit/common/resource/Animation$Track;

    iget v5, p0, Lcom/masshabit/common/resource/AnimationState;->mTrack:I

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/masshabit/common/resource/Animation$Track;->mDurations:[J

    iget v5, p0, Lcom/masshabit/common/resource/AnimationState;->mIndex:I

    aget-wide v4, v4, v5

    cmp-long v4, v2, v4

    if-lez v4, :cond_3

    .line 95
    iget-object v4, p0, Lcom/masshabit/common/resource/AnimationState;->mAnim:Lcom/masshabit/common/resource/Animation;

    iget-object v4, v4, Lcom/masshabit/common/resource/Animation;->mTracks:[Lcom/masshabit/common/resource/Animation$Track;

    iget v5, p0, Lcom/masshabit/common/resource/AnimationState;->mTrack:I

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/masshabit/common/resource/Animation$Track;->mDurations:[J

    iget v5, p0, Lcom/masshabit/common/resource/AnimationState;->mIndex:I

    aget-wide v4, v4, v5

    sub-long/2addr v2, v4

    .line 97
    iput-boolean v7, p0, Lcom/masshabit/common/resource/AnimationState;->mTrackDone:Z

    .line 98
    iget v4, p0, Lcom/masshabit/common/resource/AnimationState;->mIndex:I

    iget-object v5, p0, Lcom/masshabit/common/resource/AnimationState;->mAnim:Lcom/masshabit/common/resource/Animation;

    iget-object v5, v5, Lcom/masshabit/common/resource/Animation;->mTracks:[Lcom/masshabit/common/resource/Animation$Track;

    iget v6, p0, Lcom/masshabit/common/resource/AnimationState;->mTrack:I

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/masshabit/common/resource/Animation$Track;->mBitmaps:[Landroid/graphics/Bitmap;

    array-length v5, v5

    sub-int/2addr v5, v8

    if-ge v4, v5, :cond_0

    .line 100
    iget v4, p0, Lcom/masshabit/common/resource/AnimationState;->mIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/masshabit/common/resource/AnimationState;->mIndex:I

    .line 110
    :goto_1
    iput-wide v0, p0, Lcom/masshabit/common/resource/AnimationState;->mTime:J

    goto :goto_0

    .line 102
    :cond_0
    iget-object v4, p0, Lcom/masshabit/common/resource/AnimationState;->mAnim:Lcom/masshabit/common/resource/Animation;

    iget-object v4, v4, Lcom/masshabit/common/resource/Animation;->mTracks:[Lcom/masshabit/common/resource/Animation$Track;

    iget v5, p0, Lcom/masshabit/common/resource/AnimationState;->mTrack:I

    aget-object v4, v4, v5

    iget-boolean v4, v4, Lcom/masshabit/common/resource/Animation$Track;->mLoop:Z

    if-eqz v4, :cond_1

    .line 104
    iput v7, p0, Lcom/masshabit/common/resource/AnimationState;->mIndex:I

    goto :goto_1

    .line 108
    :cond_1
    iput-boolean v8, p0, Lcom/masshabit/common/resource/AnimationState;->mTrackDone:Z

    goto :goto_1

    .line 115
    .end local v2    # "step":J
    :cond_2
    iput-wide v0, p0, Lcom/masshabit/common/resource/AnimationState;->mTime:J

    .line 118
    :cond_3
    iget-object v4, p0, Lcom/masshabit/common/resource/AnimationState;->mAnim:Lcom/masshabit/common/resource/Animation;

    iget-object v4, v4, Lcom/masshabit/common/resource/Animation;->mTracks:[Lcom/masshabit/common/resource/Animation$Track;

    iget v5, p0, Lcom/masshabit/common/resource/AnimationState;->mTrack:I

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/masshabit/common/resource/Animation$Track;->mBitmaps:[Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/masshabit/common/resource/AnimationState;->mIndex:I

    aget-object v4, v4, v5

    iput-object v4, p0, Lcom/masshabit/common/resource/AnimationState;->mCurrent:Landroid/graphics/Bitmap;

    .line 120
    return-void
.end method
