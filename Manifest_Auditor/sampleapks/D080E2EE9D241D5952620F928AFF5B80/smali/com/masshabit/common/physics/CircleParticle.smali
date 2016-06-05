.class public Lcom/masshabit/common/physics/CircleParticle;
.super Lcom/masshabit/common/physics/Particle;
.source "CircleParticle.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CircleParticle"


# instance fields
.field protected mRadius:F


# direct methods
.method public constructor <init>(Lcom/masshabit/common/physics/Physics;Lcom/masshabit/common/physics/Vector2;FFZ)V
    .locals 6
    .param p1, "engine"    # Lcom/masshabit/common/physics/Physics;
    .param p2, "pos"    # Lcom/masshabit/common/physics/Vector2;
    .param p3, "radius"    # F
    .param p4, "mass"    # F
    .param p5, "fixed"    # Z

    .prologue
    .line 15
    const v5, 0x3727c5ac    # 1.0E-5f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/masshabit/common/physics/Particle;-><init>(Lcom/masshabit/common/physics/Physics;Lcom/masshabit/common/physics/Vector2;FZF)V

    .line 16
    const-string v0, "circle radius must be positive"

    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 17
    iput p3, p0, Lcom/masshabit/common/physics/CircleParticle;->mRadius:F

    .line 18
    return-void

    .line 16
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/masshabit/common/physics/Physics;Lcom/masshabit/common/physics/Vector2;FFZF)V
    .locals 6
    .param p1, "engine"    # Lcom/masshabit/common/physics/Physics;
    .param p2, "pos"    # Lcom/masshabit/common/physics/Vector2;
    .param p3, "radius"    # F
    .param p4, "mass"    # F
    .param p5, "fixed"    # Z
    .param p6, "elasticity"    # F

    .prologue
    .line 22
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/masshabit/common/physics/Particle;-><init>(Lcom/masshabit/common/physics/Physics;Lcom/masshabit/common/physics/Vector2;FZF)V

    .line 23
    const-string v0, "circle radius must be positive"

    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 24
    iput p3, p0, Lcom/masshabit/common/physics/CircleParticle;->mRadius:F

    .line 25
    return-void

    .line 23
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/masshabit/common/physics/CircleParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v1, p0, Lcom/masshabit/common/physics/CircleParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->y:F

    iget v2, p0, Lcom/masshabit/common/physics/CircleParticle;->mRadius:F

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 46
    return-void
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/masshabit/common/physics/CircleParticle;->mRadius:F

    return v0
.end method

.method public getRadiusSq()F
    .locals 2

    .prologue
    .line 39
    iget v0, p0, Lcom/masshabit/common/physics/CircleParticle;->mRadius:F

    iget v1, p0, Lcom/masshabit/common/physics/CircleParticle;->mRadius:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public project(Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Interval;)V
    .locals 2
    .param p1, "axis"    # Lcom/masshabit/common/physics/Vector2;
    .param p2, "out"    # Lcom/masshabit/common/physics/Interval;

    .prologue
    .line 50
    iget-object v1, p0, Lcom/masshabit/common/physics/CircleParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v1, p1}, Lcom/masshabit/common/physics/Vector2;->dot(Lcom/masshabit/common/physics/Vector2;)F

    move-result v0

    .line 51
    .local v0, "d":F
    iget v1, p0, Lcom/masshabit/common/physics/CircleParticle;->mRadius:F

    sub-float v1, v0, v1

    iput v1, p2, Lcom/masshabit/common/physics/Interval;->min:F

    .line 52
    iget v1, p0, Lcom/masshabit/common/physics/CircleParticle;->mRadius:F

    add-float/2addr v1, v0

    iput v1, p2, Lcom/masshabit/common/physics/Interval;->max:F

    .line 53
    return-void
.end method

.method public setRadius(F)V
    .locals 1
    .param p1, "r"    # F

    .prologue
    .line 29
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/masshabit/common/physics/CircleParticle;->mRadius:F

    .line 30
    return-void
.end method
