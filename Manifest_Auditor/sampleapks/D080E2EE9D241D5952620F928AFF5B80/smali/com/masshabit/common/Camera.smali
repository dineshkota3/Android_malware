.class public Lcom/masshabit/common/Camera;
.super Ljava/lang/Object;
.source "Camera.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Camera"

.field public static final TWEEN_TIME:F = 0.1f


# instance fields
.field protected mPos:Lcom/masshabit/common/physics/Vector2;

.field protected mTarget:Lcom/masshabit/common/physics/Vector2;

.field protected mTween:Lcom/masshabit/common/tween/VectorTween;

.field public mView:Landroid/graphics/Matrix;

.field public mViewInv:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Vector2;-><init>()V

    iput-object v0, p0, Lcom/masshabit/common/Camera;->mPos:Lcom/masshabit/common/physics/Vector2;

    .line 17
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Vector2;-><init>()V

    iput-object v0, p0, Lcom/masshabit/common/Camera;->mTarget:Lcom/masshabit/common/physics/Vector2;

    .line 18
    new-instance v0, Lcom/masshabit/common/tween/VectorTween;

    invoke-direct {v0, v1, v1}, Lcom/masshabit/common/tween/VectorTween;-><init>(Lcom/masshabit/common/tween/ITweenCompleteListener;Lcom/masshabit/common/tween/Ease$EaseBase;)V

    iput-object v0, p0, Lcom/masshabit/common/Camera;->mTween:Lcom/masshabit/common/tween/VectorTween;

    .line 20
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/masshabit/common/Camera;->mView:Landroid/graphics/Matrix;

    .line 21
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/masshabit/common/Camera;->mViewInv:Landroid/graphics/Matrix;

    .line 25
    return-void
.end method


