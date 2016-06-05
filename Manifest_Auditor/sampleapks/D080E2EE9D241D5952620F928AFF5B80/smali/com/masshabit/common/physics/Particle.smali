.class public Lcom/masshabit/common/physics/Particle;
.super Ljava/lang/Object;
.source "Particle.java"


# static fields
.field public static final DEFAULT_FRICTION:F = 0.07f

.field public static final TAG:Ljava/lang/String; = "Particle"


# instance fields
.field protected mAccel:Lcom/masshabit/common/physics/Vector2;

.field public mCollision:Lcom/masshabit/common/physics/CollisionComponents;

.field public mElasticity:F

.field public mFixed:Z

.field protected mForce:Lcom/masshabit/common/physics/Vector2;

.field public mFriction:F

.field public mGroup:Lcom/masshabit/common/physics/CollisionGroup;

.field protected mImpulse:Lcom/masshabit/common/physics/Vector2;

.field public mInvMass:F

.field protected mListener:Lcom/masshabit/common/physics/ICollisionListener;

.field public mMass:F

.field protected mOldPos:Lcom/masshabit/common/physics/Vector2;

.field public mOwner:Ljava/lang/Object;

.field public mPos:Lcom/masshabit/common/physics/Vector2;

.field public mUid:I


# direct methods
.method public constructor <init>(Lcom/masshabit/common/physics/Physics;FFFZF)V
    .locals 2
    .param p1, "engine"    # Lcom/masshabit/common/physics/Physics;
    .param p2, "px"    # F
    .param p3, "py"    # F
    .param p4, "mass"    # F
    .param p5, "fixed"    # Z
    .param p6, "elasticity"    # F

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/masshabit/common/physics/CollisionComponents;

    invoke-direct {v0}, Lcom/masshabit/common/physics/CollisionComponents;-><init>()V

    iput-object v0, p0, Lcom/masshabit/common/physics/Particle;->mCollision:Lcom/masshabit/common/physics/CollisionComponents;

    .line 52
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Vector2;-><init>()V

    iput-object v0, p0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    .line 59
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Vector2;-><init>()V

    iput-object v0, p0, Lcom/masshabit/common/physics/Particle;->mOldPos:Lcom/masshabit/common/physics/Vector2;

    .line 65
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Vector2;-><init>()V

    iput-object v0, p0, Lcom/masshabit/common/physics/Particle;->mAccel:Lcom/masshabit/common/physics/Vector2;

    .line 66
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Vector2;-><init>()V

    iput-object v0, p0, Lcom/masshabit/common/physics/Particle;->mImpulse:Lcom/masshabit/common/physics/Vector2;

    .line 67
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Vector2;-><init>()V

    iput-object v0, p0, Lcom/masshabit/common/physics/Particle;->mForce:Lcom/masshabit/common/physics/Vector2;

    .line 76
    invoke-virtual {p1, p0}, Lcom/masshabit/common/physics/Physics;->registerParticle(Lcom/masshabit/common/physics/Particle;)V

    .line 78
    iget-object v0, p0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v0, p2, p3}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 79
    iget-object v0, p0, Lcom/masshabit/common/physics/Particle;->mOldPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v0, p2, p3}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 80
    iput p4, p0, Lcom/masshabit/common/physics/Particle;->mMass:F

    .line 81
    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p4

    iput v0, p0, Lcom/masshabit/common/physics/Particle;->mInvMass:F

    .line 82
    iput-boolean p5, p0, Lcom/masshabit/common/physics/Particle;->mFixed:Z

    .line 83
    const v0, 0x3d8f5c29    # 0.07f

    iput v0, p0, Lcom/masshabit/common/physics/Particle;->mFriction:F

    .line 84
    iput p6, p0, Lcom/masshabit/common/physics/Particle;->mElasticity:F

    .line 85
    const-string v0, "particle mass must be positive"

    const/4 v1, 0x0

    cmpl-float v1, p4, v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 86
    return-void

    .line 85
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/masshabit/common/physics/Physics;Lcom/masshabit/common/physics/Vector2;FZF)V
    .locals 7
    .param p1, "engine"    # Lcom/masshabit/common/physics/Physics;
    .param p2, "pos"    # Lcom/masshabit/common/physics/Vector2;
    .param p3, "mass"    # F
    .param p4, "fixed"    # Z
    .param p5, "elasticity"    # F

    .prologue
    .line 71
    iget v2, p2, Lcom/masshabit/common/physics/Vector2;->x:F

    iget v3, p2, Lcom/masshabit/common/physics/Vector2;->y:F

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/masshabit/common/physics/Particle;-><init>(Lcom/masshabit/common/physics/Physics;FFFZF)V

    .line 72
    return-void
