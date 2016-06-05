.class public Lcom/masshabit/common/Layer;
.super Lcom/masshabit/common/entity/Entity;
.source "Layer.java"


# instance fields
.field public mEnabled:Z

.field public mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/masshabit/common/entity/Entity;-><init>()V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/masshabit/common/Layer;->mEnabled:Z

    .line 16
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 21
    iget-boolean v3, p0, Lcom/masshabit/common/Layer;->mEnabled:Z

    if-eqz v3, :cond_0

    .line 23
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 25
    .local v0, "env":Lcom/masshabit/common/Environment;
    iget-object v3, p0, Lcom/masshabit/common/Layer;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v3, v3, Lcom/masshabit/common/entity/EntityProperties;->parallaxX:Ljava/lang/Float;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/masshabit/common/Layer;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v3, v3, Lcom/masshabit/common/entity/EntityProperties;->parallaxX:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    move v1, v3

    .line 26
    .local v1, "px":F
    :goto_0
    iget-object v3, p0, Lcom/masshabit/common/Layer;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v3, v3, Lcom/masshabit/common/entity/EntityProperties;->parallaxY:Ljava/lang/Float;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/masshabit/common/Layer;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v3, v3, Lcom/masshabit/common/entity/EntityProperties;->parallaxY:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    move v2, v3

    .line 28
    .local v2, "py":F
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 29
    iget-object v3, v0, Lcom/masshabit/common/Environment;->mCamera:Lcom/masshabit/common/Camera;

    iget-object v3, v3, Lcom/masshabit/common/Camera;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->x:F

    mul-float/2addr v3, v1

    iget-object v4, v0, Lcom/masshabit/common/Environment;->mCamera:Lcom/masshabit/common/Camera;

    iget-object v4, v4, Lcom/masshabit/common/Camera;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v4, v4, Lcom/masshabit/common/physics/Vector2;->y:F

    mul-float/2addr v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 31
    invoke-virtual {p0, p1}, Lcom/masshabit/common/Layer;->drawChildren(Landroid/graphics/Canvas;)V

    .line 32
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 34
    .end local v0    # "env":Lcom/masshabit/common/Environment;
    .end local v1    # "px":F
    .end local v2    # "py":F
    :cond_0
    return-void

    .restart local v0    # "env":Lcom/masshabit/common/Environment;
    :cond_1
    move v1, v4

    .line 25
    goto :goto_0

    .restart local v1    # "px":F
    :cond_2
    move v2, v4

    .line 26
    goto :goto_1
.end method
