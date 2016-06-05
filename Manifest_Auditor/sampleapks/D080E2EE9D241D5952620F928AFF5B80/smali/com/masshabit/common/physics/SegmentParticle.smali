.class public Lcom/masshabit/common/physics/SegmentParticle;
.super Lcom/masshabit/common/physics/Particle;
.source "SegmentParticle.java"


# instance fields
.field protected p1:Lcom/masshabit/common/physics/Vector2;

.field protected p2:Lcom/masshabit/common/physics/Vector2;


# direct methods
.method public constructor <init>(Lcom/masshabit/common/physics/Physics;FFFFZ)V
    .locals 7
    .param p1, "engine"    # Lcom/masshabit/common/physics/Physics;
    .param p2, "ax"    # F
    .param p3, "ay"    # F
    .param p4, "bx"    # F
    .param p5, "by"    # F
    .param p6, "fixed"    # Z

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 18
    new-instance v2, Lcom/masshabit/common/physics/Vector2;

    sub-float v0, p4, p2

    div-float/2addr v0, v6

    add-float/2addr v0, p2

    sub-float v1, p5, p3

    div-float/2addr v1, v6

    add-float/2addr v1, p3

    invoke-direct {v2, v0, v1}, Lcom/masshabit/common/physics/Vector2;-><init>(FF)V

    const/high16 v3, 0x3f800000    # 1.0f

    const v5, 0x3727c5ac    # 1.0E-5f

    move-object v0, p0

    move-object v1, p1

    move v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/masshabit/common/physics/Particle;-><init>(Lcom/masshabit/common/physics/Physics;Lcom/masshabit/common/physics/Vector2;FZF)V

    .line 8
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Vector2;-><init>()V

    iput-object v0, p0, Lcom/masshabit/common/physics/SegmentParticle;->p1:Lcom/masshabit/common/physics/Vector2;

    .line 9
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Vector2;-><init>()V

    iput-object v0, p0, Lcom/masshabit/common/physics/SegmentParticle;->p2:Lcom/masshabit/common/physics/Vector2;

    .line 19
    iget-object v0, p0, Lcom/masshabit/common/physics/SegmentParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    sub-float v1, p4, p2

    div-float/2addr v1, v6

    add-float/2addr v1, p2

    sub-float v2, p5, p3

    div-float/2addr v2, v6

    add-float/2addr v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 20
    iget-object v0, p0, Lcom/masshabit/common/physics/SegmentParticle;->mOldPos:Lcom/masshabit/common/physics/Vector2;

    iget-object v1, p0, Lcom/masshabit/common/physics/SegmentParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v0, v1}, Lcom/masshabit/common/physics/Vector2;->set(Lcom/masshabit/common/physics/Vector2;)V

    .line 21
    iget-object v0, p0, Lcom/masshabit/common/physics/SegmentParticle;->p1:Lcom/masshabit/common/physics/Vector2;

    iget-object v1, p0, Lcom/masshabit/common/physics/SegmentParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float v1, p2, v1

    iget-object v2, p0, Lcom/masshabit/common/physics/SegmentParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->y:F

    sub-float v2, p3, v2

    invoke-virtual {v0, v1, v2}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 22
    iget-object v0, p0, Lcom/masshabit/common/physics/SegmentParticle;->p2:Lcom/masshabit/common/physics/Vector2;

    iget-object v1, p0, Lcom/masshabit/common/physics/SegmentParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float v1, p4, v1

    iget-object v2, p0, Lcom/masshabit/common/physics/SegmentParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->y:F

    sub-float v2, p5, v2

    invoke-virtual {v0, v1, v2}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/masshabit/common/physics/Physics;Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;Z)V
    .locals 7
    .param p1, "engine"    # Lcom/masshabit/common/physics/Physics;
    .param p2, "a"    # Lcom/masshabit/common/physics/Vector2;
    .param p3, "b"    # Lcom/masshabit/common/physics/Vector2;
    .param p4, "fixed"    # Z

    .prologue
    .line 13
    iget v2, p2, Lcom/masshabit/common/physics/Vector2;->x:F

    iget v3, p2, Lcom/masshabit/common/physics/Vector2;->y:F

    iget v4, p3, Lcom/masshabit/common/physics/Vector2;->x:F

    iget v5, p3, Lcom/masshabit/common/physics/Vector2;->y:F

    move-object v0, p0

    move-object v1, p1

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/masshabit/common/physics/SegmentParticle;-><init>(Lcom/masshabit/common/physics/Physics;FFFFZ)V

    .line 14
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/masshabit/common/physics/SegmentParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v1, p0, Lcom/masshabit/common/physics/SegmentParticle;->p1:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->x:F

    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/masshabit/common/physics/SegmentParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v2, p0, Lcom/masshabit/common/physics/SegmentParticle;->p1:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->y:F

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/masshabit/common/physics/SegmentParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v3, p0, Lcom/masshabit/common/physics/SegmentParticle;->p2:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->x:F

    add-float/2addr v3, v0

    iget-object v0, p0, Lcom/masshabit/common/physics/SegmentParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v4, p0, Lcom/masshabit/common/physics/SegmentParticle;->p2:Lcom/masshabit/common/physics/Vector2;

    iget v4, v4, Lcom/masshabit/common/physics/Vector2;->y:F

    add-float/2addr v4, v0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 93
    return-void
