.class public Lcom/masshabit/squibble/Game;
.super Ljava/lang/Object;
.source "Game.java"

# interfaces
.implements Lcom/masshabit/common/tween/ITweenCompleteListener;
.implements Lcom/masshabit/common/Delay$IDelayCompleteListener;
.implements Lcom/masshabit/common/Environment$IMutedChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/masshabit/squibble/Game$ShowCommandEventPool;,
        Lcom/masshabit/squibble/Game$ShowCommand;
    }
.end annotation


# static fields
.field public static final DIALOG_BACK:I = 0x1

.field public static final DIALOG_CONFIRM_DELETE:I = 0x2

.field public static final DIALOG_ENTER_NAME:I = 0x3

.field public static final DIALOG_LICENSE_ERROR:I = 0x5

.field public static final DIALOG_WARP:I = 0x4

.field public static final FADE_TIME:F = 0.5f

.field public static final INITIAL_FADE_TIME:F = 1.0f

.field public static final MENU_DRAW_PHYSICS_ID:I = 0xb

.field public static final MENU_MUTE_ID:I = 0x1

.field public static final MENU_RETRY_ID:I = 0x2

.field public static final SCREEN_CHECKING_LICENSE:I = 0xa

.field public static final SCREEN_CREDITS:I = 0x3c

.field public static final SCREEN_GAME:I = 0x28

.field public static final SCREEN_HOW_TO:I = 0x50

.field public static final SCREEN_MENU:I = 0x14

.field public static final SCREEN_SPLASH:I = 0x0

.field public static final SCREEN_STORY:I = 0x46

.field public static final SCREEN_UPSELL:I = 0x32

.field public static final SCREEN_WORLD_MAP:I = 0x1e

.field public static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "squibble"

.field public static final STATE_LOADING:I = 0x3

.field public static final STATE_LOAD_COMPLETE:I = 0x5

.field public static final STATE_LOAD_FAILED:I = 0x6

.field public static final STATE_PRELOAD:I = 0x4

.field public static final STATE_RUNNING:I = 0x0

.field public static final STATE_TRANSITION_DELAY:I = 0x1

.field public static final STATE_TRANSITION_IN:I = 0x7

.field public static final STATE_TRANSITION_OUT:I = 0x2

.field public static final TAG:Ljava/lang/String; = "Game"


# instance fields
.field public mCurrentScreen:I

.field protected final mFadeDelay:Lcom/masshabit/common/Delay;

.field protected final mFadeTween:Lcom/masshabit/common/tween/Tween;

.field protected mLoadingImage:Landroid/graphics/Bitmap;

.field protected mLoadingThread:Ljava/lang/Thread;

.field public mScreen:Lcom/masshabit/squibble/Screen;

.field protected mScreenStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/masshabit/squibble/Game$ShowCommand;",
            ">;"
        }
    .end annotation
.end field

.field protected mShowCommandPool:Lcom/masshabit/squibble/Game$ShowCommandEventPool;

.field protected mShowLoading:Z

.field public mState:I

.field public mTargetScreen:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput v0, p0, Lcom/masshabit/squibble/Game;->mState:I

    .line 75
    iput v0, p0, Lcom/masshabit/squibble/Game;->mTargetScreen:I

    .line 76
    iput v0, p0, Lcom/masshabit/squibble/Game;->mCurrentScreen:I

    .line 103
    new-instance v0, Lcom/masshabit/squibble/Game$ShowCommandEventPool;

    invoke-direct {v0, p0, v1}, Lcom/masshabit/squibble/Game$ShowCommandEventPool;-><init>(Lcom/masshabit/squibble/Game;I)V

    iput-object v0, p0, Lcom/masshabit/squibble/Game;->mShowCommandPool:Lcom/masshabit/squibble/Game$ShowCommandEventPool;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/masshabit/squibble/Game;->mScreenStack:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Lcom/masshabit/common/tween/Tween;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/masshabit/common/tween/Tween;-><init>(Lcom/masshabit/common/tween/ITweenCompleteListener;Lcom/masshabit/common/tween/Ease$EaseBase;)V

    iput-object v0, p0, Lcom/masshabit/squibble/Game;->mFadeTween:Lcom/masshabit/common/tween/Tween;

    .line 107
    new-instance v0, Lcom/masshabit/common/Delay;

    invoke-direct {v0, p0}, Lcom/masshabit/common/Delay;-><init>(Lcom/masshabit/common/Delay$IDelayCompleteListener;)V

    iput-object v0, p0, Lcom/masshabit/squibble/Game;->mFadeDelay:Lcom/masshabit/common/Delay;

    .line 115
    return-void
