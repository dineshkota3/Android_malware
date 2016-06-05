.class public Lcom/masshabit/squibble/Player$Hand;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/masshabit/squibble/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Hand"
.end annotation


# instance fields
.field protected mActive:Z

.field public final mConstraint:Lcom/masshabit/common/physics/SpringConstraint;

.field public final mRelativeOffset:Lcom/masshabit/common/physics/Vector2;

.field public mTarget:Lcom/masshabit/common/physics/Particle;

.field final synthetic this$0:Lcom/masshabit/squibble/Player;


# direct methods
.method public constructor <init>(Lcom/masshabit/squibble/Player;)V
    .locals 14

    .prologue
    const/4 v4, 0x1

    .line 185
    iput-object p1, p0, Lcom/masshabit/squibble/Player$Hand;->this$0:Lcom/masshabit/squibble/Player;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v13, Lcom/masshabit/common/physics/SpringConstraint;

    iget-object v0, p0, Lcom/masshabit/squibble/Player$Hand;->this$0:Lcom/masshabit/squibble/Player;

    iget-object v6, v0, Lcom/masshabit/squibble/Player;->mParticle:Lcom/masshabit/common/physics/CircleParticle;

    new-instance v0, Lcom/masshabit/common/physics/Particle;

    sget-object v1, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    iget-object v1, v1, Lcom/masshabit/common/Environment;->mPhysics:Lcom/masshabit/common/physics/Physics;

    sget-object v2, Lcom/masshabit/common/physics/Vector2;->ZERO:Lcom/masshabit/common/physics/Vector2;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/masshabit/common/physics/Particle;-><init>(Lcom/masshabit/common/physics/Physics;Lcom/masshabit/common/physics/Vector2;FZF)V

    const/high16 v8, 0x42820000    # 65.0f

    const/high16 v9, 0x43960000    # 300.0f

    const/high16 v10, 0x41f00000    # 30.0f

    const v11, 0x3d75c28f    # 0.06f

    move-object v5, v13

    move-object v7, v0

    move v12, v4

    invoke-direct/range {v5 .. v12}, Lcom/masshabit/common/physics/SpringConstraint;-><init>(Lcom/masshabit/common/physics/Particle;Lcom/masshabit/common/physics/Particle;FFFFI)V

    iput-object v13, p0, Lcom/masshabit/squibble/Player$Hand;->mConstraint:Lcom/masshabit/common/physics/SpringConstraint;

    .line 180
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Vector2;-><init>()V

    iput-object v0, p0, Lcom/masshabit/squibble/Player$Hand;->mRelativeOffset:Lcom/masshabit/common/physics/Vector2;

    .line 186
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/masshabit/squibble/Player$Hand;->setActive(Z)V

    .line 187
    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .prologue
    .line 190
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    iget-object v0, v0, Lcom/masshabit/common/Environment;->mPhysics:Lcom/masshabit/common/physics/Physics;

    iget-object v1, p0, Lcom/masshabit/squibble/Player$Hand;->mConstraint:Lcom/masshabit/common/physics/SpringConstraint;

    invoke-virtual {v0, v1}, Lcom/masshabit/common/physics/Physics;->registerConstraint(Lcom/masshabit/common/physics/Constraint;)V

    .line 191
    return-void
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/masshabit/squibble/Player$Hand;->mActive:Z

    return v0
.end method

