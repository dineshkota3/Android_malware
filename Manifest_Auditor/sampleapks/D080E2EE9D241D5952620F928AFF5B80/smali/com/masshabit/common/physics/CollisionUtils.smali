.class public Lcom/masshabit/common/physics/CollisionUtils;
.super Ljava/lang/Object;
.source "CollisionUtils.java"


# static fields
.field protected static sPool:Lcom/masshabit/common/physics/VectorPool;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6
    new-instance v0, Lcom/masshabit/common/physics/VectorPool;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/masshabit/common/physics/VectorPool;-><init>(I)V

    sput-object v0, Lcom/masshabit/common/physics/CollisionUtils;->sPool:Lcom/masshabit/common/physics/VectorPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final closestPointOnLineToPoint(Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;)F
    .locals 6
    .param p0, "c"    # Lcom/masshabit/common/physics/Vector2;
    .param p1, "a"    # Lcom/masshabit/common/physics/Vector2;
    .param p2, "b"    # Lcom/masshabit/common/physics/Vector2;
    .param p3, "d"    # Lcom/masshabit/common/physics/Vector2;

    .prologue
    .line 20
    sget-object v3, Lcom/masshabit/common/physics/CollisionUtils;->sPool:Lcom/masshabit/common/physics/VectorPool;

    invoke-virtual {v3}, Lcom/masshabit/common/physics/VectorPool;->allocate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/masshabit/common/physics/Vector2;

    .line 21
    .local v0, "ab":Lcom/masshabit/common/physics/Vector2;
    sget-object v3, Lcom/masshabit/common/physics/CollisionUtils;->sPool:Lcom/masshabit/common/physics/VectorPool;

    invoke-virtual {v3}, Lcom/masshabit/common/physics/VectorPool;->allocate()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/masshabit/common/physics/Vector2;

    .line 23
    .local v1, "ac":Lcom/masshabit/common/physics/Vector2;
    iget v3, p2, Lcom/masshabit/common/physics/Vector2;->x:F

    iget v4, p1, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float/2addr v3, v4

    iget v4, p2, Lcom/masshabit/common/physics/Vector2;->y:F

    iget v5, p1, Lcom/masshabit/common/physics/Vector2;->y:F

    sub-float/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 24
    iget v3, p0, Lcom/masshabit/common/physics/Vector2;->x:F

    iget v4, p1, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/masshabit/common/physics/Vector2;->y:F

    iget v5, p1, Lcom/masshabit/common/physics/Vector2;->y:F

    sub-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 26
    invoke-virtual {v1, v0}, Lcom/masshabit/common/physics/Vector2;->dot(Lcom/masshabit/common/physics/Vector2;)F

    move-result v3

    invoke-virtual {v0, v0}, Lcom/masshabit/common/physics/Vector2;->dot(Lcom/masshabit/common/physics/Vector2;)F

    move-result v4

    div-float v2, v3, v4

    .line 27
    .local v2, "t":F
    if-eqz p3, :cond_0

    .line 29
    iget v3, p1, Lcom/masshabit/common/physics/Vector2;->x:F

    iget v4, v0, Lcom/masshabit/common/physics/Vector2;->x:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p1, Lcom/masshabit/common/physics/Vector2;->y:F

    iget v5, v0, Lcom/masshabit/common/physics/Vector2;->y:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    invoke-virtual {p3, v3, v4}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 32
    :cond_0
    sget-object v3, Lcom/masshabit/common/physics/CollisionUtils;->sPool:Lcom/masshabit/common/physics/VectorPool;

    invoke-virtual {v3, v0}, Lcom/masshabit/common/physics/VectorPool;->release(Ljava/lang/Object;)V

    .line 33
    sget-object v3, Lcom/masshabit/common/physics/CollisionUtils;->sPool:Lcom/masshabit/common/physics/VectorPool;

    invoke-virtual {v3, v1}, Lcom/masshabit/common/physics/VectorPool;->release(Ljava/lang/Object;)V

    .line 34
    return v2
