.class public Lcom/masshabit/squibble/Player;
.super Lcom/masshabit/common/entity/Entity;
.source "Player.java"

# interfaces
.implements Lcom/masshabit/common/physics/ICollisionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/masshabit/squibble/Player$Hand;
    }
.end annotation


# static fields
.field public static final ANIM_DEAD:Ljava/lang/String; = "dead"

.field public static final ANIM_HURT:Ljava/lang/String; = "hurt"

.field public static final ANIM_IDLE:Ljava/lang/String; = "idle"

.field public static final ARM_REST_LENGTH:F = 65.0f

.field public static final BUMP_IMPULSE:F = 200.0f

.field public static final GRAB_RADIUS:F = 40.0f

.field public static final GRAB_RADIUS_SQ:F = 1600.0f

.field public static final MAX_ARM_LENGTH:F = 300.0f

.field public static final MAX_ARM_LENGTH_SQ:F = 90000.0f

.field public static final MAX_HEALTH:I = 0x3

.field protected static final SPEED_HIGH:F = 1100.0f

.field protected static final SPEED_LOW:F = 0.0f

.field public static final STATE_DEAD:I = 0x3

.field public static final STATE_HURT:I = 0x2

.field public static final STATE_IDLE:I = 0x1

.field public static final STATE_WON:I = 0x4

.field public static final TAG:Ljava/lang/String; = "Player"

.field public static final sTemp1:Lcom/masshabit/common/physics/Vector2;

.field public static final sTemp2:Lcom/masshabit/common/physics/Vector2;

.field public static final sTemp3:Lcom/masshabit/common/physics/Vector2;


# instance fields
.field public mAnimState:Lcom/masshabit/common/resource/AnimationState;

.field public final mDragParticle:Lcom/masshabit/common/physics/Particle;

.field public final mDragSpring:Lcom/masshabit/common/physics/SpringConstraint;

.field public mDragging:Z

.field protected mHandCapImage:Landroid/graphics/Bitmap;

.field protected mHandImage:Landroid/graphics/Bitmap;

.field public mHandIndex:I

