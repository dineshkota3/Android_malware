.class public Lcom/masshabit/common/physics/CollisionResolver;
.super Ljava/lang/Object;
.source "CollisionResolver.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CollisionResolver"

.field protected static sPool:Lcom/masshabit/common/physics/VectorPool;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7
    new-instance v0, Lcom/masshabit/common/physics/VectorPool;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/masshabit/common/physics/VectorPool;-><init>(I)V

    sput-object v0, Lcom/masshabit/common/physics/CollisionResolver;->sPool:Lcom/masshabit/common/physics/VectorPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resolve(Lcom/masshabit/common/physics/Particle;Lcom/masshabit/common/physics/Particle;Lcom/masshabit/common/physics/Vector2;F)V
    .locals 16
    .param p0, "pa"    # Lcom/masshabit/common/physics/Particle;
    .param p1, "pb"    # Lcom/masshabit/common/physics/Particle;
    .param p2, "normal"    # Lcom/masshabit/common/physics/Vector2;
    .param p3, "depth"    # F

    .prologue
    .line 11
    sget-object v2, Lcom/masshabit/common/physics/CollisionResolver;->sPool:Lcom/masshabit/common/physics/VectorPool;

    invoke-virtual {v2}, Lcom/masshabit/common/physics/VectorPool;->allocate()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/masshabit/common/physics/Vector2;

    .line 12
    .local v13, "mtd":Lcom/masshabit/common/physics/Vector2;
    move-object v0, v13

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/masshabit/common/physics/Vector2;->set(Lcom/masshabit/common/physics/Vector2;)V

    .line 13
    move-object v0, v13

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/masshabit/common/physics/Vector2;->multiply(F)V

    .line 15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/masshabit/common/physics/Particle;->mElasticity:F

    move v2, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/masshabit/common/physics/Particle;->mElasticity:F

    move v3, v0

    add-float v4, v2, v3

    .line 18
    .local v4, "te":F
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/masshabit/common/physics/Particle;->mFriction:F

    move v3, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/masshabit/common/physics/Particle;->mFriction:F

    move v5, v0

    add-float/2addr v3, v5

    sub-float/2addr v2, v3

    .line 19
    .local v2, "tf":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    move v10, v2

    .line 23
    .end local v2    # "tf":F
    .local v10, "tf":F
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/masshabit/common/physics/Particle;->mMass:F

    move v2, v0

    .line 24
    .local v2, "ma":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/masshabit/common/physics/Particle;->mMass:F

    move v3, v0

    .line 25
    .local v3, "mb":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/masshabit/common/physics/Particle;->mFixed:Z

    move v5, v0

    if-eqz v5, :cond_3

    const/4 v2, 0x0

    move v6, v2

    .line 26
    .end local v2    # "ma":F
    .local v6, "ima":F
    :goto_1
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/masshabit/common/physics/Particle;->mFixed:Z

    move v2, v0

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    move v7, v2

    .line 27
    .local v7, "imb":F
    :goto_2
    add-float v8, v6, v7

    .line 31
    .local v8, "sumInvMass":F
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/masshabit/common/physics/Particle;->getCollisionComponents(Lcom/masshabit/common/physics/Vector2;)Lcom/masshabit/common/physics/CollisionComponents;

    move-result-object v2

    .line 32
    .local v2, "ca":Lcom/masshabit/common/physics/CollisionComponents;
    invoke-virtual/range {p1 .. p2}, Lcom/masshabit/common/physics/Particle;->getCollisionComponents(Lcom/masshabit/common/physics/Vector2;)Lcom/masshabit/common/physics/CollisionComponents;

    move-result-object v3

    .line 35
    .local v3, "cb":Lcom/masshabit/common/physics/CollisionComponents;
    sget-object v5, Lcom/masshabit/common/physics/CollisionResolver;->sPool:Lcom/masshabit/common/physics/VectorPool;

    invoke-virtual {v5}, Lcom/masshabit/common/physics/VectorPool;->allocate()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/masshabit/common/physics/Vector2;

    .line 36
    .local v5, "vnA":Lcom/masshabit/common/physics/Vector2;
    sget-object v9, Lcom/masshabit/common/physics/CollisionResolver;->sPool:Lcom/masshabit/common/physics/VectorPool;

    invoke-virtual {v9}, Lcom/masshabit/common/physics/VectorPool;->allocate()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/masshabit/common/physics/Vector2;

    .line 38
    .local v9, "vnB":Lcom/masshabit/common/physics/Vector2;
    iget-object v11, v3, Lcom/masshabit/common/physics/CollisionComponents;->vn:Lcom/masshabit/common/physics/Vector2;

    iget v11, v11, Lcom/masshabit/common/physics/Vector2;->x:F

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v12, v4

    mul-float/2addr v12, v6

    mul-float/2addr v11, v12

    iget-object v12, v2, Lcom/masshabit/common/physics/CollisionComponents;->vn:Lcom/masshabit/common/physics/Vector2;

    iget v12, v12, Lcom/masshabit/common/physics/Vector2;->x:F

    mul-float v14, v4, v6

    sub-float v14, v7, v14

    mul-float/2addr v12, v14

    add-float/2addr v11, v12

    div-float/2addr v11, v8

    iget-object v12, v3, Lcom/masshabit/common/physics/CollisionComponents;->vn:Lcom/masshabit/common/physics/Vector2;

    iget v12, v12, Lcom/masshabit/common/physics/Vector2;->y:F

    const/high16 v14, 0x3f800000    # 1.0f

    add-float/2addr v14, v4

    mul-float/2addr v14, v6

    mul-float/2addr v12, v14

    iget-object v14, v2, Lcom/masshabit/common/physics/CollisionComponents;->vn:Lcom/masshabit/common/physics/Vector2;

    iget v14, v14, Lcom/masshabit/common/physics/Vector2;->y:F

    mul-float v15, v4, v6

    sub-float v15, v7, v15

    mul-float/2addr v14, v15

    add-float/2addr v12, v14

    div-float/2addr v12, v8

    invoke-virtual {v5, v11, v12}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 42
    iget-object v11, v2, Lcom/masshabit/common/physics/CollisionComponents;->vn:Lcom/masshabit/common/physics/Vector2;

    iget v11, v11, Lcom/masshabit/common/physics/Vector2;->x:F

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v12, v4

    mul-float/2addr v12, v7

    mul-float/2addr v11, v12

    iget-object v12, v3, Lcom/masshabit/common/physics/CollisionComponents;->vn:Lcom/masshabit/common/physics/Vector2;

    iget v12, v12, Lcom/masshabit/common/physics/Vector2;->x:F

    mul-float v14, v4, v7

    sub-float v14, v6, v14

    mul-float/2addr v12, v14

    add-float/2addr v11, v12

    div-float/2addr v11, v8

    iget-object v12, v2, Lcom/masshabit/common/physics/CollisionComponents;->vn:Lcom/masshabit/common/physics/Vector2;

    iget v12, v12, Lcom/masshabit/common/physics/Vector2;->y:F

    const/high16 v14, 0x3f800000    # 1.0f

    add-float/2addr v14, v4

    mul-float/2addr v14, v7

    mul-float/2addr v12, v14

    iget-object v14, v3, Lcom/masshabit/common/physics/CollisionComponents;->vn:Lcom/masshabit/common/physics/Vector2;

    iget v14, v14, Lcom/masshabit/common/physics/Vector2;->y:F

    mul-float/2addr v4, v7

    sub-float v4, v6, v4

    mul-float/2addr v4, v14

    add-float/2addr v4, v12

    div-float/2addr v4, v8

    invoke-virtual {v9, v11, v4}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 47
    .end local v4    # "te":F
    iget-object v4, v2, Lcom/masshabit/common/physics/CollisionComponents;->vt:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v4, v10}, Lcom/masshabit/common/physics/Vector2;->multiply(F)V

    .line 48
    iget-object v4, v3, Lcom/masshabit/common/physics/CollisionComponents;->vt:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v4, v10}, Lcom/masshabit/common/physics/Vector2;->multiply(F)V

    .line 51
    sget-object v4, Lcom/masshabit/common/physics/CollisionResolver;->sPool:Lcom/masshabit/common/physics/VectorPool;

    invoke-virtual {v4}, Lcom/masshabit/common/physics/VectorPool;->allocate()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/masshabit/common/physics/Vector2;

    .line 52
    .local v4, "mtdA":Lcom/masshabit/common/physics/Vector2;
    sget-object v10, Lcom/masshabit/common/physics/CollisionResolver;->sPool:Lcom/masshabit/common/physics/VectorPool;

    .end local v10    # "tf":F
    invoke-virtual {v10}, Lcom/masshabit/common/physics/VectorPool;->allocate()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/masshabit/common/physics/Vector2;

    .line 53
    .local v14, "mtdB":Lcom/masshabit/common/physics/Vector2;
    iget v10, v13, Lcom/masshabit/common/physics/Vector2;->x:F

    div-float v11, v6, v8

    mul-float/2addr v10, v11

    iget v11, v13, Lcom/masshabit/common/physics/Vector2;->y:F

    div-float/2addr v6, v8

    mul-float/2addr v6, v11

    invoke-virtual {v4, v10, v6}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 54
    .end local v6    # "ima":F
    iget v6, v13, Lcom/masshabit/common/physics/Vector2;->x:F

    neg-float v10, v7

    div-float/2addr v10, v8

    mul-float/2addr v6, v10

    iget v10, v13, Lcom/masshabit/common/physics/Vector2;->y:F

    neg-float v7, v7

    div-float/2addr v7, v8

    mul-float/2addr v7, v10

    invoke-virtual {v14, v6, v7}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 56
    .end local v7    # "imb":F
    iget-object v2, v2, Lcom/masshabit/common/physics/CollisionComponents;->vt:Lcom/masshabit/common/physics/Vector2;

    .end local v2    # "ca":Lcom/masshabit/common/physics/CollisionComponents;
    invoke-virtual {v5, v2}, Lcom/masshabit/common/physics/Vector2;->add(Lcom/masshabit/common/physics/Vector2;)V

    .line 57
    iget-object v2, v3, Lcom/masshabit/common/physics/CollisionComponents;->vt:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v9, v2}, Lcom/masshabit/common/physics/Vector2;->add(Lcom/masshabit/common/physics/Vector2;)V

    .line 59
    const/4 v10, 0x1

    .line 61
    .local v10, "resolve":Z
    const/high16 v8, -0x40800000    # -1.0f

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    invoke-virtual/range {v2 .. v8}, Lcom/masshabit/common/physics/Particle;->onCollide(Lcom/masshabit/common/physics/Particle;Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;FF)I

    .end local v3    # "cb":Lcom/masshabit/common/physics/CollisionComponents;
    .end local v8    # "sumInvMass":F
    move-result v2

    if-nez v2, :cond_5

    .line 63
    const/4 v2, 0x0

    .line 65
    .end local v10    # "resolve":Z
    .local v2, "resolve":Z
    :goto_3
    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v6, p1

    move-object/from16 v7, p0

    move-object v8, v14

    move-object/from16 v10, p2

    move/from16 v11, p3

    invoke-virtual/range {v6 .. v12}, Lcom/masshabit/common/physics/Particle;->onCollide(Lcom/masshabit/common/physics/Particle;Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;FF)I

    move-result v3

    if-nez v3, :cond_0

    .line 67
    const/4 v2, 0x0

    .line 70
    :cond_0
    if-eqz v2, :cond_1

    .line 72
    const/high16 v8, -0x40800000    # -1.0f

    move-object/from16 v3, p0

    move-object/from16 v6, p2

    move/from16 v7, p3

    invoke-virtual/range {v3 .. v8}, Lcom/masshabit/common/physics/Particle;->resolveCollision(Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;FF)V

    .line 73
    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v7, p1

    move-object v8, v14

    move-object/from16 v10, p2

    move/from16 v11, p3

    invoke-virtual/range {v7 .. v12}, Lcom/masshabit/common/physics/Particle;->resolveCollision(Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;FF)V

    .line 76
    :cond_1
    sget-object p0, Lcom/masshabit/common/physics/CollisionResolver;->sPool:Lcom/masshabit/common/physics/VectorPool;

    .end local p0    # "pa":Lcom/masshabit/common/physics/Particle;
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/masshabit/common/physics/VectorPool;->release(Ljava/lang/Object;)V

    .line 77
    sget-object p0, Lcom/masshabit/common/physics/CollisionResolver;->sPool:Lcom/masshabit/common/physics/VectorPool;

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/masshabit/common/physics/VectorPool;->release(Ljava/lang/Object;)V

    .line 78
    sget-object p0, Lcom/masshabit/common/physics/CollisionResolver;->sPool:Lcom/masshabit/common/physics/VectorPool;

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/masshabit/common/physics/VectorPool;->release(Ljava/lang/Object;)V

    .line 79
    sget-object p0, Lcom/masshabit/common/physics/CollisionResolver;->sPool:Lcom/masshabit/common/physics/VectorPool;

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/masshabit/common/physics/VectorPool;->release(Ljava/lang/Object;)V

    .line 80
    sget-object p0, Lcom/masshabit/common/physics/CollisionResolver;->sPool:Lcom/masshabit/common/physics/VectorPool;

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/masshabit/common/physics/VectorPool;->release(Ljava/lang/Object;)V

    .line 81
    return-void

    .line 20
    .end local v5    # "vnA":Lcom/masshabit/common/physics/Vector2;
    .end local v9    # "vnB":Lcom/masshabit/common/physics/Vector2;
    .end local v14    # "mtdB":Lcom/masshabit/common/physics/Vector2;
    .local v2, "tf":F
    .local v4, "te":F
    .restart local p0    # "pa":Lcom/masshabit/common/physics/Particle;
    :cond_2
    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gez v3, :cond_6

    const/4 v2, 0x0

    move v10, v2

    .end local v2    # "tf":F
    .local v10, "tf":F
    goto/16 :goto_0

    .line 25
    .local v2, "ma":F
    .local v3, "mb":F
    :cond_3
    const/high16 v5, 0x3f800000    # 1.0f

    div-float v2, v5, v2

    move v6, v2

    goto/16 :goto_1

    .line 26
    .end local v2    # "ma":F
    .restart local v6    # "ima":F
    :cond_4
    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v3

    move v7, v2

    goto/16 :goto_2

    .end local v3    # "mb":F
    .end local v6    # "ima":F
    .local v4, "mtdA":Lcom/masshabit/common/physics/Vector2;
    .restart local v5    # "vnA":Lcom/masshabit/common/physics/Vector2;
    .restart local v9    # "vnB":Lcom/masshabit/common/physics/Vector2;
    .local v10, "resolve":Z
    .restart local v14    # "mtdB":Lcom/masshabit/common/physics/Vector2;
    :cond_5
    move v2, v10

    .end local v10    # "resolve":Z
    .local v2, "resolve":Z
    goto :goto_3

    .end local v5    # "vnA":Lcom/masshabit/common/physics/Vector2;
    .end local v9    # "vnB":Lcom/masshabit/common/physics/Vector2;
    .end local v14    # "mtdB":Lcom/masshabit/common/physics/Vector2;
    .local v2, "tf":F
    .local v4, "te":F
    :cond_6
    move v10, v2

    .end local v2    # "tf":F
    .local v10, "tf":F
    goto/16 :goto_0
.end method