.end method


# virtual methods
.method public addAcceleration(FF)V
    .locals 1
    .param p1, "ax"    # F
    .param p2, "ay"    # F

    .prologue
    .line 213
    iget-object v0, p0, Lcom/masshabit/common/physics/Particle;->mAccel:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/masshabit/common/physics/Vector2;->add(FF)V

    .line 214
    return-void
.end method

.method public addAcceleration(Lcom/masshabit/common/physics/Vector2;)V
    .locals 1
    .param p1, "a"    # Lcom/masshabit/common/physics/Vector2;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/masshabit/common/physics/Particle;->mAccel:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v0, p1}, Lcom/masshabit/common/physics/Vector2;->add(Lcom/masshabit/common/physics/Vector2;)V

    .line 210
    return-void
.end method

.method public addForce(FF)V
    .locals 1
    .param p1, "fx"    # F
    .param p2, "fy"    # F

    .prologue
    .line 200
    iget-object v0, p0, Lcom/masshabit/common/physics/Particle;->mForce:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/masshabit/common/physics/Vector2;->add(FF)V

    .line 201
    return-void
.end method

.method public addForce(Lcom/masshabit/common/physics/Vector2;)V
    .locals 1
    .param p1, "f"    # Lcom/masshabit/common/physics/Vector2;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/masshabit/common/physics/Particle;->mForce:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v0, p1}, Lcom/masshabit/common/physics/Vector2;->add(Lcom/masshabit/common/physics/Vector2;)V

    .line 197
    return-void
.end method

.method public addImpulse(FF)V
    .locals 1
    .param p1, "ix"    # F
    .param p2, "iy"    # F

    .prologue
    .line 187
    iget-object v0, p0, Lcom/masshabit/common/physics/Particle;->mImpulse:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/masshabit/common/physics/Vector2;->add(FF)V

    .line 188
    return-void
.end method

.method public addImpulse(Lcom/masshabit/common/physics/Vector2;)V
    .locals 1
    .param p1, "i"    # Lcom/masshabit/common/physics/Vector2;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/masshabit/common/physics/Particle;->mImpulse:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v0, p1}, Lcom/masshabit/common/physics/Vector2;->add(Lcom/masshabit/common/physics/Vector2;)V

    .line 184
    return-void
.end method

.method public addVelocity(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 139
    iget-object v0, p0, Lcom/masshabit/common/physics/Particle;->mOldPos:Lcom/masshabit/common/physics/Vector2;

    iget-object v1, p0, Lcom/masshabit/common/physics/Particle;->mOldPos:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float/2addr v1, p1

    iget-object v2, p0, Lcom/masshabit/common/physics/Particle;->mOldPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->y:F

    sub-float/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 140
    return-void
.end method

.method public addVelocity(Lcom/masshabit/common/physics/Vector2;)V
    .locals 4
    .param p1, "vel"    # Lcom/masshabit/common/physics/Vector2;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/masshabit/common/physics/Particle;->mOldPos:Lcom/masshabit/common/physics/Vector2;

    iget-object v1, p0, Lcom/masshabit/common/physics/Particle;->mOldPos:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->x:F

    iget v2, p1, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/masshabit/common/physics/Particle;->mOldPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->y:F

    iget v3, p1, Lcom/masshabit/common/physics/Vector2;->y:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 136
    return-void
.end method

.method public clearAcceleration()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/masshabit/common/physics/Particle;->mAccel:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v0}, Lcom/masshabit/common/physics/Vector2;->zero()V

    .line 218
    return-void
.end method

.method public clearForce()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/masshabit/common/physics/Particle;->mForce:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v0}, Lcom/masshabit/common/physics/Vector2;->zero()V

    .line 205
    return-void
.end method

