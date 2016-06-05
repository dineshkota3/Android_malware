.class public Lcom/masshabit/common/physics/SpringConstraint;
.super Lcom/masshabit/common/physics/Constraint;
.source "SpringConstraint.java"


# static fields
.field public static final FLAG_PULL:I = 0x1

.field public static final FLAG_PUSH:I = 0x2

.field public static final TAG:Ljava/lang/String; = "SpringConstraint"

.field public static sDir:Lcom/masshabit/common/physics/Vector2;

.field public static sVel1:Lcom/masshabit/common/physics/Vector2;

.field public static sVel2:Lcom/masshabit/common/physics/Vector2;


# instance fields
.field public mDamping:F

.field public mK:F

.field public mLast:F

.field public mMaxLength:F

.field public mP1:Lcom/masshabit/common/physics/Particle;

.field public mP2:Lcom/masshabit/common/physics/Particle;

.field public mRestLength:F

.field public mTypeFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Vector2;-><init>()V

    sput-object v0, Lcom/masshabit/common/physics/SpringConstraint;->sDir:Lcom/masshabit/common/physics/Vector2;

    .line 15
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Vector2;-><init>()V

    sput-object v0, Lcom/masshabit/common/physics/SpringConstraint;->sVel1:Lcom/masshabit/common/physics/Vector2;

    .line 16
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Vector2;-><init>()V

    sput-object v0, Lcom/masshabit/common/physics/SpringConstraint;->sVel2:Lcom/masshabit/common/physics/Vector2;

    return-void
.end method

