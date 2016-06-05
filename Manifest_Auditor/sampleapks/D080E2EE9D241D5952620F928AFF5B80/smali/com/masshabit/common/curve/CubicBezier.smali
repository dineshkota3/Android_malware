.class public Lcom/masshabit/common/curve/CubicBezier;
.super Ljava/lang/Object;
.source "CubicBezier.java"


# static fields
.field protected static final INTEGRATION_STEPS:I = 0xc8

.field public static sTemp1:Lcom/masshabit/common/physics/Vector2;

.field public static sTemp2:Lcom/masshabit/common/physics/Vector2;


# instance fields
.field protected mLength:F

.field public mP1:Lcom/masshabit/common/physics/Vector2;

.field public mP2:Lcom/masshabit/common/physics/Vector2;

.field public mP3:Lcom/masshabit/common/physics/Vector2;

.field public mP4:Lcom/masshabit/common/physics/Vector2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Vector2;-><init>()V

    sput-object v0, Lcom/masshabit/common/curve/CubicBezier;->sTemp1:Lcom/masshabit/common/physics/Vector2;

    .line 16
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Vector2;-><init>()V

    sput-object v0, Lcom/masshabit/common/curve/CubicBezier;->sTemp2:Lcom/masshabit/common/physics/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Vector2;-><init>()V

    iput-object v0, p0, Lcom/masshabit/common/curve/CubicBezier;->mP1:Lcom/masshabit/common/physics/Vector2;

    .line 37
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Vector2;-><init>()V

    iput-object v0, p0, Lcom/masshabit/common/curve/CubicBezier;->mP2:Lcom/masshabit/common/physics/Vector2;

    .line 38
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Vector2;-><init>()V

    iput-object v0, p0, Lcom/masshabit/common/curve/CubicBezier;->mP3:Lcom/masshabit/common/physics/Vector2;

    .line 39
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Vector2;-><init>()V

    iput-object v0, p0, Lcom/masshabit/common/curve/CubicBezier;->mP4:Lcom/masshabit/common/physics/Vector2;

    .line 47
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/masshabit/common/curve/CubicBezier;->mLength:F

    .line 48
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 78
    sget-object v6, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 79
    .local v6, "env":Lcom/masshabit/common/Environment;
    iget-object v0, v6, Lcom/masshabit/common/Environment;->mDebugPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    const/4 v0, 0x0

    sget-object v1, Lcom/masshabit/common/curve/CubicBezier;->sTemp2:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {p0, v0, v1}, Lcom/masshabit/common/curve/CubicBezier;->evaluate(FLcom/masshabit/common/physics/Vector2;)V

    .line 83
    iget v0, p0, Lcom/masshabit/common/curve/CubicBezier;->mLength:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v8, v0

    .line 84
    .local v8, "max":I
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_0
    if-gt v7, v8, :cond_0

    .line 86
    int-to-float v0, v7

    int-to-float v1, v8

    div-float/2addr v0, v1

    sget-object v1, Lcom/masshabit/common/curve/CubicBezier;->sTemp1:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {p0, v0, v1}, Lcom/masshabit/common/curve/CubicBezier;->evaluate(FLcom/masshabit/common/physics/Vector2;)V

    .line 87
    sget-object v0, Lcom/masshabit/common/curve/CubicBezier;->sTemp2:Lcom/masshabit/common/physics/Vector2;

    iget v1, v0, Lcom/masshabit/common/physics/Vector2;->x:F

    sget-object v0, Lcom/masshabit/common/curve/CubicBezier;->sTemp2:Lcom/masshabit/common/physics/Vector2;

    iget v2, v0, Lcom/masshabit/common/physics/Vector2;->y:F

    sget-object v0, Lcom/masshabit/common/curve/CubicBezier;->sTemp1:Lcom/masshabit/common/physics/Vector2;

    iget v3, v0, Lcom/masshabit/common/physics/Vector2;->x:F

    sget-object v0, Lcom/masshabit/common/curve/CubicBezier;->sTemp1:Lcom/masshabit/common/physics/Vector2;

    iget v4, v0, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v5, v6, Lcom/masshabit/common/Environment;->mDebugPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 88
    sget-object v0, Lcom/masshabit/common/curve/CubicBezier;->sTemp2:Lcom/masshabit/common/physics/Vector2;

    sget-object v1, Lcom/masshabit/common/curve/CubicBezier;->sTemp1:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v0, v1}, Lcom/masshabit/common/physics/Vector2;->set(Lcom/masshabit/common/physics/Vector2;)V

    .line 84
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 90
    :cond_0
    return-void
.end method

