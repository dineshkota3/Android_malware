.class public Lcom/gp/monolith/GLGameSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "GLGameSurfaceView.java"


# instance fields
.field private context:Landroid/content/Context;

.field private gameType:I

.field private mRenderer:Lcom/gp/monolith/GameRenderer;

.field private overlay:Lcom/gp/monolith/GameOverlay;

.field private prefs:Landroid/content/SharedPreferences;

.field private soundManager:Lcom/gp/monolith/Sound;

.field private viewType:I

.field private xval:I

.field private yval:I

.field private zx:I

.field private zy:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/gp/monolith/GameOverlay;Landroid/content/SharedPreferences;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "overlay"    # Lcom/gp/monolith/GameOverlay;
    .param p3, "preferences"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v2, 0x1

    .line 13
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 15
    iput-object p3, p0, Lcom/gp/monolith/GLGameSurfaceView;->prefs:Landroid/content/SharedPreferences;

    .line 17
    iput-object p1, p0, Lcom/gp/monolith/GLGameSurfaceView;->context:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lcom/gp/monolith/GLGameSurfaceView;->overlay:Lcom/gp/monolith/GameOverlay;

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/gp/monolith/GLGameSurfaceView;->viewType:I

    .line 21
    iput v2, p0, Lcom/gp/monolith/GLGameSurfaceView;->gameType:I

    .line 22
    iget-object v0, p0, Lcom/gp/monolith/GLGameSurfaceView;->mRenderer:Lcom/gp/monolith/GameRenderer;

    if-eqz v0, :cond_0

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gp/monolith/GLGameSurfaceView;->mRenderer:Lcom/gp/monolith/GameRenderer;

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/gp/monolith/GLGameSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 28
    new-instance v0, Lcom/gp/monolith/GameRenderer;

    invoke-direct {v0, p1, p2}, Lcom/gp/monolith/GameRenderer;-><init>(Landroid/content/Context;Lcom/gp/monolith/GameOverlay;)V

    iput-object v0, p0, Lcom/gp/monolith/GLGameSurfaceView;->mRenderer:Lcom/gp/monolith/GameRenderer;

    .line 30
    iget-object v0, p0, Lcom/gp/monolith/GLGameSurfaceView;->mRenderer:Lcom/gp/monolith/GameRenderer;

    invoke-virtual {p0, v0}, Lcom/gp/monolith/GLGameSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 31
    invoke-virtual {p0, v2}, Lcom/gp/monolith/GLGameSurfaceView;->setFocusableInTouchMode(Z)V

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/gp/monolith/GLGameSurfaceView;)Lcom/gp/monolith/GameRenderer;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/gp/monolith/GLGameSurfaceView;->mRenderer:Lcom/gp/monolith/GameRenderer;

    return-object v0
.end method

.method static synthetic access$1(Lcom/gp/monolith/GLGameSurfaceView;)I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lcom/gp/monolith/GLGameSurfaceView;->zx:I

    return v0
.end method

.method static synthetic access$2(Lcom/gp/monolith/GLGameSurfaceView;)I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lcom/gp/monolith/GLGameSurfaceView;->zy:I

    return v0
.end method


# virtual methods
.method public getOverlay()Lcom/gp/monolith/GameOverlay;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/gp/monolith/GLGameSurfaceView;->overlay:Lcom/gp/monolith/GameOverlay;

    return-object v0
.end method

.method public getRenderer()Lcom/gp/monolith/GameRenderer;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/gp/monolith/GLGameSurfaceView;->mRenderer:Lcom/gp/monolith/GameRenderer;

    return-object v0
.end method

