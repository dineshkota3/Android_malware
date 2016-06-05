.class public Lcom/gp/monolith/Monolith;
.super Landroid/app/Activity;
.source "Monolith.java"


# static fields
.field private static final ID_EXIT:I = 0x3

.field private static final ID_OPTIONS:I = 0x2

.field private static final ID_PLAY_GAME:I = 0x1


# instance fields
.field private adview:Lcom/adwo/adsdk/AdwoAdView;

.field private buttonCancel:Landroid/widget/Button;

.field private buttonOK:Landroid/widget/Button;

.field private checkboxAcceptLicense:Landroid/widget/CheckBox;

.field private game:Lcom/gp/monolith/Game;

.field private gameHudView:Landroid/view/View;

.field private gsf:Lcom/gp/monolith/GLGameSurfaceView;

.field private hsTable:Lcom/gp/monolith/HighScoreTable;

.field public licenseView:Landroid/view/View;

.field private options:Lcom/gp/monolith/Options;

.field private overlay:Lcom/gp/monolith/GameOverlay;

.field public prefs:Landroid/content/SharedPreferences;

.field public prefsEditor:Landroid/content/SharedPreferences$Editor;

.field private soundInitialized:Z

.field private textviewLicense:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/gp/monolith/Monolith;)Lcom/gp/monolith/GLGameSurfaceView;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/gp/monolith/Monolith;->gsf:Lcom/gp/monolith/GLGameSurfaceView;

    return-object v0
.end method


# virtual methods
.method public exitApplication()V
    .locals 0

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/gp/monolith/Monolith;->finish()V

    .line 250
    return-void
.end method

.method public exitNotAcceptedApplication()V
    .locals 0

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/gp/monolith/Monolith;->finish()V

    .line 255
    return-void
.end method