.end method

.method public static final closestPointOnSegmentToPoint(Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;)F
    .locals 6
    .param p0, "c"    # Lcom/masshabit/common/physics/Vector2;
    .param p1, "a"    # Lcom/masshabit/common/physics/Vector2;
    .param p2, "b"    # Lcom/masshabit/common/physics/Vector2;
    .param p3, "d"    # Lcom/masshabit/common/physics/Vector2;

    .prologue
    .line 52
    sget-object v3, Lcom/masshabit/common/physics/CollisionUtils;->sPool:Lcom/masshabit/common/physics/VectorPool;

    invoke-virtual {v3}, Lcom/masshabit/common/physics/VectorPool;->allocate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/masshabit/common/physics/Vector2;

    .line 53
    .local v0, "ab":Lcom/masshabit/common/physics/Vector2;
    sget-object v3, Lcom/masshabit/common/physics/CollisionUtils;->sPool:Lcom/masshabit/common/physics/VectorPool;

    invoke-virtual {v3}, Lcom/masshabit/common/physics/VectorPool;->allocate()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/masshabit/common/physics/Vector2;

    .line 55
    .local v1, "ac":Lcom/masshabit/common/physics/Vector2;
    iget v3, p2, Lcom/masshabit/common/physics/Vector2;->x:F

    iget v4, p1, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float/2addr v3, v4

    iget v4, p2, Lcom/masshabit/common/physics/Vector2;->y:F

    iget v5, p1, Lcom/masshabit/common/physics/Vector2;->y:F

    sub-float/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 56
    iget v3, p0, Lcom/masshabit/common/physics/Vector2;->x:F

    iget v4, p1, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/masshabit/common/physics/Vector2;->y:F

    iget v5, p1, Lcom/masshabit/common/physics/Vector2;->y:F

    sub-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 58
    invoke-virtual {v1, v0}, Lcom/masshabit/common/physics/Vector2;->dot(Lcom/masshabit/common/physics/Vector2;)F

    move-result v3

    invoke-virtual {v0, v0}, Lcom/masshabit/common/physics/Vector2;->dot(Lcom/masshabit/common/physics/Vector2;)F

    move-result v4

    div-float v2, v3, v4

    .line 59
    .local v2, "t":F
    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gez v3, :cond_0

    .line 61
    const/4 v2, 0x0

    .line 63
    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    .line 65
    const/high16 v2, 0x3f800000    # 1.0f

    .line 67
    :cond_1
    if-eqz p3, :cond_2

    .line 69
    iget v3, p1, Lcom/masshabit/common/physics/Vector2;->x:F

    iget v4, v0, Lcom/masshabit/common/physics/Vector2;->x:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p1, Lcom/masshabit/common/physics/Vector2;->y:F

    iget v5, v0, Lcom/masshabit/common/physics/Vector2;->y:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    invoke-virtual {p3, v3, v4}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 72
    :cond_2
    sget-object v3, Lcom/masshabit/common/physics/CollisionUtils;->sPool:Lcom/masshabit/common/physics/VectorPool;

    invoke-virtual {v3, v0}, Lcom/masshabit/common/physics/VectorPool;->release(Ljava/lang/Object;)V

    .line 73
    sget-object v3, Lcom/masshabit/common/physics/CollisionUtils;->sPool:Lcom/masshabit/common/physics/VectorPool;

    invoke-virtual {v3, v1}, Lcom/masshabit/common/physics/VectorPool;->release(Ljava/lang/Object;)V

    .line 74
    return v2
.end method