.method public initGame(I)V
    .locals 5
    .param p1, "gameType"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    packed-switch p1, :pswitch_data_0

    .line 107
    :goto_0
    iget-object v0, p0, Lcom/gp/monolith/GLGameSurfaceView;->mRenderer:Lcom/gp/monolith/GameRenderer;

    invoke-virtual {v0}, Lcom/gp/monolith/GameRenderer;->reinit()V

    .line 108
    return-void

    .line 67
    :pswitch_0
    iget-object v0, p0, Lcom/gp/monolith/GLGameSurfaceView;->mRenderer:Lcom/gp/monolith/GameRenderer;

    invoke-virtual {v0, v3}, Lcom/gp/monolith/GameRenderer;->setGameType(I)V

    .line 68
    iget-object v0, p0, Lcom/gp/monolith/GLGameSurfaceView;->mRenderer:Lcom/gp/monolith/GameRenderer;

    invoke-virtual {v0, v2}, Lcom/gp/monolith/GameRenderer;->setViewType(I)V

    .line 69
    iget-object v0, p0, Lcom/gp/monolith/GLGameSurfaceView;->overlay:Lcom/gp/monolith/GameOverlay;

    invoke-virtual {v0, v2}, Lcom/gp/monolith/GameOverlay;->setOverlayType(I)V

    .line 71
    iget-object v0, p0, Lcom/gp/monolith/GLGameSurfaceView;->overlay:Lcom/gp/monolith/GameOverlay;

    invoke-virtual {v0, v2}, Lcom/gp/monolith/GameOverlay;->setDrawType(I)V

    goto :goto_0

    .line 75
    :pswitch_1
    iget-object v0, p0, Lcom/gp/monolith/GLGameSurfaceView;->mRenderer:Lcom/gp/monolith/GameRenderer;

    iget-object v1, p0, Lcom/gp/monolith/GLGameSurfaceView;->overlay:Lcom/gp/monolith/GameOverlay;

    invoke-virtual {v1}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gp/monolith/Options;->getGameType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gp/monolith/GameRenderer;->setGameType(I)V

    .line 76
    iget-object v0, p0, Lcom/gp/monolith/GLGameSurfaceView;->mRenderer:Lcom/gp/monolith/GameRenderer;

    invoke-virtual {v0, v3}, Lcom/gp/monolith/GameRenderer;->setViewType(I)V

    .line 77
    iget-object v0, p0, Lcom/gp/monolith/GLGameSurfaceView;->overlay:Lcom/gp/monolith/GameOverlay;

    invoke-virtual {v0}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gp/monolith/Options;->getGameType()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 95
    :goto_1
    iget-object v0, p0, Lcom/gp/monolith/GLGameSurfaceView;->overlay:Lcom/gp/monolith/GameOverlay;

    invoke-virtual {v0, v2}, Lcom/gp/monolith/GameOverlay;->setDrawType(I)V

    goto :goto_0

    .line 80
    :pswitch_2
    iget-object v0, p0, Lcom/gp/monolith/GLGameSurfaceView;->overlay:Lcom/gp/monolith/GameOverlay;

    invoke-virtual {v0, v3}, Lcom/gp/monolith/GameOverlay;->setOverlayType(I)V

    .line 81
    iget-object v0, p0, Lcom/gp/monolith/GLGameSurfaceView;->overlay:Lcom/gp/monolith/GameOverlay;

    invoke-virtual {v0}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v0

    new-instance v1, Lcom/gp/monolith/SimpleGameData;

    invoke-direct {v1}, Lcom/gp/monolith/SimpleGameData;-><init>()V

    invoke-virtual {v0, v1}, Lcom/gp/monolith/Options;->setGame(Lcom/gp/monolith/Game;)V

    .line 82
    iget-object v0, p0, Lcom/gp/monolith/GLGameSurfaceView;->overlay:Lcom/gp/monolith/GameOverlay;

    invoke-virtual {v0}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gp/monolith/Options;->getGame()Lcom/gp/monolith/Game;

    move-result-object v0

    iget-object v1, p0, Lcom/gp/monolith/GLGameSurfaceView;->overlay:Lcom/gp/monolith/GameOverlay;

    invoke-virtual {v1}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gp/monolith/Options;->getStartingLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/gp/monolith/Game;->setLevel(I)V

    .line 83
    iget-object v0, p0, Lcom/gp/monolith/GLGameSurfaceView;->overlay:Lcom/gp/monolith/GameOverlay;

    iget-object v1, p0, Lcom/gp/monolith/GLGameSurfaceView;->overlay:Lcom/gp/monolith/GameOverlay;

    invoke-virtual {v1}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gp/monolith/Options;->getGame()Lcom/gp/monolith/Game;

    move-result-object v1

    invoke-interface {v1}, Lcom/gp/monolith/Game;->getLevelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gp/monolith/GameOverlay;->setLevel(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/gp/monolith/GLGameSurfaceView;->overlay:Lcom/gp/monolith/GameOverlay;

    invoke-virtual {v0}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gp/monolith/Options;->getGame()Lcom/gp/monolith/Game;

    move-result-object v0

    iget-object v1, p0, Lcom/gp/monolith/GLGameSurfaceView;->overlay:Lcom/gp/monolith/GameOverlay;

    invoke-virtual {v1}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gp/monolith/Options;->getStartingLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/gp/monolith/Game;->initGame(I)V

    goto :goto_1

    .line 87
    :pswitch_3
    iget-object v0, p0, Lcom/gp/monolith/GLGameSurfaceView;->overlay:Lcom/gp/monolith/GameOverlay;

    invoke-virtual {v0, v4}, Lcom/gp/monolith/GameOverlay;->setOverlayType(I)V

    .line 88
    iget-object v0, p0, Lcom/gp/monolith/GLGameSurfaceView;->overlay:Lcom/gp/monolith/GameOverlay;

    invoke-virtual {v0}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v0

    new-instance v1, Lcom/gp/monolith/MonolithGameData;

    invoke-direct {v1}, Lcom/gp/monolith/MonolithGameData;-><init>()V

    invoke-virtual {v0, v1}, Lcom/gp/monolith/Options;->setGame(Lcom/gp/monolith/Game;)V

    .line 89
    iget-object v0, p0, Lcom/gp/monolith/GLGameSurfaceView;->overlay:Lcom/gp/monolith/GameOverlay;

    invoke-virtual {v0}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gp/monolith/Options;->getGame()Lcom/gp/monolith/Game;

    move-result-object v0

    iget-object v1, p0, Lcom/gp/monolith/GLGameSurfaceView;->overlay:Lcom/gp/monolith/GameOverlay;

    invoke-virtual {v1}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gp/monolith/Options;->getStartingLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/gp/monolith/Game;->setLevel(I)V

    .line 90
    iget-object v0, p0, Lcom/gp/monolith/GLGameSurfaceView;->overlay:Lcom/gp/monolith/GameOverlay;

    iget-object v1, p0, Lcom/gp/monolith/GLGameSurfaceView;->overlay:Lcom/gp/monolith/GameOverlay;

    invoke-virtual {v1}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gp/monolith/Options;->getGame()Lcom/gp/monolith/Game;

    move-result-object v1

    invoke-interface {v1}, Lcom/gp/monolith/Game;->getLevelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gp/monolith/GameOverlay;->setLevel(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/gp/monolith/GLGameSurfaceView;->overlay:Lcom/gp/monolith/GameOverlay;

    invoke-virtual {v0}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gp/monolith/Options;->getGame()Lcom/gp/monolith/Game;

    move-result-object v0

    iget-object v1, p0, Lcom/gp/monolith/GLGameSurfaceView;->overlay:Lcom/gp/monolith/GameOverlay;

    invoke-virtual {v1}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gp/monolith/Options;->getStartingLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/gp/monolith/Game;->initGame(I)V

    goto/16 :goto_1

    .line 98
    :pswitch_4
    iget-object v0, p0, Lcom/gp/monolith/GLGameSurfaceView;->mRenderer:Lcom/gp/monolith/GameRenderer;

    invoke-virtual {v0, v3}, Lcom/gp/monolith/GameRenderer;->setGameType(I)V

    .line 99
    iget-object v0, p0, Lcom/gp/monolith/GLGameSurfaceView;->mRenderer:Lcom/gp/monolith/GameRenderer;

    invoke-virtual {v0, v4}, Lcom/gp/monolith/GameRenderer;->setViewType(I)V

    .line 100
    iget-object v0, p0, Lcom/gp/monolith/GLGameSurfaceView;->overlay:Lcom/gp/monolith/GameOverlay;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/gp/monolith/GameOverlay;->setOverlayType(I)V

    .line 101
    iget-object v0, p0, Lcom/gp/monolith/GLGameSurfaceView;->overlay:Lcom/gp/monolith/GameOverlay;

    invoke-virtual {v0, v4}, Lcom/gp/monolith/GameOverlay;->setDrawType(I)V

    .line 102
    iget-object v0, p0, Lcom/gp/monolith/GLGameSurfaceView;->overlay:Lcom/gp/monolith/GameOverlay;

    invoke-virtual {v0}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/gp/monolith/Options;->setSelectionStatus(I)V

    goto/16 :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch

    .line 77
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "msg"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 131
    const/4 v0, 0x0

    .line 133
    .local v0, "handled":Z
    const/16 v1, 0x14

    if-eq p1, v1, :cond_0

    const/16 v1, 0x36

    if-eq p1, v1, :cond_0

    const/16 v1, 0x34

    if-eq p1, v1, :cond_0

    const/16 v1, 0x1f

    if-ne p1, v1, :cond_1

    .line 137
    :cond_0
    :try_start_0
    new-instance v1, Lcom/gp/monolith/GLGameSurfaceView$1;

    invoke-direct {v1, p0}, Lcom/gp/monolith/GLGameSurfaceView$1;-><init>(Lcom/gp/monolith/GLGameSurfaceView;)V

    invoke-virtual {p0, v1}, Lcom/gp/monolith/GLGameSurfaceView;->queueEvent(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    move v1, v2

    .line 209
    :goto_1
    return v1

    .line 150
    :cond_1
    const/16 v1, 0x15

    if-eq p1, v1, :cond_2

    const/16 v1, 0x1d

    if-eq p1, v1, :cond_2

    const/16 v1, 0x2f

    if-ne p1, v1, :cond_3

    .line 154
    :cond_2
    :try_start_1
    new-instance v1, Lcom/gp/monolith/GLGameSurfaceView$2;

    invoke-direct {v1, p0}, Lcom/gp/monolith/GLGameSurfaceView$2;-><init>(Lcom/gp/monolith/GLGameSurfaceView;)V

    invoke-virtual {p0, v1}, Lcom/gp/monolith/GLGameSurfaceView;->queueEvent(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    move v1, v2

    .line 167
    goto :goto_1

    .line 169
    :cond_3
    const/16 v1, 0x16

    if-eq p1, v1, :cond_4

    const/16 v1, 0x20

    if-eq p1, v1, :cond_4

    const/16 v1, 0x22

    if-ne p1, v1, :cond_5

    .line 174
    :cond_4
    :try_start_2
    new-instance v1, Lcom/gp/monolith/GLGameSurfaceView$3;

    invoke-direct {v1, p0}, Lcom/gp/monolith/GLGameSurfaceView$3;-><init>(Lcom/gp/monolith/GLGameSurfaceView;)V

    invoke-virtual {p0, v1}, Lcom/gp/monolith/GLGameSurfaceView;->queueEvent(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    move v1, v2

    .line 184
    goto :goto_1

    .line 186
    :cond_5
    const/16 v1, 0x3e

    if-eq p1, v1, :cond_6

    const/16 v1, 0x13

    if-eq p1, v1, :cond_6

    const/16 v1, 0x28

    if-ne p1, v1, :cond_7

    .line 190
    :cond_6
    :try_start_3
    new-instance v1, Lcom/gp/monolith/GLGameSurfaceView$4;

    invoke-direct {v1, p0}, Lcom/gp/monolith/GLGameSurfaceView$4;-><init>(Lcom/gp/monolith/GLGameSurfaceView;)V

    invoke-virtual {p0, v1}, Lcom/gp/monolith/GLGameSurfaceView;->queueEvent(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    move v1, v2

    .line 200
    goto :goto_1

    .line 209
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1

    .line 196
    :catch_0
    move-exception v1

    goto :goto_4

    .line 180
    :catch_1
    move-exception v1

    goto :goto_3

    .line 163
    :catch_2
    move-exception v1

    goto :goto_2

    .line 144
    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 43
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 45
    iget-object v0, p0, Lcom/gp/monolith/GLGameSurfaceView;->mRenderer:Lcom/gp/monolith/GameRenderer;

    invoke-virtual {v0}, Lcom/gp/monolith/GameRenderer;->onPause()V

    .line 46
    iget v0, p0, Lcom/gp/monolith/GLGameSurfaceView;->gameType:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/gp/monolith/GLGameSurfaceView;->gameType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/gp/monolith/GLGameSurfaceView;->getOverlay()Lcom/gp/monolith/GameOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gp/monolith/Options;->getGame()Lcom/gp/monolith/Game;

    move-result-object v0

    iget-object v1, p0, Lcom/gp/monolith/GLGameSurfaceView;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, v1}, Lcom/gp/monolith/Game;->saveGame(Landroid/content/SharedPreferences;)V

    .line 51
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 56
    iget-object v0, p0, Lcom/gp/monolith/GLGameSurfaceView;->mRenderer:Lcom/gp/monolith/GameRenderer;

    invoke-virtual {v0}, Lcom/gp/monolith/GameRenderer;->onResume()V

    .line 59
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v6, 0x14

    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 221
    .local v0, "action":I
    const/4 v1, 0x0

    .line 222
    .local v1, "handled":Z
    if-nez v0, :cond_0

    .line 224
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/gp/monolith/GLGameSurfaceView;->xval:I

    .line 225
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/gp/monolith/GLGameSurfaceView;->yval:I

    move v4, v7

    .line 273
    :goto_0
    return v4

    .line 230
    :cond_0
    if-ne v0, v7, :cond_2

    .line 232
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 233
    .local v2, "xnow":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 234
    .local v3, "ynow":I
    if-ge v2, v6, :cond_1

    if-ge v3, v6, :cond_1

    .line 236
    iput v5, p0, Lcom/gp/monolith/GLGameSurfaceView;->zx:I

    .line 237
    iput v5, p0, Lcom/gp/monolith/GLGameSurfaceView;->zy:I

    .line 240
    :try_start_0
    new-instance v4, Lcom/gp/monolith/GLGameSurfaceView$5;

    invoke-direct {v4, p0}, Lcom/gp/monolith/GLGameSurfaceView$5;-><init>(Lcom/gp/monolith/GLGameSurfaceView;)V

    invoke-virtual {p0, v4}, Lcom/gp/monolith/GLGameSurfaceView;->queueEvent(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_1
    move v4, v7

    .line 251
    goto :goto_0

    .line 253
    .end local v2    # "xnow":I
    .end local v3    # "ynow":I
    :cond_2
    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    .line 255
    iget v4, p0, Lcom/gp/monolith/GLGameSurfaceView;->zx:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    iget v6, p0, Lcom/gp/monolith/GLGameSurfaceView;->xval:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p0, Lcom/gp/monolith/GLGameSurfaceView;->zx:I

    .line 256
    iget v4, p0, Lcom/gp/monolith/GLGameSurfaceView;->zy:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iget v6, p0, Lcom/gp/monolith/GLGameSurfaceView;->yval:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p0, Lcom/gp/monolith/GLGameSurfaceView;->zy:I

    .line 257
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/gp/monolith/GLGameSurfaceView;->xval:I

    .line 258
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/gp/monolith/GLGameSurfaceView;->yval:I

    .line 261
    :try_start_1
    new-instance v4, Lcom/gp/monolith/GLGameSurfaceView$6;

    invoke-direct {v4, p0}, Lcom/gp/monolith/GLGameSurfaceView$6;-><init>(Lcom/gp/monolith/GLGameSurfaceView;)V

    invoke-virtual {p0, v4}, Lcom/gp/monolith/GLGameSurfaceView;->queueEvent(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    move v4, v7

    .line 270
    goto :goto_0

    .line 273
    :cond_3
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    .line 266
    :catch_0
    move-exception v4

    goto :goto_2

    .line 246
    .restart local v2    # "xnow":I
    .restart local v3    # "ynow":I
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public setGameType(I)V
    .locals 0
    .param p1, "gameType"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/gp/monolith/GLGameSurfaceView;->gameType:I

    .line 127
    return-void
.end method

.method public setViewType(I)V
    .locals 0
    .param p1, "viewType"    # I

    .prologue
    .line 119
    iput p1, p0, Lcom/gp/monolith/GLGameSurfaceView;->viewType:I

    .line 122
    return-void
.end method

.method public stopMusic()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method