.method public constructor <init>(Lcom/masshabit/common/physics/Particle;Lcom/masshabit/common/physics/Particle;FFFFI)V
    .locals 7
    .param p1, "p1"    # Lcom/masshabit/common/physics/Particle;
    .param p2, "p2"    # Lcom/masshabit/common/physics/Particle;
    .param p3, "restLength"    # F
    .param p4, "maxLength"    # F
    .param p5, "coeff"    # F
    .param p6, "damping"    # F
    .param p7, "typeFlags"    # I

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/masshabit/common/physics/SpringConstraint;-><init>(Lcom/masshabit/common/physics/Particle;Lcom/masshabit/common/physics/Particle;FFFI)V

    .line 54
    iput p4, p0, Lcom/masshabit/common/physics/SpringConstraint;->mMaxLength:F

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/masshabit/common/physics/Particle;Lcom/masshabit/common/physics/Particle;FFFI)V
    .locals 6
    .param p1, "p1"    # Lcom/masshabit/common/physics/Particle;
    .param p2, "p2"    # Lcom/masshabit/common/physics/Particle;
    .param p3, "restLength"    # F
    .param p4, "coeff"    # F
    .param p5, "damping"    # F
    .param p6, "typeFlags"    # I

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/masshabit/common/physics/SpringConstraint;-><init>(Lcom/masshabit/common/physics/Particle;Lcom/masshabit/common/physics/Particle;FFI)V

    .line 48
    iput p3, p0, Lcom/masshabit/common/physics/SpringConstraint;->mRestLength:F

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/masshabit/common/physics/Particle;Lcom/masshabit/common/physics/Particle;FFI)V
    .locals 4
    .param p1, "p1"    # Lcom/masshabit/common/physics/Particle;
    .param p2, "p2"    # Lcom/masshabit/common/physics/Particle;
    .param p3, "coeff"    # F
    .param p4, "damping"    # F
    .param p5, "typeFlags"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/masshabit/common/physics/Constraint;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/masshabit/common/physics/SpringConstraint;->mP1:Lcom/masshabit/common/physics/Particle;

    .line 35
    iput-object p2, p0, Lcom/masshabit/common/physics/SpringConstraint;->mP2:Lcom/masshabit/common/physics/Particle;

    .line 36
    iget-object v2, p2, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v3, p1, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float v0, v2, v3

    .line 37
    .local v0, "x":F
    iget-object v2, p2, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v3, p1, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->y:F

    sub-float v1, v2, v3

    .line 38
    .local v1, "y":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/masshabit/common/physics/SpringConstraint;->mRestLength:F

    .line 39
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/masshabit/common/physics/SpringConstraint;->mMaxLength:F

    .line 40
    iput p3, p0, Lcom/masshabit/common/physics/SpringConstraint;->mK:F

    .line 41
    iput p4, p0, Lcom/masshabit/common/physics/SpringConstraint;->mDamping:F

    .line 42
    iput p5, p0, Lcom/masshabit/common/physics/SpringConstraint;->mTypeFlags:I

    .line 43
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 184
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 185
    iget-boolean v0, p0, Lcom/masshabit/common/physics/SpringConstraint;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 187
    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 193
    :goto_0
    iget-object v0, p0, Lcom/masshabit/common/physics/SpringConstraint;->mP1:Lcom/masshabit/common/physics/Particle;

    iget-object v0, v0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v1, v0, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v0, p0, Lcom/masshabit/common/physics/SpringConstraint;->mP1:Lcom/masshabit/common/physics/Particle;

    iget-object v0, v0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v0, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v0, p0, Lcom/masshabit/common/physics/SpringConstraint;->mP2:Lcom/masshabit/common/physics/Particle;

    iget-object v0, v0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v3, v0, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v0, p0, Lcom/masshabit/common/physics/SpringConstraint;->mP2:Lcom/masshabit/common/physics/Particle;

    iget-object v0, v0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v4, v0, Lcom/masshabit/common/physics/Vector2;->y:F

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 194
    return-void

    .line 191
    :cond_0
    const v0, -0xbbbbbc

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method public getLength()F
    .locals 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/masshabit/common/physics/SpringConstraint;->getLengthSq()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getLengthSq()F
    .locals 4

    .prologue
    .line 171
    iget-object v2, p0, Lcom/masshabit/common/physics/SpringConstraint;->mP2:Lcom/masshabit/common/physics/Particle;

    iget-object v2, v2, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v3, p0, Lcom/masshabit/common/physics/SpringConstraint;->mP1:Lcom/masshabit/common/physics/Particle;

    iget-object v3, v3, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float v0, v2, v3

    .line 172
    .local v0, "dx":F
    iget-object v2, p0, Lcom/masshabit/common/physics/SpringConstraint;->mP2:Lcom/masshabit/common/physics/Particle;

    iget-object v2, v2, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v3, p0, Lcom/masshabit/common/physics/SpringConstraint;->mP1:Lcom/masshabit/common/physics/Particle;

    iget-object v3, v3, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->y:F

    sub-float v1, v2, v3

    .line 173
    .local v1, "dy":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    return v2
.end method