.method public clearImpulse()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/masshabit/common/physics/Particle;->mImpulse:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v0}, Lcom/masshabit/common/physics/Vector2;->zero()V

    .line 192
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;

    .prologue
    const/high16 v7, 0x40400000    # 3.0f

    .line 95
    const/high16 v6, 0x40400000    # 3.0f

    .line 96
    .local v6, "size":F
    iget-object v0, p0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float v1, v0, v7

    iget-object v0, p0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->y:F

    sub-float v2, v0, v7

    iget-object v0, p0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->x:F

    add-float v3, v0, v7

    iget-object v0, p0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->y:F

    add-float v4, v0, v7

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 97
    iget-object v0, p0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->x:F

    add-float v1, v0, v7

    iget-object v0, p0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->y:F

    sub-float v2, v0, v7

    iget-object v0, p0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float v3, v0, v7

    iget-object v0, p0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->y:F

    add-float v4, v0, v7

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 98
    return-void
.end method

.method public getCollisionComponents(Lcom/masshabit/common/physics/Vector2;)Lcom/masshabit/common/physics/CollisionComponents;
    .locals 6
    .param p1, "normal"    # Lcom/masshabit/common/physics/Vector2;

    .prologue
    .line 256
    iget-object v3, p0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v4, p0, Lcom/masshabit/common/physics/Particle;->mOldPos:Lcom/masshabit/common/physics/Vector2;

    iget v4, v4, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float v1, v3, v4

    .line 257
    .local v1, "velx":F
    iget-object v3, p0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v4, p0, Lcom/masshabit/common/physics/Particle;->mOldPos:Lcom/masshabit/common/physics/Vector2;

    iget v4, v4, Lcom/masshabit/common/physics/Vector2;->y:F

    sub-float v2, v3, v4

    .line 258
    .local v2, "vely":F
    iget v3, p1, Lcom/masshabit/common/physics/Vector2;->x:F

    mul-float/2addr v3, v1

    iget v4, p1, Lcom/masshabit/common/physics/Vector2;->y:F

    mul-float/2addr v4, v2

    add-float v0, v3, v4

    .line 259
    .local v0, "vdotn":F
    iget-object v3, p0, Lcom/masshabit/common/physics/Particle;->mCollision:Lcom/masshabit/common/physics/CollisionComponents;

    iget-object v3, v3, Lcom/masshabit/common/physics/CollisionComponents;->vn:Lcom/masshabit/common/physics/Vector2;

    iget v4, p1, Lcom/masshabit/common/physics/Vector2;->x:F

    mul-float/2addr v4, v0

    iget v5, p1, Lcom/masshabit/common/physics/Vector2;->y:F

    mul-float/2addr v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 260
    iget-object v3, p0, Lcom/masshabit/common/physics/Particle;->mCollision:Lcom/masshabit/common/physics/CollisionComponents;

    iget-object v3, v3, Lcom/masshabit/common/physics/CollisionComponents;->vt:Lcom/masshabit/common/physics/Vector2;

    iget-object v4, p0, Lcom/masshabit/common/physics/Particle;->mCollision:Lcom/masshabit/common/physics/CollisionComponents;

    iget-object v4, v4, Lcom/masshabit/common/physics/CollisionComponents;->vn:Lcom/masshabit/common/physics/Vector2;

    iget v4, v4, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float v4, v1, v4

    iget-object v5, p0, Lcom/masshabit/common/physics/Particle;->mCollision:Lcom/masshabit/common/physics/CollisionComponents;

    iget-object v5, v5, Lcom/masshabit/common/physics/CollisionComponents;->vn:Lcom/masshabit/common/physics/Vector2;

    iget v5, v5, Lcom/masshabit/common/physics/Vector2;->y:F

    sub-float v5, v2, v5

    invoke-virtual {v3, v4, v5}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 261
    iget-object v3, p0, Lcom/masshabit/common/physics/Particle;->mCollision:Lcom/masshabit/common/physics/CollisionComponents;

    return-object v3
.end method

.method public getPosition(Lcom/masshabit/common/physics/Vector2;)V
    .locals 1
    .param p1, "pos"    # Lcom/masshabit/common/physics/Vector2;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {p1, v0}, Lcom/masshabit/common/physics/Vector2;->set(Lcom/masshabit/common/physics/Vector2;)V

    .line 149
    return-void
.end method

.method public getVelocity(Lcom/masshabit/common/physics/Vector2;)V
    .locals 3
    .param p1, "vel"    # Lcom/masshabit/common/physics/Vector2;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v1, p0, Lcom/masshabit/common/physics/Particle;->mOldPos:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v2, p0, Lcom/masshabit/common/physics/Particle;->mOldPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->y:F

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 107
    return-void
