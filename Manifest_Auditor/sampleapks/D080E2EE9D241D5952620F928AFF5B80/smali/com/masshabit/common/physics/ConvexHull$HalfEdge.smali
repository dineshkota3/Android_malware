.class public Lcom/masshabit/common/physics/ConvexHull$HalfEdge;
.super Ljava/lang/Object;
.source "ConvexHull.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/masshabit/common/physics/ConvexHull;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HalfEdge"
.end annotation


# static fields
.field public static final NORMAL_SCALE:F = 5.0f


# instance fields
.field public n:Lcom/masshabit/common/physics/Vector2;

.field public p1:Lcom/masshabit/common/physics/Vector2;

.field public p2:Lcom/masshabit/common/physics/Vector2;

.field final synthetic this$0:Lcom/masshabit/common/physics/ConvexHull;


# direct methods
.method public constructor <init>(Lcom/masshabit/common/physics/ConvexHull;FFFF)V
    .locals 3
    .param p2, "p1x"    # F
    .param p3, "p1y"    # F
    .param p4, "p2x"    # F
    .param p5, "p2y"    # F

    .prologue
    .line 24
    iput-object p1, p0, Lcom/masshabit/common/physics/ConvexHull$HalfEdge;->this$0:Lcom/masshabit/common/physics/ConvexHull;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Vector2;-><init>()V

    iput-object v0, p0, Lcom/masshabit/common/physics/ConvexHull$HalfEdge;->p1:Lcom/masshabit/common/physics/Vector2;

    .line 16
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Vector2;-><init>()V

    iput-object v0, p0, Lcom/masshabit/common/physics/ConvexHull$HalfEdge;->p2:Lcom/masshabit/common/physics/Vector2;

    .line 17
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Vector2;-><init>()V

    iput-object v0, p0, Lcom/masshabit/common/physics/ConvexHull$HalfEdge;->n:Lcom/masshabit/common/physics/Vector2;

    .line 25
    iget-object v0, p0, Lcom/masshabit/common/physics/ConvexHull$HalfEdge;->p1:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v0, p2, p3}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 26
    iget-object v0, p0, Lcom/masshabit/common/physics/ConvexHull$HalfEdge;->p2:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v0, p4, p5}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 27
    iget-object v0, p0, Lcom/masshabit/common/physics/ConvexHull$HalfEdge;->n:Lcom/masshabit/common/physics/Vector2;

    sub-float v1, p4, p2

    sub-float v2, p5, p3

    invoke-virtual {v0, v1, v2}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 28
    iget-object v0, p0, Lcom/masshabit/common/physics/ConvexHull$HalfEdge;->n:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v0}, Lcom/masshabit/common/physics/Vector2;->perp()V

    .line 29
    iget-object v0, p0, Lcom/masshabit/common/physics/ConvexHull$HalfEdge;->n:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v0}, Lcom/masshabit/common/physics/Vector2;->normalize()F

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/masshabit/common/physics/ConvexHull;Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;)V
    .locals 6
    .param p2, "p1"    # Lcom/masshabit/common/physics/Vector2;
    .param p3, "p2"    # Lcom/masshabit/common/physics/Vector2;

    .prologue
    .line 21
    iget v2, p2, Lcom/masshabit/common/physics/Vector2;->x:F

    iget v3, p2, Lcom/masshabit/common/physics/Vector2;->y:F

    iget v4, p3, Lcom/masshabit/common/physics/Vector2;->x:F

    iget v5, p3, Lcom/masshabit/common/physics/Vector2;->y:F

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/masshabit/common/physics/ConvexHull$HalfEdge;-><init>(Lcom/masshabit/common/physics/ConvexHull;FFFF)V

    .line 22
    return-void
.end method
