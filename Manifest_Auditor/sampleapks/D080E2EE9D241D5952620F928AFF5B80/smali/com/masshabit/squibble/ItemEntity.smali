.class public Lcom/masshabit/squibble/ItemEntity;
.super Lcom/masshabit/common/entity/Entity;
.source "ItemEntity.java"

# interfaces
.implements Lcom/masshabit/common/physics/ICollisionListener;


# static fields
.field public static final ITEM_ANIM_FILE:Ljava/lang/String; = "common/droplet/anim.def"

.field public static final ITEM_COLLISION_RADIUS:F = 10.0f

.field public static final STATE_DEAD:I = 0x2

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_POPPING:I = 0x1

.field public static final TAG:Ljava/lang/String; = "Item"

.field public static final TRACK_IDLE:Ljava/lang/String; = "idle"

.field public static final TRACK_POP:Ljava/lang/String; = "pop"


# instance fields
.field public mAnimState:Lcom/masshabit/common/resource/AnimationState;

.field public mParticle:Lcom/masshabit/common/physics/CircleParticle;

.field public mState:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/masshabit/common/entity/Entity;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 89
    iget v0, p0, Lcom/masshabit/squibble/ItemEntity;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 91
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 92
    iget-object v0, p0, Lcom/masshabit/squibble/ItemEntity;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 93
    iget-object v0, p0, Lcom/masshabit/squibble/ItemEntity;->mAnimState:Lcom/masshabit/common/resource/AnimationState;

    iget-object v0, v0, Lcom/masshabit/common/resource/AnimationState;->mCurrent:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 97
    :cond_0
    return-void
.end method

