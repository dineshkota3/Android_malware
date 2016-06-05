.class public Lcom/masshabit/common/physics/CollisionDetector;
.super Ljava/lang/Object;
.source "CollisionDetector.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CollisionDetector"

.field public static int1:Lcom/masshabit/common/physics/Interval;

.field public static int2:Lcom/masshabit/common/physics/Interval;

.field protected static sPool:Lcom/masshabit/common/physics/VectorPool;

.field private static sRayDir:Lcom/masshabit/common/physics/Vector2;

.field private static sRayOrigin:Lcom/masshabit/common/physics/Vector2;

.field private static sSegPoint1:Lcom/masshabit/common/physics/Vector2;

.field private static sSegPoint2:Lcom/masshabit/common/physics/Vector2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Lcom/masshabit/common/physics/VectorPool;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/masshabit/common/physics/VectorPool;-><init>(I)V

    sput-object v0, Lcom/masshabit/common/physics/CollisionDetector;->sPool:Lcom/masshabit/common/physics/VectorPool;

    .line 51
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Vector2;-><init>()V

    sput-object v0, Lcom/masshabit/common/physics/CollisionDetector;->sRayOrigin:Lcom/masshabit/common/physics/Vector2;

    .line 52
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Vector2;-><init>()V

    sput-object v0, Lcom/masshabit/common/physics/CollisionDetector;->sRayDir:Lcom/masshabit/common/physics/Vector2;

    .line 53
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Vector2;-><init>()V

    sput-object v0, Lcom/masshabit/common/physics/CollisionDetector;->sSegPoint1:Lcom/masshabit/common/physics/Vector2;

    .line 54
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Vector2;-><init>()V

    sput-object v0, Lcom/masshabit/common/physics/CollisionDetector;->sSegPoint2:Lcom/masshabit/common/physics/Vector2;

    .line 164
    new-instance v0, Lcom/masshabit/common/physics/Interval;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Interval;-><init>()V

    sput-object v0, Lcom/masshabit/common/physics/CollisionDetector;->int1:Lcom/masshabit/common/physics/Interval;

    .line 165
    new-instance v0, Lcom/masshabit/common/physics/Interval;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Interval;-><init>()V

    sput-object v0, Lcom/masshabit/common/physics/CollisionDetector;->int2:Lcom/masshabit/common/physics/Interval;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(Lcom/masshabit/common/physics/Particle;Lcom/masshabit/common/physics/Particle;)V
    .locals 2
    .param p0, "pa"    # Lcom/masshabit/common/physics/Particle;
    .param p1, "pb"    # Lcom/masshabit/common/physics/Particle;

    .prologue
    const/4 v1, 0x1

    .line 14
    iget-boolean v0, p0, Lcom/masshabit/common/physics/Particle;->mFixed:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/masshabit/common/physics/Particle;->mFixed:Z

    if-eqz v0, :cond_1

    .line 39
    .end local p0    # "pa":Lcom/masshabit/common/physics/Particle;
    .end local p1    # "pb":Lcom/masshabit/common/physics/Particle;
    :cond_0
    :goto_0
    return-void

    .line 19
    .restart local p0    # "pa":Lcom/masshabit/common/physics/Particle;
    .restart local p1    # "pb":Lcom/masshabit/common/physics/Particle;
    :cond_1
    instance-of v0, p0, Lcom/masshabit/common/physics/CircleParticle;

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/masshabit/common/physics/SegmentParticle;

    if-eqz v0, :cond_2

    .line 21
    check-cast p0, Lcom/masshabit/common/physics/CircleParticle;

    .end local p0    # "pa":Lcom/masshabit/common/physics/Particle;
    check-cast p1, Lcom/masshabit/common/physics/SegmentParticle;

    .end local p1    # "pb":Lcom/masshabit/common/physics/Particle;
    invoke-static {p0, p1, v1}, Lcom/masshabit/common/physics/CollisionDetector;->circleVsSegment(Lcom/masshabit/common/physics/CircleParticle;Lcom/masshabit/common/physics/SegmentParticle;Z)Z

    goto :goto_0

    .line 23
    .restart local p0    # "pa":Lcom/masshabit/common/physics/Particle;
    .restart local p1    # "pb":Lcom/masshabit/common/physics/Particle;
    :cond_2
    instance-of v0, p0, Lcom/masshabit/common/physics/SegmentParticle;

    if-eqz v0, :cond_3

    instance-of v0, p1, Lcom/masshabit/common/physics/CircleParticle;

    if-eqz v0, :cond_3

    .line 25
    check-cast p1, Lcom/masshabit/common/physics/CircleParticle;

    .end local p1    # "pb":Lcom/masshabit/common/physics/Particle;
    check-cast p0, Lcom/masshabit/common/physics/SegmentParticle;

    .end local p0    # "pa":Lcom/masshabit/common/physics/Particle;
    invoke-static {p1, p0, v1}, Lcom/masshabit/common/physics/CollisionDetector;->circleVsSegment(Lcom/masshabit/common/physics/CircleParticle;Lcom/masshabit/common/physics/SegmentParticle;Z)Z

    goto :goto_0

    .line 27
    .restart local p0    # "pa":Lcom/masshabit/common/physics/Particle;
    .restart local p1    # "pb":Lcom/masshabit/common/physics/Particle;
    :cond_3
    instance-of v0, p0, Lcom/masshabit/common/physics/ConvexHull;

    if-eqz v0, :cond_4

    instance-of v0, p1, Lcom/masshabit/common/physics/CircleParticle;

    if-eqz v0, :cond_4

    .line 29
    check-cast p1, Lcom/masshabit/common/physics/CircleParticle;

    .end local p1    # "pb":Lcom/masshabit/common/physics/Particle;
    check-cast p0, Lcom/masshabit/common/physics/ConvexHull;

    .end local p0    # "pa":Lcom/masshabit/common/physics/Particle;
    invoke-static {p1, p0, v1}, Lcom/masshabit/common/physics/CollisionDetector;->circleVsHull(Lcom/masshabit/common/physics/CircleParticle;Lcom/masshabit/common/physics/ConvexHull;Z)Z

    goto :goto_0

    .line 31
    .restart local p0    # "pa":Lcom/masshabit/common/physics/Particle;
    .restart local p1    # "pb":Lcom/masshabit/common/physics/Particle;
    :cond_4
    instance-of v0, p0, Lcom/masshabit/common/physics/CircleParticle;

    if-eqz v0, :cond_5

    instance-of v0, p1, Lcom/masshabit/common/physics/ConvexHull;

    if-eqz v0, :cond_5

    .line 33
    check-cast p0, Lcom/masshabit/common/physics/CircleParticle;

    .end local p0    # "pa":Lcom/masshabit/common/physics/Particle;
    check-cast p1, Lcom/masshabit/common/physics/ConvexHull;

    .end local p1    # "pb":Lcom/masshabit/common/physics/Particle;
    invoke-static {p0, p1, v1}, Lcom/masshabit/common/physics/CollisionDetector;->circleVsHull(Lcom/masshabit/common/physics/CircleParticle;Lcom/masshabit/common/physics/ConvexHull;Z)Z

    goto :goto_0

    .line 35
    .restart local p0    # "pa":Lcom/masshabit/common/physics/Particle;
    .restart local p1    # "pb":Lcom/masshabit/common/physics/Particle;
    :cond_5
    instance-of v0, p0, Lcom/masshabit/common/physics/CircleParticle;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/masshabit/common/physics/CircleParticle;

    if-eqz v0, :cond_0

    .line 37
    check-cast p0, Lcom/masshabit/common/physics/CircleParticle;

    .end local p0    # "pa":Lcom/masshabit/common/physics/Particle;
    check-cast p1, Lcom/masshabit/common/physics/CircleParticle;

    .end local p1    # "pb":Lcom/masshabit/common/physics/Particle;
    invoke-static {p0, p1, v1}, Lcom/masshabit/common/physics/CollisionDetector;->circleVsCircle(Lcom/masshabit/common/physics/CircleParticle;Lcom/masshabit/common/physics/CircleParticle;Z)Z

    goto :goto_0