.end method


# virtual methods
.method public changeScreen(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/masshabit/squibble/Game;->changeScreen(IF)V

    .line 172
    return-void
.end method

.method public changeScreen(IF)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "delay"    # F

    .prologue
    .line 162
    iget v0, p0, Lcom/masshabit/squibble/Game;->mState:I

    if-nez v0, :cond_0

    .line 164
    invoke-virtual {p0, p1, p2}, Lcom/masshabit/squibble/Game;->pushScreen(IF)V

    .line 165
    invoke-virtual {p0}, Lcom/masshabit/squibble/Game;->nextScreen()V

    .line 167
    :cond_0
    return-void
.end method

.method public delayComplete(Lcom/masshabit/common/Delay;)V
    .locals 4
    .param p1, "d"    # Lcom/masshabit/common/Delay;

    .prologue
    .line 120
    const-string v0, "Game"

    const-string v1, "STATE_TRANSITION_OUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v0, 0x2

    iput v0, p0, Lcom/masshabit/squibble/Game;->mState:I

    .line 122
    iget-object v0, p0, Lcom/masshabit/squibble/Game;->mFadeTween:Lcom/masshabit/common/tween/Tween;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2, v3}, Lcom/masshabit/common/tween/Tween;->init(FFF)V

    .line 123
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    const/high16 v3, -0x1000000

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 420
    sget-object v6, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 423
    .local v6, "env":Lcom/masshabit/common/Environment;
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 425
    iget v0, p0, Lcom/masshabit/squibble/Game;->mState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 427
    iget-boolean v0, p0, Lcom/masshabit/squibble/Game;->mShowLoading:Z

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/masshabit/squibble/Game;->mLoadingImage:Landroid/graphics/Bitmap;

    iget v1, v6, Lcom/masshabit/common/Environment;->mScreenWidth:F

    iget-object v2, p0, Lcom/masshabit/squibble/Game;->mLoadingImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    iget v2, v6, Lcom/masshabit/common/Environment;->mScreenHeight:F

    iget-object v3, p0, Lcom/masshabit/squibble/Game;->mLoadingImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/masshabit/squibble/Game;->mScreen:Lcom/masshabit/squibble/Screen;

    invoke-virtual {v0, p1}, Lcom/masshabit/squibble/Screen;->draw(Landroid/graphics/Canvas;)V

    .line 439
    iget-boolean v0, v6, Lcom/masshabit/common/Environment;->mDrawPhysics:Z

    if-eqz v0, :cond_2

    .line 441
    iget-object v0, v6, Lcom/masshabit/common/Environment;->mCamera:Lcom/masshabit/common/Camera;

    iget-object v0, v0, Lcom/masshabit/common/Camera;->mView:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 442
    iget-object v0, v6, Lcom/masshabit/common/Environment;->mDebugPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 443
    iget-object v0, v6, Lcom/masshabit/common/Environment;->mPhysics:Lcom/masshabit/common/physics/Physics;

    iget-object v2, v6, Lcom/masshabit/common/Environment;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v2}, Lcom/masshabit/common/physics/Physics;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 447
    :cond_2
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 450
    iget v0, p0, Lcom/masshabit/squibble/Game;->mState:I

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, v6, Lcom/masshabit/common/Environment;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 453
    iget-object v0, v6, Lcom/masshabit/common/Environment;->mDebugPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 455
    iget-object v0, v6, Lcom/masshabit/common/Environment;->mDebugPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x437f0000    # 255.0f

    iget-object v3, p0, Lcom/masshabit/squibble/Game;->mFadeTween:Lcom/masshabit/common/tween/Tween;

    iget v3, v3, Lcom/masshabit/common/tween/Tween;->mValue:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 456
    iget v3, v6, Lcom/masshabit/common/Environment;->mScreenWidth:F

    iget v4, v6, Lcom/masshabit/common/Environment;->mScreenHeight:F

    iget-object v5, v6, Lcom/masshabit/common/Environment;->mDebugPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public init()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x1e

    const/16 v8, 0xa

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 273
    :try_start_0
    sget-object v3, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    iget-object v3, v3, Lcom/masshabit/common/Environment;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "common/loading.png"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/masshabit/squibble/Game;->mLoadingImage:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_0
    sget-object v1, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 282
    .local v1, "env":Lcom/masshabit/common/Environment;
    invoke-virtual {v1, p0}, Lcom/masshabit/common/Environment;->setMutedChangedListener(Lcom/masshabit/common/Environment$IMutedChangedListener;)V

    .line 283
    iget-object v3, v1, Lcom/masshabit/common/Environment;->mContext:Landroid/content/Context;

    const-string v4, "squibble"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "muted"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/masshabit/common/Environment;->setMuted(Z)V

    .line 285
    iput v6, p0, Lcom/masshabit/squibble/Game;->mTargetScreen:I

    .line 286
    iput v6, p0, Lcom/masshabit/squibble/Game;->mCurrentScreen:I

    .line 288
    const/4 v3, 0x7

    iput v3, p0, Lcom/masshabit/squibble/Game;->mState:I

    .line 289
    iput-boolean v6, p0, Lcom/masshabit/squibble/Game;->mShowLoading:Z

    .line 291
    iget-object v3, v1, Lcom/masshabit/common/Environment;->mBundle:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    .line 293
    iget-object v3, v1, Lcom/masshabit/common/Environment;->mBundle:Landroid/os/Bundle;

    const-string v4, "screen_shared_args"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/masshabit/squibble/Screen;->sSharedArgs:Ljava/lang/String;

    .line 295
    iget-object v3, v1, Lcom/masshabit/common/Environment;->mBundle:Landroid/os/Bundle;

    const-string v4, "game_current_screen"

    iget v5, p0, Lcom/masshabit/squibble/Game;->mCurrentScreen:I

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/masshabit/squibble/Game;->mCurrentScreen:I

    .line 296
    iget v3, p0, Lcom/masshabit/squibble/Game;->mCurrentScreen:I

    iput v3, p0, Lcom/masshabit/squibble/Game;->mTargetScreen:I

    .line 297
    iget-object v3, v1, Lcom/masshabit/common/Environment;->mBundle:Landroid/os/Bundle;

    const-string v4, "game_show_loading"

    iget-boolean v5, p0, Lcom/masshabit/squibble/Game;->mShowLoading:Z

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/masshabit/squibble/Game;->mShowLoading:Z

    .line 300
    iget v3, p0, Lcom/masshabit/squibble/Game;->mCurrentScreen:I

    if-eq v3, v9, :cond_0

    iget v3, p0, Lcom/masshabit/squibble/Game;->mCurrentScreen:I

    const/16 v4, 0x28

    if-ne v3, v4, :cond_3

    .line 303
    :cond_0
    invoke-static {}, Lcom/masshabit/common/License;->instance()Lcom/masshabit/common/License;

    move-result-object v2

    .line 304
    .local v2, "lic":Lcom/masshabit/common/License;
    sget-boolean v3, Lcom/masshabit/common/Globals;->PAID_BUILD:Z

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/masshabit/common/License;->notReadyOrBad()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 306
    const-string v3, "Game"

    const-string v4, "Restored game going to license checking screen"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget v3, p0, Lcom/masshabit/squibble/Game;->mCurrentScreen:I

    invoke-virtual {p0, v3}, Lcom/masshabit/squibble/Game;->pushScreen(I)V

    .line 310
    iput v8, p0, Lcom/masshabit/squibble/Game;->mTargetScreen:I

    .line 311
    iput v8, p0, Lcom/masshabit/squibble/Game;->mCurrentScreen:I

    .line 319
    :goto_1
    iget v3, p0, Lcom/masshabit/squibble/Game;->mCurrentScreen:I

    if-ne v3, v9, :cond_1

    .line 322
    iput-object v10, v1, Lcom/masshabit/common/Environment;->mBundle:Landroid/os/Bundle;

    .line 341
    .end local v2    # "lic":Lcom/masshabit/common/License;
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/masshabit/squibble/Game;->mFadeTween:Lcom/masshabit/common/tween/Tween;

    const/4 v4, 0x0

    invoke-virtual {v3, v7, v4, v7}, Lcom/masshabit/common/tween/Tween;->init(FFF)V

    .line 342
    iget v3, p0, Lcom/masshabit/squibble/Game;->mCurrentScreen:I

    invoke-virtual {p0, v3}, Lcom/masshabit/squibble/Game;->newScreen(I)Lcom/masshabit/squibble/Screen;

    move-result-object v3

    iput-object v3, p0, Lcom/masshabit/squibble/Game;->mScreen:Lcom/masshabit/squibble/Screen;

    .line 343
    iget-object v3, p0, Lcom/masshabit/squibble/Game;->mScreen:Lcom/masshabit/squibble/Screen;

    invoke-virtual {v3}, Lcom/masshabit/squibble/Screen;->init()V

    .line 344
    return-void

    .line 275
    .end local v1    # "env":Lcom/masshabit/common/Environment;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 277
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 315
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "env":Lcom/masshabit/common/Environment;
    .restart local v2    # "lic":Lcom/masshabit/common/License;
    :cond_2
    const-string v3, "Game"

    const-string v4, "Restored game going directly to destination screen"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-static {}, Lcom/masshabit/common/Globals;->init()V

    goto :goto_1

    .line 332
    .end local v2    # "lic":Lcom/masshabit/common/License;
    :cond_3
    iput v6, p0, Lcom/masshabit/squibble/Game;->mCurrentScreen:I

    .line 333
    iput v6, p0, Lcom/masshabit/squibble/Game;->mTargetScreen:I

    .line 334
    iput-boolean v6, p0, Lcom/masshabit/squibble/Game;->mShowLoading:Z

    .line 337
    iput-object v10, v1, Lcom/masshabit/common/Environment;->mBundle:Landroid/os/Bundle;

    goto :goto_2