.end method

.method public move(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 177
    iget-object v0, p0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 178
    return-void
.end method

.method public move(Lcom/masshabit/common/physics/Vector2;)V
    .locals 1
    .param p1, "pos"    # Lcom/masshabit/common/physics/Vector2;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v0, p1}, Lcom/masshabit/common/physics/Vector2;->set(Lcom/masshabit/common/physics/Vector2;)V

    .line 174
    return-void
.end method

.method public onCollide(Lcom/masshabit/common/physics/Particle;Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;FF)I
    .locals 7
    .param p1, "other"    # Lcom/masshabit/common/physics/Particle;
    .param p2, "mtd"    # Lcom/masshabit/common/physics/Vector2;
    .param p3, "vel"    # Lcom/masshabit/common/physics/Vector2;
    .param p4, "n"    # Lcom/masshabit/common/physics/Vector2;
    .param p5, "depth"    # F
    .param p6, "dir"    # F

    .prologue
    .line 281
    iget-object v0, p0, Lcom/masshabit/common/physics/Particle;->mListener:Lcom/masshabit/common/physics/ICollisionListener;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/masshabit/common/physics/Particle;->mListener:Lcom/masshabit/common/physics/ICollisionListener;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/masshabit/common/physics/ICollisionListener;->onCollide(Lcom/masshabit/common/physics/Particle;Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;FF)I

    move-result v0

    .line 285
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public project(Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Interval;)V
    .locals 1
    .param p1, "axis"    # Lcom/masshabit/common/physics/Vector2;
    .param p2, "out"    # Lcom/masshabit/common/physics/Interval;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v0, p1}, Lcom/masshabit/common/physics/Vector2;->dot(Lcom/masshabit/common/physics/Vector2;)F

    move-result v0

    iput v0, p2, Lcom/masshabit/common/physics/Interval;->max:F

    iput v0, p2, Lcom/masshabit/common/physics/Interval;->min:F

    .line 291
    return-void
.end method

.method public resolveCollision(Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;FF)V
    .locals 1
    .param p1, "mtd"    # Lcom/masshabit/common/physics/Vector2;
    .param p2, "vel"    # Lcom/masshabit/common/physics/Vector2;
    .param p3, "n"    # Lcom/masshabit/common/physics/Vector2;
    .param p4, "dist"    # F
    .param p5, "dir"    # F

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/masshabit/common/physics/Particle;->mFixed:Z

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v0, p1}, Lcom/masshabit/common/physics/Vector2;->add(Lcom/masshabit/common/physics/Vector2;)V

    .line 272
    invoke-virtual {p0, p2}, Lcom/masshabit/common/physics/Particle;->setVelocity(Lcom/masshabit/common/physics/Vector2;)V

    .line 274
    :cond_0
    return-void
.end method

.method public setCollisionListener(Lcom/masshabit/common/physics/ICollisionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/masshabit/common/physics/ICollisionListener;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/masshabit/common/physics/Particle;->mListener:Lcom/masshabit/common/physics/ICollisionListener;

    .line 91
    return-void
.end method

.method public setPosition(FF)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 161
    iget-object v2, p0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v3, p0, Lcom/masshabit/common/physics/Particle;->mOldPos:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float v0, v2, v3

    .line 162
    .local v0, "vx":F
    iget-object v2, p0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v3, p0, Lcom/masshabit/common/physics/Particle;->mOldPos:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->y:F

    sub-float v1, v2, v3

    .line 163
    .local v1, "vy":F
    iget-object v2, p0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v2, p1, p2}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 164
    iget-object v2, p0, Lcom/masshabit/common/physics/Particle;->mOldPos:Lcom/masshabit/common/physics/Vector2;

    iget-object v3, p0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float/2addr v3, v0

    iget-object v4, p0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v4, v4, Lcom/masshabit/common/physics/Vector2;->y:F

    sub-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 165
    return-void
.end method

.method public setPosition(Lcom/masshabit/common/physics/Vector2;)V
    .locals 2
    .param p1, "pos"    # Lcom/masshabit/common/physics/Vector2;

    .prologue
    .line 157
    iget v0, p1, Lcom/masshabit/common/physics/Vector2;->x:F

    iget v1, p1, Lcom/masshabit/common/physics/Vector2;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/masshabit/common/physics/Particle;->setPosition(FF)V

    .line 158
    return-void