# virtual methods
.method public calculateMatrices()V
    .locals 4

    .prologue
    .line 69
    iget-object v1, p0, Lcom/masshabit/common/Camera;->mView:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/masshabit/common/Camera;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->x:F

    neg-float v2, v2

    iget-object v3, p0, Lcom/masshabit/common/Camera;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->y:F

    neg-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 70
    iget-object v1, p0, Lcom/masshabit/common/Camera;->mView:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/masshabit/common/Camera;->mViewInv:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v0

    .line 72
    .local v0, "success":Z
    const-string v1, "failed to invert view matrix"

    invoke-static {v1, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 73
    return-void
.end method

.method public move(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 45
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 47
    .local v0, "env":Lcom/masshabit/common/Environment;
    iget-object v1, p0, Lcom/masshabit/common/Camera;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v0, Lcom/masshabit/common/Environment;->mScreenWidth:F

    div-float/2addr v2, v4

    sub-float v2, p1, v2

    iget v3, v0, Lcom/masshabit/common/Environment;->mScreenHeight:F

    div-float/2addr v3, v4

    sub-float v3, p2, v3

    invoke-virtual {v1, v2, v3}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 49
    iget-object v1, p0, Lcom/masshabit/common/Camera;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget-object v2, p0, Lcom/masshabit/common/Camera;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v3, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget v3, v3, Lcom/masshabit/common/Level;->mWidth:F

    iget v4, v0, Lcom/masshabit/common/Environment;->mScreenWidth:F

    sub-float/2addr v3, v4

    invoke-static {v2, v5, v3}, Lcom/masshabit/common/Util;->clamp(FFF)F

    move-result v2

    iput v2, v1, Lcom/masshabit/common/physics/Vector2;->x:F

    .line 50
    iget-object v1, p0, Lcom/masshabit/common/Camera;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget-object v2, p0, Lcom/masshabit/common/Camera;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v3, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget v3, v3, Lcom/masshabit/common/Level;->mHeight:F

    iget v4, v0, Lcom/masshabit/common/Environment;->mScreenHeight:F

    sub-float/2addr v3, v4

    invoke-static {v2, v5, v3}, Lcom/masshabit/common/Util;->clamp(FFF)F

    move-result v2

    iput v2, v1, Lcom/masshabit/common/physics/Vector2;->y:F

    .line 51
    return-void
.end method

.method public move(Lcom/masshabit/common/physics/Vector2;)V
    .locals 2
    .param p1, "pos"    # Lcom/masshabit/common/physics/Vector2;

    .prologue
    .line 54
    iget v0, p1, Lcom/masshabit/common/physics/Vector2;->x:F

    iget v1, p1, Lcom/masshabit/common/physics/Vector2;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/masshabit/common/Camera;->move(FF)V

    .line 55
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 38
    iget-object v0, p0, Lcom/masshabit/common/Camera;->mPos:Lcom/masshabit/common/physics/Vector2;

    const-string v1, "camera_pos_x"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    const-string v2, "camera_pos_y"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 39
    iget-object v0, p0, Lcom/masshabit/common/Camera;->mTarget:Lcom/masshabit/common/physics/Vector2;

    const-string v1, "camera_target_x"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    const-string v2, "camera_target_y"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 40
    invoke-virtual {p0}, Lcom/masshabit/common/Camera;->calculateMatrices()V

    .line 41
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Bundle;

    .prologue
    .line 29
    const-string v0, "camera_pos_x"

    iget-object v1, p0, Lcom/masshabit/common/Camera;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->x:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 30
    const-string v0, "camera_pos_y"

    iget-object v1, p0, Lcom/masshabit/common/Camera;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 32
    const-string v0, "camera_target_x"

    iget-object v1, p0, Lcom/masshabit/common/Camera;->mTarget:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->x:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 33
    const-string v0, "camera_target_y"

    iget-object v1, p0, Lcom/masshabit/common/Camera;->mTarget:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 34
    return-void
.end method

.method public setTarget(FF)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 59
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 60
    .local v0, "env":Lcom/masshabit/common/Environment;
    iget-object v1, p0, Lcom/masshabit/common/Camera;->mTarget:Lcom/masshabit/common/physics/Vector2;

    iget v2, v0, Lcom/masshabit/common/Environment;->mScreenWidth:F

    div-float/2addr v2, v4

    sub-float v2, p1, v2

    iget v3, v0, Lcom/masshabit/common/Environment;->mScreenHeight:F

    div-float/2addr v3, v4

    sub-float v3, p2, v3

    invoke-virtual {v1, v2, v3}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 61
    return-void
.end method

.method public setTarget(Lcom/masshabit/common/physics/Vector2;)V
    .locals 2
    .param p1, "pos"    # Lcom/masshabit/common/physics/Vector2;

    .prologue
    .line 64
    iget v0, p1, Lcom/masshabit/common/physics/Vector2;->x:F

    iget v1, p1, Lcom/masshabit/common/physics/Vector2;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/masshabit/common/Camera;->setTarget(FF)V

    .line 65
    return-void
.end method

.method public update(F)V
    .locals 6
    .param p1, "dt"    # F

    .prologue
    const/4 v5, 0x0

    .line 77
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 79
    .local v0, "env":Lcom/masshabit/common/Environment;
    iget-object v1, p0, Lcom/masshabit/common/Camera;->mTween:Lcom/masshabit/common/tween/VectorTween;

    iget-object v2, p0, Lcom/masshabit/common/Camera;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget-object v3, p0, Lcom/masshabit/common/Camera;->mTarget:Lcom/masshabit/common/physics/Vector2;

    const v4, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v2, v3, v4}, Lcom/masshabit/common/tween/VectorTween;->init(Lcom/masshabit/common/physics/Vector2;Lcom/masshabit/common/physics/Vector2;F)V

    .line 80
    iget-object v1, p0, Lcom/masshabit/common/Camera;->mTween:Lcom/masshabit/common/tween/VectorTween;

    invoke-virtual {v1, p1}, Lcom/masshabit/common/tween/VectorTween;->update(F)V

    .line 81
    iget-object v1, p0, Lcom/masshabit/common/Camera;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget-object v2, p0, Lcom/masshabit/common/Camera;->mTween:Lcom/masshabit/common/tween/VectorTween;

    iget-object v2, v2, Lcom/masshabit/common/tween/VectorTween;->mValue:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v1, v2}, Lcom/masshabit/common/physics/Vector2;->set(Lcom/masshabit/common/physics/Vector2;)V

    .line 84
    iget-object v1, p0, Lcom/masshabit/common/Camera;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget-object v2, p0, Lcom/masshabit/common/Camera;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v3, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget v3, v3, Lcom/masshabit/common/Level;->mWidth:F

    iget v4, v0, Lcom/masshabit/common/Environment;->mScreenWidth:F

    sub-float/2addr v3, v4

    invoke-static {v2, v5, v3}, Lcom/masshabit/common/Util;->clamp(FFF)F

    move-result v2

    iput v2, v1, Lcom/masshabit/common/physics/Vector2;->x:F

    .line 85
    iget-object v1, p0, Lcom/masshabit/common/Camera;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget-object v2, p0, Lcom/masshabit/common/Camera;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v3, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget v3, v3, Lcom/masshabit/common/Level;->mHeight:F

    iget v4, v0, Lcom/masshabit/common/Environment;->mScreenHeight:F

    sub-float/2addr v3, v4

    invoke-static {v2, v5, v3}, Lcom/masshabit/common/Util;->clamp(FFF)F

    move-result v2

    iput v2, v1, Lcom/masshabit/common/physics/Vector2;->y:F

    .line 87
    invoke-virtual {p0}, Lcom/masshabit/common/Camera;->calculateMatrices()V

    .line 88
    return-void
.end method