.end method

.method public getLength()F
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/masshabit/common/physics/SegmentParticle;->getLengthSquared()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getLengthSquared()F
    .locals 4

    .prologue
    .line 50
    iget-object v0, p0, Lcom/masshabit/common/physics/SegmentParticle;->p1:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v1, p0, Lcom/masshabit/common/physics/SegmentParticle;->p2:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/masshabit/common/physics/SegmentParticle;->p1:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v2, p0, Lcom/masshabit/common/physics/SegmentParticle;->p2:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/masshabit/common/physics/SegmentParticle;->p1:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v2, p0, Lcom/masshabit/common/physics/SegmentParticle;->p2:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->y:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/masshabit/common/physics/SegmentParticle;->p1:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v3, p0, Lcom/masshabit/common/physics/SegmentParticle;->p2:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->y:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getPoint1(Lcom/masshabit/common/physics/Vector2;)V
    .locals 3
    .param p1, "p"    # Lcom/masshabit/common/physics/Vector2;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/masshabit/common/physics/SegmentParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v1, p0, Lcom/masshabit/common/physics/SegmentParticle;->p1:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->x:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/masshabit/common/physics/SegmentParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v2, p0, Lcom/masshabit/common/physics/SegmentParticle;->p1:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->y:F

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 59
    return-void
.end method

.method public getPoint2(Lcom/masshabit/common/physics/Vector2;)V
    .locals 3
    .param p1, "p"    # Lcom/masshabit/common/physics/Vector2;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/masshabit/common/physics/SegmentParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v1, p0, Lcom/masshabit/common/physics/SegmentParticle;->p2:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->x:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/masshabit/common/physics/SegmentParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v2, p0, Lcom/masshabit/common/physics/SegmentParticle;->p2:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->y:F

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 67
    return-void
.end method

.method public p1x()F
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/masshabit/common/physics/SegmentParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v1, p0, Lcom/masshabit/common/physics/SegmentParticle;->p1:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->x:F

    add-float/2addr v0, v1

    return v0
.end method

.method public p1y()F
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/masshabit/common/physics/SegmentParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v1, p0, Lcom/masshabit/common/physics/SegmentParticle;->p1:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->y:F

    add-float/2addr v0, v1

    return v0
.end method

.method public p2x()F
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/masshabit/common/physics/SegmentParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v1, p0, Lcom/masshabit/common/physics/SegmentParticle;->p2:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->x:F

    add-float/2addr v0, v1

    return v0
.end method

.method public p2y()F
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/masshabit/common/physics/SegmentParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v1, p0, Lcom/masshabit/common/physics/SegmentParticle;->p2:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->y:F

    add-float/2addr v0, v1

    return v0
.end method