.method public restoreState(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Bundle;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/masshabit/squibble/Player$Hand;->mConstraint:Lcom/masshabit/common/physics/SpringConstraint;

    iget-object v0, v0, Lcom/masshabit/common/physics/SpringConstraint;->mP2:Lcom/masshabit/common/physics/Particle;

    iget-object v0, v0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "particle_pos_x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/masshabit/common/physics/Vector2;->x:F

    .line 209
    iget-object v0, p0, Lcom/masshabit/squibble/Player$Hand;->mConstraint:Lcom/masshabit/common/physics/SpringConstraint;

    iget-object v0, v0, Lcom/masshabit/common/physics/SpringConstraint;->mP2:Lcom/masshabit/common/physics/Particle;

    iget-object v0, v0, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "particle_pos_y"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/masshabit/common/physics/Vector2;->y:F

    .line 211
    iget-object v0, p0, Lcom/masshabit/squibble/Player$Hand;->mRelativeOffset:Lcom/masshabit/common/physics/Vector2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "rel_offset_x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "rel_offset_y"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "active"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/masshabit/squibble/Player$Hand;->setActive(Z)V

    .line 215
    iget-boolean v0, p0, Lcom/masshabit/squibble/Player$Hand;->mActive:Z

    if-eqz v0, :cond_0

    .line 217
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    iget-object v0, v0, Lcom/masshabit/common/Environment;->mPhysics:Lcom/masshabit/common/physics/Physics;

    iget-object v0, v0, Lcom/masshabit/common/physics/Physics;->mParticles:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "target_uid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/masshabit/common/physics/Particle;

    iput-object v0, p0, Lcom/masshabit/squibble/Player$Hand;->mTarget:Lcom/masshabit/common/physics/Particle;

    .line 219
    :cond_0
    return-void
.end method

.method public saveState(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Bundle;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "particle_pos_x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/masshabit/squibble/Player$Hand;->mConstraint:Lcom/masshabit/common/physics/SpringConstraint;

    iget-object v1, v1, Lcom/masshabit/common/physics/SpringConstraint;->mP2:Lcom/masshabit/common/physics/Particle;

    iget-object v1, v1, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->x:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "particle_pos_y"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/masshabit/squibble/Player$Hand;->mConstraint:Lcom/masshabit/common/physics/SpringConstraint;

    iget-object v1, v1, Lcom/masshabit/common/physics/SpringConstraint;->mP2:Lcom/masshabit/common/physics/Particle;

    iget-object v1, v1, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "rel_offset_x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/masshabit/squibble/Player$Hand;->mRelativeOffset:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->x:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "rel_offset_y"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/masshabit/squibble/Player$Hand;->mRelativeOffset:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "active"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/masshabit/squibble/Player$Hand;->mActive:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 201
    iget-boolean v0, p0, Lcom/masshabit/squibble/Player$Hand;->mActive:Z

    if-eqz v0, :cond_0

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "target_uid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/masshabit/squibble/Player$Hand;->mTarget:Lcom/masshabit/common/physics/Particle;

    iget v1, v1, Lcom/masshabit/common/physics/Particle;->mUid:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 205
    :cond_0
    return-void
.end method

.method public setActive(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 250
    iput-boolean p1, p0, Lcom/masshabit/squibble/Player$Hand;->mActive:Z

    .line 251
    iget-object v0, p0, Lcom/masshabit/squibble/Player$Hand;->mConstraint:Lcom/masshabit/common/physics/SpringConstraint;

    invoke-virtual {v0, p1}, Lcom/masshabit/common/physics/SpringConstraint;->setEnabled(Z)V

    .line 252
    return-void
.end method

.method public update(F)V
    .locals 9
    .param p1, "dt"    # F

    .prologue
    const/4 v8, 0x0

    const v7, 0x47afc800    # 90000.0f

    .line 222
    iget-boolean v3, p0, Lcom/masshabit/squibble/Player$Hand;->mActive:Z

    if-eqz v3, :cond_1

    .line 224
    iget-object v3, p0, Lcom/masshabit/squibble/Player$Hand;->mConstraint:Lcom/masshabit/common/physics/SpringConstraint;

    invoke-virtual {v3}, Lcom/masshabit/common/physics/SpringConstraint;->getLengthSq()F

    move-result v3

    cmpl-float v3, v3, v7

    if-lez v3, :cond_2

    const/4 v3, 0x1

    move v0, v3

    .line 227
    .local v0, "overextended":Z
    :goto_0
    iget-object v3, p0, Lcom/masshabit/squibble/Player$Hand;->mConstraint:Lcom/masshabit/common/physics/SpringConstraint;

    iget-object v3, v3, Lcom/masshabit/common/physics/SpringConstraint;->mP2:Lcom/masshabit/common/physics/Particle;

    iget-object v3, v3, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v1, v3, Lcom/masshabit/common/physics/Vector2;->x:F

    .line 228
    .local v1, "x":F
    iget-object v3, p0, Lcom/masshabit/squibble/Player$Hand;->mConstraint:Lcom/masshabit/common/physics/SpringConstraint;

    iget-object v3, v3, Lcom/masshabit/common/physics/SpringConstraint;->mP2:Lcom/masshabit/common/physics/Particle;

    iget-object v3, v3, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v3, Lcom/masshabit/common/physics/Vector2;->y:F

    .line 229
    .local v2, "y":F
    iget-object v3, p0, Lcom/masshabit/squibble/Player$Hand;->mConstraint:Lcom/masshabit/common/physics/SpringConstraint;

    iget-object v3, v3, Lcom/masshabit/common/physics/SpringConstraint;->mP2:Lcom/masshabit/common/physics/Particle;

    iget-object v4, p0, Lcom/masshabit/squibble/Player$Hand;->mTarget:Lcom/masshabit/common/physics/Particle;

    iget-object v4, v4, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v4, v4, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v5, p0, Lcom/masshabit/squibble/Player$Hand;->mRelativeOffset:Lcom/masshabit/common/physics/Vector2;

    iget v5, v5, Lcom/masshabit/common/physics/Vector2;->x:F

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/masshabit/squibble/Player$Hand;->mTarget:Lcom/masshabit/common/physics/Particle;

    iget-object v5, v5, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v5, v5, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v6, p0, Lcom/masshabit/squibble/Player$Hand;->mRelativeOffset:Lcom/masshabit/common/physics/Vector2;

    iget v6, v6, Lcom/masshabit/common/physics/Vector2;->y:F

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/masshabit/common/physics/Particle;->setPosition(FF)V

    .line 232
    if-nez v0, :cond_1

    .line 236
    iget-object v3, p0, Lcom/masshabit/squibble/Player$Hand;->mConstraint:Lcom/masshabit/common/physics/SpringConstraint;

    iget-object v3, v3, Lcom/masshabit/common/physics/SpringConstraint;->mP2:Lcom/masshabit/common/physics/Particle;

    iget-object v3, v3, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->x:F

    cmpl-float v3, v1, v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/masshabit/squibble/Player$Hand;->mConstraint:Lcom/masshabit/common/physics/SpringConstraint;

    iget-object v3, v3, Lcom/masshabit/common/physics/SpringConstraint;->mP2:Lcom/masshabit/common/physics/Particle;

    iget-object v3, v3, Lcom/masshabit/common/physics/Particle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->y:F

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/masshabit/squibble/Player$Hand;->mConstraint:Lcom/masshabit/common/physics/SpringConstraint;

    invoke-virtual {v3}, Lcom/masshabit/common/physics/SpringConstraint;->getLengthSq()F

    move-result v3

    cmpl-float v3, v3, v7

    if-lez v3, :cond_1

    .line 239
    invoke-virtual {p0, v8}, Lcom/masshabit/squibble/Player$Hand;->setActive(Z)V

    .line 243
    .end local v0    # "overextended":Z
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_1
    return-void

    :cond_2
    move v0, v8

    .line 224
    goto :goto_0
.end method