.method public estimateLength()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 55
    iput v2, p0, Lcom/masshabit/common/curve/CubicBezier;->mLength:F

    .line 56
    sget-object v1, Lcom/masshabit/common/curve/CubicBezier;->sTemp1:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {p0, v2, v1}, Lcom/masshabit/common/curve/CubicBezier;->evaluate(FLcom/masshabit/common/physics/Vector2;)V

    .line 58
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xc8

    if-ge v0, v1, :cond_0

    .line 60
    int-to-float v1, v0

    const/high16 v2, 0x43480000    # 200.0f

    div-float/2addr v1, v2

    sget-object v2, Lcom/masshabit/common/curve/CubicBezier;->sTemp2:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {p0, v1, v2}, Lcom/masshabit/common/curve/CubicBezier;->evaluate(FLcom/masshabit/common/physics/Vector2;)V

    .line 61
    iget v1, p0, Lcom/masshabit/common/curve/CubicBezier;->mLength:F

    float-to-double v1, v1

    sget-object v3, Lcom/masshabit/common/curve/CubicBezier;->sTemp2:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->x:F

    sget-object v4, Lcom/masshabit/common/curve/CubicBezier;->sTemp1:Lcom/masshabit/common/physics/Vector2;

    iget v4, v4, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float/2addr v3, v4

    sget-object v4, Lcom/masshabit/common/curve/CubicBezier;->sTemp2:Lcom/masshabit/common/physics/Vector2;

    iget v4, v4, Lcom/masshabit/common/physics/Vector2;->x:F

    sget-object v5, Lcom/masshabit/common/curve/CubicBezier;->sTemp1:Lcom/masshabit/common/physics/Vector2;

    iget v5, v5, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    sget-object v4, Lcom/masshabit/common/curve/CubicBezier;->sTemp2:Lcom/masshabit/common/physics/Vector2;

    iget v4, v4, Lcom/masshabit/common/physics/Vector2;->y:F

    sget-object v5, Lcom/masshabit/common/curve/CubicBezier;->sTemp1:Lcom/masshabit/common/physics/Vector2;

    iget v5, v5, Lcom/masshabit/common/physics/Vector2;->y:F

    sub-float/2addr v4, v5

    sget-object v5, Lcom/masshabit/common/curve/CubicBezier;->sTemp2:Lcom/masshabit/common/physics/Vector2;

    iget v5, v5, Lcom/masshabit/common/physics/Vector2;->y:F

    sget-object v6, Lcom/masshabit/common/curve/CubicBezier;->sTemp1:Lcom/masshabit/common/physics/Vector2;

    iget v6, v6, Lcom/masshabit/common/physics/Vector2;->y:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    add-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, p0, Lcom/masshabit/common/curve/CubicBezier;->mLength:F

    .line 62
    sget-object v1, Lcom/masshabit/common/curve/CubicBezier;->sTemp1:Lcom/masshabit/common/physics/Vector2;

    sget-object v2, Lcom/masshabit/common/curve/CubicBezier;->sTemp2:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v1, v2}, Lcom/masshabit/common/physics/Vector2;->set(Lcom/masshabit/common/physics/Vector2;)V

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_0
    return-void
.end method

.method public evaluate(FLcom/masshabit/common/physics/Vector2;)V
    .locals 8
    .param p1, "t"    # F
    .param p2, "result"    # Lcom/masshabit/common/physics/Vector2;

    .prologue
    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 68
    sub-float v4, v6, p1

    sub-float v5, v6, p1

    mul-float/2addr v4, v5

    sub-float v5, v6, p1

    mul-float v0, v4, v5

    .line 69
    .local v0, "c1":F
    sub-float v4, v6, p1

    mul-float/2addr v4, v7

    sub-float v5, v6, p1

    mul-float/2addr v4, v5

    mul-float v1, v4, p1

    .line 70
    .local v1, "c2":F
    sub-float v4, v6, p1

    mul-float/2addr v4, v7

    mul-float/2addr v4, p1

    mul-float v2, v4, p1

    .line 71
    .local v2, "c3":F
    mul-float v4, p1, p1

    mul-float v3, v4, p1

    .line 72
    .local v3, "c4":F
    iget-object v4, p0, Lcom/masshabit/common/curve/CubicBezier;->mP1:Lcom/masshabit/common/physics/Vector2;

    iget v4, v4, Lcom/masshabit/common/physics/Vector2;->x:F

    mul-float/2addr v4, v0

    iget-object v5, p0, Lcom/masshabit/common/curve/CubicBezier;->mP2:Lcom/masshabit/common/physics/Vector2;

    iget v5, v5, Lcom/masshabit/common/physics/Vector2;->x:F

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/masshabit/common/curve/CubicBezier;->mP3:Lcom/masshabit/common/physics/Vector2;

    iget v5, v5, Lcom/masshabit/common/physics/Vector2;->x:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/masshabit/common/curve/CubicBezier;->mP4:Lcom/masshabit/common/physics/Vector2;

    iget v5, v5, Lcom/masshabit/common/physics/Vector2;->x:F

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/masshabit/common/curve/CubicBezier;->mP1:Lcom/masshabit/common/physics/Vector2;

    iget v5, v5, Lcom/masshabit/common/physics/Vector2;->y:F

    mul-float/2addr v5, v0

    iget-object v6, p0, Lcom/masshabit/common/curve/CubicBezier;->mP2:Lcom/masshabit/common/physics/Vector2;

    iget v6, v6, Lcom/masshabit/common/physics/Vector2;->y:F

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/masshabit/common/curve/CubicBezier;->mP3:Lcom/masshabit/common/physics/Vector2;

    iget v6, v6, Lcom/masshabit/common/physics/Vector2;->y:F

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/masshabit/common/curve/CubicBezier;->mP4:Lcom/masshabit/common/physics/Vector2;

    iget v6, v6, Lcom/masshabit/common/physics/Vector2;->y:F

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    invoke-virtual {p2, v4, v5}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 74
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 95
    const-string v0, "[%s %s %s %s]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/masshabit/common/curve/CubicBezier;->mP1:Lcom/masshabit/common/physics/Vector2;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/masshabit/common/curve/CubicBezier;->mP2:Lcom/masshabit/common/physics/Vector2;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/masshabit/common/curve/CubicBezier;->mP3:Lcom/masshabit/common/physics/Vector2;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/masshabit/common/curve/CubicBezier;->mP4:Lcom/masshabit/common/physics/Vector2;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
