.class public final Lcom/masshabit/common/physics/Vector2;
.super Ljava/lang/Object;
.source "Vector2.java"


# static fields
.field public static final DOWN:Lcom/masshabit/common/physics/Vector2;

.field public static final LEFT:Lcom/masshabit/common/physics/Vector2;

.field public static final RIGHT:Lcom/masshabit/common/physics/Vector2;

.field public static final UP:Lcom/masshabit/common/physics/Vector2;

.field public static final ZERO:Lcom/masshabit/common/physics/Vector2;

.field protected static sTransformBuffer:[F


# instance fields
.field public x:F

.field public y:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v1, 0x0

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [F

    sput-object v0, Lcom/masshabit/common/physics/Vector2;->sTransformBuffer:[F

    .line 31
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0, v1, v1}, Lcom/masshabit/common/physics/Vector2;-><init>(FF)V

    sput-object v0, Lcom/masshabit/common/physics/Vector2;->ZERO:Lcom/masshabit/common/physics/Vector2;

    .line 32
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0, v1, v2}, Lcom/masshabit/common/physics/Vector2;-><init>(FF)V

    sput-object v0, Lcom/masshabit/common/physics/Vector2;->UP:Lcom/masshabit/common/physics/Vector2;

    .line 33
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0, v1, v3}, Lcom/masshabit/common/physics/Vector2;-><init>(FF)V

    sput-object v0, Lcom/masshabit/common/physics/Vector2;->DOWN:Lcom/masshabit/common/physics/Vector2;

    .line 34
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0, v2, v1}, Lcom/masshabit/common/physics/Vector2;-><init>(FF)V

    sput-object v0, Lcom/masshabit/common/physics/Vector2;->LEFT:Lcom/masshabit/common/physics/Vector2;

    .line 35
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0, v3, v1}, Lcom/masshabit/common/physics/Vector2;-><init>(FF)V

    sput-object v0, Lcom/masshabit/common/physics/Vector2;->RIGHT:Lcom/masshabit/common/physics/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .param p1, "xValue"    # F
    .param p2, "yValue"    # F

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/masshabit/common/physics/Vector2;)V
    .locals 0
    .param p1, "other"    # Lcom/masshabit/common/physics/Vector2;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p0, p1}, Lcom/masshabit/common/physics/Vector2;->set(Lcom/masshabit/common/physics/Vector2;)V

    .line 77
    return-void
.end method

.method public static distance(FFFF)F
    .locals 2
    .param p0, "ax"    # F
    .param p1, "ay"    # F
    .param p2, "bx"    # F
    .param p3, "by"    # F

    .prologue
    .line 44
    invoke-static {p0, p1, p2, p3}, Lcom/masshabit/common/physics/Vector2;->distanceSq(FFFF)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static distance(Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;)F
    .locals 4
    .param p0, "a"    # Lcom/masshabit/common/physics/Vector2;
    .param p1, "b"    # Lcom/masshabit/common/physics/Vector2;

    .prologue
    .line 40
    iget v0, p0, Lcom/masshabit/common/physics/Vector2;->x:F

    iget v1, p0, Lcom/masshabit/common/physics/Vector2;->y:F

    iget v2, p1, Lcom/masshabit/common/physics/Vector2;->x:F

    iget v3, p1, Lcom/masshabit/common/physics/Vector2;->y:F

    invoke-static {v0, v1, v2, v3}, Lcom/masshabit/common/physics/Vector2;->distance(FFFF)F

    move-result v0

    return v0
.end method

.method public static distanceSq(FFFF)F
    .locals 3
    .param p0, "ax"    # F
    .param p1, "ay"    # F
    .param p2, "bx"    # F
    .param p3, "by"    # F

    .prologue
    .line 52
    sub-float v0, p0, p2

    sub-float v1, p0, p2

    mul-float/2addr v0, v1

    sub-float v1, p1, p3

    sub-float v2, p1, p3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public static distanceSq(Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;)F
    .locals 4
    .param p0, "a"    # Lcom/masshabit/common/physics/Vector2;
    .param p1, "b"    # Lcom/masshabit/common/physics/Vector2;

    .prologue
    .line 48
    iget v0, p0, Lcom/masshabit/common/physics/Vector2;->x:F

    iget v1, p0, Lcom/masshabit/common/physics/Vector2;->y:F

    iget v2, p1, Lcom/masshabit/common/physics/Vector2;->x:F

    iget v3, p1, Lcom/masshabit/common/physics/Vector2;->y:F

    invoke-static {v0, v1, v2, v3}, Lcom/masshabit/common/physics/Vector2;->distanceSq(FFFF)F

    move-result v0

    return v0
