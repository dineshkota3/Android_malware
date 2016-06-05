.class public Lcom/masshabit/common/physics/HalfEdge;
.super Lcom/masshabit/common/physics/SegmentParticle;
.source "HalfEdge.java"


# static fields
.field public static final NORMAL_SCALE:F = 5.0f


# instance fields
.field public n:Lcom/masshabit/common/physics/Vector2;


# direct methods
.method public constructor <init>(Lcom/masshabit/common/physics/Physics;FFFFZ)V
    .locals 3
    .param p1, "engine"    # Lcom/masshabit/common/physics/Physics;
    .param p2, "ax"    # F
    .param p3, "ay"    # F
    .param p4, "bx"    # F
    .param p5, "by"    # F
    .param p6, "fixed"    # Z

    .prologue
    .line 16
    invoke-direct/range {p0 .. p6}, Lcom/masshabit/common/physics/SegmentParticle;-><init>(Lcom/masshabit/common/physics/Physics;FFFFZ)V

    .line 12
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Vector2;-><init>()V

    iput-object v0, p0, Lcom/masshabit/common/physics/HalfEdge;->n:Lcom/masshabit/common/physics/Vector2;

    .line 17
    iget-object v0, p0, Lcom/masshabit/common/physics/HalfEdge;->n:Lcom/masshabit/common/physics/Vector2;

    sub-float v1, p4, p2

    sub-float v2, p5, p3

    invoke-virtual {v0, v1, v2}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 18
    iget-object v0, p0, Lcom/masshabit/common/physics/HalfEdge;->n:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v0}, Lcom/masshabit/common/physics/Vector2;->perp()V

    .line 19
    iget-object v0, p0, Lcom/masshabit/common/physics/HalfEdge;->n:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v0}, Lcom/masshabit/common/physics/Vector2;->normalize()F

    .line 20
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;

    .prologue
    const/high16 v6, 0x40a00000    # 5.0f

    .line 34
    iget-object v0, p0, Lcom/masshabit/common/physics/HalfEdge;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v1, p0, Lcom/masshabit/common/physics/HalfEdge;->p1:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->x:F

    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/masshabit/common/physics/HalfEdge;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v2, p0, Lcom/masshabit/common/physics/HalfEdge;->p1:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->y:F

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/masshabit/common/physics/HalfEdge;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v3, p0, Lcom/masshabit/common/physics/HalfEdge;->p2:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->x:F

    add-float/2addr v3, v0

    iget-object v0, p0, Lcom/masshabit/common/physics/HalfEdge;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v4, p0, Lcom/masshabit/common/physics/HalfEdge;->p2:Lcom/masshabit/common/physics/Vector2;

    iget v4, v4, Lcom/masshabit/common/physics/Vector2;->y:F

    add-float/2addr v4, v0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 35
    iget-object v0, p0, Lcom/masshabit/common/physics/HalfEdge;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v1, v0, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v0, p0, Lcom/masshabit/common/physics/HalfEdge;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v0, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v0, p0, Lcom/masshabit/common/physics/HalfEdge;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v3, p0, Lcom/masshabit/common/physics/HalfEdge;->n:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->x:F

    mul-float/2addr v3, v6

    add-float/2addr v3, v0

    iget-object v0, p0, Lcom/masshabit/common/physics/HalfEdge;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v4, p0, Lcom/masshabit/common/physics/HalfEdge;->n:Lcom/masshabit/common/physics/Vector2;

    iget v4, v4, Lcom/masshabit/common/physics/Vector2;->y:F

    mul-float/2addr v4, v6

    add-float/2addr v4, v0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 36
    return-void
.end method

.method public set(FFFF)V
    .locals 3
    .param p1, "ax"    # F
    .param p2, "ay"    # F
    .param p3, "bx"    # F
    .param p4, "by"    # F

    .prologue
    .line 25
    invoke-super {p0, p1, p2, p3, p4}, Lcom/masshabit/common/physics/SegmentParticle;->set(FFFF)V

    .line 26
    iget-object v0, p0, Lcom/masshabit/common/physics/HalfEdge;->n:Lcom/masshabit/common/physics/Vector2;

    sub-float v1, p3, p1

    sub-float v2, p4, p2

    invoke-virtual {v0, v1, v2}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 27
    iget-object v0, p0, Lcom/masshabit/common/physics/HalfEdge;->n:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v0}, Lcom/masshabit/common/physics/Vector2;->perp()V

    .line 28
    iget-object v0, p0, Lcom/masshabit/common/physics/HalfEdge;->n:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v0}, Lcom/masshabit/common/physics/Vector2;->normalize()F

    .line 29
    return-void
.end method
