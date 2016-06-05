.class public Lcom/masshabit/common/physics/Physics$RayCastResult;
.super Ljava/lang/Object;
.source "Physics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/masshabit/common/physics/Physics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RayCastResult"
.end annotation


# instance fields
.field public collidee:Lcom/masshabit/common/physics/Particle;

.field public collision:Z

.field public param:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/masshabit/common/physics/Physics$RayCastResult;->collision:Z

    .line 22
    const/high16 v0, 0x7fc00000    # NaNf

    iput v0, p0, Lcom/masshabit/common/physics/Physics$RayCastResult;->param:F

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/masshabit/common/physics/Physics$RayCastResult;->collidee:Lcom/masshabit/common/physics/Particle;

    .line 25
    invoke-virtual {p0}, Lcom/masshabit/common/physics/Physics$RayCastResult;->reset()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/masshabit/common/physics/Physics$RayCastResult;->collision:Z

    .line 29
    const/high16 v0, 0x7fc00000    # NaNf

    iput v0, p0, Lcom/masshabit/common/physics/Physics$RayCastResult;->param:F

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/masshabit/common/physics/Physics$RayCastResult;->collidee:Lcom/masshabit/common/physics/Particle;

    .line 31
    return-void
.end method

.method public set(Lcom/masshabit/common/physics/Physics$RayCastResult;)V
    .locals 1
    .param p1, "other"    # Lcom/masshabit/common/physics/Physics$RayCastResult;

    .prologue
    .line 34
    iget-boolean v0, p1, Lcom/masshabit/common/physics/Physics$RayCastResult;->collision:Z

    iput-boolean v0, p0, Lcom/masshabit/common/physics/Physics$RayCastResult;->collision:Z

    .line 35
    iget v0, p1, Lcom/masshabit/common/physics/Physics$RayCastResult;->param:F

    iput v0, p0, Lcom/masshabit/common/physics/Physics$RayCastResult;->param:F

    .line 36
    iget-object v0, p1, Lcom/masshabit/common/physics/Physics$RayCastResult;->collidee:Lcom/masshabit/common/physics/Particle;

    iput-object v0, p0, Lcom/masshabit/common/physics/Physics$RayCastResult;->collidee:Lcom/masshabit/common/physics/Particle;

    .line 37
    return-void
.end method
