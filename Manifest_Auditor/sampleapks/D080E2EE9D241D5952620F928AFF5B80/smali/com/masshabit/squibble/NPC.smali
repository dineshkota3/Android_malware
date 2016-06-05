.class public Lcom/masshabit/squibble/NPC;
.super Lcom/masshabit/common/entity/Entity;
.source "NPC.java"

# interfaces
.implements Lcom/masshabit/common/tween/ITweenCompleteListener;


# static fields
.field protected static final ANIM_IDLE:Ljava/lang/String; = "idle"

.field protected static final DEFAULT_SPEED:F = 100.0f

.field public static final TAG:Ljava/lang/String; = "NPC"


# instance fields
.field protected mAnimState:Lcom/masshabit/common/resource/AnimationState;

.field protected mAutoFlip:Z

.field protected mCurrent:Landroid/graphics/Bitmap;

.field protected mFlip:F

.field protected mOriginalScaleX:F

.field public mParticle:Lcom/masshabit/common/physics/Particle;

.field protected mPath:Lcom/masshabit/common/entity/PathEntity;

.field protected mProgress:F

.field protected mProgressTween:Lcom/masshabit/common/tween/Tween;

.field protected final mRayCastCollisionGroups:[Lcom/masshabit/common/physics/CollisionGroup;

.field protected final mRayCastResult:Lcom/masshabit/common/physics/Physics$RayCastResult;

.field protected mShadowCastWidth:F

.field protected mShadowEnabled:Z

.field protected mShadowImage:Landroid/graphics/Bitmap;

.field protected final mShadowPos:Lcom/masshabit/common/physics/Vector2;

.field protected mSpeed:F

.field protected mUsesShadow:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/masshabit/common/entity/Entity;-><init>()V

    .line 48
    new-instance v0, Lcom/masshabit/common/physics/Physics$RayCastResult;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Physics$RayCastResult;-><init>()V

    iput-object v0, p0, Lcom/masshabit/squibble/NPC;->mRayCastResult:Lcom/masshabit/common/physics/Physics$RayCastResult;

    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/masshabit/common/physics/CollisionGroup;

    iput-object v0, p0, Lcom/masshabit/squibble/NPC;->mRayCastCollisionGroups:[Lcom/masshabit/common/physics/CollisionGroup;

    .line 51
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Vector2;-><init>()V

    iput-object v0, p0, Lcom/masshabit/squibble/NPC;->mShadowPos:Lcom/masshabit/common/physics/Vector2;

    .line 63
    return-void
.end method


# virtual methods
.method public calcMatrix()V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 169
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/masshabit/squibble/NPC;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v2, p0, Lcom/masshabit/squibble/NPC;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 170
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/masshabit/squibble/NPC;->mScaleX:F

    iget v2, p0, Lcom/masshabit/squibble/NPC;->mScaleY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 171
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/masshabit/squibble/NPC;->mRadians:F

    const v2, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v1, v2

    const/high16 v2, 0x43340000    # 180.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 172
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    .line 281
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 283
    .local v0, "env":Lcom/masshabit/common/Environment;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 284
    iget-object v2, p0, Lcom/masshabit/squibble/NPC;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 292
    iget-boolean v2, p0, Lcom/masshabit/squibble/NPC;->mShadowEnabled:Z

    if-eqz v2, :cond_0

    .line 294
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 295
    iget-object v2, p0, Lcom/masshabit/squibble/NPC;->mShadowPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v3, p0, Lcom/masshabit/squibble/NPC;->mShadowPos:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->y:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 296
    iget-object v2, p0, Lcom/masshabit/squibble/NPC;->mShadowPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v2}, Lcom/masshabit/common/physics/Vector2;->length()F

    move-result v2

    iget v3, p0, Lcom/masshabit/squibble/NPC;->mShadowCastWidth:F

    sub-float/2addr v2, v3

    neg-float v2, v2

    const/high16 v3, 0x437a0000    # 250.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 297
    .local v1, "scale":F
    iget v2, p0, Lcom/masshabit/squibble/NPC;->mShadowCastWidth:F

    iget-object v3, p0, Lcom/masshabit/squibble/NPC;->mShadowImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    .line 298
    const v2, 0x3dcccccd    # 0.1f

    div-float v3, v1, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 299
    iget-object v2, p0, Lcom/masshabit/squibble/NPC;->mShadowImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget-object v3, p0, Lcom/masshabit/squibble/NPC;->mShadowImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    add-float/2addr v3, v5

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 300
    iget-object v2, p0, Lcom/masshabit/squibble/NPC;->mShadowImage:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lcom/masshabit/common/Environment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 301
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 305
    .end local v1    # "scale":F
    :cond_0
    iget-object v2, p0, Lcom/masshabit/squibble/NPC;->mCurrent:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 307
    iget-object v2, p0, Lcom/masshabit/squibble/NPC;->mCurrent:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/masshabit/squibble/NPC;->mWidth:F

    neg-float v3, v3

    div-float/2addr v3, v5

    iget v4, p0, Lcom/masshabit/squibble/NPC;->mHeight:F

    neg-float v4, v4

    div-float/2addr v4, v5

    iget-object v5, v0, Lcom/masshabit/common/Environment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 310
    :cond_1
    invoke-virtual {p0, p1}, Lcom/masshabit/squibble/NPC;->drawChildren(Landroid/graphics/Canvas;)V

    .line 311
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 312
    return-void
.end method

.method public init()V
    .locals 13

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 68
    sget-object v7, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 70
    .local v7, "env":Lcom/masshabit/common/Environment;
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v0, v0, Lcom/masshabit/common/entity/EntityProperties;->animationFile:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 72
    new-instance v1, Lcom/masshabit/common/resource/AnimationState;

    iget-object v0, v7, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v0, v0, Lcom/masshabit/common/Level;->mAnims:Lcom/masshabit/common/resource/AnimationResourceMap;

    iget-object v2, v7, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v2, v2, Lcom/masshabit/common/Level;->mAnims:Lcom/masshabit/common/resource/AnimationResourceMap;

    iget-object v3, p0, Lcom/masshabit/squibble/NPC;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v3, v3, Lcom/masshabit/common/entity/EntityProperties;->animationFile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/masshabit/common/resource/AnimationResourceMap;->load(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/masshabit/common/resource/AnimationResourceMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/masshabit/common/resource/Animation;

    invoke-direct {v1, v0}, Lcom/masshabit/common/resource/AnimationState;-><init>(Lcom/masshabit/common/resource/Animation;)V

    iput-object v1, p0, Lcom/masshabit/squibble/NPC;->mAnimState:Lcom/masshabit/common/resource/AnimationState;

    .line 73
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mAnimState:Lcom/masshabit/common/resource/AnimationState;

    const-string v1, "idle"

    invoke-virtual {v0, v1}, Lcom/masshabit/common/resource/AnimationState;->setTrack(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mAnimState:Lcom/masshabit/common/resource/AnimationState;

    iget-object v0, v0, Lcom/masshabit/common/resource/AnimationState;->mCurrent:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/masshabit/squibble/NPC;->mCurrent:Landroid/graphics/Bitmap;

    .line 85
    :cond_0
    :goto_0
    iput v4, p0, Lcom/masshabit/squibble/NPC;->mFlip:F

    .line 86
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v0, v0, Lcom/masshabit/common/entity/EntityProperties;->autoFlip:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v0, v0, Lcom/masshabit/common/entity/EntityProperties;->autoFlip:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_1
    iput-boolean v0, p0, Lcom/masshabit/squibble/NPC;->mAutoFlip:Z

    .line 88
    iget v0, p0, Lcom/masshabit/squibble/NPC;->mScaleX:F

    iput v0, p0, Lcom/masshabit/squibble/NPC;->mOriginalScaleX:F

    .line 90
    iget-object v0, v7, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v0, v0, Lcom/masshabit/common/Level;->mBitmaps:Lcom/masshabit/common/resource/BitmapResourceMap;

    iget-object v1, v7, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v1, v1, Lcom/masshabit/common/Level;->mBitmaps:Lcom/masshabit/common/resource/BitmapResourceMap;

    const-string v2, "common/shadow.png"

    invoke-virtual {v1, v2}, Lcom/masshabit/common/resource/BitmapResourceMap;->load(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/masshabit/common/resource/BitmapResourceMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/masshabit/squibble/NPC;->mShadowImage:Landroid/graphics/Bitmap;

    .line 91
    iput-boolean v11, p0, Lcom/masshabit/squibble/NPC;->mShadowEnabled:Z

    .line 92
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v0, v0, Lcom/masshabit/common/entity/EntityProperties;->shadow:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v0, v0, Lcom/masshabit/common/entity/EntityProperties;->shadow:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_2
    iput-boolean v0, p0, Lcom/masshabit/squibble/NPC;->mUsesShadow:Z

    .line 95
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v0, v0, Lcom/masshabit/common/entity/EntityProperties;->collisionRadius:Ljava/lang/Float;

    if-eqz v0, :cond_7

    .line 97
    new-instance v0, Lcom/masshabit/common/physics/CircleParticle;

    iget-object v1, v7, Lcom/masshabit/common/Environment;->mPhysics:Lcom/masshabit/common/physics/Physics;

    sget-object v2, Lcom/masshabit/common/physics/Vector2;->ZERO:Lcom/masshabit/common/physics/Vector2;

    iget-object v3, p0, Lcom/masshabit/squibble/NPC;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v3, v3, Lcom/masshabit/common/entity/EntityProperties;->collisionRadius:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct/range {v0 .. v6}, Lcom/masshabit/common/physics/CircleParticle;-><init>(Lcom/masshabit/common/physics/Physics;Lcom/masshabit/common/physics/Vector2;FFZF)V

    iput-object v0, p0, Lcom/masshabit/squibble/NPC;->mParticle:Lcom/masshabit/common/physics/Particle;

    .line 98
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v0, v0, Lcom/masshabit/common/entity/EntityProperties;->collisionRadius:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v12

    iput v0, p0, Lcom/masshabit/squibble/NPC;->mShadowCastWidth:F

    .line 112
    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mParticle:Lcom/masshabit/common/physics/Particle;

    iput v6, v0, Lcom/masshabit/common/physics/Particle;->mFriction:F

    .line 116
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mParticle:Lcom/masshabit/common/physics/Particle;

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v0, v0, Lcom/masshabit/common/entity/EntityProperties;->hurty:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v0, v0, Lcom/masshabit/common/entity/EntityProperties;->hurty:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v5, :cond_9

    .line 120
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v0, v0, Lcom/masshabit/common/entity/EntityProperties;->grapple:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v0, v0, Lcom/masshabit/common/entity/EntityProperties;->grapple:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v5, :cond_8

    .line 122
    const-string v0, "Currently, npcs that can be grappled AND that are hurty are not supported."

    invoke-static {v0, v11}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 143
    :cond_2
    :goto_4
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v0, v0, Lcom/masshabit/common/entity/EntityProperties;->speed:Ljava/lang/Float;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v0, v0, Lcom/masshabit/common/entity/EntityProperties;->speed:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_5
    iput v0, p0, Lcom/masshabit/squibble/NPC;->mSpeed:F

    .line 146
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v0, v0, Lcom/masshabit/common/entity/EntityProperties;->path:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 148
    new-instance v0, Lcom/masshabit/common/tween/Tween;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/masshabit/common/tween/Tween;-><init>(Lcom/masshabit/common/tween/ITweenCompleteListener;Lcom/masshabit/common/tween/Ease$EaseBase;)V

    iput-object v0, p0, Lcom/masshabit/squibble/NPC;->mProgressTween:Lcom/masshabit/common/tween/Tween;

    .line 149
    iget-object v0, v7, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v0, v0, Lcom/masshabit/common/Level;->mEntityIds:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/masshabit/squibble/NPC;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v1, v1, Lcom/masshabit/common/entity/EntityProperties;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/masshabit/common/entity/PathEntity;

    iput-object v0, p0, Lcom/masshabit/squibble/NPC;->mPath:Lcom/masshabit/common/entity/PathEntity;

    .line 150
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mProgressTween:Lcom/masshabit/common/tween/Tween;

    iget-object v1, p0, Lcom/masshabit/squibble/NPC;->mPath:Lcom/masshabit/common/entity/PathEntity;

    iget-object v1, v1, Lcom/masshabit/common/entity/PathEntity;->mCurve:Lcom/masshabit/common/curve/PolyCubicBezier;

    iget v1, v1, Lcom/masshabit/common/curve/PolyCubicBezier;->mLength:F

    iget v2, p0, Lcom/masshabit/squibble/NPC;->mSpeed:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v6, v4, v1}, Lcom/masshabit/common/tween/Tween;->init(FFF)V

    .line 152
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mPath:Lcom/masshabit/common/entity/PathEntity;

    iget-object v0, v0, Lcom/masshabit/common/entity/PathEntity;->mCurve:Lcom/masshabit/common/curve/PolyCubicBezier;

    iget-object v1, p0, Lcom/masshabit/squibble/NPC;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v0, v6, v1}, Lcom/masshabit/common/curve/PolyCubicBezier;->evaluate(FLcom/masshabit/common/physics/Vector2;)V

    .line 153
    invoke-virtual {p0}, Lcom/masshabit/squibble/NPC;->calcMatrix()V

    .line 154
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mParticle:Lcom/masshabit/common/physics/Particle;

    if-eqz v0, :cond_3

    .line 156
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mParticle:Lcom/masshabit/common/physics/Particle;

    iget-object v0, v0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget-object v1, p0, Lcom/masshabit/squibble/NPC;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v0, v1}, Lcom/masshabit/common/physics/Vector2;->set(Lcom/masshabit/common/physics/Vector2;)V

    .line 160
    :cond_3
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mRayCastCollisionGroups:[Lcom/masshabit/common/physics/CollisionGroup;

    iget-object v1, v7, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v1, v1, Lcom/masshabit/common/Level;->mBoundaryGeom:Lcom/masshabit/common/physics/CollisionGroup;

    aput-object v1, v0, v11

    .line 161
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mRayCastCollisionGroups:[Lcom/masshabit/common/physics/CollisionGroup;

    iget-object v1, v7, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v1, v1, Lcom/masshabit/common/Level;->mCollisionGeom:Lcom/masshabit/common/physics/CollisionGroup;

    aput-object v1, v0, v5

    .line 163
    invoke-virtual {p0}, Lcom/masshabit/squibble/NPC;->initChildren()V

    .line 164
    return-void

    .line 76
    :cond_4
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v0, v0, Lcom/masshabit/common/entity/EntityProperties;->href:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, v7, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v0, v0, Lcom/masshabit/common/Level;->mBitmaps:Lcom/masshabit/common/resource/BitmapResourceMap;

    iget-object v1, v7, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v1, v1, Lcom/masshabit/common/Level;->mBitmaps:Lcom/masshabit/common/resource/BitmapResourceMap;

    iget-object v2, p0, Lcom/masshabit/squibble/NPC;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v2, v2, Lcom/masshabit/common/entity/EntityProperties;->href:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/masshabit/common/resource/BitmapResourceMap;->load(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/masshabit/common/resource/BitmapResourceMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/masshabit/squibble/NPC;->mCurrent:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    :cond_5
    move v0, v5

    .line 86
    goto/16 :goto_1

    :cond_6
    move v0, v5

    .line 92
    goto/16 :goto_2

    .line 100
    :cond_7
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v0, v0, Lcom/masshabit/common/entity/EntityProperties;->collisionWidth:Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v0, v0, Lcom/masshabit/common/entity/EntityProperties;->collisionWidth:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float v9, v0, v12

    .line 103
    .local v9, "hw":F
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v0, v0, Lcom/masshabit/common/entity/EntityProperties;->collisionHeight:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float v8, v0, v12

    .line 104
    .local v8, "hh":F
    const/4 v0, 0x4

    new-array v10, v0, [Lcom/masshabit/common/physics/Vector2;

    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    neg-float v1, v9

    neg-float v2, v8

    invoke-direct {v0, v1, v2}, Lcom/masshabit/common/physics/Vector2;-><init>(FF)V

    aput-object v0, v10, v11

    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    neg-float v1, v9

    invoke-direct {v0, v1, v8}, Lcom/masshabit/common/physics/Vector2;-><init>(FF)V

    aput-object v0, v10, v5

    const/4 v0, 0x2

    new-instance v1, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v1, v9, v8}, Lcom/masshabit/common/physics/Vector2;-><init>(FF)V

    aput-object v1, v10, v0

    const/4 v0, 0x3

    new-instance v1, Lcom/masshabit/common/physics/Vector2;

    neg-float v2, v8

    invoke-direct {v1, v9, v2}, Lcom/masshabit/common/physics/Vector2;-><init>(FF)V

    aput-object v1, v10, v0

    .line 108
    .local v10, "vectors":[Lcom/masshabit/common/physics/Vector2;
    new-instance v0, Lcom/masshabit/common/physics/ConvexHull;

    iget-object v1, v7, Lcom/masshabit/common/Environment;->mPhysics:Lcom/masshabit/common/physics/Physics;

    invoke-direct {v0, v1, v5, v10}, Lcom/masshabit/common/physics/ConvexHull;-><init>(Lcom/masshabit/common/physics/Physics;Z[Lcom/masshabit/common/physics/Vector2;)V

    iput-object v0, p0, Lcom/masshabit/squibble/NPC;->mParticle:Lcom/masshabit/common/physics/Particle;

    .line 109
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v0, v0, Lcom/masshabit/common/entity/EntityProperties;->collisionWidth:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/masshabit/squibble/NPC;->mShadowCastWidth:F

    goto/16 :goto_3

    .line 126
    .end local v8    # "hh":F
    .end local v9    # "hw":F
    .end local v10    # "vectors":[Lcom/masshabit/common/physics/Vector2;
    :cond_8
    iget-object v0, v7, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v0, v0, Lcom/masshabit/common/Level;->mHurtyNPCGeom:Lcom/masshabit/common/physics/CollisionGroup;

    iget-object v1, p0, Lcom/masshabit/squibble/NPC;->mParticle:Lcom/masshabit/common/physics/Particle;

    invoke-virtual {v0, v1}, Lcom/masshabit/common/physics/CollisionGroup;->add(Lcom/masshabit/common/physics/Particle;)V

    goto/16 :goto_4

    .line 131
    :cond_9
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v0, v0, Lcom/masshabit/common/entity/EntityProperties;->grapple:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v0, v0, Lcom/masshabit/common/entity/EntityProperties;->grapple:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v5, :cond_a

    .line 133
    iget-object v0, v7, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v0, v0, Lcom/masshabit/common/Level;->mCollisionGeom:Lcom/masshabit/common/physics/CollisionGroup;

    iget-object v1, p0, Lcom/masshabit/squibble/NPC;->mParticle:Lcom/masshabit/common/physics/Particle;

    invoke-virtual {v0, v1}, Lcom/masshabit/common/physics/CollisionGroup;->add(Lcom/masshabit/common/physics/Particle;)V

    goto/16 :goto_4

    .line 137
    :cond_a
    iget-object v0, v7, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v0, v0, Lcom/masshabit/common/Level;->mNeutralNPCGeom:Lcom/masshabit/common/physics/CollisionGroup;

    iget-object v1, p0, Lcom/masshabit/squibble/NPC;->mParticle:Lcom/masshabit/common/physics/Particle;

    invoke-virtual {v0, v1}, Lcom/masshabit/common/physics/CollisionGroup;->add(Lcom/masshabit/common/physics/Particle;)V

    goto/16 :goto_4

    .line 143
    :cond_b
    const/high16 v0, 0x42c80000    # 100.0f

    goto/16 :goto_5
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Bundle;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mProgressTween:Lcom/masshabit/common/tween/Tween;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mProgressTween:Lcom/masshabit/common/tween/Tween;

    const-string v1, "entity_%d_tween_elapsed"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Lcom/masshabit/squibble/NPC;->sEntityIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/masshabit/common/tween/Tween;->mElapsed:F

    .line 190
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mPath:Lcom/masshabit/common/entity/PathEntity;

    iget-object v0, v0, Lcom/masshabit/common/entity/PathEntity;->mCurve:Lcom/masshabit/common/curve/PolyCubicBezier;

    iget-object v1, p0, Lcom/masshabit/squibble/NPC;->mProgressTween:Lcom/masshabit/common/tween/Tween;

    iget v1, v1, Lcom/masshabit/common/tween/Tween;->mValue:F

    iget-object v2, p0, Lcom/masshabit/squibble/NPC;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v0, v1, v2}, Lcom/masshabit/common/curve/PolyCubicBezier;->evaluate(FLcom/masshabit/common/physics/Vector2;)V

    .line 191
    invoke-virtual {p0}, Lcom/masshabit/squibble/NPC;->calcMatrix()V

    .line 192
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mParticle:Lcom/masshabit/common/physics/Particle;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mParticle:Lcom/masshabit/common/physics/Particle;

    iget-object v0, v0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget-object v1, p0, Lcom/masshabit/squibble/NPC;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v0, v1}, Lcom/masshabit/common/physics/Vector2;->set(Lcom/masshabit/common/physics/Vector2;)V

    .line 197
    :cond_0
    sget v0, Lcom/masshabit/squibble/NPC;->sEntityIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/masshabit/squibble/NPC;->sEntityIndex:I

    .line 198
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "out"    # Landroid/os/Bundle;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mProgressTween:Lcom/masshabit/common/tween/Tween;

    if-eqz v0, :cond_0

    .line 179
    const-string v0, "entity_%d_tween_elapsed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget v3, Lcom/masshabit/squibble/NPC;->sEntityIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/masshabit/squibble/NPC;->mProgressTween:Lcom/masshabit/common/tween/Tween;

    iget v1, v1, Lcom/masshabit/common/tween/Tween;->mElapsed:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 181
    :cond_0
    sget v0, Lcom/masshabit/squibble/NPC;->sEntityIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/masshabit/squibble/NPC;->sEntityIndex:I

    .line 182
    return-void
.end method

.method public tweenComplete(Ljava/lang/Object;)V
    .locals 5
    .param p1, "tween"    # Ljava/lang/Object;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mPath:Lcom/masshabit/common/entity/PathEntity;

    iget-object v0, v0, Lcom/masshabit/common/entity/PathEntity;->mCurve:Lcom/masshabit/common/curve/PolyCubicBezier;

    iget-boolean v0, v0, Lcom/masshabit/common/curve/PolyCubicBezier;->mLoop:Z

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mProgressTween:Lcom/masshabit/common/tween/Tween;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/masshabit/squibble/NPC;->mPath:Lcom/masshabit/common/entity/PathEntity;

    iget-object v3, v3, Lcom/masshabit/common/entity/PathEntity;->mCurve:Lcom/masshabit/common/curve/PolyCubicBezier;

    iget v3, v3, Lcom/masshabit/common/curve/PolyCubicBezier;->mLength:F

    iget v4, p0, Lcom/masshabit/squibble/NPC;->mSpeed:F

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/masshabit/common/tween/Tween;->init(FFF)V

    .line 326
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mProgressTween:Lcom/masshabit/common/tween/Tween;

    iget-object v1, p0, Lcom/masshabit/squibble/NPC;->mProgressTween:Lcom/masshabit/common/tween/Tween;

    iget v1, v1, Lcom/masshabit/common/tween/Tween;->mDst:F

    iget-object v2, p0, Lcom/masshabit/squibble/NPC;->mProgressTween:Lcom/masshabit/common/tween/Tween;

    iget v2, v2, Lcom/masshabit/common/tween/Tween;->mSrc:F

    iget-object v3, p0, Lcom/masshabit/squibble/NPC;->mPath:Lcom/masshabit/common/entity/PathEntity;

    iget-object v3, v3, Lcom/masshabit/common/entity/PathEntity;->mCurve:Lcom/masshabit/common/curve/PolyCubicBezier;

    iget v3, v3, Lcom/masshabit/common/curve/PolyCubicBezier;->mLength:F

    iget v4, p0, Lcom/masshabit/squibble/NPC;->mSpeed:F

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/masshabit/common/tween/Tween;->init(FFF)V

    goto :goto_0
.end method

.method public update(F)V
    .locals 10
    .param p1, "dt"    # F

    .prologue
    const/4 v3, 0x0

    .line 203
    sget-object v7, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 205
    .local v7, "env":Lcom/masshabit/common/Environment;
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mProgressTween:Lcom/masshabit/common/tween/Tween;

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mProgressTween:Lcom/masshabit/common/tween/Tween;

    invoke-virtual {v0, p1}, Lcom/masshabit/common/tween/Tween;->update(F)V

    .line 209
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v9, v0, Lcom/masshabit/common/physics/Vector2;->x:F

    .line 212
    .local v9, "x":F
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mPath:Lcom/masshabit/common/entity/PathEntity;

    iget-object v0, v0, Lcom/masshabit/common/entity/PathEntity;->mCurve:Lcom/masshabit/common/curve/PolyCubicBezier;

    iget-object v1, p0, Lcom/masshabit/squibble/NPC;->mProgressTween:Lcom/masshabit/common/tween/Tween;

    iget v1, v1, Lcom/masshabit/common/tween/Tween;->mValue:F

    iget-object v2, p0, Lcom/masshabit/squibble/NPC;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v0, v1, v2}, Lcom/masshabit/common/curve/PolyCubicBezier;->evaluate(FLcom/masshabit/common/physics/Vector2;)V

    .line 214
    iget-boolean v0, p0, Lcom/masshabit/squibble/NPC;->mAutoFlip:Z

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float v8, v9, v0

    .line 218
    .local v8, "v":F
    iget v0, p0, Lcom/masshabit/squibble/NPC;->mFlip:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    .line 220
    const v0, -0x457ced91    # -0.001f

    cmpg-float v0, v8, v0

    if-gtz v0, :cond_0

    .line 221
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/masshabit/squibble/NPC;->mFlip:F

    .line 230
    .end local v8    # "v":F
    :cond_0
    :goto_0
    iget v0, p0, Lcom/masshabit/squibble/NPC;->mOriginalScaleX:F

    iget v1, p0, Lcom/masshabit/squibble/NPC;->mFlip:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/masshabit/squibble/NPC;->mScaleX:F

    .line 231
    invoke-virtual {p0}, Lcom/masshabit/squibble/NPC;->calcMatrix()V

    .line 233
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mParticle:Lcom/masshabit/common/physics/Particle;

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mParticle:Lcom/masshabit/common/physics/Particle;

    iget-object v0, v0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget-object v1, p0, Lcom/masshabit/squibble/NPC;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v0, v1}, Lcom/masshabit/common/physics/Vector2;->set(Lcom/masshabit/common/physics/Vector2;)V

    .line 238
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mParticle:Lcom/masshabit/common/physics/Particle;

    invoke-virtual {v0, v3, v3}, Lcom/masshabit/common/physics/Particle;->setVelocity(FF)V

    .line 243
    .end local v9    # "x":F
    :cond_1
    iget-boolean v0, p0, Lcom/masshabit/squibble/NPC;->mUsesShadow:Z

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mRayCastResult:Lcom/masshabit/common/physics/Physics$RayCastResult;

    invoke-virtual {v0}, Lcom/masshabit/common/physics/Physics$RayCastResult;->reset()V

    .line 247
    iget-object v0, v7, Lcom/masshabit/common/Environment;->mPhysics:Lcom/masshabit/common/physics/Physics;

    iget-object v1, p0, Lcom/masshabit/squibble/NPC;->mRayCastCollisionGroups:[Lcom/masshabit/common/physics/CollisionGroup;

    iget-object v2, p0, Lcom/masshabit/squibble/NPC;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v3, p0, Lcom/masshabit/squibble/NPC;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->y:F

    sget-object v4, Lcom/masshabit/common/physics/Vector2;->DOWN:Lcom/masshabit/common/physics/Vector2;

    iget v4, v4, Lcom/masshabit/common/physics/Vector2;->x:F

    sget-object v5, Lcom/masshabit/common/physics/Vector2;->DOWN:Lcom/masshabit/common/physics/Vector2;

    iget v5, v5, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v6, p0, Lcom/masshabit/squibble/NPC;->mRayCastResult:Lcom/masshabit/common/physics/Physics$RayCastResult;

    invoke-virtual/range {v0 .. v6}, Lcom/masshabit/common/physics/Physics;->rayCastQuery([Lcom/masshabit/common/physics/CollisionGroup;FFFFLcom/masshabit/common/physics/Physics$RayCastResult;)V

    .line 256
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mRayCastResult:Lcom/masshabit/common/physics/Physics$RayCastResult;

    iget-boolean v0, v0, Lcom/masshabit/common/physics/Physics$RayCastResult;->collision:Z

    if-eqz v0, :cond_5

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/masshabit/squibble/NPC;->mShadowEnabled:Z

    .line 259
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mShadowPos:Lcom/masshabit/common/physics/Vector2;

    sget-object v1, Lcom/masshabit/common/physics/Vector2;->DOWN:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v0, v1}, Lcom/masshabit/common/physics/Vector2;->set(Lcom/masshabit/common/physics/Vector2;)V

    .line 260
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mShadowPos:Lcom/masshabit/common/physics/Vector2;

    iget-object v1, p0, Lcom/masshabit/squibble/NPC;->mRayCastResult:Lcom/masshabit/common/physics/Physics$RayCastResult;

    iget v1, v1, Lcom/masshabit/common/physics/Physics$RayCastResult;->param:F

    invoke-virtual {v0, v1}, Lcom/masshabit/common/physics/Vector2;->multiply(F)V

    .line 269
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mAnimState:Lcom/masshabit/common/resource/AnimationState;

    if-eqz v0, :cond_3

    .line 271
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mAnimState:Lcom/masshabit/common/resource/AnimationState;

    invoke-virtual {v0, p1}, Lcom/masshabit/common/resource/AnimationState;->update(F)V

    .line 272
    iget-object v0, p0, Lcom/masshabit/squibble/NPC;->mAnimState:Lcom/masshabit/common/resource/AnimationState;

    iget-object v0, v0, Lcom/masshabit/common/resource/AnimationState;->mCurrent:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/masshabit/squibble/NPC;->mCurrent:Landroid/graphics/Bitmap;

    .line 275
    :cond_3
    invoke-virtual {p0, p1}, Lcom/masshabit/squibble/NPC;->updateChildren(F)V

    .line 276
    return-void

    .line 225
    .restart local v8    # "v":F
    .restart local v9    # "x":F
    :cond_4
    const v0, 0x3a83126f    # 0.001f

    cmpl-float v0, v8, v0

    if-ltz v0, :cond_0

    .line 226
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/masshabit/squibble/NPC;->mFlip:F

    goto :goto_0

    .line 264
    .end local v8    # "v":F
    .end local v9    # "x":F
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/masshabit/squibble/NPC;->mShadowEnabled:Z

    goto :goto_1
.end method
