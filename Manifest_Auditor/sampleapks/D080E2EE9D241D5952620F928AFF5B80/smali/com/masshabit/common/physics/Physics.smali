.class public Lcom/masshabit/common/physics/Physics;
.super Ljava/lang/Object;
.source "Physics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/masshabit/common/physics/Physics$RayCastResult;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Physics"

.field public static final mGlobalAcceleration:Lcom/masshabit/common/physics/Vector2;

.field protected static sTempResult:Lcom/masshabit/common/physics/Physics$RayCastResult;


# instance fields
.field protected final mConstraints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/masshabit/common/physics/Constraint;",
            ">;"
        }
    .end annotation
.end field

.field protected final mGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/masshabit/common/physics/CollisionGroup;",
            ">;"
        }
    .end annotation
.end field

.field public mParticles:Ljava/util/ArrayList;
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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Vector2;-><init>()V

    sput-object v0, Lcom/masshabit/common/physics/Physics;->mGlobalAcceleration:Lcom/masshabit/common/physics/Vector2;

    .line 41
    new-instance v0, Lcom/masshabit/common/physics/Physics$RayCastResult;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Physics$RayCastResult;-><init>()V

    sput-object v0, Lcom/masshabit/common/physics/Physics;->sTempResult:Lcom/masshabit/common/physics/Physics$RayCastResult;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/masshabit/common/physics/Physics;->mGroups:Ljava/util/ArrayList;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/masshabit/common/physics/Physics;->mConstraints:Ljava/util/ArrayList;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/masshabit/common/physics/Physics;->mParticles:Ljava/util/ArrayList;

    .line 46
    return-void
.end method


# virtual methods
.method protected checkGroupCollisions()V
    .locals 6

    .prologue
    .line 128
    iget-object v5, p0, Lcom/masshabit/common/physics/Physics;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 129
    .local v4, "numGroups":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_3

    .line 131
    iget-object v5, p0, Lcom/masshabit/common/physics/Physics;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/masshabit/common/physics/CollisionGroup;

    .line 133
    .local v0, "group1":Lcom/masshabit/common/physics/CollisionGroup;
    add-int/lit8 v3, v2, 0x1

    .local v3, "j":I
    :goto_1
    if-ge v3, v4, :cond_2

    .line 135
    iget-object v5, p0, Lcom/masshabit/common/physics/Physics;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/masshabit/common/physics/CollisionGroup;

    .line 137
    .local v1, "group2":Lcom/masshabit/common/physics/CollisionGroup;
    iget-object v5, v0, Lcom/masshabit/common/physics/CollisionGroup;->mCollidesWith:Ljava/util/HashSet;

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v1, Lcom/masshabit/common/physics/CollisionGroup;->mCollidesWith:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 139
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/masshabit/common/physics/Physics;->checkParticleCollisions(Lcom/masshabit/common/physics/CollisionGroup;Lcom/masshabit/common/physics/CollisionGroup;)V

    .line 133
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 129
    .end local v1    # "group2":Lcom/masshabit/common/physics/CollisionGroup;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    .end local v0    # "group1":Lcom/masshabit/common/physics/CollisionGroup;
    .end local v3    # "j":I
    :cond_3
    return-void
.end method

.method protected checkParticleCollisions(Lcom/masshabit/common/physics/CollisionGroup;Lcom/masshabit/common/physics/CollisionGroup;)V
    .locals 7
    .param p1, "g1"    # Lcom/masshabit/common/physics/CollisionGroup;
    .param p2, "g2"    # Lcom/masshabit/common/physics/CollisionGroup;

    .prologue
    .line 147
    iget-object v6, p1, Lcom/masshabit/common/physics/CollisionGroup;->mMembers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 148
    .local v2, "numParticles1":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 150
    iget-object v6, p1, Lcom/masshabit/common/physics/CollisionGroup;->mMembers:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/masshabit/common/physics/Particle;

    .line 152
    .local v4, "pa":Lcom/masshabit/common/physics/Particle;
    iget-object v6, p2, Lcom/masshabit/common/physics/CollisionGroup;->mMembers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 153
    .local v3, "numParticles2":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 155
    iget-object v6, p2, Lcom/masshabit/common/physics/CollisionGroup;->mMembers:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/masshabit/common/physics/Particle;

    .line 156
    .local v5, "pb":Lcom/masshabit/common/physics/Particle;
    invoke-static {v4, v5}, Lcom/masshabit/common/physics/CollisionDetector;->check(Lcom/masshabit/common/physics/Particle;Lcom/masshabit/common/physics/Particle;)V

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 148
    .end local v5    # "pb":Lcom/masshabit/common/physics/Particle;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    .end local v1    # "j":I
    .end local v3    # "numParticles2":I
    .end local v4    # "pa":Lcom/masshabit/common/physics/Particle;
    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 112
    iget-object v5, p0, Lcom/masshabit/common/physics/Physics;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 113
    .local v4, "numGroups":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 115
    iget-object v5, p0, Lcom/masshabit/common/physics/Physics;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/masshabit/common/physics/CollisionGroup;

    .line 116
    .local v1, "group":Lcom/masshabit/common/physics/CollisionGroup;
    invoke-virtual {v1, p1, p2}, Lcom/masshabit/common/physics/CollisionGroup;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    .end local v1    # "group":Lcom/masshabit/common/physics/CollisionGroup;
    :cond_0
    iget-object v5, p0, Lcom/masshabit/common/physics/Physics;->mConstraints:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 119
    .local v3, "numConstraints":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    .line 121
    iget-object v5, p0, Lcom/masshabit/common/physics/Physics;->mConstraints:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/masshabit/common/physics/Constraint;

    .line 122
    .local v0, "constraint":Lcom/masshabit/common/physics/Constraint;
    invoke-virtual {v0, p1, p2}, Lcom/masshabit/common/physics/Constraint;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 124
    .end local v0    # "constraint":Lcom/masshabit/common/physics/Constraint;
    :cond_1
    return-void