.method public project(Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Interval;)V
    .locals 5
    .param p1, "axis"    # Lcom/masshabit/common/physics/Vector2;
    .param p2, "out"    # Lcom/masshabit/common/physics/Interval;

    .prologue
    .line 97
    iget-object v2, p0, Lcom/masshabit/common/physics/SegmentParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v3, p0, Lcom/masshabit/common/physics/SegmentParticle;->p1:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->x:F

    add-float/2addr v2, v3

    iget v3, p1, Lcom/masshabit/common/physics/Vector2;->x:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/masshabit/common/physics/SegmentParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v4, p0, Lcom/masshabit/common/physics/SegmentParticle;->p1:Lcom/masshabit/common/physics/Vector2;

    iget v4, v4, Lcom/masshabit/common/physics/Vector2;->y:F

    add-float/2addr v3, v4

    iget v4, p1, Lcom/masshabit/common/physics/Vector2;->y:F

    mul-float/2addr v3, v4

    add-float v0, v2, v3

    .line 98
    .local v0, "one":F
    iget-object v2, p0, Lcom/masshabit/common/physics/SegmentParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v3, p0, Lcom/masshabit/common/physics/SegmentParticle;->p2:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->x:F

    add-float/2addr v2, v3

    iget v3, p1, Lcom/masshabit/common/physics/Vector2;->x:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/masshabit/common/physics/SegmentParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v4, p0, Lcom/masshabit/common/physics/SegmentParticle;->p2:Lcom/masshabit/common/physics/Vector2;

    iget v4, v4, Lcom/masshabit/common/physics/Vector2;->y:F

    add-float/2addr v3, v4

    iget v4, p1, Lcom/masshabit/common/physics/Vector2;->y:F

    mul-float/2addr v3, v4

    add-float v1, v2, v3

    .line 99
    .local v1, "two":F
    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    .line 101
    iput v0, p2, Lcom/masshabit/common/physics/Interval;->min:F

    .line 102
    iput v1, p2, Lcom/masshabit/common/physics/Interval;->max:F

    .line 109
    :goto_0
    return-void

    .line 106
    :cond_0
    iput v1, p2, Lcom/masshabit/common/physics/Interval;->min:F

    .line 107
    iput v0, p2, Lcom/masshabit/common/physics/Interval;->max:F

    goto :goto_0
.end method

.method public set(FFFF)V
    .locals 4
    .param p1, "ax"    # F
    .param p2, "ay"    # F
    .param p3, "bx"    # F
    .param p4, "by"    # F

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 37
    iget-object v0, p0, Lcom/masshabit/common/physics/SegmentParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    sub-float v1, p3, p1

    div-float/2addr v1, v3

    add-float/2addr v1, p1

    sub-float v2, p4, p2

    div-float/2addr v2, v3

    add-float/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 38
    iget-object v0, p0, Lcom/masshabit/common/physics/SegmentParticle;->mOldPos:Lcom/masshabit/common/physics/Vector2;

    iget-object v1, p0, Lcom/masshabit/common/physics/SegmentParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v0, v1}, Lcom/masshabit/common/physics/Vector2;->set(Lcom/masshabit/common/physics/Vector2;)V

    .line 39
    iget-object v0, p0, Lcom/masshabit/common/physics/SegmentParticle;->p1:Lcom/masshabit/common/physics/Vector2;

    iget-object v1, p0, Lcom/masshabit/common/physics/SegmentParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/masshabit/common/physics/SegmentParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->y:F

    sub-float v2, p2, v2

    invoke-virtual {v0, v1, v2}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 40
    iget-object v0, p0, Lcom/masshabit/common/physics/SegmentParticle;->p2:Lcom/masshabit/common/physics/Vector2;

    iget-object v1, p0, Lcom/masshabit/common/physics/SegmentParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float v1, p3, v1

    iget-object v2, p0, Lcom/masshabit/common/physics/SegmentParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->y:F

    sub-float v2, p4, v2

    invoke-virtual {v0, v1, v2}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 41
    return-void
.end method

.method public set(Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;)V
    .locals 4
    .param p1, "a"    # Lcom/masshabit/common/physics/Vector2;
    .param p2, "b"    # Lcom/masshabit/common/physics/Vector2;

    .prologue
    .line 32
    iget v0, p1, Lcom/masshabit/common/physics/Vector2;->x:F

    iget v1, p1, Lcom/masshabit/common/physics/Vector2;->y:F

    iget v2, p2, Lcom/masshabit/common/physics/Vector2;->x:F

    iget v3, p2, Lcom/masshabit/common/physics/Vector2;->y:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/masshabit/common/physics/SegmentParticle;->set(FFFF)V

    .line 33
    return-void
.end method