.method public static final signedTriArea(Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;)F
    .locals 4
    .param p0, "a"    # Lcom/masshabit/common/physics/Vector2;
    .param p1, "b"    # Lcom/masshabit/common/physics/Vector2;
    .param p2, "c"    # Lcom/masshabit/common/physics/Vector2;

    .prologue
    .line 105
    iget v0, p0, Lcom/masshabit/common/physics/Vector2;->x:F

    iget v1, p2, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float/2addr v0, v1

    iget v1, p1, Lcom/masshabit/common/physics/Vector2;->y:F

    iget v2, p2, Lcom/masshabit/common/physics/Vector2;->y:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/masshabit/common/physics/Vector2;->y:F

    iget v2, p2, Lcom/masshabit/common/physics/Vector2;->y:F

    sub-float/2addr v1, v2

    iget v2, p1, Lcom/masshabit/common/physics/Vector2;->x:F

    iget v3, p2, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public static final testRaySegment(Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;)F
    .locals 9
    .param p0, "a"    # Lcom/masshabit/common/physics/Vector2;
    .param p1, "dir"    # Lcom/masshabit/common/physics/Vector2;
    .param p2, "c"    # Lcom/masshabit/common/physics/Vector2;
    .param p3, "d"    # Lcom/masshabit/common/physics/Vector2;

    .prologue
    .line 163
    sget-object v6, Lcom/masshabit/common/physics/CollisionUtils;->sPool:Lcom/masshabit/common/physics/VectorPool;

    invoke-virtual {v6}, Lcom/masshabit/common/physics/VectorPool;->allocate()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/masshabit/common/physics/Vector2;

    .line 164
    .local v4, "b":Lcom/masshabit/common/physics/Vector2;
    iget v6, p0, Lcom/masshabit/common/physics/Vector2;->x:F

    iget v7, p1, Lcom/masshabit/common/physics/Vector2;->x:F

    add-float/2addr v6, v7

    iget v7, p0, Lcom/masshabit/common/physics/Vector2;->y:F

    iget v8, p1, Lcom/masshabit/common/physics/Vector2;->y:F

    add-float/2addr v7, v8

    invoke-virtual {v4, v6, v7}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 166
    invoke-static {p0, v4, p3}, Lcom/masshabit/common/physics/CollisionUtils;->signedTriArea(Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;)F

    move-result v0

    .line 167
    .local v0, "a1":F
    invoke-static {p0, v4, p2}, Lcom/masshabit/common/physics/CollisionUtils;->signedTriArea(Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;)F

    move-result v1

    .line 169
    .local v1, "a2":F
    mul-float v6, v0, v1

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    .line 171
    invoke-static {p2, p3, p0}, Lcom/masshabit/common/physics/CollisionUtils;->signedTriArea(Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;)F

    move-result v2

    .line 172
    .local v2, "a3":F
    add-float v6, v2, v1

    sub-float v3, v6, v0

    .line 174
    .local v3, "a4":F
    sub-float v6, v2, v3

    div-float v5, v2, v6

    .line 175
    .local v5, "param":F
    sget-object v6, Lcom/masshabit/common/physics/CollisionUtils;->sPool:Lcom/masshabit/common/physics/VectorPool;

    invoke-virtual {v6, v4}, Lcom/masshabit/common/physics/VectorPool;->release(Ljava/lang/Object;)V

    move v6, v5

    .line 179
    .end local v2    # "a3":F
    .end local v3    # "a4":F
    .end local v5    # "param":F
    :goto_0
    return v6

    .line 178
    :cond_0
    sget-object v6, Lcom/masshabit/common/physics/CollisionUtils;->sPool:Lcom/masshabit/common/physics/VectorPool;

    invoke-virtual {v6, v4}, Lcom/masshabit/common/physics/VectorPool;->release(Ljava/lang/Object;)V

    .line 179
    const/high16 v6, 0x7fc00000    # NaNf

    goto :goto_0
.end method