.end method

.method public mutedChanged(Z)V
    .locals 6
    .param p1, "muted"    # Z

    .prologue
    .line 468
    sget-object v1, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 469
    .local v1, "env":Lcom/masshabit/common/Environment;
    iget-object v3, v1, Lcom/masshabit/common/Environment;->mContext:Landroid/content/Context;

    const-string v4, "squibble"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 470
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 471
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "muted"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 472
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 475
    iget-object v3, p0, Lcom/masshabit/squibble/Game;->mScreen:Lcom/masshabit/squibble/Screen;

    if-eqz v3, :cond_0

    .line 477
    iget-object v3, p0, Lcom/masshabit/squibble/Game;->mScreen:Lcom/masshabit/squibble/Screen;

    invoke-virtual {v3, p1}, Lcom/masshabit/squibble/Screen;->onMutedChanged(Z)V

    .line 479
    :cond_0
    return-void
.end method

.method protected newScreen(I)Lcom/masshabit/squibble/Screen;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, "screen":Lcom/masshabit/squibble/Screen;
    sparse-switch p1, :sswitch_data_0

    .line 263
    :goto_0
    return-object v0

    .line 237
    :sswitch_0
    new-instance v0, Lcom/masshabit/squibble/SplashScreen;

    .end local v0    # "screen":Lcom/masshabit/squibble/Screen;
    invoke-direct {v0}, Lcom/masshabit/squibble/SplashScreen;-><init>()V

    .line 238
    .restart local v0    # "screen":Lcom/masshabit/squibble/Screen;
    goto :goto_0

    .line 240
    :sswitch_1
    new-instance v0, Lcom/masshabit/squibble/CheckingLicenseScreen;

    .end local v0    # "screen":Lcom/masshabit/squibble/Screen;
    invoke-direct {v0}, Lcom/masshabit/squibble/CheckingLicenseScreen;-><init>()V

    .line 241
    .restart local v0    # "screen":Lcom/masshabit/squibble/Screen;
    goto :goto_0

    .line 243
    :sswitch_2
    new-instance v0, Lcom/masshabit/squibble/MenuScreen;

    .end local v0    # "screen":Lcom/masshabit/squibble/Screen;
    invoke-direct {v0}, Lcom/masshabit/squibble/MenuScreen;-><init>()V

    .line 244
    .restart local v0    # "screen":Lcom/masshabit/squibble/Screen;
    goto :goto_0

    .line 246
    :sswitch_3
    new-instance v0, Lcom/masshabit/squibble/WorldMapScreen;

    .end local v0    # "screen":Lcom/masshabit/squibble/Screen;
    invoke-direct {v0}, Lcom/masshabit/squibble/WorldMapScreen;-><init>()V

    .line 247
    .restart local v0    # "screen":Lcom/masshabit/squibble/Screen;
    goto :goto_0

    .line 249
    :sswitch_4
    new-instance v0, Lcom/masshabit/squibble/GameScreen;

    .end local v0    # "screen":Lcom/masshabit/squibble/Screen;
    invoke-direct {v0}, Lcom/masshabit/squibble/GameScreen;-><init>()V

    .line 250
    .restart local v0    # "screen":Lcom/masshabit/squibble/Screen;
    goto :goto_0

    .line 252
    :sswitch_5
    new-instance v0, Lcom/masshabit/squibble/UpsellScreen;

    .end local v0    # "screen":Lcom/masshabit/squibble/Screen;
    invoke-direct {v0}, Lcom/masshabit/squibble/UpsellScreen;-><init>()V

    .line 253
    .restart local v0    # "screen":Lcom/masshabit/squibble/Screen;
    goto :goto_0

    .line 255
    :sswitch_6
    new-instance v0, Lcom/masshabit/squibble/StoryScreen;

    .end local v0    # "screen":Lcom/masshabit/squibble/Screen;
    invoke-direct {v0}, Lcom/masshabit/squibble/StoryScreen;-><init>()V

    .line 256
    .restart local v0    # "screen":Lcom/masshabit/squibble/Screen;
    goto :goto_0

    .line 258
    :sswitch_7
    new-instance v0, Lcom/masshabit/squibble/CreditsScreen;

    .end local v0    # "screen":Lcom/masshabit/squibble/Screen;
    invoke-direct {v0}, Lcom/masshabit/squibble/CreditsScreen;-><init>()V

    .line 259
    .restart local v0    # "screen":Lcom/masshabit/squibble/Screen;
    goto :goto_0

    .line 261
    :sswitch_8
    new-instance v0, Lcom/masshabit/squibble/HowToScreen;

    .end local v0    # "screen":Lcom/masshabit/squibble/Screen;
    invoke-direct {v0}, Lcom/masshabit/squibble/HowToScreen;-><init>()V

    .restart local v0    # "screen":Lcom/masshabit/squibble/Screen;
    goto :goto_0

    .line 234
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x14 -> :sswitch_2
        0x1e -> :sswitch_3
        0x28 -> :sswitch_4
        0x32 -> :sswitch_5
        0x3c -> :sswitch_7
        0x46 -> :sswitch_6
        0x50 -> :sswitch_8
    .end sparse-switch