.end method

.method public static circleVsCircle(Lcom/masshabit/common/physics/CircleParticle;Lcom/masshabit/common/physics/CircleParticle;Z)Z
    .locals 6
    .param p0, "c1"    # Lcom/masshabit/common/physics/CircleParticle;
    .param p1, "c2"    # Lcom/masshabit/common/physics/CircleParticle;
    .param p2, "resolve"    # Z

    .prologue
    const/4 v5, 0x0

    .line 119
    sget-object v2, Lcom/masshabit/common/physics/CollisionDetector;->sPool:Lcom/masshabit/common/physics/VectorPool;

    invoke-virtual {v2}, Lcom/masshabit/common/physics/VectorPool;->allocate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/masshabit/common/physics/Vector2;

    .line 120
    .local v0, "d":Lcom/masshabit/common/physics/Vector2;
    iget-object v2, p0, Lcom/masshabit/common/physics/CircleParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v3, p1, Lcom/masshabit/common/physics/CircleParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/masshabit/common/physics/CircleParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v4, p1, Lcom/masshabit/common/physics/CircleParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v4, v4, Lcom/masshabit/common/physics/Vector2;->y:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 121
    invoke-virtual {p0}, Lcom/masshabit/common/physics/CircleParticle;->getRadius()F

    move-result v2

    invoke-virtual {p1}, Lcom/masshabit/common/physics/CircleParticle;->getRadius()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/masshabit/common/physics/Vector2;->length()F

    move-result v3

    sub-float v1, v2, v3

    .line 122
    .local v1, "depth":F
    if-eqz p2, :cond_0

    cmpl-float v2, v1, v5

    if-lez v2, :cond_0

    .line 124
    invoke-virtual {v0}, Lcom/masshabit/common/physics/Vector2;->normalize()F

    .line 125
    invoke-static {p0, p1, v0, v1}, Lcom/masshabit/common/physics/CollisionResolver;->resolve(Lcom/masshabit/common/physics/Particle;Lcom/masshabit/common/physics/Particle;Lcom/masshabit/common/physics/Vector2;F)V

    .line 127
    :cond_0
    sget-object v2, Lcom/masshabit/common/physics/CollisionDetector;->sPool:Lcom/masshabit/common/physics/VectorPool;

    invoke-virtual {v2, v0}, Lcom/masshabit/common/physics/VectorPool;->release(Ljava/lang/Object;)V

    .line 128
    cmpl-float v2, v1, v5

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static circleVsHull(Lcom/masshabit/common/physics/CircleParticle;Lcom/masshabit/common/physics/ConvexHull;Z)Z
    .locals 10
    .param p0, "circle"    # Lcom/masshabit/common/physics/CircleParticle;
    .param p1, "hull"    # Lcom/masshabit/common/physics/ConvexHull;
    .param p2, "resolve"    # Z

    .prologue
    .line 174
    sget-object v0, Lcom/masshabit/common/physics/CollisionDetector;->sPool:Lcom/masshabit/common/physics/VectorPool;

    invoke-virtual {v0}, Lcom/masshabit/common/physics/VectorPool;->allocate()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/masshabit/common/physics/Vector2;

    .line 175
    .local v2, "corner":Lcom/masshabit/common/physics/Vector2;
    sget-object v0, Lcom/masshabit/common/physics/CollisionDetector;->sPool:Lcom/masshabit/common/physics/VectorPool;

    invoke-virtual {v0}, Lcom/masshabit/common/physics/VectorPool;->allocate()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/masshabit/common/physics/Vector2;

    .line 176
    .local v1, "closestPointNorm":Lcom/masshabit/common/physics/Vector2;
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 178
    .local v0, "closestPointDistSq":F
    sget-object v3, Lcom/masshabit/common/physics/CollisionDetector;->sPool:Lcom/masshabit/common/physics/VectorPool;

    invoke-virtual {v3}, Lcom/masshabit/common/physics/VectorPool;->allocate()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/masshabit/common/physics/Vector2;

    .line 179
    .local v4, "minNormal":Lcom/masshabit/common/physics/Vector2;
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    .line 182
    .local v5, "mtd":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v6, p1, Lcom/masshabit/common/physics/ConvexHull;->mAxes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 184
    iget-object v6, p1, Lcom/masshabit/common/physics/ConvexHull;->mAxes:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/masshabit/common/physics/Vector2;

    .line 186
    .local v6, "n":Lcom/masshabit/common/physics/Vector2;
    sget-object v7, Lcom/masshabit/common/physics/CollisionDetector;->int1:Lcom/masshabit/common/physics/Interval;

    invoke-virtual {p1, v6, v7}, Lcom/masshabit/common/physics/ConvexHull;->project(Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Interval;)V

    .line 187
    sget-object v7, Lcom/masshabit/common/physics/CollisionDetector;->int2:Lcom/masshabit/common/physics/Interval;

    invoke-virtual {p0, v6, v7}, Lcom/masshabit/common/physics/CircleParticle;->project(Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Interval;)V

    .line 189
    sget-object v7, Lcom/masshabit/common/physics/CollisionDetector;->int1:Lcom/masshabit/common/physics/Interval;

    iget v7, v7, Lcom/masshabit/common/physics/Interval;->max:F

    sget-object v8, Lcom/masshabit/common/physics/CollisionDetector;->int2:Lcom/masshabit/common/physics/Interval;

    iget v8, v8, Lcom/masshabit/common/physics/Interval;->min:F

    sub-float/2addr v7, v8

    .line 190
    .local v7, "overlap":F
    const/4 v8, 0x0

    cmpg-float v8, v7, v8

    if-gtz v8, :cond_0

    .line 192
    sget-object p0, Lcom/masshabit/common/physics/CollisionDetector;->sPool:Lcom/masshabit/common/physics/VectorPool;

    .end local p0    # "circle":Lcom/masshabit/common/physics/CircleParticle;
    invoke-virtual {p0, v4}, Lcom/masshabit/common/physics/VectorPool;->release(Ljava/lang/Object;)V

    .line 193
    sget-object p0, Lcom/masshabit/common/physics/CollisionDetector;->sPool:Lcom/masshabit/common/physics/VectorPool;

    invoke-virtual {p0, v1}, Lcom/masshabit/common/physics/VectorPool;->release(Ljava/lang/Object;)V

    .line 194
    sget-object p0, Lcom/masshabit/common/physics/CollisionDetector;->sPool:Lcom/masshabit/common/physics/VectorPool;

    invoke-virtual {p0, v2}, Lcom/masshabit/common/physics/VectorPool;->release(Ljava/lang/Object;)V

    .line 195
    const/4 p0, 0x0

    move p1, v3

    .end local v3    # "i":I
    .local p1, "i":I
    move p2, v5

    .end local v5    # "mtd":F
    .local p2, "mtd":F
    move v1, p0

    move p0, v0

    .end local v0    # "closestPointDistSq":F
    .local p0, "closestPointDistSq":F
    move v0, v7

    .line 251
    .end local v1    # "closestPointNorm":Lcom/masshabit/common/physics/Vector2;
    .end local v6    # "n":Lcom/masshabit/common/physics/Vector2;
    .end local v7    # "overlap":F
    .local v0, "overlap":F
    :goto_1
    return v1

    .line 197
    .local v0, "closestPointDistSq":F
    .restart local v1    # "closestPointNorm":Lcom/masshabit/common/physics/Vector2;
    .restart local v3    # "i":I
    .restart local v5    # "mtd":F
    .restart local v6    # "n":Lcom/masshabit/common/physics/Vector2;
    .restart local v7    # "overlap":F
    .local p0, "circle":Lcom/masshabit/common/physics/CircleParticle;
    .local p1, "hull":Lcom/masshabit/common/physics/ConvexHull;
    .local p2, "resolve":Z
    :cond_0
    cmpg-float v8, v7, v5

    if-gez v8, :cond_1

    .line 199
    invoke-virtual {v4, v6}, Lcom/masshabit/common/physics/Vector2;->set(Lcom/masshabit/common/physics/Vector2;)V

    .line 200
    move v5, v7

    .line 182
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 209
    .end local v6    # "n":Lcom/masshabit/common/physics/Vector2;
    .end local v7    # "overlap":F
    :cond_2
    const/4 v3, 0x0

    :goto_2
    iget-object v6, p1, Lcom/masshabit/common/physics/ConvexHull;->mEdges:[Lcom/masshabit/common/physics/ConvexHull$HalfEdge;

    array-length v6, v6

    if-ge v3, v6, :cond_4

    .line 212
    iget-object v6, p0, Lcom/masshabit/common/physics/CircleParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v6, v6, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v7, p1, Lcom/masshabit/common/physics/ConvexHull;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v7, v7, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v8, p1, Lcom/masshabit/common/physics/ConvexHull;->mEdges:[Lcom/masshabit/common/physics/ConvexHull$HalfEdge;

    aget-object v8, v8, v3

    iget-object v8, v8, Lcom/masshabit/common/physics/ConvexHull$HalfEdge;->p1:Lcom/masshabit/common/physics/Vector2;

    iget v8, v8, Lcom/masshabit/common/physics/Vector2;->x:F

    add-float/2addr v7, v8

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/masshabit/common/physics/CircleParticle;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v7, v7, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v8, p1, Lcom/masshabit/common/physics/ConvexHull;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v8, v8, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v9, p1, Lcom/masshabit/common/physics/ConvexHull;->mEdges:[Lcom/masshabit/common/physics/ConvexHull$HalfEdge;

    aget-object v9, v9, v3

    iget-object v9, v9, Lcom/masshabit/common/physics/ConvexHull$HalfEdge;->p1:Lcom/masshabit/common/physics/Vector2;

    iget v9, v9, Lcom/masshabit/common/physics/Vector2;->y:F

    add-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {v2, v6, v7}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 216
    invoke-virtual {v2}, Lcom/masshabit/common/physics/Vector2;->lengthSq()F

    move-result v6

    cmpg-float v6, v6, v0

    if-gez v6, :cond_3

    .line 218
    invoke-virtual {v2}, Lcom/masshabit/common/physics/Vector2;->lengthSq()F

    move-result v0

    .line 219
    invoke-virtual {v2}, Lcom/masshabit/common/physics/Vector2;->normalize()F

    .line 220
    invoke-virtual {v1, v2}, Lcom/masshabit/common/physics/Vector2;->set(Lcom/masshabit/common/physics/Vector2;)V

    .line 209
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 225
    :cond_4
    sget-object v6, Lcom/masshabit/common/physics/CollisionDetector;->int1:Lcom/masshabit/common/physics/Interval;

    invoke-virtual {p1, v1, v6}, Lcom/masshabit/common/physics/ConvexHull;->project(Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Interval;)V

    .line 226
    sget-object v6, Lcom/masshabit/common/physics/CollisionDetector;->int2:Lcom/masshabit/common/physics/Interval;

    invoke-virtual {p0, v1, v6}, Lcom/masshabit/common/physics/CircleParticle;->project(Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Interval;)V

    .line 228
    sget-object v6, Lcom/masshabit/common/physics/CollisionDetector;->int1:Lcom/masshabit/common/physics/Interval;

    iget v6, v6, Lcom/masshabit/common/physics/Interval;->max:F

    sget-object v7, Lcom/masshabit/common/physics/CollisionDetector;->int2:Lcom/masshabit/common/physics/Interval;

    iget v7, v7, Lcom/masshabit/common/physics/Interval;->min:F

    sub-float/2addr v6, v7

    .line 229
    .local v6, "overlap":F
    const/4 v7, 0x0

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_5

    .line 231
    sget-object p0, Lcom/masshabit/common/physics/CollisionDetector;->sPool:Lcom/masshabit/common/physics/VectorPool;

    .end local p0    # "circle":Lcom/masshabit/common/physics/CircleParticle;
    invoke-virtual {p0, v4}, Lcom/masshabit/common/physics/VectorPool;->release(Ljava/lang/Object;)V

    .line 232
    sget-object p0, Lcom/masshabit/common/physics/CollisionDetector;->sPool:Lcom/masshabit/common/physics/VectorPool;

    invoke-virtual {p0, v1}, Lcom/masshabit/common/physics/VectorPool;->release(Ljava/lang/Object;)V

    .line 233
    sget-object p0, Lcom/masshabit/common/physics/CollisionDetector;->sPool:Lcom/masshabit/common/physics/VectorPool;

    invoke-virtual {p0, v2}, Lcom/masshabit/common/physics/VectorPool;->release(Ljava/lang/Object;)V

    .line 234
    const/4 p0, 0x0

    move p1, v3

    .end local v3    # "i":I
    .local p1, "i":I
    move p2, v5

    .end local v5    # "mtd":F
    .local p2, "mtd":F
    move v1, p0

    move p0, v0

    .end local v0    # "closestPointDistSq":F
    .local p0, "closestPointDistSq":F
    move v0, v6

    .end local v6    # "overlap":F
    .local v0, "overlap":F
    goto :goto_1

    .line 236
    .local v0, "closestPointDistSq":F
    .restart local v3    # "i":I
    .restart local v5    # "mtd":F
    .restart local v6    # "overlap":F
    .local p0, "circle":Lcom/masshabit/common/physics/CircleParticle;
    .local p1, "hull":Lcom/masshabit/common/physics/ConvexHull;
    .local p2, "resolve":Z
    :cond_5
    cmpg-float v7, v6, v5

    if-gez v7, :cond_6

    .line 238
    invoke-virtual {v4, v1}, Lcom/masshabit/common/physics/Vector2;->set(Lcom/masshabit/common/physics/Vector2;)V

    .line 239
    move v5, v6

    .line 242
    :cond_6
    if-eqz p2, :cond_7

    .line 245
    invoke-static {p0, p1, v4, v5}, Lcom/masshabit/common/physics/CollisionResolver;->resolve(Lcom/masshabit/common/physics/Particle;Lcom/masshabit/common/physics/Particle;Lcom/masshabit/common/physics/Vector2;F)V

    .line 248
    :cond_7
    sget-object p0, Lcom/masshabit/common/physics/CollisionDetector;->sPool:Lcom/masshabit/common/physics/VectorPool;

    .end local p0    # "circle":Lcom/masshabit/common/physics/CircleParticle;
    invoke-virtual {p0, v4}, Lcom/masshabit/common/physics/VectorPool;->release(Ljava/lang/Object;)V

    .line 249
    sget-object p0, Lcom/masshabit/common/physics/CollisionDetector;->sPool:Lcom/masshabit/common/physics/VectorPool;

    invoke-virtual {p0, v1}, Lcom/masshabit/common/physics/VectorPool;->release(Ljava/lang/Object;)V

    .line 250
    sget-object p0, Lcom/masshabit/common/physics/CollisionDetector;->sPool:Lcom/masshabit/common/physics/VectorPool;

    invoke-virtual {p0, v2}, Lcom/masshabit/common/physics/VectorPool;->release(Ljava/lang/Object;)V

    .line 251
    const/4 p0, 0x1

    move p1, v3

    .end local v3    # "i":I
    .local p1, "i":I
    move p2, v5

    .end local v5    # "mtd":F
    .local p2, "mtd":F
    move v1, p0

    move p0, v0

    .end local v0    # "closestPointDistSq":F
    .local p0, "closestPointDistSq":F
    move v0, v6

    .end local v6    # "overlap":F
    .local v0, "overlap":F
    goto/16 :goto_1
.end method

.method public static circleVsSegment(Lcom/masshabit/common/physics/CircleParticle;Lcom/masshabit/common/physics/SegmentParticle;Z)Z
    .locals 10
    .param p0, "circle"    # Lcom/masshabit/common/physics/CircleParticle;
    .param p1, "segment"    # Lcom/masshabit/common/physics/SegmentParticle;
    .param p2, "resolve"    # Z

    .prologue
    const/4 v9, 0x0

    .line 133
    sget-object v6, Lcom/masshabit/common/physics/CollisionDetector;->sPool:Lcom/masshabit/common/physics/VectorPool;

    invoke-virtual {v6}, Lcom/masshabit/common/physics/VectorPool;->allocate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/masshabit/common/physics/Vector2;

    .line 134
    .local v0, "center":Lcom/masshabit/common/physics/Vector2;
    invoke-virtual {p0, v0}, Lcom/masshabit/common/physics/CircleParticle;->getPosition(Lcom/masshabit/common/physics/Vector2;)V

    .line 136
    sget-object v6, Lcom/masshabit/common/physics/CollisionDetector;->sPool:Lcom/masshabit/common/physics/VectorPool;

    invoke-virtual {v6}, Lcom/masshabit/common/physics/VectorPool;->allocate()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/masshabit/common/physics/Vector2;

    .line 137
    .local v2, "p1":Lcom/masshabit/common/physics/Vector2;
    sget-object v6, Lcom/masshabit/common/physics/CollisionDetector;->sPool:Lcom/masshabit/common/physics/VectorPool;

    invoke-virtual {v6}, Lcom/masshabit/common/physics/VectorPool;->allocate()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/masshabit/common/physics/Vector2;

    .line 138
    .local v3, "p2":Lcom/masshabit/common/physics/Vector2;
    invoke-virtual {p1, v2}, Lcom/masshabit/common/physics/SegmentParticle;->getPoint1(Lcom/masshabit/common/physics/Vector2;)V

    .line 139
    invoke-virtual {p1, v3}, Lcom/masshabit/common/physics/SegmentParticle;->getPoint2(Lcom/masshabit/common/physics/Vector2;)V

    .line 141
    sget-object v6, Lcom/masshabit/common/physics/CollisionDetector;->sPool:Lcom/masshabit/common/physics/VectorPool;

    invoke-virtual {v6}, Lcom/masshabit/common/physics/VectorPool;->allocate()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/masshabit/common/physics/Vector2;

    .line 142
    .local v4, "result":Lcom/masshabit/common/physics/Vector2;
    invoke-static {v0, v2, v3, v4}, Lcom/masshabit/common/physics/CollisionUtils;->closestPointOnSegmentToPoint(Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;)F

    .line 144
    sget-object v6, Lcom/masshabit/common/physics/CollisionDetector;->sPool:Lcom/masshabit/common/physics/VectorPool;

    invoke-virtual {v6}, Lcom/masshabit/common/physics/VectorPool;->allocate()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/masshabit/common/physics/Vector2;

    .line 145
    .local v5, "sep":Lcom/masshabit/common/physics/Vector2;
    iget v6, v0, Lcom/masshabit/common/physics/Vector2;->x:F

    iget v7, v4, Lcom/masshabit/common/physics/Vector2;->x:F

    sub-float/2addr v6, v7

    iget v7, v0, Lcom/masshabit/common/physics/Vector2;->y:F

    iget v8, v4, Lcom/masshabit/common/physics/Vector2;->y:F

    sub-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 147
    invoke-virtual {p0}, Lcom/masshabit/common/physics/CircleParticle;->getRadius()F

    move-result v6

    invoke-virtual {v5}, Lcom/masshabit/common/physics/Vector2;->length()F

    move-result v7

    sub-float v1, v6, v7

    .line 148
    .local v1, "depth":F
    if-eqz p2, :cond_0

    cmpl-float v6, v1, v9

    if-lez v6, :cond_0

    .line 151
    invoke-virtual {v5}, Lcom/masshabit/common/physics/Vector2;->normalize()F

    .line 152
    invoke-static {p0, p1, v5, v1}, Lcom/masshabit/common/physics/CollisionResolver;->resolve(Lcom/masshabit/common/physics/Particle;Lcom/masshabit/common/physics/Particle;Lcom/masshabit/common/physics/Vector2;F)V

    .line 154
    :cond_0
    sget-object v6, Lcom/masshabit/common/physics/CollisionDetector;->sPool:Lcom/masshabit/common/physics/VectorPool;

    invoke-virtual {v6, v0}, Lcom/masshabit/common/physics/VectorPool;->release(Ljava/lang/Object;)V

    .line 155
    sget-object v6, Lcom/masshabit/common/physics/CollisionDetector;->sPool:Lcom/masshabit/common/physics/VectorPool;

    invoke-virtual {v6, v2}, Lcom/masshabit/common/physics/VectorPool;->release(Ljava/lang/Object;)V

    .line 156
    sget-object v6, Lcom/masshabit/common/physics/CollisionDetector;->sPool:Lcom/masshabit/common/physics/VectorPool;

    invoke-virtual {v6, v3}, Lcom/masshabit/common/physics/VectorPool;->release(Ljava/lang/Object;)V

    .line 157
    sget-object v6, Lcom/masshabit/common/physics/CollisionDetector;->sPool:Lcom/masshabit/common/physics/VectorPool;

    invoke-virtual {v6, v4}, Lcom/masshabit/common/physics/VectorPool;->release(Ljava/lang/Object;)V

    .line 158
    sget-object v6, Lcom/masshabit/common/physics/CollisionDetector;->sPool:Lcom/masshabit/common/physics/VectorPool;

    invoke-virtual {v6, v5}, Lcom/masshabit/common/physics/VectorPool;->release(Ljava/lang/Object;)V

    .line 160
    cmpl-float v6, v1, v9

    if-lez v6, :cond_1

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static rayCastQuery(Lcom/masshabit/common/physics/Particle;FFFF)F
    .locals 14
    .param p0, "p"    # Lcom/masshabit/common/physics/Particle;
    .param p1, "originx"    # F
    .param p2, "originy"    # F
    .param p3, "dirx"    # F
    .param p4, "diry"    # F

    .prologue
    const/4 v9, 0x0

    const/high16 v13, 0x7fc00000    # NaNf

    const/4 v12, 0x0

    .line 57
    sget-object v8, Lcom/masshabit/common/physics/CollisionDetector;->sRayOrigin:Lcom/masshabit/common/physics/Vector2;

    move-object v0, v8

    move v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 58
    sget-object v8, Lcom/masshabit/common/physics/CollisionDetector;->sRayDir:Lcom/masshabit/common/physics/Vector2;

    move-object v0, v8

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 60
    instance-of v8, p0, Lcom/masshabit/common/physics/ConvexHull;

    if-eqz v8, :cond_3

    .line 62
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    .line 63
    .local v5, "min":F
    move-object v0, p0

    check-cast v0, Lcom/masshabit/common/physics/ConvexHull;

    move-object v3, v0

    .line 64
    .local v3, "hull":Lcom/masshabit/common/physics/ConvexHull;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    iget-object v8, v3, Lcom/masshabit/common/physics/ConvexHull;->mEdges:[Lcom/masshabit/common/physics/ConvexHull$HalfEdge;

    array-length v8, v8

    if-ge v4, v8, :cond_2

    .line 66
    iget-object v8, v3, Lcom/masshabit/common/physics/ConvexHull;->mEdges:[Lcom/masshabit/common/physics/ConvexHull$HalfEdge;

    aget-object v8, v8, v4

    iget-object v8, v8, Lcom/masshabit/common/physics/ConvexHull$HalfEdge;->n:Lcom/masshabit/common/physics/Vector2;

    sget-object v9, Lcom/masshabit/common/physics/CollisionDetector;->sRayDir:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v8, v9}, Lcom/masshabit/common/physics/Vector2;->dot(Lcom/masshabit/common/physics/Vector2;)F

    move-result v8

    cmpl-float v8, v8, v12

    if-ltz v8, :cond_1

    .line 64
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 72
    :cond_1
    sget-object v8, Lcom/masshabit/common/physics/CollisionDetector;->sSegPoint1:Lcom/masshabit/common/physics/Vector2;

    iget-object v9, v3, Lcom/masshabit/common/physics/ConvexHull;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v8, v9}, Lcom/masshabit/common/physics/Vector2;->set(Lcom/masshabit/common/physics/Vector2;)V

    .line 73
    sget-object v8, Lcom/masshabit/common/physics/CollisionDetector;->sSegPoint1:Lcom/masshabit/common/physics/Vector2;

    iget-object v9, v3, Lcom/masshabit/common/physics/ConvexHull;->mEdges:[Lcom/masshabit/common/physics/ConvexHull$HalfEdge;

    aget-object v9, v9, v4

    iget-object v9, v9, Lcom/masshabit/common/physics/ConvexHull$HalfEdge;->p1:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v8, v9}, Lcom/masshabit/common/physics/Vector2;->add(Lcom/masshabit/common/physics/Vector2;)V

    .line 75
    sget-object v8, Lcom/masshabit/common/physics/CollisionDetector;->sSegPoint2:Lcom/masshabit/common/physics/Vector2;

    iget-object v9, v3, Lcom/masshabit/common/physics/ConvexHull;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v8, v9}, Lcom/masshabit/common/physics/Vector2;->set(Lcom/masshabit/common/physics/Vector2;)V

    .line 76
    sget-object v8, Lcom/masshabit/common/physics/CollisionDetector;->sSegPoint2:Lcom/masshabit/common/physics/Vector2;

    iget-object v9, v3, Lcom/masshabit/common/physics/ConvexHull;->mEdges:[Lcom/masshabit/common/physics/ConvexHull$HalfEdge;

    aget-object v9, v9, v4

    iget-object v9, v9, Lcom/masshabit/common/physics/ConvexHull$HalfEdge;->p2:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v8, v9}, Lcom/masshabit/common/physics/Vector2;->add(Lcom/masshabit/common/physics/Vector2;)V

    .line 78
    sget-object v8, Lcom/masshabit/common/physics/CollisionDetector;->sRayOrigin:Lcom/masshabit/common/physics/Vector2;

    sget-object v9, Lcom/masshabit/common/physics/CollisionDetector;->sRayDir:Lcom/masshabit/common/physics/Vector2;

    sget-object v10, Lcom/masshabit/common/physics/CollisionDetector;->sSegPoint1:Lcom/masshabit/common/physics/Vector2;

    sget-object v11, Lcom/masshabit/common/physics/CollisionDetector;->sSegPoint2:Lcom/masshabit/common/physics/Vector2;

    invoke-static {v8, v9, v10, v11}, Lcom/masshabit/common/physics/CollisionUtils;->testRaySegment(Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;)F

    move-result v7

    .line 80
    .local v7, "t":F
    cmpl-float v8, v7, v13

    if-eqz v8, :cond_0

    cmpg-float v8, v7, v5

    if-gez v8, :cond_0

    cmpl-float v8, v7, v12

    if-ltz v8, :cond_0

    .line 82
    move v5, v7

    goto :goto_1

    .line 86
    .end local v7    # "t":F
    :cond_2
    const v8, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float v8, v5, v8

    if-gez v8, :cond_5

    move v8, v5

    .line 114
    .end local v3    # "hull":Lcom/masshabit/common/physics/ConvexHull;
    .end local v4    # "j":I
    .end local v5    # "min":F
    :goto_2
    return v8

    .line 91
    :cond_3
    instance-of v8, p0, Lcom/masshabit/common/physics/SegmentParticle;

    if-eqz v8, :cond_4

    .line 93
    move-object v0, p0

    check-cast v0, Lcom/masshabit/common/physics/SegmentParticle;

    move-object v6, v0

    .line 95
    .local v6, "segment":Lcom/masshabit/common/physics/SegmentParticle;
    sget-object v8, Lcom/masshabit/common/physics/CollisionDetector;->sSegPoint1:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v6, v8}, Lcom/masshabit/common/physics/SegmentParticle;->getPoint1(Lcom/masshabit/common/physics/Vector2;)V

    .line 96
    sget-object v8, Lcom/masshabit/common/physics/CollisionDetector;->sSegPoint2:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v6, v8}, Lcom/masshabit/common/physics/SegmentParticle;->getPoint2(Lcom/masshabit/common/physics/Vector2;)V

    .line 98
    sget-object v8, Lcom/masshabit/common/physics/CollisionDetector;->sRayOrigin:Lcom/masshabit/common/physics/Vector2;

    sget-object v9, Lcom/masshabit/common/physics/CollisionDetector;->sRayDir:Lcom/masshabit/common/physics/Vector2;

    sget-object v10, Lcom/masshabit/common/physics/CollisionDetector;->sSegPoint1:Lcom/masshabit/common/physics/Vector2;

    sget-object v11, Lcom/masshabit/common/physics/CollisionDetector;->sSegPoint2:Lcom/masshabit/common/physics/Vector2;

    invoke-static {v8, v9, v10, v11}, Lcom/masshabit/common/physics/CollisionUtils;->testRaySegment(Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;)F

    move-result v7

    .line 100
    .restart local v7    # "t":F
    cmpl-float v8, v7, v13

    if-eqz v8, :cond_5

    cmpl-float v8, v7, v12

    if-ltz v8, :cond_5

    move v8, v7

    .line 102
    goto :goto_2

    .line 105
    .end local v6    # "segment":Lcom/masshabit/common/physics/SegmentParticle;
    .end local v7    # "t":F
    :cond_4
    instance-of v8, p0, Lcom/masshabit/common/physics/CircleParticle;

    if-eqz v8, :cond_6

    .line 107
    const-string v8, "ray cast vs circle not implemented yet"

    invoke-static {v8, v9}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 114
    :cond_5
    :goto_3
    const/high16 v8, -0x40800000    # -1.0f

    goto :goto_2

    .line 111
    :cond_6
    const-string v8, "Unknown particle type"

    invoke-static {v8, v9}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    goto :goto_3
.end method