.end method

.method public setVelocity(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 127
    iget-object v0, p0, Lcom/masshabit/common/physics/Particle;->mOldPos:Lcom/masshabit/common/physics/Vector2;

    iget-object v1, p0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float/2addr v1, p1

    iget-object v2, p0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->y:F

    sub-float/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 128
    return-void
.end method

.method public setVelocity(Lcom/masshabit/common/physics/Vector2;)V
    .locals 4
    .param p1, "vel"    # Lcom/masshabit/common/physics/Vector2;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/masshabit/common/physics/Particle;->mOldPos:Lcom/masshabit/common/physics/Vector2;

    iget-object v1, p0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->x:F

    iget v2, p1, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->y:F

    iget v3, p1, Lcom/masshabit/common/physics/Vector2;->y:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 124
    return-void
.end method

.method public update(F)V
    .locals 5
    .param p1, "dt"    # F

    .prologue
    .line 225
    iget-boolean v2, p0, Lcom/masshabit/common/physics/Particle;->mFixed:Z

    if-eqz v2, :cond_0

    .line 249
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v2, p0, Lcom/masshabit/common/physics/Particle;->mForce:Lcom/masshabit/common/physics/Vector2;

    iget v3, p0, Lcom/masshabit/common/physics/Particle;->mMass:F

    invoke-virtual {v2, v3}, Lcom/masshabit/common/physics/Vector2;->divide(F)V

    .line 233
    iget-object v2, p0, Lcom/masshabit/common/physics/Particle;->mAccel:Lcom/masshabit/common/physics/Vector2;

    iget-object v3, p0, Lcom/masshabit/common/physics/Particle;->mForce:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v2, v3}, Lcom/masshabit/common/physics/Vector2;->add(Lcom/masshabit/common/physics/Vector2;)V

    .line 235
    iget-object v2, p0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v3, p0, Lcom/masshabit/common/physics/Particle;->mOldPos:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/masshabit/common/physics/Particle;->mImpulse:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->x:F

    iget v4, p0, Lcom/masshabit/common/physics/Particle;->mMass:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/masshabit/common/physics/Particle;->mAccel:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->x:F

    mul-float/2addr v3, p1

    add-float v0, v2, v3

    .line 239
    .local v0, "velX":F
    iget-object v2, p0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v3, p0, Lcom/masshabit/common/physics/Particle;->mOldPos:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->y:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/masshabit/common/physics/Particle;->mImpulse:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->y:F

    iget v4, p0, Lcom/masshabit/common/physics/Particle;->mMass:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/masshabit/common/physics/Particle;->mAccel:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->y:F

    mul-float/2addr v3, p1

    add-float v1, v2, v3

    .line 243
    .local v1, "velY":F
    iget-object v2, p0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    mul-float v3, v0, p1

    mul-float v4, v1, p1

    invoke-virtual {v2, v3, v4}, Lcom/masshabit/common/physics/Vector2;->add(FF)V

    .line 244
    iget-object v2, p0, Lcom/masshabit/common/physics/Particle;->mOldPos:Lcom/masshabit/common/physics/Vector2;

    iget-object v3, p0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float/2addr v3, v0

    iget-object v4, p0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v4, v4, Lcom/masshabit/common/physics/Vector2;->y:F

    sub-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 246
    iget-object v2, p0, Lcom/masshabit/common/physics/Particle;->mForce:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v2}, Lcom/masshabit/common/physics/Vector2;->zero()V

    .line 247
    iget-object v2, p0, Lcom/masshabit/common/physics/Particle;->mImpulse:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v2}, Lcom/masshabit/common/physics/Vector2;->zero()V

    .line 248
    iget-object v2, p0, Lcom/masshabit/common/physics/Particle;->mAccel:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v2}, Lcom/masshabit/common/physics/Vector2;->zero()V

    goto :goto_0
.end method

.method public velX()F
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v1, p0, Lcom/masshabit/common/physics/Particle;->mOldPos:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public velY()F
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v1, p0, Lcom/masshabit/common/physics/Particle;->mOldPos:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->y:F

    sub-float/2addr v0, v1

    return v0
.end method