.field public mHands:[Lcom/masshabit/squibble/Player$Hand;

.field public mHealth:I

.field public final mParticle:Lcom/masshabit/common/physics/CircleParticle;

.field protected final mRayCastCollisionGroups:[Lcom/masshabit/common/physics/CollisionGroup;

.field protected final mRayCastResult:Lcom/masshabit/common/physics/Physics$RayCastResult;

.field public mShadowCastWidth:F

.field public mShadowEnabled:Z

.field public mShadowImage:Landroid/graphics/Bitmap;

.field public final mShadowPos:Lcom/masshabit/common/physics/Vector2;

.field protected mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Vector2;-><init>()V

    sput-object v0, Lcom/masshabit/squibble/Player;->sTemp1:Lcom/masshabit/common/physics/Vector2;

    .line 30
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Vector2;-><init>()V

    sput-object v0, Lcom/masshabit/squibble/Player;->sTemp2:Lcom/masshabit/common/physics/Vector2;

    .line 31
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Vector2;-><init>()V

    sput-object v0, Lcom/masshabit/squibble/Player;->sTemp3:Lcom/masshabit/common/physics/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/masshabit/common/entity/Entity;-><init>()V

    .line 114
    new-instance v0, Lcom/masshabit/common/physics/CircleParticle;

    sget-object v1, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    iget-object v1, v1, Lcom/masshabit/common/Environment;->mPhysics:Lcom/masshabit/common/physics/Physics;

    sget-object v2, Lcom/masshabit/common/physics/Vector2;->ZERO:Lcom/masshabit/common/physics/Vector2;

    const/high16 v3, 0x41800000    # 16.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const v6, 0x3ecccccd    # 0.4f

    invoke-direct/range {v0 .. v6}, Lcom/masshabit/common/physics/CircleParticle;-><init>(Lcom/masshabit/common/physics/Physics;Lcom/masshabit/common/physics/Vector2;FFZF)V

    iput-object v0, p0, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    .line 119
    new-instance v0, Lcom/masshabit/common/physics/Particle;

    sget-object v1, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    iget-object v1, v1, Lcom/masshabit/common/Environment;->mPhysics:Lcom/masshabit/common/physics/Physics;

    sget-object v2, Lcom/masshabit/common/physics/Vector2;->ZERO:Lcom/masshabit/common/physics/Vector2;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/masshabit/common/physics/Particle;-><init>(Lcom/masshabit/common/physics/Physics;Lcom/masshabit/common/physics/Vector2;FZF)V

    iput-object v0, p0, Lcom/masshabit/squibble/Player;->mDragParticle:Lcom/masshabit/common/physics/Particle;

    .line 124
    new-instance v0, Lcom/masshabit/common/physics/SpringConstraint;

    iget-object v1, p0, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    iget-object v2, p0, Lcom/masshabit/squibble/Player;->mDragParticle:Lcom/masshabit/common/physics/Particle;

    const v3, 0x3a03126f    # 5.0E-4f

    const/high16 v4, 0x42c80000    # 100.0f

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/masshabit/common/physics/SpringConstraint;-><init>(Lcom/masshabit/common/physics/Particle;Lcom/masshabit/common/physics/Particle;FFFI)V

    iput-object v0, p0, Lcom/masshabit/squibble/Player;->mDragSpring:Lcom/masshabit/common/physics/SpringConstraint;

    .line 129
    new-instance v0, Lcom/masshabit/common/physics/Physics$RayCastResult;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Physics$RayCastResult;-><init>()V

    iput-object v0, p0, Lcom/masshabit/squibble/Player;->mRayCastResult:Lcom/masshabit/common/physics/Physics$RayCastResult;

    .line 134
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/masshabit/common/physics/CollisionGroup;

    iput-object v0, p0, Lcom/masshabit/squibble/Player;->mRayCastCollisionGroups:[Lcom/masshabit/common/physics/CollisionGroup;

    .line 152
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Vector2;-><init>()V

    iput-object v0, p0, Lcom/masshabit/squibble/Player;->mShadowPos:Lcom/masshabit/common/physics/Vector2;

    .line 259
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/masshabit/squibble/Player$Hand;

    const/4 v1, 0x0

    new-instance v2, Lcom/masshabit/squibble/Player$Hand;

    invoke-direct {v2, p0}, Lcom/masshabit/squibble/Player$Hand;-><init>(Lcom/masshabit/squibble/Player;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/masshabit/squibble/Player$Hand;

    invoke-direct {v2, p0}, Lcom/masshabit/squibble/Player$Hand;-><init>(Lcom/masshabit/squibble/Player;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    .line 262
    return-void
.end method


# virtual methods
.method protected bothArmsEngaged()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 492
    iget-object v0, p0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/masshabit/squibble/Player$Hand;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/masshabit/squibble/Player$Hand;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected castGrapple(FF)Z
    .locals 11
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v10, 0x0

    .line 646
    sget-object v9, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 647
    .local v9, "env":Lcom/masshabit/common/Environment;
    iget-object v0, p0, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    iget-object v0, v0, Lcom/masshabit/common/physics/CircleParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->x:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    iget-object v0, v0, Lcom/masshabit/common/physics/CircleParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->y:F

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_3

    .line 650
    :cond_0
    sget-object v0, Lcom/masshabit/squibble/Player;->sTemp1:Lcom/masshabit/common/physics/Vector2;

    iget-object v1, p0, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    iget-object v1, v1, Lcom/masshabit/common/physics/CircleParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    iget-object v2, v2, Lcom/masshabit/common/physics/CircleParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->y:F

    sub-float v2, p2, v2

    invoke-virtual {v0, v1, v2}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 653
    iget-object v0, p0, Lcom/masshabit/squibble/Player;->mRayCastResult:Lcom/masshabit/common/physics/Physics$RayCastResult;

    invoke-virtual {v0}, Lcom/masshabit/common/physics/Physics$RayCastResult;->reset()V

    .line 654
    iget-object v0, v9, Lcom/masshabit/common/Environment;->mPhysics:Lcom/masshabit/common/physics/Physics;

    iget-object v1, v9, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v1, v1, Lcom/masshabit/common/Level;->mCollisionGeom:Lcom/masshabit/common/physics/CollisionGroup;

    iget-object v2, p0, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    iget-object v2, v2, Lcom/masshabit/common/physics/CircleParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v3, p0, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    iget-object v3, v3, Lcom/masshabit/common/physics/CircleParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->y:F

    sget-object v4, Lcom/masshabit/squibble/Player;->sTemp1:Lcom/masshabit/common/physics/Vector2;

    iget v4, v4, Lcom/masshabit/common/physics/Vector2;->x:F

    sget-object v5, Lcom/masshabit/squibble/Player;->sTemp1:Lcom/masshabit/common/physics/Vector2;

    iget v5, v5, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v6, p0, Lcom/masshabit/squibble/Player;->mRayCastResult:Lcom/masshabit/common/physics/Physics$RayCastResult;

    invoke-virtual/range {v0 .. v6}, Lcom/masshabit/common/physics/Physics;->rayCastQuery(Lcom/masshabit/common/physics/CollisionGroup;FFFFLcom/masshabit/common/physics/Physics$RayCastResult;)V

    .line 658
    iget-object v0, p0, Lcom/masshabit/squibble/Player;->mRayCastResult:Lcom/masshabit/common/physics/Physics$RayCastResult;

    iget-boolean v0, v0, Lcom/masshabit/common/physics/Physics$RayCastResult;->collision:Z

    if-eqz v0, :cond_3

    .line 660
    sget-object v0, Lcom/masshabit/squibble/Player;->sTemp1:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v0}, Lcom/masshabit/common/physics/Vector2;->length()F

    move-result v0

    iget-object v1, p0, Lcom/masshabit/squibble/Player;->mRayCastResult:Lcom/masshabit/common/physics/Physics$RayCastResult;

    iget v1, v1, Lcom/masshabit/common/physics/Physics$RayCastResult;->param:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x43960000    # 300.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    move v0, v10

    .line 686
    :goto_0
    return v0

    .line 667
    :cond_1
    iget-object v0, p0, Lcom/masshabit/squibble/Player;->mRayCastResult:Lcom/masshabit/common/physics/Physics$RayCastResult;

    iget v8, v0, Lcom/masshabit/common/physics/Physics$RayCastResult;->param:F

    .line 668
    .local v8, "distToGeom":F
    iget-object v0, p0, Lcom/masshabit/squibble/Player;->mRayCastResult:Lcom/masshabit/common/physics/Physics$RayCastResult;

    iget-object v7, v0, Lcom/masshabit/common/physics/Physics$RayCastResult;->collidee:Lcom/masshabit/common/physics/Particle;

    .line 670
    .local v7, "collidee":Lcom/masshabit/common/physics/Particle;
    iget-object v0, p0, Lcom/masshabit/squibble/Player;->mRayCastResult:Lcom/masshabit/common/physics/Physics$RayCastResult;

    invoke-virtual {v0}, Lcom/masshabit/common/physics/Physics$RayCastResult;->reset()V

    .line 671
    iget-object v0, v9, Lcom/masshabit/common/Environment;->mPhysics:Lcom/masshabit/common/physics/Physics;

    iget-object v1, v9, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v1, v1, Lcom/masshabit/common/Level;->mHurtyGeom:Lcom/masshabit/common/physics/CollisionGroup;

    iget-object v2, p0, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    iget-object v2, v2, Lcom/masshabit/common/physics/CircleParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v3, p0, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    iget-object v3, v3, Lcom/masshabit/common/physics/CircleParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->y:F

    sget-object v4, Lcom/masshabit/squibble/Player;->sTemp1:Lcom/masshabit/common/physics/Vector2;

    iget v4, v4, Lcom/masshabit/common/physics/Vector2;->x:F

    sget-object v5, Lcom/masshabit/squibble/Player;->sTemp1:Lcom/masshabit/common/physics/Vector2;

    iget v5, v5, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v6, p0, Lcom/masshabit/squibble/Player;->mRayCastResult:Lcom/masshabit/common/physics/Physics$RayCastResult;

    invoke-virtual/range {v0 .. v6}, Lcom/masshabit/common/physics/Physics;->rayCastQuery(Lcom/masshabit/common/physics/CollisionGroup;FFFFLcom/masshabit/common/physics/Physics$RayCastResult;)V

    .line 676
    iget-object v0, p0, Lcom/masshabit/squibble/Player;->mRayCastResult:Lcom/masshabit/common/physics/Physics$RayCastResult;

    iget-boolean v0, v0, Lcom/masshabit/common/physics/Physics$RayCastResult;->collision:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/masshabit/squibble/Player;->mRayCastResult:Lcom/masshabit/common/physics/Physics$RayCastResult;

    iget v0, v0, Lcom/masshabit/common/physics/Physics$RayCastResult;->param:F

    cmpl-float v0, v0, v8

    if-lez v0, :cond_3

    .line 678
    :cond_2
    iget-object v0, p0, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    iget-object v0, v0, Lcom/masshabit/common/physics/CircleParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v1, p0, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    iget-object v1, v1, Lcom/masshabit/common/physics/CircleParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float v1, p1, v1

    mul-float/2addr v1, v8

    add-float/2addr v0, v1

    iget-object v1, v7, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    iget-object v1, v1, Lcom/masshabit/common/physics/CircleParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v2, p0, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    iget-object v2, v2, Lcom/masshabit/common/physics/CircleParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->y:F

    sub-float v2, p2, v2

    mul-float/2addr v2, v8

    add-float/2addr v1, v2

    iget-object v2, v7, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->y:F

    sub-float/2addr v1, v2

    invoke-virtual {p0, v7, v0, v1}, Lcom/masshabit/squibble/Player;->setGrapple(Lcom/masshabit/common/physics/Particle;FF)V

    .line 682
    const/4 v0, 0x1

    goto :goto_0

    .end local v7    # "collidee":Lcom/masshabit/common/physics/Particle;
    .end local v8    # "distToGeom":F
    :cond_3
    move v0, v10

    .line 686
    goto :goto_0
.end method

.method protected dragEnd(FF)V
    .locals 21
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/squibble/Player;->mDragParticle:Lcom/masshabit/common/physics/Particle;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/masshabit/common/physics/Particle;->setPosition(FF)V

    .line 568
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/masshabit/squibble/Player;->mDragging:Z

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/squibble/Player;->mDragSpring:Lcom/masshabit/common/physics/SpringConstraint;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/masshabit/common/physics/SpringConstraint;->setEnabled(Z)V

    .line 571
    sget-object v16, Lcom/masshabit/squibble/Player;->sTemp1:Lcom/masshabit/common/physics/Vector2;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/masshabit/squibble/Player$Hand;->mConstraint:Lcom/masshabit/common/physics/SpringConstraint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/masshabit/common/physics/SpringConstraint;->mP2:Lcom/masshabit/common/physics/Particle;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/masshabit/common/physics/Vector2;->set(Lcom/masshabit/common/physics/Vector2;)V

    .line 572
    sget-object v16, Lcom/masshabit/squibble/Player;->sTemp1:Lcom/masshabit/common/physics/Vector2;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/masshabit/squibble/Player$Hand;->mConstraint:Lcom/masshabit/common/physics/SpringConstraint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/masshabit/common/physics/SpringConstraint;->mP1:Lcom/masshabit/common/physics/Particle;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/masshabit/common/physics/Vector2;->subtract(Lcom/masshabit/common/physics/Vector2;)V

    .line 574
    sget-object v16, Lcom/masshabit/squibble/Player;->sTemp2:Lcom/masshabit/common/physics/Vector2;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/masshabit/squibble/Player$Hand;->mConstraint:Lcom/masshabit/common/physics/SpringConstraint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/masshabit/common/physics/SpringConstraint;->mP2:Lcom/masshabit/common/physics/Particle;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/masshabit/common/physics/Vector2;->set(Lcom/masshabit/common/physics/Vector2;)V

    .line 575
    sget-object v16, Lcom/masshabit/squibble/Player;->sTemp2:Lcom/masshabit/common/physics/Vector2;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/masshabit/squibble/Player$Hand;->mConstraint:Lcom/masshabit/common/physics/SpringConstraint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/masshabit/common/physics/SpringConstraint;->mP1:Lcom/masshabit/common/physics/Particle;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/masshabit/common/physics/Vector2;->subtract(Lcom/masshabit/common/physics/Vector2;)V

    .line 578
    sget-object v16, Lcom/masshabit/squibble/Player;->sTemp3:Lcom/masshabit/common/physics/Vector2;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/masshabit/squibble/Player$Hand;->mConstraint:Lcom/masshabit/common/physics/SpringConstraint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/masshabit/common/physics/SpringConstraint;->mP2:Lcom/masshabit/common/physics/Particle;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/masshabit/common/physics/Vector2;->set(Lcom/masshabit/common/physics/Vector2;)V

    .line 579
    sget-object v16, Lcom/masshabit/squibble/Player;->sTemp3:Lcom/masshabit/common/physics/Vector2;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/masshabit/squibble/Player$Hand;->mConstraint:Lcom/masshabit/common/physics/SpringConstraint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/masshabit/common/physics/SpringConstraint;->mP2:Lcom/masshabit/common/physics/Particle;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/masshabit/common/physics/Vector2;->add(Lcom/masshabit/common/physics/Vector2;)V

    .line 580
    sget-object v16, Lcom/masshabit/squibble/Player;->sTemp3:Lcom/masshabit/common/physics/Vector2;

    const/high16 v17, 0x40000000    # 2.0f

    invoke-virtual/range {v16 .. v17}, Lcom/masshabit/common/physics/Vector2;->divide(F)V

    .line 581
    sget-object v16, Lcom/masshabit/squibble/Player;->sTemp3:Lcom/masshabit/common/physics/Vector2;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/masshabit/common/physics/CircleParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/masshabit/common/physics/Vector2;->subtract(Lcom/masshabit/common/physics/Vector2;)V

    .line 582
    sget-object v16, Lcom/masshabit/squibble/Player;->sTemp3:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual/range {v16 .. v16}, Lcom/masshabit/common/physics/Vector2;->normalize()F

    .line 584
    sget-object v16, Lcom/masshabit/squibble/Player;->sTemp1:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual/range {v16 .. v16}, Lcom/masshabit/common/physics/Vector2;->normalize()F

    move-result v10

    .line 585
    .local v10, "len1":F
    sget-object v16, Lcom/masshabit/squibble/Player;->sTemp2:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual/range {v16 .. v16}, Lcom/masshabit/common/physics/Vector2;->normalize()F

    move-result v11

    .line 587
    .local v11, "len2":F
    const/16 v16, 0x0

    cmpl-float v16, v10, v16

    if-lez v16, :cond_0

    const/16 v16, 0x0

    cmpl-float v16, v11, v16

    if-lez v16, :cond_0

    .line 589
    sget-object v16, Lcom/masshabit/squibble/Player;->sTemp1:Lcom/masshabit/common/physics/Vector2;

    sget-object v17, Lcom/masshabit/squibble/Player;->sTemp3:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual/range {v16 .. v17}, Lcom/masshabit/common/physics/Vector2;->dot(Lcom/masshabit/common/physics/Vector2;)F

    move-result v6

    .line 590
    .local v6, "cosTheta1":F
    sget-object v16, Lcom/masshabit/squibble/Player;->sTemp2:Lcom/masshabit/common/physics/Vector2;

    sget-object v17, Lcom/masshabit/squibble/Player;->sTemp3:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual/range {v16 .. v17}, Lcom/masshabit/common/physics/Vector2;->dot(Lcom/masshabit/common/physics/Vector2;)F

    move-result v7

    .line 592
    .local v7, "cosTheta2":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/masshabit/squibble/Player$Hand;->mConstraint:Lcom/masshabit/common/physics/SpringConstraint;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/masshabit/common/physics/SpringConstraint;->mK:F

    move/from16 v16, v0

    mul-float v16, v16, v6

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/masshabit/squibble/Player$Hand;->mConstraint:Lcom/masshabit/common/physics/SpringConstraint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/masshabit/common/physics/SpringConstraint;->mRestLength:F

    move/from16 v18, v0

    sub-float v18, v10, v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(FF)F

    move-result v17

    mul-float v3, v16, v17

    .line 595
    .local v3, "contrib1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget-object v16, v16, v17

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/masshabit/squibble/Player$Hand;->mConstraint:Lcom/masshabit/common/physics/SpringConstraint;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/masshabit/common/physics/SpringConstraint;->mK:F

    move/from16 v16, v0

    mul-float v16, v16, v7

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/masshabit/squibble/Player$Hand;->mConstraint:Lcom/masshabit/common/physics/SpringConstraint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/masshabit/common/physics/SpringConstraint;->mRestLength:F

    move/from16 v18, v0

    sub-float v18, v11, v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(FF)F

    move-result v17

    mul-float v4, v16, v17

    .line 598
    .local v4, "contrib2":F
    sget-object v16, Lcom/masshabit/common/physics/Vector2;->DOWN:Lcom/masshabit/common/physics/Vector2;

    sget-object v17, Lcom/masshabit/squibble/Player;->sTemp3:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual/range {v16 .. v17}, Lcom/masshabit/common/physics/Vector2;->dot(Lcom/masshabit/common/physics/Vector2;)F

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/masshabit/common/physics/CircleParticle;->mMass:F

    move/from16 v17, v0

    const/high16 v18, 0x44960000    # 1200.0f

    mul-float v17, v17, v18

    mul-float v5, v16, v17

    .line 601
    .local v5, "contrib3":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/masshabit/squibble/Player$Hand;->mConstraint:Lcom/masshabit/common/physics/SpringConstraint;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/masshabit/common/physics/SpringConstraint;->mK:F

    move/from16 v16, v0

    mul-float v16, v16, v6

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/masshabit/squibble/Player$Hand;->mConstraint:Lcom/masshabit/common/physics/SpringConstraint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/masshabit/common/physics/SpringConstraint;->mMaxLength:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/masshabit/squibble/Player$Hand;->mConstraint:Lcom/masshabit/common/physics/SpringConstraint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/masshabit/common/physics/SpringConstraint;->mRestLength:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(FF)F

    move-result v17

    mul-float v12, v16, v17

    .line 604
    .local v12, "maxContrib1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget-object v16, v16, v17

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/masshabit/squibble/Player$Hand;->mConstraint:Lcom/masshabit/common/physics/SpringConstraint;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/masshabit/common/physics/SpringConstraint;->mK:F

    move/from16 v16, v0

    mul-float v16, v16, v7

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/masshabit/squibble/Player$Hand;->mConstraint:Lcom/masshabit/common/physics/SpringConstraint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/masshabit/common/physics/SpringConstraint;->mMaxLength:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/masshabit/squibble/Player$Hand;->mConstraint:Lcom/masshabit/common/physics/SpringConstraint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/masshabit/common/physics/SpringConstraint;->mRestLength:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(FF)F

    move-result v17

    mul-float v13, v16, v17

    .line 607
    .local v13, "maxContrib2":F
    add-float v16, v3, v4

    add-float v14, v16, v5

    .line 610
    .local v14, "numer":F
    add-float v16, v12, v13

    add-float v8, v16, v5

    .line 613
    .local v8, "denom":F
    div-float v9, v14, v8

    .line 616
    .local v9, "frac":F
    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    move v0, v9

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/masshabit/common/Util;->clamp(FFF)F

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/masshabit/squibble/Player;->lookupShootSpeed(F)F

    move-result v15

    .line 618
    .local v15, "speed":F
    sget-object v16, Lcom/masshabit/squibble/Player;->sTemp3:Lcom/masshabit/common/physics/Vector2;

    move-object/from16 v0, v16

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/masshabit/common/physics/Vector2;->multiply(F)V

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/masshabit/squibble/Player$Hand;->setActive(Z)V

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget-object v16, v16, v17

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/masshabit/squibble/Player$Hand;->setActive(Z)V

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    move-object/from16 v16, v0

    sget-object v17, Lcom/masshabit/squibble/Player;->sTemp3:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual/range {v16 .. v17}, Lcom/masshabit/common/physics/CircleParticle;->setVelocity(Lcom/masshabit/common/physics/Vector2;)V

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/masshabit/common/physics/CircleParticle;->clearAcceleration()V

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/masshabit/common/physics/CircleParticle;->clearForce()V

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/masshabit/common/physics/CircleParticle;->clearImpulse()V

    .line 631
    sget-object v16, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/masshabit/common/Environment;->mScreen:Lcom/masshabit/squibble/Screen;

    move-object/from16 v16, v0

    const/16 v17, 0x2

    invoke-virtual/range {v16 .. v17}, Lcom/masshabit/squibble/Screen;->playSound(I)V

    .line 634
    .end local v3    # "contrib1":F
    .end local v4    # "contrib2":F
    .end local v5    # "contrib3":F
    .end local v6    # "cosTheta1":F
    .end local v7    # "cosTheta2":F
    .end local v8    # "denom":F
    .end local v9    # "frac":F
    .end local v12    # "maxContrib1":F
    .end local v13    # "maxContrib2":F
    .end local v14    # "numer":F
    .end local v15    # "speed":F
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v13, 0x42b40000    # 90.0f

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    .line 388
    sget-object v2, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 390
    .local v2, "env":Lcom/masshabit/common/Environment;
    iget-boolean v6, p0, Lcom/masshabit/squibble/Player;->mShadowEnabled:Z

    if-eqz v6, :cond_0

    .line 392
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 393
    iget-object v6, p0, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    iget-object v6, v6, Lcom/masshabit/common/physics/CircleParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v6, v6, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v7, p0, Lcom/masshabit/squibble/Player;->mShadowPos:Lcom/masshabit/common/physics/Vector2;

    iget v7, v7, Lcom/masshabit/common/physics/Vector2;->x:F

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    iget-object v7, v7, Lcom/masshabit/common/physics/CircleParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v7, v7, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v8, p0, Lcom/masshabit/squibble/Player;->mShadowPos:Lcom/masshabit/common/physics/Vector2;

    iget v8, v8, Lcom/masshabit/common/physics/Vector2;->y:F

    add-float/2addr v7, v8

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 394
    iget-object v6, p0, Lcom/masshabit/squibble/Player;->mShadowPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v6}, Lcom/masshabit/common/physics/Vector2;->length()F

    move-result v6

    iget v7, p0, Lcom/masshabit/squibble/Player;->mShadowCastWidth:F

    sub-float/2addr v6, v7

    neg-float v6, v6

    const/high16 v7, 0x437a0000    # 250.0f

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    double-to-float v5, v6

    .line 395
    .local v5, "scale":F
    iget v6, p0, Lcom/masshabit/squibble/Player;->mShadowCastWidth:F

    iget-object v7, p0, Lcom/masshabit/squibble/Player;->mShadowImage:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    .line 396
    const v6, 0x3dcccccd    # 0.1f

    div-float v7, v5, v9

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 397
    iget-object v6, p0, Lcom/masshabit/squibble/Player;->mShadowImage:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    div-float/2addr v6, v9

    iget-object v7, p0, Lcom/masshabit/squibble/Player;->mShadowImage:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    div-float/2addr v7, v9

    add-float/2addr v7, v9

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 398
    iget-object v6, p0, Lcom/masshabit/squibble/Player;->mShadowImage:Landroid/graphics/Bitmap;

    iget-object v7, v2, Lcom/masshabit/common/Environment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v10, v10, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 399
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 404
    .end local v5    # "scale":F
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v6, p0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    array-length v6, v6

    if-ge v3, v6, :cond_2

    .line 406
    iget-object v6, p0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/masshabit/squibble/Player$Hand;->isActive()Z

    move-result v6

    if-nez v6, :cond_1

    .line 404
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 409
    :cond_1
    sget-object v6, Lcom/masshabit/squibble/Player;->sTemp1:Lcom/masshabit/common/physics/Vector2;

    iget-object v7, p0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    aget-object v7, v7, v3

    iget-object v7, v7, Lcom/masshabit/squibble/Player$Hand;->mConstraint:Lcom/masshabit/common/physics/SpringConstraint;

    iget-object v7, v7, Lcom/masshabit/common/physics/SpringConstraint;->mP1:Lcom/masshabit/common/physics/Particle;

    iget-object v7, v7, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v6, v7}, Lcom/masshabit/common/physics/Vector2;->set(Lcom/masshabit/common/physics/Vector2;)V

    .line 410
    sget-object v6, Lcom/masshabit/squibble/Player;->sTemp1:Lcom/masshabit/common/physics/Vector2;

    iget-object v7, p0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    aget-object v7, v7, v3

    iget-object v7, v7, Lcom/masshabit/squibble/Player$Hand;->mConstraint:Lcom/masshabit/common/physics/SpringConstraint;

    iget-object v7, v7, Lcom/masshabit/common/physics/SpringConstraint;->mP2:Lcom/masshabit/common/physics/Particle;

    iget-object v7, v7, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v6, v7}, Lcom/masshabit/common/physics/Vector2;->subtract(Lcom/masshabit/common/physics/Vector2;)V

    .line 411
    sget-object v6, Lcom/masshabit/squibble/Player;->sTemp1:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v6}, Lcom/masshabit/common/physics/Vector2;->angleDegrees()F

    move-result v6

    neg-float v6, v6

    sub-float v0, v6, v13

    .line 413
    .local v0, "angle":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 414
    iget-object v6, p0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/masshabit/squibble/Player$Hand;->mConstraint:Lcom/masshabit/common/physics/SpringConstraint;

    iget-object v6, v6, Lcom/masshabit/common/physics/SpringConstraint;->mP2:Lcom/masshabit/common/physics/Particle;

    iget-object v6, v6, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v6, v6, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v7, p0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    aget-object v7, v7, v3

    iget-object v7, v7, Lcom/masshabit/squibble/Player$Hand;->mConstraint:Lcom/masshabit/common/physics/SpringConstraint;

    iget-object v7, v7, Lcom/masshabit/common/physics/SpringConstraint;->mP2:Lcom/masshabit/common/physics/Particle;

    iget-object v7, v7, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v7, v7, Lcom/masshabit/common/physics/Vector2;->y:F

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 415
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 416
    iget-object v6, p0, Lcom/masshabit/squibble/Player;->mHandCapImage:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/masshabit/squibble/Player;->mHandCapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    div-float/2addr v7, v9

    iget-object v8, v2, Lcom/masshabit/common/Environment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v10, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 417
    sget-object v6, Lcom/masshabit/squibble/Player;->sTemp1:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v6}, Lcom/masshabit/common/physics/Vector2;->length()F

    move-result v6

    neg-float v6, v6

    iget-object v7, p0, Lcom/masshabit/squibble/Player;->mHandImage:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 418
    iget-object v6, p0, Lcom/masshabit/squibble/Player;->mHandImage:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/masshabit/squibble/Player;->mHandImage:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    div-float/2addr v7, v9

    iget-object v8, v2, Lcom/masshabit/common/Environment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v10, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 419
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_1

    .line 423
    .end local v0    # "angle":F
    :cond_2
    const/4 v4, 0x0

    .line 425
    .local v4, "rotation":F
    invoke-virtual {p0}, Lcom/masshabit/squibble/Player;->bothArmsEngaged()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 427
    iget-object v6, p0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    aget-object v6, v6, v11

    iget-object v6, v6, Lcom/masshabit/squibble/Player$Hand;->mConstraint:Lcom/masshabit/common/physics/SpringConstraint;

    iget-object v6, v6, Lcom/masshabit/common/physics/SpringConstraint;->mP2:Lcom/masshabit/common/physics/Particle;

    iget-object v6, v6, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget-object v7, p0, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    iget-object v7, v7, Lcom/masshabit/common/physics/CircleParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget-object v8, p0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    aget-object v8, v8, v12

    iget-object v8, v8, Lcom/masshabit/squibble/Player$Hand;->mConstraint:Lcom/masshabit/common/physics/SpringConstraint;

    iget-object v8, v8, Lcom/masshabit/common/physics/SpringConstraint;->mP2:Lcom/masshabit/common/physics/Particle;

    iget-object v8, v8, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-static {v6, v7, v8}, Lcom/masshabit/common/physics/CollisionUtils;->signedTriArea(Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;)F

    move-result v1

    .line 433
    .local v1, "area":F
    sget-object v6, Lcom/masshabit/squibble/Player;->sTemp1:Lcom/masshabit/common/physics/Vector2;

    iget-object v7, p0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    aget-object v7, v7, v12

    iget-object v7, v7, Lcom/masshabit/squibble/Player$Hand;->mConstraint:Lcom/masshabit/common/physics/SpringConstraint;

    iget-object v7, v7, Lcom/masshabit/common/physics/SpringConstraint;->mP2:Lcom/masshabit/common/physics/Particle;

    iget-object v7, v7, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v6, v7}, Lcom/masshabit/common/physics/Vector2;->set(Lcom/masshabit/common/physics/Vector2;)V

    .line 434
    sget-object v6, Lcom/masshabit/squibble/Player;->sTemp1:Lcom/masshabit/common/physics/Vector2;

    iget-object v7, p0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    aget-object v7, v7, v11

    iget-object v7, v7, Lcom/masshabit/squibble/Player$Hand;->mConstraint:Lcom/masshabit/common/physics/SpringConstraint;

    iget-object v7, v7, Lcom/masshabit/common/physics/SpringConstraint;->mP2:Lcom/masshabit/common/physics/Particle;

    iget-object v7, v7, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v6, v7}, Lcom/masshabit/common/physics/Vector2;->subtract(Lcom/masshabit/common/physics/Vector2;)V

    .line 435
    sget-object v6, Lcom/masshabit/squibble/Player;->sTemp1:Lcom/masshabit/common/physics/Vector2;

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-virtual {v6, v7}, Lcom/masshabit/common/physics/Vector2;->multiply(F)V

    .line 436
    sget-object v6, Lcom/masshabit/squibble/Player;->sTemp1:Lcom/masshabit/common/physics/Vector2;

    iget-object v7, p0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    aget-object v7, v7, v11

    iget-object v7, v7, Lcom/masshabit/squibble/Player$Hand;->mConstraint:Lcom/masshabit/common/physics/SpringConstraint;

    iget-object v7, v7, Lcom/masshabit/common/physics/SpringConstraint;->mP2:Lcom/masshabit/common/physics/Particle;

    iget-object v7, v7, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v6, v7}, Lcom/masshabit/common/physics/Vector2;->add(Lcom/masshabit/common/physics/Vector2;)V

    .line 437
    sget-object v6, Lcom/masshabit/squibble/Player;->sTemp1:Lcom/masshabit/common/physics/Vector2;

    iget-object v7, p0, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    iget-object v7, v7, Lcom/masshabit/common/physics/CircleParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v6, v7}, Lcom/masshabit/common/physics/Vector2;->subtract(Lcom/masshabit/common/physics/Vector2;)V

    .line 439
    sget-object v6, Lcom/masshabit/squibble/Player;->sTemp1:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v6}, Lcom/masshabit/common/physics/Vector2;->angleDegrees()F

    move-result v6

    neg-float v4, v6

    .line 441
    sget-object v6, Lcom/masshabit/squibble/Player;->sTemp1:Lcom/masshabit/common/physics/Vector2;

    sget-object v7, Lcom/masshabit/common/physics/Vector2;->UP:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v6, v7}, Lcom/masshabit/common/physics/Vector2;->dot(Lcom/masshabit/common/physics/Vector2;)F

    move-result v6

    mul-float/2addr v6, v1

    cmpl-float v6, v6, v10

    if-lez v6, :cond_3

    .line 443
    const/high16 v6, 0x43340000    # 180.0f

    sub-float/2addr v4, v6

    .line 459
    .end local v1    # "area":F
    :cond_3
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 460
    iget-object v6, p0, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    iget-object v6, v6, Lcom/masshabit/common/physics/CircleParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v6, v6, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v7, p0, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    iget-object v7, v7, Lcom/masshabit/common/physics/CircleParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v7, v7, Lcom/masshabit/common/physics/Vector2;->y:F

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 461
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 462
    iget v6, p0, Lcom/masshabit/squibble/Player;->mWidth:F

    neg-float v6, v6

    div-float/2addr v6, v9

    iget v7, p0, Lcom/masshabit/squibble/Player;->mHeight:F

    neg-float v7, v7

    div-float/2addr v7, v9

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 464
    iget-object v6, p0, Lcom/masshabit/squibble/Player;->mAnimState:Lcom/masshabit/common/resource/AnimationState;

    iget-object v6, v6, Lcom/masshabit/common/resource/AnimationState;->mCurrent:Landroid/graphics/Bitmap;

    iget-object v7, v2, Lcom/masshabit/common/Environment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v10, v10, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 465
    invoke-virtual {p0, p1}, Lcom/masshabit/squibble/Player;->drawChildren(Landroid/graphics/Canvas;)V

    .line 466
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 468
    return-void

    .line 446
    :cond_4
    iget-object v6, p0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    aget-object v6, v6, v12

    invoke-virtual {v6}, Lcom/masshabit/squibble/Player$Hand;->isActive()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 448
    sget-object v6, Lcom/masshabit/squibble/Player;->sTemp1:Lcom/masshabit/common/physics/Vector2;

    iget-object v7, p0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    aget-object v7, v7, v12

    iget-object v7, v7, Lcom/masshabit/squibble/Player$Hand;->mConstraint:Lcom/masshabit/common/physics/SpringConstraint;

    iget-object v7, v7, Lcom/masshabit/common/physics/SpringConstraint;->mP2:Lcom/masshabit/common/physics/Particle;

    iget-object v7, v7, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v6, v7}, Lcom/masshabit/common/physics/Vector2;->set(Lcom/masshabit/common/physics/Vector2;)V

    .line 449
    sget-object v6, Lcom/masshabit/squibble/Player;->sTemp1:Lcom/masshabit/common/physics/Vector2;

    iget-object v7, p0, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    iget-object v7, v7, Lcom/masshabit/common/physics/CircleParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v6, v7}, Lcom/masshabit/common/physics/Vector2;->subtract(Lcom/masshabit/common/physics/Vector2;)V

    .line 450
    sget-object v6, Lcom/masshabit/squibble/Player;->sTemp1:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v6}, Lcom/masshabit/common/physics/Vector2;->angleDegrees()F

    move-result v6

    neg-float v6, v6

    sub-float v4, v6, v13

    goto :goto_2

    .line 452
    :cond_5
    iget-object v6, p0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    aget-object v6, v6, v11

    invoke-virtual {v6}, Lcom/masshabit/squibble/Player$Hand;->isActive()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 454
    sget-object v6, Lcom/masshabit/squibble/Player;->sTemp1:Lcom/masshabit/common/physics/Vector2;

    iget-object v7, p0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    aget-object v7, v7, v11

    iget-object v7, v7, Lcom/masshabit/squibble/Player$Hand;->mConstraint:Lcom/masshabit/common/physics/SpringConstraint;

    iget-object v7, v7, Lcom/masshabit/common/physics/SpringConstraint;->mP2:Lcom/masshabit/common/physics/Particle;

    iget-object v7, v7, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v6, v7}, Lcom/masshabit/common/physics/Vector2;->set(Lcom/masshabit/common/physics/Vector2;)V

    .line 455
    sget-object v6, Lcom/masshabit/squibble/Player;->sTemp1:Lcom/masshabit/common/physics/Vector2;

    iget-object v7, p0, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    iget-object v7, v7, Lcom/masshabit/common/physics/CircleParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v6, v7}, Lcom/masshabit/common/physics/Vector2;->subtract(Lcom/masshabit/common/physics/Vector2;)V

    .line 456
    sget-object v6, Lcom/masshabit/squibble/Player;->sTemp1:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v6}, Lcom/masshabit/common/physics/Vector2;->angleDegrees()F

    move-result v6

    neg-float v6, v6

    add-float v4, v6, v13

    goto/16 :goto_2
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 482
    iget v0, p0, Lcom/masshabit/squibble/Player;->mState:I

    return v0
