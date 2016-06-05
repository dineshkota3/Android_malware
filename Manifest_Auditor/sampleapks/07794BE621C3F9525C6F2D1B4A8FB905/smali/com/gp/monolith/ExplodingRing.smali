.class public Lcom/gp/monolith/ExplodingRing;
.super Ljava/lang/Object;
.source "ExplodingRing.java"


# instance fields
.field frame:J

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/gp/monolith/ExplodingRing;->x:F

    .line 8
    iput p2, p0, Lcom/gp/monolith/ExplodingRing;->y:F

    .line 9
    iput p3, p0, Lcom/gp/monolith/ExplodingRing;->z:F

    .line 10
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/gp/monolith/ExplodingRing;->frame:J

    .line 11
    return-void
.end method
