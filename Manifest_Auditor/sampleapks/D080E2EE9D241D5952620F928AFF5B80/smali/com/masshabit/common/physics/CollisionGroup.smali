.class public Lcom/masshabit/common/physics/CollisionGroup;
.super Ljava/lang/Object;
.source "CollisionGroup.java"


# instance fields
.field public mCollidesWith:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/masshabit/common/physics/CollisionGroup;",
            ">;"
        }
    .end annotation
.end field

.field public mDebugColor:I

.field public mMembers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/masshabit/common/physics/Particle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "initialCapacity"    # I
    .param p2, "debugColor"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/masshabit/common/physics/CollisionGroup;->mCollidesWith:Ljava/util/HashSet;

    .line 17
    iput p2, p0, Lcom/masshabit/common/physics/CollisionGroup;->mDebugColor:I

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/masshabit/common/physics/CollisionGroup;->mMembers:Ljava/util/ArrayList;

    .line 19
    return-void
.end method


# virtual methods
.method public add(Lcom/masshabit/common/physics/Particle;)V
    .locals 1
    .param p1, "p"    # Lcom/masshabit/common/physics/Particle;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/masshabit/common/physics/CollisionGroup;->mMembers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    iput-object p0, p1, Lcom/masshabit/common/physics/Particle;->mGroup:Lcom/masshabit/common/physics/CollisionGroup;

    .line 25
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 40
    iget v2, p0, Lcom/masshabit/common/physics/CollisionGroup;->mDebugColor:I

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/masshabit/common/physics/CollisionGroup;->mMembers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 43
    iget-object v2, p0, Lcom/masshabit/common/physics/CollisionGroup;->mMembers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/masshabit/common/physics/Particle;

    .line 44
    .local v1, "particle":Lcom/masshabit/common/physics/Particle;
    invoke-virtual {v1, p1, p2}, Lcom/masshabit/common/physics/Particle;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    .end local v1    # "particle":Lcom/masshabit/common/physics/Particle;
    :cond_0
    return-void
.end method

.method public remove(Lcom/masshabit/common/physics/Particle;)V
    .locals 1
    .param p1, "p"    # Lcom/masshabit/common/physics/Particle;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/masshabit/common/physics/CollisionGroup;->mMembers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 30
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/masshabit/common/physics/Particle;->mGroup:Lcom/masshabit/common/physics/CollisionGroup;

    .line 31
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/masshabit/common/physics/CollisionGroup;->mMembers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
