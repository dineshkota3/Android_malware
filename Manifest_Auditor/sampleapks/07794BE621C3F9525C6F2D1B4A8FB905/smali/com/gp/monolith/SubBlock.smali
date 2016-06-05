.class public Lcom/gp/monolith/SubBlock;
.super Ljava/lang/Object;
.source "SubBlock.java"


# instance fields
.field public xpos:I

.field public ypos:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput v0, p0, Lcom/gp/monolith/SubBlock;->xpos:I

    .line 8
    iput v0, p0, Lcom/gp/monolith/SubBlock;->ypos:I

    .line 9
    return-void
.end method