.method public initActivity()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 98
    iput-boolean v8, p0, Lcom/gp/monolith/Monolith;->soundInitialized:Z

    .line 99
    new-instance v3, Lcom/gp/monolith/HighScoreTable;

    const/16 v4, 0xa

    invoke-direct {v3, p0, v4}, Lcom/gp/monolith/HighScoreTable;-><init>(Landroid/app/Activity;I)V

    iput-object v3, p0, Lcom/gp/monolith/Monolith;->hsTable:Lcom/gp/monolith/HighScoreTable;

    .line 100
    new-instance v3, Lcom/gp/monolith/MonolithGameData;

    invoke-direct {v3}, Lcom/gp/monolith/MonolithGameData;-><init>()V

    iput-object v3, p0, Lcom/gp/monolith/Monolith;->game:Lcom/gp/monolith/Game;

    .line 102
    new-instance v3, Lcom/gp/monolith/Options;

    iget-object v4, p0, Lcom/gp/monolith/Monolith;->game:Lcom/gp/monolith/Game;

    iget-object v5, p0, Lcom/gp/monolith/Monolith;->prefs:Landroid/content/SharedPreferences;

    invoke-direct {v3, v4, v5}, Lcom/gp/monolith/Options;-><init>(Lcom/gp/monolith/Game;Landroid/content/SharedPreferences;)V

    iput-object v3, p0, Lcom/gp/monolith/Monolith;->options:Lcom/gp/monolith/Options;

    .line 103
    new-instance v3, Lcom/gp/monolith/GameOverlay;

    iget-object v4, p0, Lcom/gp/monolith/Monolith;->hsTable:Lcom/gp/monolith/HighScoreTable;

    iget-object v5, p0, Lcom/gp/monolith/Monolith;->options:Lcom/gp/monolith/Options;

    invoke-direct {v3, p0, v4, v5}, Lcom/gp/monolith/GameOverlay;-><init>(Landroid/content/Context;Lcom/gp/monolith/HighScoreTable;Lcom/gp/monolith/Options;)V

    iput-object v3, p0, Lcom/gp/monolith/Monolith;->overlay:Lcom/gp/monolith/GameOverlay;

    .line 104
    iget-object v3, p0, Lcom/gp/monolith/Monolith;->overlay:Lcom/gp/monolith/GameOverlay;

    invoke-virtual {v3, v7}, Lcom/gp/monolith/GameOverlay;->setVisibility(I)V

    .line 105
    iget-object v3, p0, Lcom/gp/monolith/Monolith;->overlay:Lcom/gp/monolith/GameOverlay;

    invoke-virtual {v3, v7}, Lcom/gp/monolith/GameOverlay;->setOverlayType(I)V

    .line 107
    const/high16 v3, 0x7f030000

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/gp/monolith/Monolith;->gameHudView:Landroid/view/View;

    .line 108
    new-instance v3, Lcom/gp/monolith/GLGameSurfaceView;

    iget-object v4, p0, Lcom/gp/monolith/Monolith;->overlay:Lcom/gp/monolith/GameOverlay;

    iget-object v5, p0, Lcom/gp/monolith/Monolith;->prefs:Landroid/content/SharedPreferences;

    invoke-direct {v3, p0, v4, v5}, Lcom/gp/monolith/GLGameSurfaceView;-><init>(Landroid/content/Context;Lcom/gp/monolith/GameOverlay;Landroid/content/SharedPreferences;)V

    iput-object v3, p0, Lcom/gp/monolith/Monolith;->gsf:Lcom/gp/monolith/GLGameSurfaceView;

    .line 110
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 111
    .local v1, "ll":Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 113
    invoke-direct {v3, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 111
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 127
    iget-object v3, p0, Lcom/gp/monolith/Monolith;->gsf:Lcom/gp/monolith/GLGameSurfaceView;

    invoke-virtual {p0, v3}, Lcom/gp/monolith/Monolith;->setContentView(Landroid/view/View;)V

    .line 128
    iget-object v3, p0, Lcom/gp/monolith/Monolith;->gsf:Lcom/gp/monolith/GLGameSurfaceView;

    invoke-virtual {v3, v7}, Lcom/gp/monolith/GLGameSurfaceView;->setVisibility(I)V

    .line 131
    invoke-static {v7}, Lcom/admogo/AdMogoTargeting;->setTestMode(Z)V

    .line 133
    new-instance v0, Lcom/admogo/AdMogoLayout;

    const-string v3, "3af926b57bb3457182b62ac6aea3d2b4"

    invoke-direct {v0, p0, v3}, Lcom/admogo/AdMogoLayout;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 134
    .local v0, "adMogoLayoutCode":Lcom/admogo/AdMogoLayout;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 136
    const/4 v3, -0x2

    .line 134
    invoke-direct {v2, v6, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 138
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 139
    const/16 v3, 0x30

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 140
    invoke-virtual {p0, v0, v2}, Lcom/gp/monolith/Monolith;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    iget-object v3, p0, Lcom/gp/monolith/Monolith;->overlay:Lcom/gp/monolith/GameOverlay;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 144
    invoke-direct {v4, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 142
    invoke-virtual {p0, v3, v4}, Lcom/gp/monolith/Monolith;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iget-object v3, p0, Lcom/gp/monolith/Monolith;->gameHudView:Landroid/view/View;

    .line 146
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 145
    invoke-virtual {p0, v3, v4}, Lcom/gp/monolith/Monolith;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    iget-object v3, p0, Lcom/gp/monolith/Monolith;->gameHudView:Landroid/view/View;

    const v4, 0x7f060003

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 150
    new-instance v4, Lcom/gp/monolith/Monolith$1;

    invoke-direct {v4, p0}, Lcom/gp/monolith/Monolith$1;-><init>(Lcom/gp/monolith/Monolith;)V

    .line 149
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v3, p0, Lcom/gp/monolith/Monolith;->gameHudView:Landroid/view/View;

    const v4, 0x7f060006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 166
    new-instance v4, Lcom/gp/monolith/Monolith$2;

    invoke-direct {v4, p0}, Lcom/gp/monolith/Monolith$2;-><init>(Lcom/gp/monolith/Monolith;)V

    .line 165
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v3, p0, Lcom/gp/monolith/Monolith;->gameHudView:Landroid/view/View;

    const v4, 0x7f060004

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 182
    new-instance v4, Lcom/gp/monolith/Monolith$3;

    invoke-direct {v4, p0}, Lcom/gp/monolith/Monolith$3;-><init>(Lcom/gp/monolith/Monolith;)V

    .line 181
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v3, p0, Lcom/gp/monolith/Monolith;->gameHudView:Landroid/view/View;

    const v4, 0x7f060005

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 198
    new-instance v4, Lcom/gp/monolith/Monolith$4;

    invoke-direct {v4, p0}, Lcom/gp/monolith/Monolith$4;-><init>(Lcom/gp/monolith/Monolith;)V

    .line 197
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    iput-boolean v0, p0, Lcom/gp/monolith/Monolith;->soundInitialized:Z

    .line 48
    invoke-virtual {p0, v0}, Lcom/gp/monolith/Monolith;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/gp/monolith/Monolith;->prefs:Landroid/content/SharedPreferences;

    .line 49
    iget-object v0, p0, Lcom/gp/monolith/Monolith;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/gp/monolith/Monolith;->prefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 82
    invoke-virtual {p0}, Lcom/gp/monolith/Monolith;->initActivity()V

    .line 85
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 277
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 279
    const v0, 0x7f050020

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 280
    const/4 v0, 0x2

    const v1, 0x7f050017

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 282
    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 259
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 272
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 261
    :pswitch_0
    invoke-virtual {p0}, Lcom/gp/monolith/Monolith;->playGame()V

    move v0, v1

    .line 262
    goto :goto_0

    .line 264
    :pswitch_1
    invoke-virtual {p0}, Lcom/gp/monolith/Monolith;->showOptions()V

    move v0, v1

    .line 265
    goto :goto_0

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 226
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 227
    iget-object v0, p0, Lcom/gp/monolith/Monolith;->gsf:Lcom/gp/monolith/GLGameSurfaceView;

    invoke-virtual {v0}, Lcom/gp/monolith/GLGameSurfaceView;->onPause()V

    .line 228
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 230
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 219
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 221
    iget-object v0, p0, Lcom/gp/monolith/Monolith;->gsf:Lcom/gp/monolith/GLGameSurfaceView;

    invoke-virtual {v0}, Lcom/gp/monolith/GLGameSurfaceView;->onResume()V

    .line 222
    return-void
.end method

.method public playGame()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/gp/monolith/Monolith;->gsf:Lcom/gp/monolith/GLGameSurfaceView;

    iget-object v1, p0, Lcom/gp/monolith/Monolith;->overlay:Lcom/gp/monolith/GameOverlay;

    invoke-virtual {v1}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gp/monolith/Options;->getGameType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gp/monolith/GLGameSurfaceView;->setGameType(I)V

    .line 236
    iget-object v0, p0, Lcom/gp/monolith/Monolith;->gsf:Lcom/gp/monolith/GLGameSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gp/monolith/GLGameSurfaceView;->initGame(I)V

    .line 238
    return-void
.end method

.method public showOptions()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/gp/monolith/Monolith;->gsf:Lcom/gp/monolith/GLGameSurfaceView;

    iget-object v1, p0, Lcom/gp/monolith/Monolith;->game:Lcom/gp/monolith/Game;

    invoke-interface {v1}, Lcom/gp/monolith/Game;->getGameType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gp/monolith/GLGameSurfaceView;->setGameType(I)V

    .line 243
    iget-object v0, p0, Lcom/gp/monolith/Monolith;->gsf:Lcom/gp/monolith/GLGameSurfaceView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/gp/monolith/GLGameSurfaceView;->initGame(I)V

    .line 245
    return-void
.end method

.method public startAcceptedApplication()V
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/gp/monolith/Monolith;->prefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "LicenseAccepted"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 90
    iget-object v0, p0, Lcom/gp/monolith/Monolith;->licenseView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gp/monolith/Monolith;->licenseView:Landroid/view/View;

    .line 92
    invoke-virtual {p0}, Lcom/gp/monolith/Monolith;->initActivity()V

    .line 94
    return-void
.end method