.method public init()V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 39
    sget-object v6, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 40
    .local v6, "env":Lcom/masshabit/common/Environment;
    new-instance v1, Lcom/masshabit/common/resource/AnimationState;

    iget-object v0, v6, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v0, v0, Lcom/masshabit/common/Level;->mAnims:Lcom/masshabit/common/resource/AnimationResourceMap;

    iget-object v2, v6, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v2, v2, Lcom/masshabit/common/Level;->mAnims:Lcom/masshabit/common/resource/AnimationResourceMap;

    const-string v3, "common/droplet/anim.def"

    invoke-virtual {v2, v3}, Lcom/masshabit/common/resource/AnimationResourceMap;->load(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/masshabit/common/resource/AnimationResourceMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/masshabit/common/resource/Animation;

    invoke-direct {v1, v0}, Lcom/masshabit/common/resource/AnimationState;-><init>(Lcom/masshabit/common/resource/Animation;)V

    iput-object v1, p0, Lcom/masshabit/squibble/ItemEntity;->mAnimState:Lcom/masshabit/common/resource/AnimationState;

    .line 43
    iget-object v0, p0, Lcom/masshabit/squibble/ItemEntity;->mAnimState:Lcom/masshabit/common/resource/AnimationState;

    const-string v1, "idle"

    invoke-virtual {v0, v1}, Lcom/masshabit/common/resource/AnimationState;->setTrack(Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/masshabit/common/physics/CircleParticle;

    iget-object v1, v6, Lcom/masshabit/common/Environment;->mPhysics:Lcom/masshabit/common/physics/Physics;

    iget-object v2, p0, Lcom/masshabit/squibble/ItemEntity;->mPos:Lcom/masshabit/common/physics/Vector2;

    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/masshabit/common/physics/CircleParticle;-><init>(Lcom/masshabit/common/physics/Physics;Lcom/masshabit/common/physics/Vector2;FFZ)V

    iput-object v0, p0, Lcom/masshabit/squibble/ItemEntity;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    .line 46
    iget-object v0, p0, Lcom/masshabit/squibble/ItemEntity;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    iget-object v1, p0, Lcom/masshabit/squibble/ItemEntity;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->x:F

    iget v2, p0, Lcom/masshabit/squibble/ItemEntity;->mWidth:F

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/masshabit/squibble/ItemEntity;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->y:F

    iget v3, p0, Lcom/masshabit/squibble/ItemEntity;->mHeight:F

    div-float/2addr v3, v7

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/masshabit/common/physics/CircleParticle;->setPosition(FF)V

    .line 47
    iget-object v0, p0, Lcom/masshabit/squibble/ItemEntity;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    invoke-virtual {v0, p0}, Lcom/masshabit/common/physics/CircleParticle;->setCollisionListener(Lcom/masshabit/common/physics/ICollisionListener;)V

    .line 49
    iget-object v0, v6, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v0, v0, Lcom/masshabit/common/Level;->mItemGeom:Lcom/masshabit/common/physics/CollisionGroup;

    iget-object v1, p0, Lcom/masshabit/squibble/ItemEntity;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    invoke-virtual {v0, v1}, Lcom/masshabit/common/physics/CollisionGroup;->add(Lcom/masshabit/common/physics/Particle;)V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/masshabit/squibble/ItemEntity;->mState:I

    .line 53
    iget-object v0, v6, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget v1, v0, Lcom/masshabit/common/Level;->mTotalItems:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/masshabit/common/Level;->mTotalItems:I

    .line 56
    return-void
.end method

.method public onCollide(Lcom/masshabit/common/physics/Particle;Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;FF)I
    .locals 4
    .param p1, "other"    # Lcom/masshabit/common/physics/Particle;
    .param p2, "mtd"    # Lcom/masshabit/common/physics/Vector2;
    .param p3, "vel"    # Lcom/masshabit/common/physics/Vector2;
    .param p4, "n"    # Lcom/masshabit/common/physics/Vector2;
    .param p5, "depth"    # F
    .param p6, "dir"    # F

    .prologue
    const/4 v3, 0x0

    .line 120
    iget v1, p0, Lcom/masshabit/squibble/ItemEntity;->mState:I

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/masshabit/common/physics/Particle;->mGroup:Lcom/masshabit/common/physics/CollisionGroup;

    sget-object v2, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    iget-object v2, v2, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v2, v2, Lcom/masshabit/common/Level;->mPlayerGeom:Lcom/masshabit/common/physics/CollisionGroup;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    iget-object v1, v1, Lcom/masshabit/common/Environment;->mScreen:Lcom/masshabit/squibble/Screen;

    check-cast v1, Lcom/masshabit/squibble/GameScreen;

    iget-object v1, v1, Lcom/masshabit/squibble/GameScreen;->mPlayer:Lcom/masshabit/squibble/Player;

    invoke-virtual {v1}, Lcom/masshabit/squibble/Player;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 122
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 123
    .local v0, "env":Lcom/masshabit/common/Environment;
    const/4 v1, 0x1

    iput v1, p0, Lcom/masshabit/squibble/ItemEntity;->mState:I

    .line 124
    iget-object v1, p0, Lcom/masshabit/squibble/ItemEntity;->mAnimState:Lcom/masshabit/common/resource/AnimationState;

    const-string v2, "pop"

    invoke-virtual {v1, v2}, Lcom/masshabit/common/resource/AnimationState;->setTrack(Ljava/lang/String;)V

    .line 125
    iget-object v1, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget v2, v1, Lcom/masshabit/common/Level;->mItemsCollected:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/masshabit/common/Level;->mItemsCollected:I

    .line 127
    iget-object v1, v0, Lcom/masshabit/common/Environment;->mScreen:Lcom/masshabit/squibble/Screen;

    invoke-virtual {v1, v3}, Lcom/masshabit/squibble/Screen;->playSound(I)V

    .line 129
    .end local v0    # "env":Lcom/masshabit/common/Environment;
    :cond_0
    return v3
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "in"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const-string v6, "pop"

    .line 68
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 70
    .local v0, "env":Lcom/masshabit/common/Environment;
    const-string v1, "entity_%d_state"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Lcom/masshabit/squibble/ItemEntity;->sEntityIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/masshabit/squibble/ItemEntity;->mState:I

    .line 71
    iget v1, p0, Lcom/masshabit/squibble/ItemEntity;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 73
    iget-object v1, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v1, v1, Lcom/masshabit/common/Level;->mItemGeom:Lcom/masshabit/common/physics/CollisionGroup;

    iget-object v2, p0, Lcom/masshabit/squibble/ItemEntity;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    invoke-virtual {v1, v2}, Lcom/masshabit/common/physics/CollisionGroup;->remove(Lcom/masshabit/common/physics/Particle;)V

    .line 74
    iget-object v1, p0, Lcom/masshabit/squibble/ItemEntity;->mAnimState:Lcom/masshabit/common/resource/AnimationState;

    const-string v2, "pop"

    invoke-virtual {v1, v6}, Lcom/masshabit/common/resource/AnimationState;->setTrack(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/masshabit/squibble/ItemEntity;->mAnimState:Lcom/masshabit/common/resource/AnimationState;

    invoke-virtual {v1, v5}, Lcom/masshabit/common/resource/AnimationState;->setPlayhead(I)V

    .line 76
    iget-object v1, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget v2, v1, Lcom/masshabit/common/Level;->mItemsCollected:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/masshabit/common/Level;->mItemsCollected:I

    .line 83
    :cond_0
    :goto_0
    sget v1, Lcom/masshabit/squibble/ItemEntity;->sEntityIndex:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/masshabit/squibble/ItemEntity;->sEntityIndex:I

    .line 84
    return-void

    .line 78
    :cond_1
    iget v1, p0, Lcom/masshabit/squibble/ItemEntity;->mState:I

    if-ne v1, v5, :cond_0

    .line 80
    iget-object v1, p0, Lcom/masshabit/squibble/ItemEntity;->mAnimState:Lcom/masshabit/common/resource/AnimationState;

    const-string v2, "pop"

    invoke-virtual {v1, v6}, Lcom/masshabit/common/resource/AnimationState;->setTrack(Ljava/lang/String;)V

    .line 81
    iget-object v1, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget v2, v1, Lcom/masshabit/common/Level;->mItemsCollected:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/masshabit/common/Level;->mItemsCollected:I

    goto :goto_0
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "out"    # Landroid/os/Bundle;

    .prologue
    .line 61
    const-string v0, "entity_%d_state"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget v3, Lcom/masshabit/squibble/ItemEntity;->sEntityIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/masshabit/squibble/ItemEntity;->mState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    sget v0, Lcom/masshabit/squibble/ItemEntity;->sEntityIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/masshabit/squibble/ItemEntity;->sEntityIndex:I

    .line 63
    return-void
.end method

.method public update(F)V
    .locals 3
    .param p1, "dt"    # F

    .prologue
    const/4 v2, 0x2

    .line 102
    iget v0, p0, Lcom/masshabit/squibble/ItemEntity;->mState:I

    if-eq v0, v2, :cond_0

    .line 105
    iget-object v0, p0, Lcom/masshabit/squibble/ItemEntity;->mAnimState:Lcom/masshabit/common/resource/AnimationState;

    invoke-virtual {v0, p1}, Lcom/masshabit/common/resource/AnimationState;->update(F)V

    .line 107
    iget v0, p0, Lcom/masshabit/squibble/ItemEntity;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/masshabit/squibble/ItemEntity;->mAnimState:Lcom/masshabit/common/resource/AnimationState;

    invoke-virtual {v0}, Lcom/masshabit/common/resource/AnimationState;->isTrackDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iput v2, p0, Lcom/masshabit/squibble/ItemEntity;->mState:I

    .line 110
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    iget-object v0, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v0, v0, Lcom/masshabit/common/Level;->mItemGeom:Lcom/masshabit/common/physics/CollisionGroup;

    iget-object v1, p0, Lcom/masshabit/squibble/ItemEntity;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    invoke-virtual {v0, v1}, Lcom/masshabit/common/physics/CollisionGroup;->remove(Lcom/masshabit/common/physics/Particle;)V

    .line 115
    :cond_0
    return-void
.end method
