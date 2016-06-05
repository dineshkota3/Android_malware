.class public Lcom/masshabit/squibble/MainButtonPanel;
.super Lcom/masshabit/common/entity/Entity;
.source "MainButtonPanel.java"

# interfaces
.implements Lcom/masshabit/common/tween/ITweenCompleteListener;


# static fields
.field public static final LEFT_SIDE:F = 245.0f

.field public static final PARAM_END:F = 300.0f

.field public static final PARAM_SPEED:F = 800.0f

.field public static final PARAM_START:F = 0.0f

.field public static final STATE_MOVING:I = 0x1

.field public static final STATE_STILL:I = 0x0

.field public static final TAG:Ljava/lang/String; = "MainButtonPanel"


# instance fields
.field protected mMoveTween:Lcom/masshabit/common/tween/Tween;

.field public mPlay:Lcom/masshabit/squibble/ButtonEntity;

.field public mPlayerSelectPanel:Lcom/masshabit/squibble/PlayerSelectPanel;

.field protected mPositionParam:F

.field public mPurchase:Lcom/masshabit/squibble/ButtonEntity;

.field public mQuit:Lcom/masshabit/squibble/ButtonEntity;

.field protected mState:I

.field protected mVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/masshabit/common/entity/Entity;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public checkTap(FF)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 116
    iget-boolean v2, p0, Lcom/masshabit/squibble/MainButtonPanel;->mVisible:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/masshabit/squibble/MainButtonPanel;->mState:I

    if-nez v2, :cond_2

    .line 118
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 119
    .local v0, "env":Lcom/masshabit/common/Environment;
    iget v2, v0, Lcom/masshabit/common/Environment;->mScreenWidth:F

    const/high16 v3, 0x43750000    # 245.0f

    sub-float/2addr v2, v3

    sub-float/2addr p1, v2

    .line 121
    iget-object v2, p0, Lcom/masshabit/squibble/MainButtonPanel;->mPlay:Lcom/masshabit/squibble/ButtonEntity;

    invoke-virtual {v2, p1, p2}, Lcom/masshabit/squibble/ButtonEntity;->checkTap(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    invoke-virtual {p0, v5}, Lcom/masshabit/squibble/MainButtonPanel;->setVisible(Z)V

    .line 124
    iget-object v2, p0, Lcom/masshabit/squibble/MainButtonPanel;->mPlayerSelectPanel:Lcom/masshabit/squibble/PlayerSelectPanel;

    invoke-virtual {v2, v4}, Lcom/masshabit/squibble/PlayerSelectPanel;->setVisible(Z)V

    move v2, v4

    .line 142
    .end local v0    # "env":Lcom/masshabit/common/Environment;
    :goto_0
    return v2

    .line 127
    .restart local v0    # "env":Lcom/masshabit/common/Environment;
    :cond_0
    iget-object v2, p0, Lcom/masshabit/squibble/MainButtonPanel;->mPurchase:Lcom/masshabit/squibble/ButtonEntity;

    invoke-virtual {v2, p1, p2}, Lcom/masshabit/squibble/ButtonEntity;->checkTap(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    const-string v2, "main_menu_buy"

    invoke-static {v2}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;)V

    .line 131
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    .local v1, "i":Landroid/content/Intent;
    iget-object v2, v0, Lcom/masshabit/common/Environment;->mContext:Landroid/content/Context;

    const v3, 0x7f040001

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 133
    iget-object v2, v0, Lcom/masshabit/common/Environment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v2, v4

    .line 134
    goto :goto_0

    .line 136
    .end local v1    # "i":Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/masshabit/squibble/MainButtonPanel;->mQuit:Lcom/masshabit/squibble/ButtonEntity;

    invoke-virtual {v2, p1, p2}, Lcom/masshabit/squibble/ButtonEntity;->checkTap(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 138
    invoke-virtual {v0}, Lcom/masshabit/common/Environment;->quit()V

    move v2, v4

    .line 139
    goto :goto_0

    .end local v0    # "env":Lcom/masshabit/common/Environment;
    :cond_2
    move v2, v5

    .line 142
    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 99
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 100
    .local v0, "env":Lcom/masshabit/common/Environment;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 101
    iget v1, v0, Lcom/masshabit/common/Environment;->mScreenWidth:F

    const/high16 v2, 0x43750000    # 245.0f

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/masshabit/squibble/MainButtonPanel;->mPositionParam:F

    add-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 102
    invoke-virtual {p0, p1}, Lcom/masshabit/squibble/MainButtonPanel;->drawChildren(Landroid/graphics/Canvas;)V

    .line 103
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 104
    return-void
.end method

.method public init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 47
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 49
    .local v0, "env":Lcom/masshabit/common/Environment;
    invoke-virtual {p0}, Lcom/masshabit/squibble/MainButtonPanel;->initChildren()V

    .line 50
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/masshabit/squibble/MainButtonPanel;->mVisible:Z

    .line 51
    iput v4, p0, Lcom/masshabit/squibble/MainButtonPanel;->mState:I

    .line 53
    new-instance v1, Lcom/masshabit/common/tween/Tween;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/masshabit/common/tween/Tween;-><init>(Lcom/masshabit/common/tween/ITweenCompleteListener;Lcom/masshabit/common/tween/Ease$EaseBase;)V

    iput-object v1, p0, Lcom/masshabit/squibble/MainButtonPanel;->mMoveTween:Lcom/masshabit/common/tween/Tween;

    .line 55
    iget-object v1, p0, Lcom/masshabit/squibble/MainButtonPanel;->mMoveTween:Lcom/masshabit/common/tween/Tween;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3, v3, v2}, Lcom/masshabit/common/tween/Tween;->init(FFF)V

    .line 56
    iget-object v1, p0, Lcom/masshabit/squibble/MainButtonPanel;->mMoveTween:Lcom/masshabit/common/tween/Tween;

    iget v1, v1, Lcom/masshabit/common/tween/Tween;->mValue:F

    iput v1, p0, Lcom/masshabit/squibble/MainButtonPanel;->mPositionParam:F

    .line 58
    iget-object v1, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v1, v1, Lcom/masshabit/common/Level;->mEntityIds:Ljava/util/HashMap;

    const-string v2, "play"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/masshabit/squibble/ButtonEntity;

    iput-object v1, p0, Lcom/masshabit/squibble/MainButtonPanel;->mPlay:Lcom/masshabit/squibble/ButtonEntity;

    .line 59
    iget-object v1, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v1, v1, Lcom/masshabit/common/Level;->mEntityIds:Ljava/util/HashMap;

    const-string v2, "purchase"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/masshabit/squibble/ButtonEntity;

    iput-object v1, p0, Lcom/masshabit/squibble/MainButtonPanel;->mPurchase:Lcom/masshabit/squibble/ButtonEntity;

    .line 60
    iget-object v1, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v1, v1, Lcom/masshabit/common/Level;->mEntityIds:Ljava/util/HashMap;

    const-string v2, "quit"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/masshabit/squibble/ButtonEntity;

    iput-object v1, p0, Lcom/masshabit/squibble/MainButtonPanel;->mQuit:Lcom/masshabit/squibble/ButtonEntity;

    .line 65
    iget-object v1, p0, Lcom/masshabit/squibble/MainButtonPanel;->mPurchase:Lcom/masshabit/squibble/ButtonEntity;

    invoke-virtual {v1, v4}, Lcom/masshabit/squibble/ButtonEntity;->setVisible(Z)V

    .line 66
    iget-object v1, p0, Lcom/masshabit/squibble/MainButtonPanel;->mQuit:Lcom/masshabit/squibble/ButtonEntity;

    iget-object v1, v1, Lcom/masshabit/squibble/ButtonEntity;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/masshabit/squibble/MainButtonPanel;->mPurchase:Lcom/masshabit/squibble/ButtonEntity;

    iget-object v2, v2, Lcom/masshabit/squibble/ButtonEntity;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 67
    iget-object v1, p0, Lcom/masshabit/squibble/MainButtonPanel;->mQuit:Lcom/masshabit/squibble/ButtonEntity;

    iget-object v1, v1, Lcom/masshabit/squibble/ButtonEntity;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget-object v2, p0, Lcom/masshabit/squibble/MainButtonPanel;->mPurchase:Lcom/masshabit/squibble/ButtonEntity;

    iget-object v2, v2, Lcom/masshabit/squibble/ButtonEntity;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v1, v2}, Lcom/masshabit/common/physics/Vector2;->set(Lcom/masshabit/common/physics/Vector2;)V

    .line 69
    iget-object v1, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v1, v1, Lcom/masshabit/common/Level;->mEntityIds:Ljava/util/HashMap;

    const-string v2, "player_select_panel"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/masshabit/squibble/PlayerSelectPanel;

    iput-object v1, p0, Lcom/masshabit/squibble/MainButtonPanel;->mPlayerSelectPanel:Lcom/masshabit/squibble/PlayerSelectPanel;

    .line 70
    return-void
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/masshabit/squibble/MainButtonPanel;->mVisible:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/masshabit/squibble/MainButtonPanel;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .prologue
    const/high16 v4, 0x44480000    # 800.0f

    const/4 v3, 0x0

    const/high16 v2, 0x43960000    # 300.0f

    .line 74
    iget-boolean v0, p0, Lcom/masshabit/squibble/MainButtonPanel;->mVisible:Z

    if-ne v0, p1, :cond_0

    .line 89
    :goto_0
    return-void

    .line 77
    :cond_0
    iput-boolean p1, p0, Lcom/masshabit/squibble/MainButtonPanel;->mVisible:Z

    .line 79
    iget-boolean v0, p0, Lcom/masshabit/squibble/MainButtonPanel;->mVisible:Z

    if-nez v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/masshabit/squibble/MainButtonPanel;->mMoveTween:Lcom/masshabit/common/tween/Tween;

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v4

    invoke-virtual {v0, v3, v2, v1}, Lcom/masshabit/common/tween/Tween;->init(FFF)V

    .line 87
    :goto_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/masshabit/squibble/MainButtonPanel;->mState:I

    .line 88
    iget-object v0, p0, Lcom/masshabit/squibble/MainButtonPanel;->mMoveTween:Lcom/masshabit/common/tween/Tween;

    iget v0, v0, Lcom/masshabit/common/tween/Tween;->mValue:F

    iput v0, p0, Lcom/masshabit/squibble/MainButtonPanel;->mPositionParam:F

    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/masshabit/squibble/MainButtonPanel;->mMoveTween:Lcom/masshabit/common/tween/Tween;

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v4

    invoke-virtual {v0, v2, v3, v1}, Lcom/masshabit/common/tween/Tween;->init(FFF)V

    goto :goto_1
.end method

.method public tweenComplete(Ljava/lang/Object;)V
    .locals 1
    .param p1, "lerp"    # Ljava/lang/Object;

    .prologue
    .line 148
    const/4 v0, 0x0

    iput v0, p0, Lcom/masshabit/squibble/MainButtonPanel;->mState:I

    .line 149
    return-void
.end method

.method public update(F)V
    .locals 1
    .param p1, "dt"    # F

    .prologue
    .line 109
    iget-object v0, p0, Lcom/masshabit/squibble/MainButtonPanel;->mMoveTween:Lcom/masshabit/common/tween/Tween;

    invoke-virtual {v0, p1}, Lcom/masshabit/common/tween/Tween;->update(F)V

    .line 110
    iget-object v0, p0, Lcom/masshabit/squibble/MainButtonPanel;->mMoveTween:Lcom/masshabit/common/tween/Tween;

    iget v0, v0, Lcom/masshabit/common/tween/Tween;->mValue:F

    iput v0, p0, Lcom/masshabit/squibble/MainButtonPanel;->mPositionParam:F

    .line 111
    invoke-virtual {p0, p1}, Lcom/masshabit/squibble/MainButtonPanel;->updateChildren(F)V

    .line 112
    return-void
.end method
