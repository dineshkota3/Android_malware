.class public abstract Lcom/masshabit/common/physics/Constraint;
.super Ljava/lang/Object;
.source "Constraint.java"


# instance fields
.field protected mEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/masshabit/common/physics/Constraint;->mEnabled:Z

    .line 13
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 37
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/masshabit/common/physics/Constraint;->mEnabled:Z

    return v0
.end method

.method public abstract satisfy(F)V
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/masshabit/common/physics/Constraint;->mEnabled:Z

    .line 23
    return-void
.end method

.method public update(F)V
    .locals 1
    .param p1, "dt"    # F

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/masshabit/common/physics/Constraint;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0, p1}, Lcom/masshabit/common/physics/Constraint;->satisfy(F)V

    .line 31
    :cond_0
    return-void
.end method