.end method

.method public nextScreen()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "Game"

    .line 127
    iget v1, p0, Lcom/masshabit/squibble/Game;->mState:I

    if-nez v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/masshabit/squibble/Game;->mScreenStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/masshabit/squibble/Game;->mScreenStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/masshabit/squibble/Game$ShowCommand;

    .line 131
    .local v0, "c":Lcom/masshabit/squibble/Game$ShowCommand;
    iget v1, v0, Lcom/masshabit/squibble/Game$ShowCommand;->mScreenType:I

    iput v1, p0, Lcom/masshabit/squibble/Game;->mTargetScreen:I

    .line 132
    iget v1, v0, Lcom/masshabit/squibble/Game$ShowCommand;->mDelay:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1

    .line 134
    const-string v1, "Game"

    const-string v1, "STATE_TRANSITION_DELAY"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iput v3, p0, Lcom/masshabit/squibble/Game;->mState:I

    .line 136
    iget-object v1, p0, Lcom/masshabit/squibble/Game;->mFadeDelay:Lcom/masshabit/common/Delay;

    iget v2, v0, Lcom/masshabit/squibble/Game$ShowCommand;->mDelay:F

    invoke-virtual {v1, v2}, Lcom/masshabit/common/Delay;->start(F)V

    .line 144
    :goto_0
    iget-object v1, p0, Lcom/masshabit/squibble/Game;->mShowCommandPool:Lcom/masshabit/squibble/Game$ShowCommandEventPool;

    invoke-virtual {v1, v0}, Lcom/masshabit/squibble/Game$ShowCommandEventPool;->release(Ljava/lang/Object;)V

    .line 146
    .end local v0    # "c":Lcom/masshabit/squibble/Game$ShowCommand;
    :cond_0
    return-void

    .line 140
    .restart local v0    # "c":Lcom/masshabit/squibble/Game$ShowCommand;
    :cond_1
    const-string v1, "Game"

    const-string v1, "STATE_TRANSITION_OUT"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v1, 0x2

    iput v1, p0, Lcom/masshabit/squibble/Game;->mState:I

    .line 142
    iget-object v1, p0, Lcom/masshabit/squibble/Game;->mFadeTween:Lcom/masshabit/common/tween/Tween;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v1, v4, v2, v3}, Lcom/masshabit/common/tween/Tween;->init(FFF)V

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 363
    iget-object v0, p0, Lcom/masshabit/squibble/Game;->mScreen:Lcom/masshabit/squibble/Screen;

    invoke-virtual {v0, p1}, Lcom/masshabit/squibble/Screen;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v6, 0x0

    .line 488
    sget-boolean v4, Lcom/masshabit/common/Globals;->DEBUG_BUILD:Z

    if-eqz v4, :cond_0

    .line 490
    const/16 v4, 0xb

    const-string v5, "Draw Physics On/Off"

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 491
    .local v0, "drawPhysics":Landroid/view/MenuItem;
    new-instance v4, Lcom/masshabit/squibble/Game$2;

    invoke-direct {v4, p0}, Lcom/masshabit/squibble/Game$2;-><init>(Lcom/masshabit/squibble/Game;)V

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 499
    const-string v4, "Dump Maps"

    invoke-interface {p1, v4}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 500
    .local v1, "dump":Landroid/view/MenuItem;
    new-instance v4, Lcom/masshabit/squibble/Game$3;

    invoke-direct {v4, p0}, Lcom/masshabit/squibble/Game$3;-><init>(Lcom/masshabit/squibble/Game;)V

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 508
    const-string v4, "Toggle Paused"

    invoke-interface {p1, v4}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    .line 509
    .local v2, "focus":Landroid/view/MenuItem;
    new-instance v4, Lcom/masshabit/squibble/Game$4;

    invoke-direct {v4, p0}, Lcom/masshabit/squibble/Game$4;-><init>(Lcom/masshabit/squibble/Game;)V

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 518
    const-string v4, "Warp"

    invoke-interface {p1, v4}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    .line 519
    .local v3, "playCustom":Landroid/view/MenuItem;
    new-instance v4, Lcom/masshabit/squibble/Game$5;

    invoke-direct {v4, p0}, Lcom/masshabit/squibble/Game$5;-><init>(Lcom/masshabit/squibble/Game;)V

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 527
    const/4 v4, 0x1

    .line 529
    .end local v0    # "drawPhysics":Landroid/view/MenuItem;
    .end local v1    # "dump":Landroid/view/MenuItem;
    .end local v2    # "focus":Landroid/view/MenuItem;
    .end local v3    # "playCustom":Landroid/view/MenuItem;
    :goto_0
    return v4

    :cond_0
    move v4, v6

    goto :goto_0
