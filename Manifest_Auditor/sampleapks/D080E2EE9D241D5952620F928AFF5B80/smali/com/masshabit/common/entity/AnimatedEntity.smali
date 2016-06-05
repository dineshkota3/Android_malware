.class public Lcom/masshabit/common/entity/AnimatedEntity;
.super Lcom/masshabit/common/entity/Entity;
.source "AnimatedEntity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AnimatedEntity"


# instance fields
.field public mAnimState:Lcom/masshabit/common/resource/AnimationState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/masshabit/common/entity/Entity;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 33
    iget-object v0, p0, Lcom/masshabit/common/entity/AnimatedEntity;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 34
    iget-object v0, p0, Lcom/masshabit/common/entity/AnimatedEntity;->mAnimState:Lcom/masshabit/common/resource/AnimationState;

    iget-object v0, v0, Lcom/masshabit/common/resource/AnimationState;->mCurrent:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 35
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 36
    invoke-virtual {p0, p1}, Lcom/masshabit/common/entity/AnimatedEntity;->drawChildren(Landroid/graphics/Canvas;)V

    .line 37
    return-void
.end method

.method public init()V
    .locals 5

    .prologue
    .line 22
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 23
    .local v0, "env":Lcom/masshabit/common/Environment;
    new-instance v2, Lcom/masshabit/common/resource/AnimationState;

    iget-object v1, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v1, v1, Lcom/masshabit/common/Level;->mAnims:Lcom/masshabit/common/resource/AnimationResourceMap;

    iget-object v3, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v3, v3, Lcom/masshabit/common/Level;->mAnims:Lcom/masshabit/common/resource/AnimationResourceMap;

    iget-object v4, p0, Lcom/masshabit/common/entity/AnimatedEntity;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v4, v4, Lcom/masshabit/common/entity/EntityProperties;->animationFile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/masshabit/common/resource/AnimationResourceMap;->load(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/masshabit/common/resource/AnimationResourceMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/masshabit/common/resource/Animation;

    invoke-direct {v2, v1}, Lcom/masshabit/common/resource/AnimationState;-><init>(Lcom/masshabit/common/resource/Animation;)V

    iput-object v2, p0, Lcom/masshabit/common/entity/AnimatedEntity;->mAnimState:Lcom/masshabit/common/resource/AnimationState;

    .line 26
    invoke-virtual {p0}, Lcom/masshabit/common/entity/AnimatedEntity;->initChildren()V

    .line 27
    return-void
.end method

.method public update(F)V
    .locals 1
    .param p1, "dt"    # F

    .prologue
    .line 42
    iget-object v0, p0, Lcom/masshabit/common/entity/AnimatedEntity;->mAnimState:Lcom/masshabit/common/resource/AnimationState;

    invoke-virtual {v0, p1}, Lcom/masshabit/common/resource/AnimationState;->update(F)V

    .line 43
    invoke-virtual {p0, p1}, Lcom/masshabit/common/entity/AnimatedEntity;->updateChildren(F)V

    .line 44
    return-void
.end method
