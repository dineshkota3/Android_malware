.class public Lcom/masshabit/common/physics/CollisionComponents;
.super Ljava/lang/Object;
.source "CollisionComponents.java"


# instance fields
.field public vn:Lcom/masshabit/common/physics/Vector2;

.field public vt:Lcom/masshabit/common/physics/Vector2;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Vector2;-><init>()V

    iput-object v0, p0, Lcom/masshabit/common/physics/CollisionComponents;->vn:Lcom/masshabit/common/physics/Vector2;

    .line 6
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Vector2;-><init>()V

    iput-object v0, p0, Lcom/masshabit/common/physics/CollisionComponents;->vt:Lcom/masshabit/common/physics/Vector2;

    .line 8
    return-void
.end method