.end method

.method public static matrixTransform(Landroid/graphics/Matrix;Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;)V
    .locals 4
    .param p0, "m"    # Landroid/graphics/Matrix;
    .param p1, "point"    # Lcom/masshabit/common/physics/Vector2;
    .param p2, "result"    # Lcom/masshabit/common/physics/Vector2;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    sget-object v0, Lcom/masshabit/common/physics/Vector2;->sTransformBuffer:[F

    iget v1, p1, Lcom/masshabit/common/physics/Vector2;->x:F

    aput v1, v0, v2

    .line 58
    sget-object v0, Lcom/masshabit/common/physics/Vector2;->sTransformBuffer:[F

    iget v1, p1, Lcom/masshabit/common/physics/Vector2;->y:F

    aput v1, v0, v3

    .line 59
    sget-object v0, Lcom/masshabit/common/physics/Vector2;->sTransformBuffer:[F

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 60
    sget-object v0, Lcom/masshabit/common/physics/Vector2;->sTransformBuffer:[F

    aget v0, v0, v2

    iput v0, p2, Lcom/masshabit/common/physics/Vector2;->x:F

    .line 61
    sget-object v0, Lcom/masshabit/common/physics/Vector2;->sTransformBuffer:[F

    aget v0, v0, v3

    iput v0, p2, Lcom/masshabit/common/physics/Vector2;->y:F

    .line 62
    return-void
.end method


# virtual methods
.method public final add(FF)V
    .locals 1
    .param p1, "otherX"    # F
    .param p2, "otherY"    # F

    .prologue
    .line 87
    iget v0, p0, Lcom/masshabit/common/physics/Vector2;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/masshabit/common/physics/Vector2;->x:F

    .line 88
    iget v0, p0, Lcom/masshabit/common/physics/Vector2;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/masshabit/common/physics/Vector2;->y:F

    .line 89
    return-void
.end method

.method public final add(Lcom/masshabit/common/physics/Vector2;)V
    .locals 2
    .param p1, "other"    # Lcom/masshabit/common/physics/Vector2;

    .prologue
    .line 81
    iget v0, p0, Lcom/masshabit/common/physics/Vector2;->x:F

    iget v1, p1, Lcom/masshabit/common/physics/Vector2;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/masshabit/common/physics/Vector2;->x:F

    .line 82
    iget v0, p0, Lcom/masshabit/common/physics/Vector2;->y:F

    iget v1, p1, Lcom/masshabit/common/physics/Vector2;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/masshabit/common/physics/Vector2;->y:F

    .line 83
    return-void
.end method

.method public angle()F
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 206
    iget v0, p0, Lcom/masshabit/common/physics/Vector2;->x:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 208
    iget v0, p0, Lcom/masshabit/common/physics/Vector2;->x:F

    float-to-double v0, v0

    iget v2, p0, Lcom/masshabit/common/physics/Vector2;->y:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 218
    :goto_0
    return v0

    .line 210
    :cond_0
    iget v0, p0, Lcom/masshabit/common/physics/Vector2;->y:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 212
    iget v0, p0, Lcom/masshabit/common/physics/Vector2;->y:F

    float-to-double v0, v0

    iget v2, p0, Lcom/masshabit/common/physics/Vector2;->x:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 218
    goto :goto_0
.end method

.method public angleDegrees()F
    .locals 4

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/masshabit/common/physics/Vector2;->angle()F

    move-result v0

    const/high16 v1, 0x43340000    # 180.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public cross(Lcom/masshabit/common/physics/Vector2;)F
    .locals 3
    .param p1, "other"    # Lcom/masshabit/common/physics/Vector2;

    .prologue
    .line 228
    iget v0, p0, Lcom/masshabit/common/physics/Vector2;->x:F

    iget v1, p1, Lcom/masshabit/common/physics/Vector2;->y:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/masshabit/common/physics/Vector2;->y:F

    iget v2, p1, Lcom/masshabit/common/physics/Vector2;->x:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public final distance2(Lcom/masshabit/common/physics/Vector2;)F
    .locals 4
    .param p1, "other"    # Lcom/masshabit/common/physics/Vector2;

    .prologue
    .line 153
    iget v2, p0, Lcom/masshabit/common/physics/Vector2;->x:F

    iget v3, p1, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float v0, v2, v3

    .line 154
    .local v0, "dx":F
    iget v2, p0, Lcom/masshabit/common/physics/Vector2;->y:F

    iget v3, p1, Lcom/masshabit/common/physics/Vector2;->y:F

    sub-float v1, v2, v3

    .line 155
    .local v1, "dy":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    return v2
.end method

.method public final divide(F)V
    .locals 1
    .param p1, "magnitude"    # F

    .prologue
    .line 117
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 119
    iget v0, p0, Lcom/masshabit/common/physics/Vector2;->x:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/masshabit/common/physics/Vector2;->x:F

    .line 120
    iget v0, p0, Lcom/masshabit/common/physics/Vector2;->y:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/masshabit/common/physics/Vector2;->y:F

    .line 122
    :cond_0
    return-void
.end method

.method public final dot(Lcom/masshabit/common/physics/Vector2;)F
    .locals 3
    .param p1, "other"    # Lcom/masshabit/common/physics/Vector2;

    .prologue
    .line 138
    iget v0, p0, Lcom/masshabit/common/physics/Vector2;->x:F

    iget v1, p1, Lcom/masshabit/common/physics/Vector2;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/masshabit/common/physics/Vector2;->y:F

    iget v2, p1, Lcom/masshabit/common/physics/Vector2;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 239
    instance-of v1, p1, Lcom/masshabit/common/physics/Vector2;

    if-eqz v1, :cond_1

    .line 241
    iget v2, p0, Lcom/masshabit/common/physics/Vector2;->x:F

    move-object v0, p1

    check-cast v0, Lcom/masshabit/common/physics/Vector2;

    move-object v1, v0

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->x:F

    cmpl-float v1, v2, v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/masshabit/common/physics/Vector2;->y:F

    check-cast p1, Lcom/masshabit/common/physics/Vector2;

    .end local p1    # "o":Ljava/lang/Object;
    iget v2, p1, Lcom/masshabit/common/physics/Vector2;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 243
    :goto_0
    return v1

    .line 241
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 243
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public final flipHorizontal(F)V
    .locals 1
    .param p1, "aboutWidth"    # F

    .prologue
    .line 192
    iget v0, p0, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float v0, p1, v0

    iput v0, p0, Lcom/masshabit/common/physics/Vector2;->x:F

    .line 193
    return-void
.end method

.method public final flipVertical(F)V
    .locals 1
    .param p1, "aboutHeight"    # F

    .prologue
    .line 197
    iget v0, p0, Lcom/masshabit/common/physics/Vector2;->y:F

    sub-float v0, p1, v0

    iput v0, p0, Lcom/masshabit/common/physics/Vector2;->y:F

    .line 198
    return-void
.end method

.method public final length()F
    .locals 2

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/masshabit/common/physics/Vector2;->lengthSq()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public final lengthSq()F
    .locals 3

    .prologue
    .line 148
    iget v0, p0, Lcom/masshabit/common/physics/Vector2;->x:F

    iget v1, p0, Lcom/masshabit/common/physics/Vector2;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/masshabit/common/physics/Vector2;->y:F

    iget v2, p0, Lcom/masshabit/common/physics/Vector2;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public final multiply(F)V
    .locals 1
    .param p1, "magnitude"    # F

    .prologue
    .line 105
    iget v0, p0, Lcom/masshabit/common/physics/Vector2;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/masshabit/common/physics/Vector2;->x:F

    .line 106
    iget v0, p0, Lcom/masshabit/common/physics/Vector2;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/masshabit/common/physics/Vector2;->y:F

    .line 107
    return-void
.end method

.method public final multiply(Lcom/masshabit/common/physics/Vector2;)V
    .locals 2
    .param p1, "other"    # Lcom/masshabit/common/physics/Vector2;

    .prologue
    .line 111
    iget v0, p0, Lcom/masshabit/common/physics/Vector2;->x:F

    iget v1, p1, Lcom/masshabit/common/physics/Vector2;->x:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/masshabit/common/physics/Vector2;->x:F

    .line 112
    iget v0, p0, Lcom/masshabit/common/physics/Vector2;->y:F

    iget v1, p1, Lcom/masshabit/common/physics/Vector2;->y:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/masshabit/common/physics/Vector2;->y:F

    .line 113
    return-void
.end method

.method public final normalize()F
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 160
    invoke-virtual {p0}, Lcom/masshabit/common/physics/Vector2;->length()F

    move-result v0

    .line 163
    .local v0, "magnitude":F
    cmpl-float v1, v0, v2

    if-eqz v1, :cond_0

    .line 165
    iget v1, p0, Lcom/masshabit/common/physics/Vector2;->x:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/masshabit/common/physics/Vector2;->x:F

    .line 166
    iget v1, p0, Lcom/masshabit/common/physics/Vector2;->y:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/masshabit/common/physics/Vector2;->y:F

    .line 175
    :goto_0
    return v0

    .line 171
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/masshabit/common/physics/Vector2;->x:F

    .line 172
    iput v2, p0, Lcom/masshabit/common/physics/Vector2;->y:F

    goto :goto_0
.end method

.method public final perp()V
    .locals 2

    .prologue
    .line 180
    iget v0, p0, Lcom/masshabit/common/physics/Vector2;->x:F

    .line 181
    .local v0, "temp":F
    iget v1, p0, Lcom/masshabit/common/physics/Vector2;->y:F

    neg-float v1, v1

    iput v1, p0, Lcom/masshabit/common/physics/Vector2;->x:F

    .line 182
    iput v0, p0, Lcom/masshabit/common/physics/Vector2;->y:F

    .line 183
    return-void
.end method

.method public final set(FF)V
    .locals 0
    .param p1, "xValue"    # F
    .param p2, "yValue"    # F

    .prologue
    .line 132
    iput p1, p0, Lcom/masshabit/common/physics/Vector2;->x:F

    .line 133
    iput p2, p0, Lcom/masshabit/common/physics/Vector2;->y:F

    .line 134
    return-void
.end method

.method public final set(Lcom/masshabit/common/physics/Vector2;)V
    .locals 1
    .param p1, "other"    # Lcom/masshabit/common/physics/Vector2;

    .prologue
    .line 126
    iget v0, p1, Lcom/masshabit/common/physics/Vector2;->x:F

    iput v0, p0, Lcom/masshabit/common/physics/Vector2;->x:F

    .line 127
    iget v0, p1, Lcom/masshabit/common/physics/Vector2;->y:F

    iput v0, p0, Lcom/masshabit/common/physics/Vector2;->y:F

    .line 128
    return-void
.end method

.method public final subtract(FF)V
    .locals 1
    .param p1, "otherX"    # F
    .param p2, "otherY"    # F

    .prologue
    .line 99
    iget v0, p0, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/masshabit/common/physics/Vector2;->x:F

    .line 100
    iget v0, p0, Lcom/masshabit/common/physics/Vector2;->y:F

    sub-float/2addr v0, p2

    iput v0, p0, Lcom/masshabit/common/physics/Vector2;->y:F

    .line 101
    return-void
.end method

.method public final subtract(Lcom/masshabit/common/physics/Vector2;)V
    .locals 2
    .param p1, "other"    # Lcom/masshabit/common/physics/Vector2;

    .prologue
    .line 93
    iget v0, p0, Lcom/masshabit/common/physics/Vector2;->x:F

    iget v1, p1, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/masshabit/common/physics/Vector2;->x:F

    .line 94
    iget v0, p0, Lcom/masshabit/common/physics/Vector2;->y:F

    iget v1, p1, Lcom/masshabit/common/physics/Vector2;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/masshabit/common/physics/Vector2;->y:F

    .line 95
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 249
    const-string v0, "<%f, %f>"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/masshabit/common/physics/Vector2;->x:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/masshabit/common/physics/Vector2;->y:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Landroid/graphics/Matrix;)V
    .locals 0
    .param p1, "m"    # Landroid/graphics/Matrix;

    .prologue
    .line 233
    invoke-static {p1, p0, p0}, Lcom/masshabit/common/physics/Vector2;->matrixTransform(Landroid/graphics/Matrix;Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;)V

    .line 234
    return-void
.end method

.method public final zero()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 187
    invoke-virtual {p0, v0, v0}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 188
    return-void
.end method