.end method

.method public init()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    .line 267
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 269
    .local v0, "env":Lcom/masshabit/common/Environment;
    new-instance v3, Lcom/masshabit/common/resource/AnimationState;

    iget-object v2, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v2, v2, Lcom/masshabit/common/Level;->mAnims:Lcom/masshabit/common/resource/AnimationResourceMap;

    iget-object v4, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v4, v4, Lcom/masshabit/common/Level;->mAnims:Lcom/masshabit/common/resource/AnimationResourceMap;

    const-string v5, "common/squibble/anim.def"

    invoke-virtual {v4, v5}, Lcom/masshabit/common/resource/AnimationResourceMap;->load(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/masshabit/common/resource/AnimationResourceMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/masshabit/common/resource/Animation;

    invoke-direct {v3, v2}, Lcom/masshabit/common/resource/AnimationState;-><init>(Lcom/masshabit/common/resource/Animation;)V

    iput-object v3, p0, Lcom/masshabit/squibble/Player;->mAnimState:Lcom/masshabit/common/resource/AnimationState;

    .line 270
    iget-object v2, p0, Lcom/masshabit/squibble/Player;->mAnimState:Lcom/masshabit/common/resource/AnimationState;

    const-string v3, "idle"

    invoke-virtual {v2, v3}, Lcom/masshabit/common/resource/AnimationState;->setTrack(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0, v8}, Lcom/masshabit/squibble/Player;->setState(I)V

    .line 273
    iget-object v2, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v2, v2, Lcom/masshabit/common/Level;->mBitmaps:Lcom/masshabit/common/resource/BitmapResourceMap;

    iget-object v3, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v3, v3, Lcom/masshabit/common/Level;->mBitmaps:Lcom/masshabit/common/resource/BitmapResourceMap;

    const-string v4, "common/squibble/hand.png"

    invoke-virtual {v3, v4}, Lcom/masshabit/common/resource/BitmapResourceMap;->load(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/masshabit/common/resource/BitmapResourceMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/masshabit/squibble/Player;->mHandImage:Landroid/graphics/Bitmap;

    .line 274
    iget-object v2, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v2, v2, Lcom/masshabit/common/Level;->mBitmaps:Lcom/masshabit/common/resource/BitmapResourceMap;

    iget-object v3, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v3, v3, Lcom/masshabit/common/Level;->mBitmaps:Lcom/masshabit/common/resource/BitmapResourceMap;

    const-string v4, "common/squibble/hand_cap.png"

    invoke-virtual {v3, v4}, Lcom/masshabit/common/resource/BitmapResourceMap;->load(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/masshabit/common/resource/BitmapResourceMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/masshabit/squibble/Player;->mHandCapImage:Landroid/graphics/Bitmap;

    .line 275
    iget-object v2, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v2, v2, Lcom/masshabit/common/Level;->mBitmaps:Lcom/masshabit/common/resource/BitmapResourceMap;

    iget-object v3, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v3, v3, Lcom/masshabit/common/Level;->mBitmaps:Lcom/masshabit/common/resource/BitmapResourceMap;

    const-string v4, "common/shadow.png"

    invoke-virtual {v3, v4}, Lcom/masshabit/common/resource/BitmapResourceMap;->load(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/masshabit/common/resource/BitmapResourceMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/masshabit/squibble/Player;->mShadowImage:Landroid/graphics/Bitmap;

    .line 277
    iget-object v2, p0, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    invoke-virtual {v2}, Lcom/masshabit/common/physics/CircleParticle;->getRadius()F

    move-result v2

    mul-float/2addr v2, v6

    iput v2, p0, Lcom/masshabit/squibble/Player;->mShadowCastWidth:F

    .line 281
    iget-object v2, p0, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    const/4 v3, 0x0

    iput v3, v2, Lcom/masshabit/common/physics/CircleParticle;->mFriction:F

    .line 282
    iget-object v2, p0, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    iget-object v3, p0, Lcom/masshabit/squibble/Player;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->x:F

    iget v4, p0, Lcom/masshabit/squibble/Player;->mWidth:F

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/masshabit/squibble/Player;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v4, v4, Lcom/masshabit/common/physics/Vector2;->y:F

    iget v5, p0, Lcom/masshabit/squibble/Player;->mHeight:F

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/masshabit/common/physics/CircleParticle;->setPosition(FF)V

    .line 283
    iget-object v2, p0, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    invoke-virtual {v2, p0}, Lcom/masshabit/common/physics/CircleParticle;->setCollisionListener(Lcom/masshabit/common/physics/ICollisionListener;)V

    .line 284
    iget-object v2, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v2, v2, Lcom/masshabit/common/Level;->mPlayerGeom:Lcom/masshabit/common/physics/CollisionGroup;

    iget-object v3, p0, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    invoke-virtual {v2, v3}, Lcom/masshabit/common/physics/CollisionGroup;->add(Lcom/masshabit/common/physics/Particle;)V

    .line 286
    iget-object v2, p0, Lcom/masshabit/squibble/Player;->mDragSpring:Lcom/masshabit/common/physics/SpringConstraint;

    invoke-virtual {v2, v7}, Lcom/masshabit/common/physics/SpringConstraint;->setEnabled(Z)V

    .line 287
    iget-object v2, v0, Lcom/masshabit/common/Environment;->mPhysics:Lcom/masshabit/common/physics/Physics;

    iget-object v3, p0, Lcom/masshabit/squibble/Player;->mDragSpring:Lcom/masshabit/common/physics/SpringConstraint;

    invoke-virtual {v2, v3}, Lcom/masshabit/common/physics/Physics;->registerConstraint(Lcom/masshabit/common/physics/Constraint;)V

    .line 289
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 291
    iget-object v2, p0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/masshabit/squibble/Player$Hand;->init()V

    .line 289
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 294
    :cond_0
    const/4 v2, 0x3

    iput v2, p0, Lcom/masshabit/squibble/Player;->mHealth:I

    .line 295
    iput v7, p0, Lcom/masshabit/squibble/Player;->mHandIndex:I

    .line 297
    iget-object v2, p0, Lcom/masshabit/squibble/Player;->mRayCastCollisionGroups:[Lcom/masshabit/common/physics/CollisionGroup;

    iget-object v3, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v3, v3, Lcom/masshabit/common/Level;->mBoundaryGeom:Lcom/masshabit/common/physics/CollisionGroup;

    aput-object v3, v2, v7

    .line 298
    iget-object v2, p0, Lcom/masshabit/squibble/Player;->mRayCastCollisionGroups:[Lcom/masshabit/common/physics/CollisionGroup;

    iget-object v3, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v3, v3, Lcom/masshabit/common/Level;->mCollisionGeom:Lcom/masshabit/common/physics/CollisionGroup;

    aput-object v3, v2, v8

    .line 300
    invoke-virtual {p0}, Lcom/masshabit/squibble/Player;->initChildren()V

    .line 301
    return-void
.end method

.method protected lookupShootSpeed(F)F
    .locals 5
    .param p1, "t"    # F

    .prologue
    .line 561
    const v0, 0x44898000    # 1100.0f

    float-to-double v1, p1

    const-wide/high16 v3, 0x3fd0000000000000L    # 0.25

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public onCollide(Lcom/masshabit/common/physics/Particle;Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;FF)I
    .locals 6
    .param p1, "other"    # Lcom/masshabit/common/physics/Particle;
    .param p2, "mtd"    # Lcom/masshabit/common/physics/Vector2;
    .param p3, "vel"    # Lcom/masshabit/common/physics/Vector2;
    .param p4, "n"    # Lcom/masshabit/common/physics/Vector2;
    .param p5, "depth"    # F
    .param p6, "dir"    # F

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 703
    iget-object v0, p1, Lcom/masshabit/common/physics/Particle;->mGroup:Lcom/masshabit/common/physics/CollisionGroup;

    sget-object v1, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    iget-object v1, v1, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v1, v1, Lcom/masshabit/common/Level;->mHurtyGeom:Lcom/masshabit/common/physics/CollisionGroup;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/masshabit/common/physics/Particle;->mGroup:Lcom/masshabit/common/physics/CollisionGroup;

    sget-object v1, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    iget-object v1, v1, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v1, v1, Lcom/masshabit/common/Level;->mHurtyNPCGeom:Lcom/masshabit/common/physics/CollisionGroup;

    if-ne v0, v1, :cond_3

    .line 721
    :cond_0
    iget v0, p0, Lcom/masshabit/squibble/Player;->mState:I

    if-ne v0, v3, :cond_1

    .line 723
    iget v0, p0, Lcom/masshabit/squibble/Player;->mHealth:I

    if-le v0, v3, :cond_2

    .line 725
    iget v0, p0, Lcom/masshabit/squibble/Player;->mHealth:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/masshabit/squibble/Player;->mHealth:I

    .line 726
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/masshabit/squibble/Player;->setState(I)V

    .line 727
    iget-object v0, p0, Lcom/masshabit/squibble/Player;->mAnimState:Lcom/masshabit/common/resource/AnimationState;

    const-string v1, "hurt"

    invoke-virtual {v0, v1}, Lcom/masshabit/common/resource/AnimationState;->setTrack(Ljava/lang/String;)V

    .line 728
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    iget-object v0, v0, Lcom/masshabit/common/Environment;->mScreen:Lcom/masshabit/squibble/Screen;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/masshabit/squibble/Screen;->playSound(I)V

    .end local p0    # "this":Lcom/masshabit/squibble/Player;
    :cond_1
    :goto_0
    move v0, v3

    .line 777
    :goto_1
    return v0

    .line 733
    .restart local p0    # "this":Lcom/masshabit/squibble/Player;
    :cond_2
    iput v2, p0, Lcom/masshabit/squibble/Player;->mHealth:I

    .line 734
    invoke-virtual {p0, v4}, Lcom/masshabit/squibble/Player;->setState(I)V

    .line 735
    iget-object v0, p0, Lcom/masshabit/squibble/Player;->mAnimState:Lcom/masshabit/common/resource/AnimationState;

    const-string v1, "dead"

    invoke-virtual {v0, v1}, Lcom/masshabit/common/resource/AnimationState;->setTrack(Ljava/lang/String;)V

    .line 738
    iput-boolean v2, p0, Lcom/masshabit/squibble/Player;->mDragging:Z

    .line 739
    iget-object v0, p0, Lcom/masshabit/squibble/Player;->mDragSpring:Lcom/masshabit/common/physics/SpringConstraint;

    invoke-virtual {v0, v2}, Lcom/masshabit/common/physics/SpringConstraint;->setEnabled(Z)V

    .line 742
    iget-object v0, p0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Lcom/masshabit/squibble/Player$Hand;->setActive(Z)V

    .line 743
    iget-object v0, p0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lcom/masshabit/squibble/Player$Hand;->setActive(Z)V

    .line 745
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    iget-object v0, v0, Lcom/masshabit/common/Environment;->mGame:Lcom/masshabit/squibble/Game;

    iget-object p0, v0, Lcom/masshabit/squibble/Game;->mScreen:Lcom/masshabit/squibble/Screen;

    .end local p0    # "this":Lcom/masshabit/squibble/Player;
    check-cast p0, Lcom/masshabit/squibble/GameScreen;

    invoke-virtual {p0}, Lcom/masshabit/squibble/GameScreen;->playerDead()V

    .line 747
    const-string v0, "Player"

    const-string v1, "Game over"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 755
    .restart local p0    # "this":Lcom/masshabit/squibble/Player;
    :cond_3
    iget-object v0, p1, Lcom/masshabit/common/physics/Particle;->mGroup:Lcom/masshabit/common/physics/CollisionGroup;

    sget-object v1, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    iget-object v1, v1, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v1, v1, Lcom/masshabit/common/Level;->mExitGeom:Lcom/masshabit/common/physics/CollisionGroup;

    if-ne v0, v1, :cond_5

    .line 757
    iget v0, p0, Lcom/masshabit/squibble/Player;->mState:I

    if-eq v0, v4, :cond_4

    iget v0, p0, Lcom/masshabit/squibble/Player;->mState:I

    if-eq v0, v5, :cond_4

    .line 760
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    iget-object v0, v0, Lcom/masshabit/common/Environment;->mGame:Lcom/masshabit/squibble/Game;

    iget-object v0, v0, Lcom/masshabit/squibble/Game;->mScreen:Lcom/masshabit/squibble/Screen;

    check-cast v0, Lcom/masshabit/squibble/GameScreen;

    invoke-virtual {v0}, Lcom/masshabit/squibble/GameScreen;->playerWon()V

    .line 761
    invoke-virtual {p0, v5}, Lcom/masshabit/squibble/Player;->setState(I)V

    :cond_4
    move v0, v2

    .line 763
    goto :goto_1

    :cond_5
    move v0, v3

    .line 777
    goto :goto_1
.end method

.method public onInputEvent(FFLcom/masshabit/common/InputEvent;)Z
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "e"    # Lcom/masshabit/common/InputEvent;

    .prologue
    const/4 v5, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/high16 v7, 0x44c80000    # 1600.0f

    const/4 v6, 0x1

    .line 498
    iget v4, p0, Lcom/masshabit/squibble/Player;->mState:I

    if-eq v4, v9, :cond_0

    iget v4, p0, Lcom/masshabit/squibble/Player;->mState:I

    if-ne v4, v5, :cond_1

    :cond_0
    move v4, v8

    .line 550
    :goto_0
    return v4

    .line 501
    :cond_1
    iget v4, p3, Lcom/masshabit/common/InputEvent;->mAction:I

    if-ne v4, v5, :cond_3

    iget-boolean v4, p0, Lcom/masshabit/squibble/Player;->mDragging:Z

    if-eqz v4, :cond_3

    .line 503
    iget-object v4, p0, Lcom/masshabit/squibble/Player;->mDragParticle:Lcom/masshabit/common/physics/Particle;

    invoke-virtual {v4, p1, p2}, Lcom/masshabit/common/physics/Particle;->setPosition(FF)V

    :cond_2
    :goto_1
    move v4, v6

    .line 550
    goto :goto_0

    .line 505
    :cond_3
    iget v4, p3, Lcom/masshabit/common/InputEvent;->mAction:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    iget-boolean v4, p0, Lcom/masshabit/squibble/Player;->mDragging:Z

    if-eqz v4, :cond_4

    .line 507
    invoke-virtual {p0, p1, p2}, Lcom/masshabit/squibble/Player;->dragEnd(FF)V

    goto :goto_1

    .line 509
    :cond_4
    iget v4, p3, Lcom/masshabit/common/InputEvent;->mAction:I

    if-ne v4, v9, :cond_2

    .line 511
    iget-boolean v4, p0, Lcom/masshabit/squibble/Player;->mDragging:Z

    if-nez v4, :cond_8

    .line 513
    invoke-virtual {p0}, Lcom/masshabit/squibble/Player;->bothArmsEngaged()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 515
    iget-object v4, p0, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    iget-object v4, v4, Lcom/masshabit/common/physics/CircleParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v4, v4, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float v1, p1, v4

    .line 516
    .local v1, "dx":F
    iget-object v4, p0, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    iget-object v4, v4, Lcom/masshabit/common/physics/CircleParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v4, v4, Lcom/masshabit/common/physics/Vector2;->y:F

    sub-float v2, p2, v4

    .line 517
    .local v2, "dy":F
    mul-float v4, v1, v1

    mul-float v5, v2, v2

    add-float v0, v4, v5

    .line 518
    .local v0, "dsq":F
    cmpg-float v4, v0, v7

    if-gez v4, :cond_5

    .line 521
    iget-object v4, p0, Lcom/masshabit/squibble/Player;->mDragParticle:Lcom/masshabit/common/physics/Particle;

    invoke-virtual {v4, p1, p2}, Lcom/masshabit/common/physics/Particle;->setPosition(FF)V

    .line 522
    iput-boolean v6, p0, Lcom/masshabit/squibble/Player;->mDragging:Z

    .line 523
    iget-object v4, p0, Lcom/masshabit/squibble/Player;->mDragSpring:Lcom/masshabit/common/physics/SpringConstraint;

    invoke-virtual {v4, v6}, Lcom/masshabit/common/physics/SpringConstraint;->setEnabled(Z)V

    .line 525
    sget-object v4, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    iget-object v4, v4, Lcom/masshabit/common/Environment;->mScreen:Lcom/masshabit/squibble/Screen;

    invoke-virtual {v4, v6}, Lcom/masshabit/squibble/Screen;->playSound(I)V

    move v4, v6

    .line 526
    goto :goto_0

    .line 531
    .end local v0    # "dsq":F
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    :cond_5
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget-object v4, p0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    array-length v4, v4

    if-ge v3, v4, :cond_8

    .line 533
    iget-object v4, p0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/masshabit/squibble/Player$Hand;->isActive()Z

    move-result v4

    if-nez v4, :cond_7

    .line 531
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 536
    :cond_7
    iget-object v4, p0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/masshabit/squibble/Player$Hand;->mTarget:Lcom/masshabit/common/physics/Particle;

    iget-object v4, v4, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v4, v4, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v5, p0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/masshabit/squibble/Player$Hand;->mRelativeOffset:Lcom/masshabit/common/physics/Vector2;

    iget v5, v5, Lcom/masshabit/common/physics/Vector2;->x:F

    add-float/2addr v4, v5

    sub-float v1, p1, v4

    .line 537
    .restart local v1    # "dx":F
    iget-object v4, p0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/masshabit/squibble/Player$Hand;->mTarget:Lcom/masshabit/common/physics/Particle;

    iget-object v4, v4, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v4, v4, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v5, p0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/masshabit/squibble/Player$Hand;->mRelativeOffset:Lcom/masshabit/common/physics/Vector2;

    iget v5, v5, Lcom/masshabit/common/physics/Vector2;->y:F

    add-float/2addr v4, v5

    sub-float v2, p2, v4

    .line 538
    .restart local v2    # "dy":F
    mul-float v4, v1, v1

    mul-float v5, v2, v2

    add-float v0, v4, v5

    .line 539
    .restart local v0    # "dsq":F
    cmpg-float v4, v0, v7

    if-gez v4, :cond_6

    .line 542
    iput v3, p0, Lcom/masshabit/squibble/Player;->mHandIndex:I

    .line 543
    iget-object v4, p0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    aget-object v4, v4, v3

    invoke-virtual {v4, v8}, Lcom/masshabit/squibble/Player$Hand;->setActive(Z)V

    move v4, v6

    .line 544
    goto/16 :goto_0

    .line 548
    .end local v0    # "dsq":F
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    .end local v3    # "i":I
    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/masshabit/squibble/Player;->castGrapple(FF)Z

    goto/16 :goto_1
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "in"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 325
    const-string v1, "Player"

    const-string v2, "Restoring player state from bundle"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-string v1, "entity_%d_"

    new-array v2, v6, [Ljava/lang/Object;

    sget v3, Lcom/masshabit/squibble/Player;->sEntityIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "prefix":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/masshabit/squibble/Player;->mState:I

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "health"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/masshabit/squibble/Player;->mHealth:I

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "hand_index"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/masshabit/squibble/Player;->mHandIndex:I

    .line 332
    iget-object v1, p0, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    iget-object v1, v1, Lcom/masshabit/common/physics/CircleParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "particle_pos_x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lcom/masshabit/common/physics/Vector2;->x:F

    .line 333
    iget-object v1, p0, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    iget-object v1, v1, Lcom/masshabit/common/physics/CircleParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "particle_pos_y"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lcom/masshabit/common/physics/Vector2;->y:F

    .line 335
    iget-object v1, p0, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "particle_vel_x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "particle_vel_y"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/masshabit/common/physics/CircleParticle;->setVelocity(FF)V

    .line 337
    iget-object v1, p0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    aget-object v1, v1, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "hand_0_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/masshabit/squibble/Player$Hand;->restoreState(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 338
    iget-object v1, p0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    aget-object v1, v1, v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "hand_1_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/masshabit/squibble/Player$Hand;->restoreState(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 339
    sget v1, Lcom/masshabit/squibble/Player;->sEntityIndex:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/masshabit/squibble/Player;->sEntityIndex:I

    .line 340
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "out"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 306
    const-string v1, "entity_%d_"

    new-array v2, v5, [Ljava/lang/Object;

    sget v3, Lcom/masshabit/squibble/Player;->sEntityIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "prefix":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/masshabit/squibble/Player;->mState:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "health"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/masshabit/squibble/Player;->mHealth:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "hand_index"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/masshabit/squibble/Player;->mHandIndex:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "particle_pos_x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    iget-object v2, v2, Lcom/masshabit/common/physics/CircleParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->x:F

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "particle_pos_y"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    iget-object v2, v2, Lcom/masshabit/common/physics/CircleParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->y:F

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "particle_vel_x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    invoke-virtual {v2}, Lcom/masshabit/common/physics/CircleParticle;->velX()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "particle_vel_y"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    invoke-virtual {v2}, Lcom/masshabit/common/physics/CircleParticle;->velY()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 317
    iget-object v1, p0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    aget-object v1, v1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "hand_0_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/masshabit/squibble/Player$Hand;->saveState(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 318
    iget-object v1, p0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    aget-object v1, v1, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "hand_1_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/masshabit/squibble/Player$Hand;->saveState(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 319
    sget v1, Lcom/masshabit/squibble/Player;->sEntityIndex:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/masshabit/squibble/Player;->sEntityIndex:I

    .line 320
    return-void
.end method

.method protected setGrapple(Lcom/masshabit/common/physics/Particle;FF)V
    .locals 2
    .param p1, "collider"    # Lcom/masshabit/common/physics/Particle;
    .param p2, "relx"    # F
    .param p3, "rely"    # F

    .prologue
    .line 691
    iget-object v0, p0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    iget v1, p0, Lcom/masshabit/squibble/Player;->mHandIndex:I

    aget-object v0, v0, v1

    iput-object p1, v0, Lcom/masshabit/squibble/Player$Hand;->mTarget:Lcom/masshabit/common/physics/Particle;

    .line 692
    iget-object v0, p0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    iget v1, p0, Lcom/masshabit/squibble/Player;->mHandIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/masshabit/squibble/Player$Hand;->mRelativeOffset:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v0, p2, p3}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 693
    iget-object v0, p0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    iget v1, p0, Lcom/masshabit/squibble/Player;->mHandIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/masshabit/squibble/Player$Hand;->setActive(Z)V

    .line 694
    iget v0, p0, Lcom/masshabit/squibble/Player;->mHandIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/masshabit/squibble/Player;->mHandIndex:I

    .line 696
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    iget-object v0, v0, Lcom/masshabit/common/Environment;->mScreen:Lcom/masshabit/squibble/Screen;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/masshabit/squibble/Screen;->playSound(I)V

    .line 697
    return-void
.end method

.method public setPosition(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 472
    iget-object v0, p0, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    invoke-virtual {v0, p1, p2}, Lcom/masshabit/common/physics/CircleParticle;->setPosition(FF)V

    .line 473
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 487
    iput p1, p0, Lcom/masshabit/squibble/Player;->mState:I

    .line 488
    return-void
.end method

.method public setVelocity(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 477
    iget-object v0, p0, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    invoke-virtual {v0, p1, p2}, Lcom/masshabit/common/physics/CircleParticle;->setVelocity(FF)V

    .line 478
    return-void
.end method

.method public update(F)V
    .locals 10
    .param p1, "dt"    # F

    .prologue
    const/4 v9, 0x1

    .line 344
    sget-object v7, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 346
    .local v7, "env":Lcom/masshabit/common/Environment;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v0, p0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    array-length v0, v0

    if-ge v8, v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/masshabit/squibble/Player;->mHands:[Lcom/masshabit/squibble/Player$Hand;

    aget-object v0, v0, v8

    invoke-virtual {v0, p1}, Lcom/masshabit/squibble/Player$Hand;->update(F)V

    .line 346
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 351
    :cond_0
    iget v0, p0, Lcom/masshabit/squibble/Player;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/masshabit/squibble/Player;->mAnimState:Lcom/masshabit/common/resource/AnimationState;

    invoke-virtual {v0}, Lcom/masshabit/common/resource/AnimationState;->isTrackDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    invoke-virtual {p0, v9}, Lcom/masshabit/squibble/Player;->setState(I)V

    .line 354
    iget-object v0, p0, Lcom/masshabit/squibble/Player;->mAnimState:Lcom/masshabit/common/resource/AnimationState;

    const-string v1, "idle"

    invoke-virtual {v0, v1}, Lcom/masshabit/common/resource/AnimationState;->setTrack(Ljava/lang/String;)V

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/masshabit/squibble/Player;->mAnimState:Lcom/masshabit/common/resource/AnimationState;

    invoke-virtual {v0, p1}, Lcom/masshabit/common/resource/AnimationState;->update(F)V

    .line 361
    iget-object v0, p0, Lcom/masshabit/squibble/Player;->mRayCastResult:Lcom/masshabit/common/physics/Physics$RayCastResult;

    invoke-virtual {v0}, Lcom/masshabit/common/physics/Physics$RayCastResult;->reset()V

    .line 362
    iget-object v0, v7, Lcom/masshabit/common/Environment;->mPhysics:Lcom/masshabit/common/physics/Physics;

    iget-object v1, p0, Lcom/masshabit/squibble/Player;->mRayCastCollisionGroups:[Lcom/masshabit/common/physics/CollisionGroup;

    iget-object v2, p0, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    iget-object v2, v2, Lcom/masshabit/common/physics/CircleParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v3, p0, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    iget-object v3, v3, Lcom/masshabit/common/physics/CircleParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->y:F

    sget-object v4, Lcom/masshabit/common/physics/Vector2;->DOWN:Lcom/masshabit/common/physics/Vector2;

    iget v4, v4, Lcom/masshabit/common/physics/Vector2;->x:F

    sget-object v5, Lcom/masshabit/common/physics/Vector2;->DOWN:Lcom/masshabit/common/physics/Vector2;

    iget v5, v5, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v6, p0, Lcom/masshabit/squibble/Player;->mRayCastResult:Lcom/masshabit/common/physics/Physics$RayCastResult;

    invoke-virtual/range {v0 .. v6}, Lcom/masshabit/common/physics/Physics;->rayCastQuery([Lcom/masshabit/common/physics/CollisionGroup;FFFFLcom/masshabit/common/physics/Physics$RayCastResult;)V

    .line 371
    iget-object v0, p0, Lcom/masshabit/squibble/Player;->mRayCastResult:Lcom/masshabit/common/physics/Physics$RayCastResult;

    iget-boolean v0, v0, Lcom/masshabit/common/physics/Physics$RayCastResult;->collision:Z

    if-eqz v0, :cond_2

    .line 373
    iput-boolean v9, p0, Lcom/masshabit/squibble/Player;->mShadowEnabled:Z

    .line 374
    iget-object v0, p0, Lcom/masshabit/squibble/Player;->mShadowPos:Lcom/masshabit/common/physics/Vector2;

    sget-object v1, Lcom/masshabit/common/physics/Vector2;->DOWN:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v0, v1}, Lcom/masshabit/common/physics/Vector2;->set(Lcom/masshabit/common/physics/Vector2;)V

    .line 375
    iget-object v0, p0, Lcom/masshabit/squibble/Player;->mShadowPos:Lcom/masshabit/common/physics/Vector2;

    iget-object v1, p0, Lcom/masshabit/squibble/Player;->mRayCastResult:Lcom/masshabit/common/physics/Physics$RayCastResult;

    iget v1, v1, Lcom/masshabit/common/physics/Physics$RayCastResult;->param:F

    invoke-virtual {v0, v1}, Lcom/masshabit/common/physics/Vector2;->multiply(F)V

    .line 382
    :goto_1
    invoke-virtual {p0, p1}, Lcom/masshabit/squibble/Player;->updateChildren(F)V

    .line 383
    return-void

    .line 379
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/masshabit/squibble/Player;->mShadowEnabled:Z

    goto :goto_1
.end method