.end method

.method public onInputEvent(Lcom/masshabit/common/InputEvent;)V
    .locals 1
    .param p1, "e"    # Lcom/masshabit/common/InputEvent;

    .prologue
    .line 380
    iget v0, p0, Lcom/masshabit/squibble/Game;->mState:I

    if-nez v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/masshabit/squibble/Game;->mScreen:Lcom/masshabit/squibble/Screen;

    invoke-virtual {v0, p1}, Lcom/masshabit/squibble/Screen;->onInputEvent(Lcom/masshabit/common/InputEvent;)V

    .line 384
    :cond_0
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 371
    iget-object v0, p0, Lcom/masshabit/squibble/Game;->mScreen:Lcom/masshabit/squibble/Screen;

    invoke-virtual {v0, p1, p2}, Lcom/masshabit/squibble/Screen;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 372
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 483
    const/4 v0, 0x1

    return v0
.end method

.method public pushScreen(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/masshabit/squibble/Game;->pushScreen(IF)V

    .line 157
    return-void
.end method

.method public pushScreen(IF)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "delay"    # F

    .prologue
    .line 150
    iget-object v1, p0, Lcom/masshabit/squibble/Game;->mShowCommandPool:Lcom/masshabit/squibble/Game$ShowCommandEventPool;

    invoke-virtual {v1}, Lcom/masshabit/squibble/Game$ShowCommandEventPool;->allocate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/masshabit/squibble/Game$ShowCommand;

    .line 151
    .local v0, "c":Lcom/masshabit/squibble/Game$ShowCommand;
    invoke-virtual {v0, p1, p2}, Lcom/masshabit/squibble/Game$ShowCommand;->set(IF)V

    .line 152
    iget-object v1, p0, Lcom/masshabit/squibble/Game;->mScreenStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Bundle;

    .prologue
    .line 348
    const-string v0, "screen_shared_args"

    sget-object v1, Lcom/masshabit/squibble/Screen;->sSharedArgs:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v0, "game_current_screen"

    iget v1, p0, Lcom/masshabit/squibble/Game;->mCurrentScreen:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 350
    const-string v0, "game_show_loading"

    iget-boolean v1, p0, Lcom/masshabit/squibble/Game;->mShowLoading:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 352
    iget v0, p0, Lcom/masshabit/squibble/Game;->mCurrentScreen:I

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    .line 354
    iget-object v0, p0, Lcom/masshabit/squibble/Game;->mScreen:Lcom/masshabit/squibble/Screen;

    invoke-virtual {v0, p1}, Lcom/masshabit/squibble/Screen;->saveState(Landroid/os/Bundle;)V

    .line 356
    :cond_0
    return-void
.end method

.method protected threadedInit()V
    .locals 2

    .prologue
    .line 176
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/masshabit/squibble/Game$1;

    invoke-direct {v1, p0}, Lcom/masshabit/squibble/Game$1;-><init>(Lcom/masshabit/squibble/Game;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/masshabit/squibble/Game;->mLoadingThread:Ljava/lang/Thread;

    .line 192
    iget-object v0, p0, Lcom/masshabit/squibble/Game;->mLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 193
    return-void
.end method

.method public tweenComplete(Ljava/lang/Object;)V
    .locals 6
    .param p1, "tween"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v5, "Game"

    .line 197
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 199
    .local v0, "env":Lcom/masshabit/common/Environment;
    iget v1, p0, Lcom/masshabit/squibble/Game;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 201
    iput-object v4, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    .line 202
    iget-object v1, v0, Lcom/masshabit/common/Environment;->mScreen:Lcom/masshabit/squibble/Screen;

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, v0, Lcom/masshabit/common/Environment;->mScreen:Lcom/masshabit/squibble/Screen;

    invoke-virtual {v1}, Lcom/masshabit/squibble/Screen;->destroy()V

    .line 206
    :cond_0
    iput-object v4, v0, Lcom/masshabit/common/Environment;->mScreen:Lcom/masshabit/squibble/Screen;

    .line 207
    iget-object v1, v0, Lcom/masshabit/common/Environment;->mPhysics:Lcom/masshabit/common/physics/Physics;

    invoke-virtual {v1}, Lcom/masshabit/common/physics/Physics;->reset()V

    .line 208
    iget v1, p0, Lcom/masshabit/squibble/Game;->mTargetScreen:I

    iput v1, p0, Lcom/masshabit/squibble/Game;->mCurrentScreen:I

    .line 209
    iget v1, p0, Lcom/masshabit/squibble/Game;->mTargetScreen:I

    invoke-virtual {p0, v1}, Lcom/masshabit/squibble/Game;->newScreen(I)Lcom/masshabit/squibble/Screen;

    move-result-object v1

    iput-object v1, p0, Lcom/masshabit/squibble/Game;->mScreen:Lcom/masshabit/squibble/Screen;

    .line 210
    iget-object v1, p0, Lcom/masshabit/squibble/Game;->mScreen:Lcom/masshabit/squibble/Screen;

    invoke-virtual {v1}, Lcom/masshabit/squibble/Screen;->showLoading()Z

    move-result v1

    iput-boolean v1, p0, Lcom/masshabit/squibble/Game;->mShowLoading:Z

    .line 211
    iget-object v1, p0, Lcom/masshabit/squibble/Game;->mScreen:Lcom/masshabit/squibble/Screen;

    iput-object v1, v0, Lcom/masshabit/common/Environment;->mScreen:Lcom/masshabit/squibble/Screen;

    .line 213
    const-string v1, "Game"

    const-string v1, "STATE_LOADING"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v1, 0x3

    iput v1, p0, Lcom/masshabit/squibble/Game;->mState:I

    .line 216
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 218
    invoke-virtual {p0}, Lcom/masshabit/squibble/Game;->threadedInit()V

    .line 229
    :goto_0
    return-void

    .line 220
    :cond_1
    iget v1, p0, Lcom/masshabit/squibble/Game;->mState:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    .line 222
    const-string v1, "Game"

    const-string v1, "STATE_RUNNING"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iput v3, p0, Lcom/masshabit/squibble/Game;->mState:I

    goto :goto_0

    .line 227
    :cond_2
    invoke-static {v3}, Ljunit/framework/Assert;->assertTrue(Z)V

    goto :goto_0
.end method

.method public update(F)V
    .locals 5
    .param p1, "dt"    # F

    .prologue
    const-string v4, "Game"

    .line 389
    iget v0, p0, Lcom/masshabit/squibble/Game;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 414
    :pswitch_0
    const-string v0, "Game"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected game state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/masshabit/squibble/Game;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :goto_0
    :pswitch_1
    return-void

    .line 392
    :pswitch_2
    iget-object v0, p0, Lcom/masshabit/squibble/Game;->mScreen:Lcom/masshabit/squibble/Screen;

    invoke-virtual {v0, p1}, Lcom/masshabit/squibble/Screen;->update(F)V

    goto :goto_0

    .line 395
    :pswitch_3
    iget-object v0, p0, Lcom/masshabit/squibble/Game;->mScreen:Lcom/masshabit/squibble/Screen;

    invoke-virtual {v0, p1}, Lcom/masshabit/squibble/Screen;->update(F)V

    .line 396
    iget-object v0, p0, Lcom/masshabit/squibble/Game;->mFadeDelay:Lcom/masshabit/common/Delay;

    invoke-virtual {v0, p1}, Lcom/masshabit/common/Delay;->update(F)V

    goto :goto_0

    .line 400
    :pswitch_4
    iget-object v0, p0, Lcom/masshabit/squibble/Game;->mFadeTween:Lcom/masshabit/common/tween/Tween;

    invoke-virtual {v0, p1}, Lcom/masshabit/common/tween/Tween;->update(F)V

    goto :goto_0

    .line 405
    :pswitch_5
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 406
    iget-object v0, p0, Lcom/masshabit/squibble/Game;->mFadeTween:Lcom/masshabit/common/tween/Tween;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2, v3}, Lcom/masshabit/common/tween/Tween;->init(FFF)V

    .line 407
    const-string v0, "Game"

    const-string v0, "TRANSITION_IN"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const/4 v0, 0x7

    iput v0, p0, Lcom/masshabit/squibble/Game;->mState:I

    goto :goto_0

    .line 411
    :pswitch_6
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    .line 389
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method