.method public static final testSegmentCircle(Lcom/masshabit/common/physics/CircleParticle;Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;)Z
    .locals 5
    .param p0, "particle"    # Lcom/masshabit/common/physics/CircleParticle;
    .param p1, "p1"    # Lcom/masshabit/common/physics/Vector2;
    .param p2, "p2"    # Lcom/masshabit/common/physics/Vector2;

    .prologue
    .line 89
    sget-object v2, Lcom/masshabit/common/physics/CollisionUtils;->sPool:Lcom/masshabit/common/physics/VectorPool;

    invoke-virtual {v2}, Lcom/masshabit/common/physics/VectorPool;->allocate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/masshabit/common/physics/Vector2;

    .line 90
    .local v0, "d":Lcom/masshabit/common/physics/Vector2;
    iget-object v2, p0, Lcom/masshabit/common/physics/CircleParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-static {v2, p1, p2, v0}, Lcom/masshabit/common/physics/CollisionUtils;->closestPointOnSegmentToPoint(Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;)F

    .line 91
    iget v2, v0, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v3, p0, Lcom/masshabit/common/physics/CircleParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float/2addr v2, v3

    iget v3, v0, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v4, p0, Lcom/masshabit/common/physics/CircleParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v4, v4, Lcom/masshabit/common/physics/Vector2;->y:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 93
    invoke-virtual {p0}, Lcom/masshabit/common/physics/CircleParticle;->getRadiusSq()F

    move-result v2

    invoke-virtual {v0}, Lcom/masshabit/common/physics/Vector2;->lengthSq()F

    move-result v3

    sub-float v1, v2, v3

    .line 94
    .local v1, "depthSq":F
    sget-object v2, Lcom/masshabit/common/physics/CollisionUtils;->sPool:Lcom/masshabit/common/physics/VectorPool;

    invoke-virtual {v2, v0}, Lcom/masshabit/common/physics/VectorPool;->release(Ljava/lang/Object;)V

    .line 95
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static final testSegmentSegment(Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;)F
    .locals 9
    .param p0, "a"    # Lcom/masshabit/common/physics/Vector2;
    .param p1, "b"    # Lcom/masshabit/common/physics/Vector2;
    .param p2, "c"    # Lcom/masshabit/common/physics/Vector2;
    .param p3, "d"    # Lcom/masshabit/common/physics/Vector2;
    .param p4, "p"    # Lcom/masshabit/common/physics/Vector2;

    .prologue
    const/4 v6, 0x0

    .line 128
    invoke-static {p0, p1, p3}, Lcom/masshabit/common/physics/CollisionUtils;->signedTriArea(Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;)F

    move-result v0

    .line 129
    .local v0, "a1":F
    invoke-static {p0, p1, p2}, Lcom/masshabit/common/physics/CollisionUtils;->signedTriArea(Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;)F

    move-result v1

    .line 131
    .local v1, "a2":F
    mul-float v5, v0, v1

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 133
    invoke-static {p2, p3, p0}, Lcom/masshabit/common/physics/CollisionUtils;->signedTriArea(Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;)F

    move-result v2

    .line 134
    .local v2, "a3":F
    add-float v5, v2, v1

    sub-float v3, v5, v0

    .line 136
    .local v3, "a4":F
    mul-float v5, v2, v3

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 138
    sub-float v5, v2, v3

    div-float v4, v2, v5

    .line 139
    .local v4, "param":F
    iget v5, p0, Lcom/masshabit/common/physics/Vector2;->x:F

    iget v6, p1, Lcom/masshabit/common/physics/Vector2;->x:F

    iget v7, p0, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v4

    add-float/2addr v5, v6

    iget v6, p0, Lcom/masshabit/common/physics/Vector2;->y:F

    iget v7, p1, Lcom/masshabit/common/physics/Vector2;->y:F

    iget v8, p0, Lcom/masshabit/common/physics/Vector2;->y:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    invoke-virtual {p4, v5, v6}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    move v5, v4

    .line 143
    .end local v2    # "a3":F
    .end local v3    # "a4":F
    .end local v4    # "param":F
    :goto_0
    return v5

    :cond_0
    const/high16 v5, 0x7fc00000    # NaNf

    goto :goto_0
.end method