.method public satisfy(F)V
    .locals 11
    .param p1, "dt"    # F

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 59
    sget-object v5, Lcom/masshabit/common/physics/SpringConstraint;->sDir:Lcom/masshabit/common/physics/Vector2;

    iget-object v6, p0, Lcom/masshabit/common/physics/SpringConstraint;->mP2:Lcom/masshabit/common/physics/Particle;

    iget-object v6, v6, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v5, v6}, Lcom/masshabit/common/physics/Vector2;->set(Lcom/masshabit/common/physics/Vector2;)V

    .line 60
    sget-object v5, Lcom/masshabit/common/physics/SpringConstraint;->sDir:Lcom/masshabit/common/physics/Vector2;

    iget-object v6, p0, Lcom/masshabit/common/physics/SpringConstraint;->mP1:Lcom/masshabit/common/physics/Particle;

    iget-object v6, v6, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v5, v6}, Lcom/masshabit/common/physics/Vector2;->subtract(Lcom/masshabit/common/physics/Vector2;)V

    .line 62
    sget-object v5, Lcom/masshabit/common/physics/SpringConstraint;->sDir:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v5}, Lcom/masshabit/common/physics/Vector2;->normalize()F

    move-result v3

    .line 64
    .local v3, "length":F
    iget v5, p0, Lcom/masshabit/common/physics/SpringConstraint;->mRestLength:F

    sub-float v1, v3, v5

    .line 65
    .local v1, "displacement":F
    cmpl-float v5, v1, v7

    if-lez v5, :cond_3

    .line 67
    iget v5, p0, Lcom/masshabit/common/physics/SpringConstraint;->mTypeFlags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    .line 70
    const/4 v1, 0x0

    .line 83
    :cond_0
    :goto_0
    iget v5, p0, Lcom/masshabit/common/physics/SpringConstraint;->mMaxLength:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_4

    iget v5, p0, Lcom/masshabit/common/physics/SpringConstraint;->mMaxLength:F

    sub-float v5, v3, v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move v0, v5

    .line 86
    .local v0, "correction":F
    :goto_1
    iget-object v5, p0, Lcom/masshabit/common/physics/SpringConstraint;->mP1:Lcom/masshabit/common/physics/Particle;

    iget-boolean v5, v5, Lcom/masshabit/common/physics/Particle;->mFixed:Z

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/masshabit/common/physics/SpringConstraint;->mP2:Lcom/masshabit/common/physics/Particle;

    iget-boolean v5, v5, Lcom/masshabit/common/physics/Particle;->mFixed:Z

    if-nez v5, :cond_5

    .line 90
    iget-object v5, p0, Lcom/masshabit/common/physics/SpringConstraint;->mP1:Lcom/masshabit/common/physics/Particle;

    sget-object v6, Lcom/masshabit/common/physics/SpringConstraint;->sVel1:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v5, v6}, Lcom/masshabit/common/physics/Particle;->getVelocity(Lcom/masshabit/common/physics/Vector2;)V

    .line 91
    iget-object v5, p0, Lcom/masshabit/common/physics/SpringConstraint;->mP2:Lcom/masshabit/common/physics/Particle;

    sget-object v6, Lcom/masshabit/common/physics/SpringConstraint;->sVel2:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v5, v6}, Lcom/masshabit/common/physics/Particle;->getVelocity(Lcom/masshabit/common/physics/Vector2;)V

    .line 93
    cmpl-float v5, v0, v7

    if-eqz v5, :cond_1

    .line 96
    div-float/2addr v0, v10

    .line 98
    iget-object v5, p0, Lcom/masshabit/common/physics/SpringConstraint;->mP1:Lcom/masshabit/common/physics/Particle;

    iget-object v6, p0, Lcom/masshabit/common/physics/SpringConstraint;->mP1:Lcom/masshabit/common/physics/Particle;

    iget-object v6, v6, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v6, v6, Lcom/masshabit/common/physics/Vector2;->x:F

    sget-object v7, Lcom/masshabit/common/physics/SpringConstraint;->sDir:Lcom/masshabit/common/physics/Vector2;

    iget v7, v7, Lcom/masshabit/common/physics/Vector2;->x:F

    mul-float/2addr v7, v0

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/masshabit/common/physics/SpringConstraint;->mP1:Lcom/masshabit/common/physics/Particle;

    iget-object v7, v7, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v7, v7, Lcom/masshabit/common/physics/Vector2;->y:F

    sget-object v8, Lcom/masshabit/common/physics/SpringConstraint;->sDir:Lcom/masshabit/common/physics/Vector2;

    iget v8, v8, Lcom/masshabit/common/physics/Vector2;->y:F

    mul-float/2addr v8, v0

    add-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/masshabit/common/physics/Particle;->setPosition(FF)V

    .line 99
    sget-object v5, Lcom/masshabit/common/physics/SpringConstraint;->sVel1:Lcom/masshabit/common/physics/Vector2;

    sget-object v6, Lcom/masshabit/common/physics/SpringConstraint;->sDir:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v5, v6}, Lcom/masshabit/common/physics/Vector2;->dot(Lcom/masshabit/common/physics/Vector2;)F

    move-result v5

    neg-float v4, v5

    .line 100
    .local v4, "velKill":F
    sget-object v5, Lcom/masshabit/common/physics/SpringConstraint;->sVel1:Lcom/masshabit/common/physics/Vector2;

    sget-object v6, Lcom/masshabit/common/physics/SpringConstraint;->sDir:Lcom/masshabit/common/physics/Vector2;

    iget v6, v6, Lcom/masshabit/common/physics/Vector2;->x:F

    mul-float/2addr v6, v4

    sget-object v7, Lcom/masshabit/common/physics/SpringConstraint;->sDir:Lcom/masshabit/common/physics/Vector2;

    iget v7, v7, Lcom/masshabit/common/physics/Vector2;->y:F

    mul-float/2addr v7, v4

    invoke-virtual {v5, v6, v7}, Lcom/masshabit/common/physics/Vector2;->add(FF)V

    .line 101
    iget-object v5, p0, Lcom/masshabit/common/physics/SpringConstraint;->mP1:Lcom/masshabit/common/physics/Particle;

    sget-object v6, Lcom/masshabit/common/physics/SpringConstraint;->sVel1:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v5, v6}, Lcom/masshabit/common/physics/Particle;->setVelocity(Lcom/masshabit/common/physics/Vector2;)V

    .line 103
    iget-object v5, p0, Lcom/masshabit/common/physics/SpringConstraint;->mP2:Lcom/masshabit/common/physics/Particle;

    iget-object v6, p0, Lcom/masshabit/common/physics/SpringConstraint;->mP2:Lcom/masshabit/common/physics/Particle;

    iget-object v6, v6, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v6, v6, Lcom/masshabit/common/physics/Vector2;->x:F

    sget-object v7, Lcom/masshabit/common/physics/SpringConstraint;->sDir:Lcom/masshabit/common/physics/Vector2;

    iget v7, v7, Lcom/masshabit/common/physics/Vector2;->x:F

    neg-float v8, v0

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/masshabit/common/physics/SpringConstraint;->mP2:Lcom/masshabit/common/physics/Particle;

    iget-object v7, v7, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v7, v7, Lcom/masshabit/common/physics/Vector2;->y:F

    sget-object v8, Lcom/masshabit/common/physics/SpringConstraint;->sDir:Lcom/masshabit/common/physics/Vector2;

    iget v8, v8, Lcom/masshabit/common/physics/Vector2;->y:F

    neg-float v9, v0

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/masshabit/common/physics/Particle;->setPosition(FF)V

    .line 104
    sget-object v5, Lcom/masshabit/common/physics/SpringConstraint;->sVel2:Lcom/masshabit/common/physics/Vector2;

    sget-object v6, Lcom/masshabit/common/physics/SpringConstraint;->sDir:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v5, v6}, Lcom/masshabit/common/physics/Vector2;->dot(Lcom/masshabit/common/physics/Vector2;)F

    move-result v5

    neg-float v4, v5

    .line 105
    sget-object v5, Lcom/masshabit/common/physics/SpringConstraint;->sVel2:Lcom/masshabit/common/physics/Vector2;

    sget-object v6, Lcom/masshabit/common/physics/SpringConstraint;->sDir:Lcom/masshabit/common/physics/Vector2;

    iget v6, v6, Lcom/masshabit/common/physics/Vector2;->x:F

    mul-float/2addr v6, v4

    sget-object v7, Lcom/masshabit/common/physics/SpringConstraint;->sDir:Lcom/masshabit/common/physics/Vector2;

    iget v7, v7, Lcom/masshabit/common/physics/Vector2;->y:F

    mul-float/2addr v7, v4

    invoke-virtual {v5, v6, v7}, Lcom/masshabit/common/physics/Vector2;->add(FF)V

    .line 106
    iget-object v5, p0, Lcom/masshabit/common/physics/SpringConstraint;->mP2:Lcom/masshabit/common/physics/Particle;

    sget-object v6, Lcom/masshabit/common/physics/SpringConstraint;->sVel2:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v5, v6}, Lcom/masshabit/common/physics/Particle;->setVelocity(Lcom/masshabit/common/physics/Vector2;)V

    .line 112
    .end local v4    # "velKill":F
    :cond_1
    sget-object v5, Lcom/masshabit/common/physics/SpringConstraint;->sVel2:Lcom/masshabit/common/physics/Vector2;

    sget-object v6, Lcom/masshabit/common/physics/SpringConstraint;->sDir:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v5, v6}, Lcom/masshabit/common/physics/Vector2;->dot(Lcom/masshabit/common/physics/Vector2;)F

    move-result v5

    sget-object v6, Lcom/masshabit/common/physics/SpringConstraint;->sVel1:Lcom/masshabit/common/physics/Vector2;

    sget-object v7, Lcom/masshabit/common/physics/SpringConstraint;->sDir:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v6, v7}, Lcom/masshabit/common/physics/Vector2;->dot(Lcom/masshabit/common/physics/Vector2;)F

    move-result v6

    sub-float/2addr v5, v6

    div-float v2, v5, p1

    .line 115
    .local v2, "displacementSpeed":F
    sget-object v5, Lcom/masshabit/common/physics/SpringConstraint;->sDir:Lcom/masshabit/common/physics/Vector2;

    iget v6, p0, Lcom/masshabit/common/physics/SpringConstraint;->mK:F

    mul-float/2addr v6, v1

    iget v7, p0, Lcom/masshabit/common/physics/SpringConstraint;->mDamping:F

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    div-float/2addr v6, v10

    invoke-virtual {v5, v6}, Lcom/masshabit/common/physics/Vector2;->multiply(F)V

    .line 116
    iget-object v5, p0, Lcom/masshabit/common/physics/SpringConstraint;->mP1:Lcom/masshabit/common/physics/Particle;

    sget-object v6, Lcom/masshabit/common/physics/SpringConstraint;->sDir:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v5, v6}, Lcom/masshabit/common/physics/Particle;->addForce(Lcom/masshabit/common/physics/Vector2;)V

    .line 117
    sget-object v5, Lcom/masshabit/common/physics/SpringConstraint;->sDir:Lcom/masshabit/common/physics/Vector2;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v5, v6}, Lcom/masshabit/common/physics/Vector2;->multiply(F)V

    .line 118
    iget-object v5, p0, Lcom/masshabit/common/physics/SpringConstraint;->mP2:Lcom/masshabit/common/physics/Particle;

    sget-object v6, Lcom/masshabit/common/physics/SpringConstraint;->sDir:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v5, v6}, Lcom/masshabit/common/physics/Particle;->addForce(Lcom/masshabit/common/physics/Vector2;)V

    .line 167
    .end local v2    # "displacementSpeed":F
    :cond_2
    :goto_2
    return-void

    .line 75
    .end local v0    # "correction":F
    :cond_3
    iget v5, p0, Lcom/masshabit/common/physics/SpringConstraint;->mTypeFlags:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_0

    .line 78
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_4
    move v0, v7

    .line 83
    goto/16 :goto_1

    .line 120
    .restart local v0    # "correction":F
    :cond_5
    iget-object v5, p0, Lcom/masshabit/common/physics/SpringConstraint;->mP1:Lcom/masshabit/common/physics/Particle;

    iget-boolean v5, v5, Lcom/masshabit/common/physics/Particle;->mFixed:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/masshabit/common/physics/SpringConstraint;->mP2:Lcom/masshabit/common/physics/Particle;

    iget-boolean v5, v5, Lcom/masshabit/common/physics/Particle;->mFixed:Z

    if-nez v5, :cond_7

    .line 122
    cmpl-float v5, v0, v7

    if-eqz v5, :cond_6

    .line 125
    iget-object v5, p0, Lcom/masshabit/common/physics/SpringConstraint;->mP2:Lcom/masshabit/common/physics/Particle;

    iget-object v6, p0, Lcom/masshabit/common/physics/SpringConstraint;->mP2:Lcom/masshabit/common/physics/Particle;

    iget-object v6, v6, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v6, v6, Lcom/masshabit/common/physics/Vector2;->x:F

    sget-object v7, Lcom/masshabit/common/physics/SpringConstraint;->sDir:Lcom/masshabit/common/physics/Vector2;

    iget v7, v7, Lcom/masshabit/common/physics/Vector2;->x:F

    neg-float v8, v0

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/masshabit/common/physics/SpringConstraint;->mP2:Lcom/masshabit/common/physics/Particle;

    iget-object v7, v7, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v7, v7, Lcom/masshabit/common/physics/Vector2;->y:F

    sget-object v8, Lcom/masshabit/common/physics/SpringConstraint;->sDir:Lcom/masshabit/common/physics/Vector2;

    iget v8, v8, Lcom/masshabit/common/physics/Vector2;->y:F

    neg-float v9, v0

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/masshabit/common/physics/Particle;->setPosition(FF)V

    .line 126
    sget-object v5, Lcom/masshabit/common/physics/SpringConstraint;->sVel2:Lcom/masshabit/common/physics/Vector2;

    sget-object v6, Lcom/masshabit/common/physics/SpringConstraint;->sDir:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v5, v6}, Lcom/masshabit/common/physics/Vector2;->dot(Lcom/masshabit/common/physics/Vector2;)F

    move-result v5

    neg-float v4, v5

    .line 127
    .restart local v4    # "velKill":F
    sget-object v5, Lcom/masshabit/common/physics/SpringConstraint;->sVel2:Lcom/masshabit/common/physics/Vector2;

    sget-object v6, Lcom/masshabit/common/physics/SpringConstraint;->sDir:Lcom/masshabit/common/physics/Vector2;

    iget v6, v6, Lcom/masshabit/common/physics/Vector2;->x:F

    mul-float/2addr v6, v4

    sget-object v7, Lcom/masshabit/common/physics/SpringConstraint;->sDir:Lcom/masshabit/common/physics/Vector2;

    iget v7, v7, Lcom/masshabit/common/physics/Vector2;->y:F

    mul-float/2addr v7, v4

    invoke-virtual {v5, v6, v7}, Lcom/masshabit/common/physics/Vector2;->add(FF)V

    .line 128
    iget-object v5, p0, Lcom/masshabit/common/physics/SpringConstraint;->mP2:Lcom/masshabit/common/physics/Particle;

    sget-object v6, Lcom/masshabit/common/physics/SpringConstraint;->sVel2:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v5, v6}, Lcom/masshabit/common/physics/Particle;->setVelocity(Lcom/masshabit/common/physics/Vector2;)V

    .line 135
    .end local v4    # "velKill":F
    :cond_6
    iget-object v5, p0, Lcom/masshabit/common/physics/SpringConstraint;->mP1:Lcom/masshabit/common/physics/Particle;

    sget-object v6, Lcom/masshabit/common/physics/SpringConstraint;->sVel1:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v5, v6}, Lcom/masshabit/common/physics/Particle;->getVelocity(Lcom/masshabit/common/physics/Vector2;)V

    .line 136
    iget-object v5, p0, Lcom/masshabit/common/physics/SpringConstraint;->mP2:Lcom/masshabit/common/physics/Particle;

    sget-object v6, Lcom/masshabit/common/physics/SpringConstraint;->sVel2:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v5, v6}, Lcom/masshabit/common/physics/Particle;->getVelocity(Lcom/masshabit/common/physics/Vector2;)V

    .line 137
    sget-object v5, Lcom/masshabit/common/physics/SpringConstraint;->sVel2:Lcom/masshabit/common/physics/Vector2;

    sget-object v6, Lcom/masshabit/common/physics/SpringConstraint;->sDir:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v5, v6}, Lcom/masshabit/common/physics/Vector2;->dot(Lcom/masshabit/common/physics/Vector2;)F

    move-result v5

    sget-object v6, Lcom/masshabit/common/physics/SpringConstraint;->sVel1:Lcom/masshabit/common/physics/Vector2;

    sget-object v7, Lcom/masshabit/common/physics/SpringConstraint;->sDir:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v6, v7}, Lcom/masshabit/common/physics/Vector2;->dot(Lcom/masshabit/common/physics/Vector2;)F

    move-result v6

    sub-float/2addr v5, v6

    div-float v2, v5, p1

    .line 140
    .restart local v2    # "displacementSpeed":F
    sget-object v5, Lcom/masshabit/common/physics/SpringConstraint;->sDir:Lcom/masshabit/common/physics/Vector2;

    neg-float v6, v1

    iget v7, p0, Lcom/masshabit/common/physics/SpringConstraint;->mK:F

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/masshabit/common/physics/SpringConstraint;->mDamping:F

    mul-float/2addr v7, v2

    sub-float/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/masshabit/common/physics/Vector2;->multiply(F)V

    .line 141
    iget-object v5, p0, Lcom/masshabit/common/physics/SpringConstraint;->mP2:Lcom/masshabit/common/physics/Particle;

    sget-object v6, Lcom/masshabit/common/physics/SpringConstraint;->sDir:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v5, v6}, Lcom/masshabit/common/physics/Particle;->addForce(Lcom/masshabit/common/physics/Vector2;)V

    goto/16 :goto_2

    .line 143
    .end local v2    # "displacementSpeed":F
    :cond_7
    iget-object v5, p0, Lcom/masshabit/common/physics/SpringConstraint;->mP1:Lcom/masshabit/common/physics/Particle;

    iget-boolean v5, v5, Lcom/masshabit/common/physics/Particle;->mFixed:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/masshabit/common/physics/SpringConstraint;->mP2:Lcom/masshabit/common/physics/Particle;

    iget-boolean v5, v5, Lcom/masshabit/common/physics/Particle;->mFixed:Z

    if-eqz v5, :cond_2

    .line 145
    cmpl-float v5, v0, v7

    if-lez v5, :cond_8

    .line 148
    iget-object v5, p0, Lcom/masshabit/common/physics/SpringConstraint;->mP1:Lcom/masshabit/common/physics/Particle;

    iget-object v6, p0, Lcom/masshabit/common/physics/SpringConstraint;->mP1:Lcom/masshabit/common/physics/Particle;

    iget-object v6, v6, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v6, v6, Lcom/masshabit/common/physics/Vector2;->x:F

    sget-object v7, Lcom/masshabit/common/physics/SpringConstraint;->sDir:Lcom/masshabit/common/physics/Vector2;

    iget v7, v7, Lcom/masshabit/common/physics/Vector2;->x:F

    mul-float/2addr v7, v0

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/masshabit/common/physics/SpringConstraint;->mP1:Lcom/masshabit/common/physics/Particle;

    iget-object v7, v7, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v7, v7, Lcom/masshabit/common/physics/Vector2;->y:F

    sget-object v8, Lcom/masshabit/common/physics/SpringConstraint;->sDir:Lcom/masshabit/common/physics/Vector2;

    iget v8, v8, Lcom/masshabit/common/physics/Vector2;->y:F

    mul-float/2addr v8, v0

    add-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/masshabit/common/physics/Particle;->setPosition(FF)V

    .line 149
    sget-object v5, Lcom/masshabit/common/physics/SpringConstraint;->sVel1:Lcom/masshabit/common/physics/Vector2;

    sget-object v6, Lcom/masshabit/common/physics/SpringConstraint;->sDir:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v5, v6}, Lcom/masshabit/common/physics/Vector2;->dot(Lcom/masshabit/common/physics/Vector2;)F

    move-result v5

    neg-float v4, v5

    .line 150
    .restart local v4    # "velKill":F
    sget-object v5, Lcom/masshabit/common/physics/SpringConstraint;->sVel1:Lcom/masshabit/common/physics/Vector2;

    sget-object v6, Lcom/masshabit/common/physics/SpringConstraint;->sDir:Lcom/masshabit/common/physics/Vector2;

    iget v6, v6, Lcom/masshabit/common/physics/Vector2;->x:F

    mul-float/2addr v6, v4

    sget-object v7, Lcom/masshabit/common/physics/SpringConstraint;->sDir:Lcom/masshabit/common/physics/Vector2;

    iget v7, v7, Lcom/masshabit/common/physics/Vector2;->y:F

    mul-float/2addr v7, v4

    invoke-virtual {v5, v6, v7}, Lcom/masshabit/common/physics/Vector2;->add(FF)V

    .line 151
    iget-object v5, p0, Lcom/masshabit/common/physics/SpringConstraint;->mP1:Lcom/masshabit/common/physics/Particle;

    sget-object v6, Lcom/masshabit/common/physics/SpringConstraint;->sVel1:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v5, v6}, Lcom/masshabit/common/physics/Particle;->setVelocity(Lcom/masshabit/common/physics/Vector2;)V

    .line 158
    .end local v4    # "velKill":F
    :cond_8
    iget-object v5, p0, Lcom/masshabit/common/physics/SpringConstraint;->mP1:Lcom/masshabit/common/physics/Particle;

    sget-object v6, Lcom/masshabit/common/physics/SpringConstraint;->sVel1:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v5, v6}, Lcom/masshabit/common/physics/Particle;->getVelocity(Lcom/masshabit/common/physics/Vector2;)V

    .line 159
    iget-object v5, p0, Lcom/masshabit/common/physics/SpringConstraint;->mP2:Lcom/masshabit/common/physics/Particle;

    sget-object v6, Lcom/masshabit/common/physics/SpringConstraint;->sVel2:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v5, v6}, Lcom/masshabit/common/physics/Particle;->getVelocity(Lcom/masshabit/common/physics/Vector2;)V

    .line 160
    sget-object v5, Lcom/masshabit/common/physics/SpringConstraint;->sVel2:Lcom/masshabit/common/physics/Vector2;

    sget-object v6, Lcom/masshabit/common/physics/SpringConstraint;->sDir:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v5, v6}, Lcom/masshabit/common/physics/Vector2;->dot(Lcom/masshabit/common/physics/Vector2;)F

    move-result v5

    sget-object v6, Lcom/masshabit/common/physics/SpringConstraint;->sVel1:Lcom/masshabit/common/physics/Vector2;

    sget-object v7, Lcom/masshabit/common/physics/SpringConstraint;->sDir:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v6, v7}, Lcom/masshabit/common/physics/Vector2;->dot(Lcom/masshabit/common/physics/Vector2;)F

    move-result v6

    sub-float/2addr v5, v6

    div-float v2, v5, p1

    .line 163
    .restart local v2    # "displacementSpeed":F
    sget-object v5, Lcom/masshabit/common/physics/SpringConstraint;->sDir:Lcom/masshabit/common/physics/Vector2;

    iget v6, p0, Lcom/masshabit/common/physics/SpringConstraint;->mK:F

    mul-float/2addr v6, v1

    iget v7, p0, Lcom/masshabit/common/physics/SpringConstraint;->mDamping:F

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/masshabit/common/physics/Vector2;->multiply(F)V

    .line 164
    iget-object v5, p0, Lcom/masshabit/common/physics/SpringConstraint;->mP1:Lcom/masshabit/common/physics/Particle;

    sget-object v6, Lcom/masshabit/common/physics/SpringConstraint;->sDir:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v5, v6}, Lcom/masshabit/common/physics/Particle;->addForce(Lcom/masshabit/common/physics/Vector2;)V

    goto/16 :goto_2
.end method
