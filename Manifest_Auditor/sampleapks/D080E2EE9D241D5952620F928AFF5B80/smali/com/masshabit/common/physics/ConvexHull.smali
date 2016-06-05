.class public Lcom/masshabit/common/physics/ConvexHull;
.super Lcom/masshabit/common/physics/Particle;
.source "ConvexHull.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/masshabit/common/physics/ConvexHull$HalfEdge;
    }
.end annotation


# static fields
.field public static final NORMAL_SCALE:F = 5.0f


# instance fields
.field public mAxes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/masshabit/common/physics/Vector2;",
            ">;"
        }
    .end annotation
.end field

.field public mEdges:[Lcom/masshabit/common/physics/ConvexHull$HalfEdge;


# direct methods
.method public constructor <init>(Lcom/masshabit/common/physics/Physics;Z[Lcom/masshabit/common/physics/Vector2;)V
    .locals 10
    .param p1, "engine"    # Lcom/masshabit/common/physics/Physics;
    .param p2, "fixed"    # Z
    .param p3, "vertexList"    # [Lcom/masshabit/common/physics/Vector2;

    .prologue
    const/4 v9, 0x0

    .line 41
    sget-object v2, Lcom/masshabit/common/physics/Vector2;->ZERO:Lcom/masshabit/common/physics/Vector2;

    const/high16 v3, 0x3f800000    # 1.0f

    const v5, 0x3727c5ac    # 1.0E-5f

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/masshabit/common/physics/Particle;-><init>(Lcom/masshabit/common/physics/Physics;Lcom/masshabit/common/physics/Vector2;FZF)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/masshabit/common/physics/ConvexHull;->mAxes:Ljava/util/ArrayList;

    .line 42
    array-length v0, p3

    new-array v0, v0, [Lcom/masshabit/common/physics/ConvexHull$HalfEdge;

    iput-object v0, p0, Lcom/masshabit/common/physics/ConvexHull;->mEdges:[Lcom/masshabit/common/physics/ConvexHull$HalfEdge;

    .line 45
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v0, p3

    if-ge v6, v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/masshabit/common/physics/ConvexHull;->mPos:Lcom/masshabit/common/physics/Vector2;

    aget-object v1, p3, v6

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->x:F

    array-length v2, p3

    int-to-float v2, v2

    div-float/2addr v1, v2

    aget-object v2, p3, v6

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->y:F

    array-length v3, p3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/masshabit/common/physics/Vector2;->add(FF)V

    .line 45
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0, v9, v9}, Lcom/masshabit/common/physics/ConvexHull;->setVelocity(FF)V

    .line 51
    const/4 v6, 0x0

    :goto_1
    array-length v0, p3

    if-ge v6, v0, :cond_2

    .line 53
    aget-object v7, p3, v6

    .line 54
    .local v7, "p1":Lcom/masshabit/common/physics/Vector2;
    add-int/lit8 v0, v6, 0x1

    array-length v1, p3

    rem-int/2addr v0, v1

    aget-object v8, p3, v0

    .line 55
    .local v8, "p2":Lcom/masshabit/common/physics/Vector2;
    iget-object v9, p0, Lcom/masshabit/common/physics/ConvexHull;->mEdges:[Lcom/masshabit/common/physics/ConvexHull$HalfEdge;

    new-instance v0, Lcom/masshabit/common/physics/ConvexHull$HalfEdge;

    iget v1, v7, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v2, p0, Lcom/masshabit/common/physics/ConvexHull;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float v2, v1, v2

    iget v1, v7, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v3, p0, Lcom/masshabit/common/physics/ConvexHull;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->y:F

    sub-float v3, v1, v3

    iget v1, v8, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v4, p0, Lcom/masshabit/common/physics/ConvexHull;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v4, v4, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float v4, v1, v4

    iget v1, v8, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v5, p0, Lcom/masshabit/common/physics/ConvexHull;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v5, v5, Lcom/masshabit/common/physics/Vector2;->y:F

    sub-float v5, v1, v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/masshabit/common/physics/ConvexHull$HalfEdge;-><init>(Lcom/masshabit/common/physics/ConvexHull;FFFF)V

    aput-object v0, v9, v6

    .line 56
    iget-object v0, p0, Lcom/masshabit/common/physics/ConvexHull;->mAxes:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/masshabit/common/physics/ConvexHull;->mEdges:[Lcom/masshabit/common/physics/ConvexHull$HalfEdge;

    aget-object v1, v1, v6

    iget-object v1, v1, Lcom/masshabit/common/physics/ConvexHull$HalfEdge;->n:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/masshabit/common/physics/ConvexHull;->mAxes:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/masshabit/common/physics/ConvexHull;->mEdges:[Lcom/masshabit/common/physics/ConvexHull$HalfEdge;

    aget-object v1, v1, v6

    iget-object v1, v1, Lcom/masshabit/common/physics/ConvexHull$HalfEdge;->n:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 61
    .end local v7    # "p1":Lcom/masshabit/common/physics/Vector2;
    .end local v8    # "p2":Lcom/masshabit/common/physics/Vector2;
    :cond_2
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 9
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;

    .prologue
    const/high16 v8, 0x40a00000    # 5.0f

    const/high16 v7, 0x40000000    # 2.0f

    .line 66
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lcom/masshabit/common/physics/ConvexHull;->mEdges:[Lcom/masshabit/common/physics/ConvexHull$HalfEdge;

    array-length v0, v0

    if-ge v6, v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/masshabit/common/physics/ConvexHull;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v1, p0, Lcom/masshabit/common/physics/ConvexHull;->mEdges:[Lcom/masshabit/common/physics/ConvexHull$HalfEdge;

    aget-object v1, v1, v6

    iget-object v1, v1, Lcom/masshabit/common/physics/ConvexHull$HalfEdge;->p1:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->x:F

    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/masshabit/common/physics/ConvexHull;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v2, p0, Lcom/masshabit/common/physics/ConvexHull;->mEdges:[Lcom/masshabit/common/physics/ConvexHull$HalfEdge;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/masshabit/common/physics/ConvexHull$HalfEdge;->p1:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->y:F

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/masshabit/common/physics/ConvexHull;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v3, p0, Lcom/masshabit/common/physics/ConvexHull;->mEdges:[Lcom/masshabit/common/physics/ConvexHull$HalfEdge;

    aget-object v3, v3, v6

    iget-object v3, v3, Lcom/masshabit/common/physics/ConvexHull$HalfEdge;->p2:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->x:F

    add-float/2addr v3, v0

    iget-object v0, p0, Lcom/masshabit/common/physics/ConvexHull;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v4, p0, Lcom/masshabit/common/physics/ConvexHull;->mEdges:[Lcom/masshabit/common/physics/ConvexHull$HalfEdge;

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/masshabit/common/physics/ConvexHull$HalfEdge;->p2:Lcom/masshabit/common/physics/Vector2;

    iget v4, v4, Lcom/masshabit/common/physics/Vector2;->y:F

    add-float/2addr v4, v0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 74
    iget-object v0, p0, Lcom/masshabit/common/physics/ConvexHull;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v1, p0, Lcom/masshabit/common/physics/ConvexHull;->mEdges:[Lcom/masshabit/common/physics/ConvexHull$HalfEdge;

    aget-object v1, v1, v6

    iget-object v1, v1, Lcom/masshabit/common/physics/ConvexHull$HalfEdge;->p1:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v2, p0, Lcom/masshabit/common/physics/ConvexHull;->mEdges:[Lcom/masshabit/common/physics/ConvexHull$HalfEdge;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/masshabit/common/physics/ConvexHull$HalfEdge;->p2:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->x:F

    add-float/2addr v1, v2

    div-float/2addr v1, v7

    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/masshabit/common/physics/ConvexHull;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v2, p0, Lcom/masshabit/common/physics/ConvexHull;->mEdges:[Lcom/masshabit/common/physics/ConvexHull$HalfEdge;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/masshabit/common/physics/ConvexHull$HalfEdge;->p1:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v3, p0, Lcom/masshabit/common/physics/ConvexHull;->mEdges:[Lcom/masshabit/common/physics/ConvexHull$HalfEdge;

    aget-object v3, v3, v6

    iget-object v3, v3, Lcom/masshabit/common/physics/ConvexHull$HalfEdge;->p2:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->y:F

    add-float/2addr v2, v3

    div-float/2addr v2, v7

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/masshabit/common/physics/ConvexHull;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v3, p0, Lcom/masshabit/common/physics/ConvexHull;->mEdges:[Lcom/masshabit/common/physics/ConvexHull$HalfEdge;

    aget-object v3, v3, v6

    iget-object v3, v3, Lcom/masshabit/common/physics/ConvexHull$HalfEdge;->p1:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v4, p0, Lcom/masshabit/common/physics/ConvexHull;->mEdges:[Lcom/masshabit/common/physics/ConvexHull$HalfEdge;

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/masshabit/common/physics/ConvexHull$HalfEdge;->p2:Lcom/masshabit/common/physics/Vector2;

    iget v4, v4, Lcom/masshabit/common/physics/Vector2;->x:F

    add-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v0, v3

    iget-object v3, p0, Lcom/masshabit/common/physics/ConvexHull;->mEdges:[Lcom/masshabit/common/physics/ConvexHull$HalfEdge;

    aget-object v3, v3, v6

    iget-object v3, v3, Lcom/masshabit/common/physics/ConvexHull$HalfEdge;->n:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->x:F

    mul-float/2addr v3, v8

    add-float/2addr v3, v0

    iget-object v0, p0, Lcom/masshabit/common/physics/ConvexHull;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v4, p0, Lcom/masshabit/common/physics/ConvexHull;->mEdges:[Lcom/masshabit/common/physics/ConvexHull$HalfEdge;

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/masshabit/common/physics/ConvexHull$HalfEdge;->p1:Lcom/masshabit/common/physics/Vector2;

    iget v4, v4, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v5, p0, Lcom/masshabit/common/physics/ConvexHull;->mEdges:[Lcom/masshabit/common/physics/ConvexHull$HalfEdge;

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/masshabit/common/physics/ConvexHull$HalfEdge;->p2:Lcom/masshabit/common/physics/Vector2;

    iget v5, v5, Lcom/masshabit/common/physics/Vector2;->y:F

    add-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v0, v4

    iget-object v4, p0, Lcom/masshabit/common/physics/ConvexHull;->mEdges:[Lcom/masshabit/common/physics/ConvexHull$HalfEdge;

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/masshabit/common/physics/ConvexHull$HalfEdge;->n:Lcom/masshabit/common/physics/Vector2;

    iget v4, v4, Lcom/masshabit/common/physics/Vector2;->y:F

    mul-float/2addr v4, v8

    add-float/2addr v4, v0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 66
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 81
    :cond_0
    return-void
.end method

.method public project(Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Interval;)V
    .locals 5
    .param p1, "axis"    # Lcom/masshabit/common/physics/Vector2;
    .param p2, "out"    # Lcom/masshabit/common/physics/Interval;

    .prologue
    .line 85
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    iput v2, p2, Lcom/masshabit/common/physics/Interval;->min:F

    .line 86
    const v2, -0x800001

    iput v2, p2, Lcom/masshabit/common/physics/Interval;->max:F

    .line 87
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/masshabit/common/physics/ConvexHull;->mEdges:[Lcom/masshabit/common/physics/ConvexHull$HalfEdge;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 89
    iget-object v2, p0, Lcom/masshabit/common/physics/ConvexHull;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v3, p0, Lcom/masshabit/common/physics/ConvexHull;->mEdges:[Lcom/masshabit/common/physics/ConvexHull$HalfEdge;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/masshabit/common/physics/ConvexHull$HalfEdge;->p1:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->x:F

    add-float/2addr v2, v3

    iget v3, p1, Lcom/masshabit/common/physics/Vector2;->x:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/masshabit/common/physics/ConvexHull;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v4, p0, Lcom/masshabit/common/physics/ConvexHull;->mEdges:[Lcom/masshabit/common/physics/ConvexHull$HalfEdge;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/masshabit/common/physics/ConvexHull$HalfEdge;->p1:Lcom/masshabit/common/physics/Vector2;

    iget v4, v4, Lcom/masshabit/common/physics/Vector2;->y:F

    add-float/2addr v3, v4

    iget v4, p1, Lcom/masshabit/common/physics/Vector2;->y:F

    mul-float/2addr v3, v4

    add-float v1, v2, v3

    .line 90
    .local v1, "proj":F
    iget v2, p2, Lcom/masshabit/common/physics/Interval;->min:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    .line 91
    iput v1, p2, Lcom/masshabit/common/physics/Interval;->min:F

    .line 92
    :cond_0
    iget v2, p2, Lcom/masshabit/common/physics/Interval;->max:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 93
    iput v1, p2, Lcom/masshabit/common/physics/Interval;->max:F

    .line 87
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    .end local v1    # "proj":F
    :cond_2
    iget v2, p2, Lcom/masshabit/common/physics/Interval;->max:F

    iget v3, p2, Lcom/masshabit/common/physics/Interval;->min:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 96
    return-void

    .line 95
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method