.end method

.method public rayCastQuery(Lcom/masshabit/common/physics/CollisionGroup;FFFFLcom/masshabit/common/physics/Physics$RayCastResult;)V
    .locals 6
    .param p1, "group"    # Lcom/masshabit/common/physics/CollisionGroup;
    .param p2, "originx"    # F
    .param p3, "originy"    # F
    .param p4, "dirx"    # F
    .param p5, "diry"    # F
    .param p6, "result"    # Lcom/masshabit/common/physics/Physics$RayCastResult;

    .prologue
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    .line 172
    iput v5, p6, Lcom/masshabit/common/physics/Physics$RayCastResult;->param:F

    .line 174
    iget-object v4, p1, Lcom/masshabit/common/physics/CollisionGroup;->mMembers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 175
    .local v0, "groupSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 177
    iget-object v4, p1, Lcom/masshabit/common/physics/CollisionGroup;->mMembers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/masshabit/common/physics/Particle;

    .line 179
    .local v2, "p":Lcom/masshabit/common/physics/Particle;
    invoke-static {v2, p2, p3, p4, p5}, Lcom/masshabit/common/physics/CollisionDetector;->rayCastQuery(Lcom/masshabit/common/physics/Particle;FFFF)F

    move-result v3

    .line 180
    .local v3, "t":F
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_0

    iget v4, p6, Lcom/masshabit/common/physics/Physics$RayCastResult;->param:F

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    .line 182
    iput v3, p6, Lcom/masshabit/common/physics/Physics$RayCastResult;->param:F

    .line 183
    iput-object v2, p6, Lcom/masshabit/common/physics/Physics$RayCastResult;->collidee:Lcom/masshabit/common/physics/Particle;

    .line 175
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    .end local v2    # "p":Lcom/masshabit/common/physics/Particle;
    .end local v3    # "t":F
    :cond_1
    iget v4, p6, Lcom/masshabit/common/physics/Physics$RayCastResult;->param:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    .line 188
    const/4 v4, 0x1

    iput-boolean v4, p6, Lcom/masshabit/common/physics/Physics$RayCastResult;->collision:Z

    .line 190
    :cond_2
    return-void
.end method

