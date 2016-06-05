.class public Lcom/masshabit/squibble/MuteEntity;
.super Lcom/masshabit/common/entity/Entity;
.source "MuteEntity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MuteButtonEntity"

.field public static final TRACK_OFF:Ljava/lang/String; = "off"

.field public static final TRACK_ON:Ljava/lang/String; = "on"


# instance fields
.field protected mAnimState:Lcom/masshabit/common/resource/AnimationState;

.field protected mMute:Z

.field protected final mScreenAnchor:Lcom/masshabit/common/physics/Vector2;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/masshabit/common/entity/Entity;-><init>()V

    .line 18
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Vector2;-><init>()V

    iput-object v0, p0, Lcom/masshabit/squibble/MuteEntity;->mScreenAnchor:Lcom/masshabit/common/physics/Vector2;

    .line 25
    return-void
.end method


# virtual methods
.method public checkTap(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 51
    iget-object v0, p0, Lcom/masshabit/squibble/MuteEntity;->mScreenAnchor:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->x:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/masshabit/squibble/MuteEntity;->mScreenAnchor:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->x:F

    iget v1, p0, Lcom/masshabit/squibble/MuteEntity;->mWidth:F

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/masshabit/squibble/MuteEntity;->mScreenAnchor:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->y:F

    iget v1, p0, Lcom/masshabit/squibble/MuteEntity;->mHeight:F

    sub-float/2addr v0, v1

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/masshabit/squibble/MuteEntity;->mScreenAnchor:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->y:F

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    .line 54
    const/4 v0, 0x1

    .line 56
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 43
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 44
    iget-object v0, p0, Lcom/masshabit/squibble/MuteEntity;->mAnimState:Lcom/masshabit/common/resource/AnimationState;

    iget-object v0, v0, Lcom/masshabit/common/resource/AnimationState;->mCurrent:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/masshabit/squibble/MuteEntity;->mScreenAnchor:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v2, p0, Lcom/masshabit/squibble/MuteEntity;->mScreenAnchor:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->y:F

    iget v3, p0, Lcom/masshabit/squibble/MuteEntity;->mHeight:F

    sub-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 45
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 46
    return-void
.end method

.method public init()V
    .locals 5

    .prologue
    .line 30
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 31
    .local v0, "env":Lcom/masshabit/common/Environment;
    new-instance v2, Lcom/masshabit/common/resource/AnimationState;

    iget-object v1, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v1, v1, Lcom/masshabit/common/Level;->mAnims:Lcom/masshabit/common/resource/AnimationResourceMap;

    iget-object v3, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v3, v3, Lcom/masshabit/common/Level;->mAnims:Lcom/masshabit/common/resource/AnimationResourceMap;

    const-string v4, "misc/mute/anim.def"

    invoke-virtual {v3, v4}, Lcom/masshabit/common/resource/AnimationResourceMap;->load(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/masshabit/common/resource/AnimationResourceMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/masshabit/common/resource/Animation;

    invoke-direct {v2, v1}, Lcom/masshabit/common/resource/AnimationState;-><init>(Lcom/masshabit/common/resource/Animation;)V

    iput-object v2, p0, Lcom/masshabit/squibble/MuteEntity;->mAnimState:Lcom/masshabit/common/resource/AnimationState;

    .line 34
    iget-object v1, p0, Lcom/masshabit/squibble/MuteEntity;->mScreenAnchor:Lcom/masshabit/common/physics/Vector2;

    const/4 v2, 0x0

    iget v3, v0, Lcom/masshabit/common/Environment;->mScreenHeight:F

    invoke-virtual {v1, v2, v3}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 36
    iget-object v1, p0, Lcom/masshabit/squibble/MuteEntity;->mAnimState:Lcom/masshabit/common/resource/AnimationState;

    invoke-virtual {v0}, Lcom/masshabit/common/Environment;->isMuted()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "off"

    :goto_0
    invoke-virtual {v1, v2}, Lcom/masshabit/common/resource/AnimationState;->setTrack(Ljava/lang/String;)V

    .line 37
    return-void

    .line 36
    :cond_0
    const-string v2, "on"

    goto :goto_0
.end method

.method public onMutedChanged(Z)V
    .locals 2
    .param p1, "muted"    # Z

    .prologue
    .line 61
    iget-object v0, p0, Lcom/masshabit/squibble/MuteEntity;->mAnimState:Lcom/masshabit/common/resource/AnimationState;

    sget-object v1, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    invoke-virtual {v1}, Lcom/masshabit/common/Environment;->isMuted()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "off"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/masshabit/common/resource/AnimationState;->setTrack(Ljava/lang/String;)V

    .line 62
    return-void

    .line 61
    :cond_0
    const-string v1, "on"

    goto :goto_0
.end method

.method public toggle()V
    .locals 3

    .prologue
    .line 66
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 67
    .local v0, "env":Lcom/masshabit/common/Environment;
    invoke-virtual {v0}, Lcom/masshabit/common/Environment;->isMuted()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/masshabit/common/Environment;->setMuted(Z)V

    .line 68
    iget-object v1, p0, Lcom/masshabit/squibble/MuteEntity;->mAnimState:Lcom/masshabit/common/resource/AnimationState;

    invoke-virtual {v0}, Lcom/masshabit/common/Environment;->isMuted()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "off"

    :goto_1
    invoke-virtual {v1, v2}, Lcom/masshabit/common/resource/AnimationState;->setTrack(Ljava/lang/String;)V

    .line 69
    return-void

    .line 67
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 68
    :cond_1
    const-string v2, "on"

    goto :goto_1
.end method