.method public rayCastQuery([Lcom/masshabit/common/physics/CollisionGroup;FFFFLcom/masshabit/common/physics/Physics$RayCastResult;)V
    .locals 9
    .param p1, "groups"    # [Lcom/masshabit/common/physics/CollisionGroup;
    .param p2, "originx"    # F
    .param p3, "originy"    # F
    .param p4, "dirx"    # F
    .param p5, "diry"    # F
    .param p6, "result"    # Lcom/masshabit/common/physics/Physics$RayCastResult;

    .prologue
    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p6, Lcom/masshabit/common/physics/Physics$RayCastResult;->collision:Z

    .line 194
    array-length v8, p1

    .line 195
    .local v8, "numGroups":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_2

    .line 197
    aget-object v1, p1, v7

    sget-object v6, Lcom/masshabit/common/physics/Physics;->sTempResult:Lcom/masshabit/common/physics/Physics$RayCastResult;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/masshabit/common/physics/Physics;->rayCastQuery(Lcom/masshabit/common/physics/CollisionGroup;FFFFLcom/masshabit/common/physics/Physics$RayCastResult;)V

    .line 198
    sget-object v0, Lcom/masshabit/common/physics/Physics;->sTempResult:Lcom/masshabit/common/physics/Physics$RayCastResult;

    iget-boolean v0, v0, Lcom/masshabit/common/physics/Physics$RayCastResult;->collision:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p6, Lcom/masshabit/common/physics/Physics$RayCastResult;->collision:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/masshabit/common/physics/Physics;->sTempResult:Lcom/masshabit/common/physics/Physics$RayCastResult;

    iget v0, v0, Lcom/masshabit/common/physics/Physics$RayCastResult;->param:F

    iget v1, p6, Lcom/masshabit/common/physics/Physics$RayCastResult;->param:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 200
    :cond_0
    sget-object v0, Lcom/masshabit/common/physics/Physics;->sTempResult:Lcom/masshabit/common/physics/Physics$RayCastResult;

    invoke-virtual {p6, v0}, Lcom/masshabit/common/physics/Physics$RayCastResult;->set(Lcom/masshabit/common/physics/Physics$RayCastResult;)V

    .line 195
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 203
    :cond_2
    return-void
.end method

.method public registerConstraint(Lcom/masshabit/common/physics/Constraint;)V
    .locals 1
    .param p1, "c"    # Lcom/masshabit/common/physics/Constraint;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/masshabit/common/physics/Physics;->mConstraints:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public registerGroup(Lcom/masshabit/common/physics/CollisionGroup;)V
    .locals 1
    .param p1, "g"    # Lcom/masshabit/common/physics/CollisionGroup;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/masshabit/common/physics/Physics;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method public registerParticle(Lcom/masshabit/common/physics/Particle;)V
    .locals 1
    .param p1, "p"    # Lcom/masshabit/common/physics/Particle;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/masshabit/common/physics/Physics;->mParticles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p1, Lcom/masshabit/common/physics/Particle;->mUid:I

    .line 58
    iget-object v0, p0, Lcom/masshabit/common/physics/Physics;->mParticles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/masshabit/common/physics/Physics;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 51
    iget-object v0, p0, Lcom/masshabit/common/physics/Physics;->mConstraints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 52
    iget-object v0, p0, Lcom/masshabit/common/physics/Physics;->mParticles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 53
    return-void
.end method

.method public unregisterConstraint(Lcom/masshabit/common/physics/Constraint;)V
    .locals 1
    .param p1, "c"    # Lcom/masshabit/common/physics/Constraint;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/masshabit/common/physics/Physics;->mConstraints:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method public unregisterGroup(Lcom/masshabit/common/physics/CollisionGroup;)V
    .locals 1
    .param p1, "g"    # Lcom/masshabit/common/physics/CollisionGroup;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/masshabit/common/physics/Physics;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public update(F)V
    .locals 9
    .param p1, "dt"    # F

    .prologue
    .line 84
    iget-object v8, p0, Lcom/masshabit/common/physics/Physics;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 85
    .local v6, "numGroups":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_1

    .line 87
    iget-object v8, p0, Lcom/masshabit/common/physics/Physics;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/masshabit/common/physics/CollisionGroup;

    .line 89
    .local v1, "group":Lcom/masshabit/common/physics/CollisionGroup;
    iget-object v8, v1, Lcom/masshabit/common/physics/CollisionGroup;->mMembers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 90
    .local v2, "groupSize":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v2, :cond_0

    .line 92
    iget-object v8, v1, Lcom/masshabit/common/physics/CollisionGroup;->mMembers:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/masshabit/common/physics/Particle;

    .line 93
    .local v7, "p":Lcom/masshabit/common/physics/Particle;
    sget-object v8, Lcom/masshabit/common/physics/Physics;->mGlobalAcceleration:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v7, v8}, Lcom/masshabit/common/physics/Particle;->addAcceleration(Lcom/masshabit/common/physics/Vector2;)V

    .line 94
    invoke-virtual {v7, p1}, Lcom/masshabit/common/physics/Particle;->update(F)V

    .line 90
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 85
    .end local v7    # "p":Lcom/masshabit/common/physics/Particle;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 99
    .end local v1    # "group":Lcom/masshabit/common/physics/CollisionGroup;
    .end local v2    # "groupSize":I
    .end local v4    # "j":I
    :cond_1
    iget-object v8, p0, Lcom/masshabit/common/physics/Physics;->mConstraints:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 100
    .local v5, "numConstraints":I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_2

    .line 102
    iget-object v8, p0, Lcom/masshabit/common/physics/Physics;->mConstraints:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/masshabit/common/physics/Constraint;

    .line 103
    .local v0, "c":Lcom/masshabit/common/physics/Constraint;
    invoke-virtual {v0, p1}, Lcom/masshabit/common/physics/Constraint;->update(F)V

    .line 100
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 107
    .end local v0    # "c":Lcom/masshabit/common/physics/Constraint;
    :cond_2
    invoke-virtual {p0}, Lcom/masshabit/common/physics/Physics;->checkGroupCollisions()V

    .line 108
    return-void
.end method
