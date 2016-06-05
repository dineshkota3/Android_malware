.class public Lcom/gp/monolith/GameRenderer;
.super Ljava/lang/Object;
.source "GameRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field public static final MAX_EXPLOSION_FRAME:I = 0x64

.field public static final MSG_DO_NOTHING:I = -0x1

.field public static final MSG_MOVE_DOWN:I = 0x3

.field public static final MSG_MOVE_LEFT:I = 0x1

.field public static final MSG_MOVE_RIGHT:I = 0x2

.field public static final MSG_ROTATE:I = 0x0

.field public static final MSG_ROTATE_PLAYFIELD:I = 0x4

.field public static final VIEW_GAME:I = 0x1

.field public static final VIEW_INTRO:I = 0x0

.field public static final VIEW_OPTIONS:I = 0x2

.field public static final Y_ACCELERATION:F = -0.3f

.field public static final Z_ACCELERATION:F = 0.3f


# instance fields
.field public action:I

.field private backgroundInitialized:Z

.field private context:Landroid/content/Context;

.field public demogame:Lcom/gp/monolith/Game;

.field private done:Z

.field private explodingCubes:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/gp/monolith/ExplodingCube;",
            ">;"
        }
    .end annotation
.end field

.field private explodingRings:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/gp/monolith/ExplodingRing;",
            ">;"
        }
    .end annotation
.end field

.field public game:Lcom/gp/monolith/Game;

.field gametype:I

.field private h:I

.field private highscoreEntry:Z

.field private isPaused:Z

.field private lastcalltime:J

.field private lastdrawtime:J

.field private linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

.field private mAngle:F

.field private mCube:[Lcom/gp/monolith/Cube;

.field private mEarth:Lcom/gp/monolith/Square;

.field private mExplosionRing:Lcom/gp/monolith/Square;

.field public mHeight:I

.field private mMoon:Lcom/gp/monolith/Square;

.field private mPlayfieldCube:Lcom/gp/monolith/Cube;

.field public mSizeChanged:Z

.field private mStarfield:Lcom/gp/monolith/Starfield;

.field public mWidth:I

.field public message:Ljava/lang/String;

.field private now:J

.field private overlay:Lcom/gp/monolith/GameOverlay;

.field private randomgen:Ljava/util/Random;

.field private rangle:F

.field public running:Z

.field private sayEvolving:Z

.field private sayGameOver:Z

.field private soundManager:Lcom/gp/monolith/Sound;

.field private startGameTime:J

.field private testangle:F

.field private textures:Lcom/gp/monolith/GLTextures;

.field private timeaccumulator:J

.field private viewType:I

.field private w:I

.field private xoff:F

.field public xy:F

.field private yoff:F

.field private zoff:F

.field public zx:F

.field public zy:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/gp/monolith/GameOverlay;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "overlay"    # Lcom/gp/monolith/GameOverlay;

    .prologue
    const/4 v5, 0x1

    const/high16 v8, 0x10000

    const v4, 0xff00

    const/4 v7, 0x0

    const v1, 0xffff

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1183
    const/4 v0, 0x0

    iput v0, p0, Lcom/gp/monolith/GameRenderer;->zx:F

    .line 1184
    const/4 v0, 0x0

    iput v0, p0, Lcom/gp/monolith/GameRenderer;->zy:F

    .line 1185
    const/4 v0, 0x0

    iput v0, p0, Lcom/gp/monolith/GameRenderer;->xy:F

    .line 1211
    iput-boolean v5, p0, Lcom/gp/monolith/GameRenderer;->mSizeChanged:Z

    .line 19
    iput-boolean v7, p0, Lcom/gp/monolith/GameRenderer;->done:Z

    .line 20
    iput-boolean v7, p0, Lcom/gp/monolith/GameRenderer;->isPaused:Z

    .line 21
    iput-object p2, p0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    .line 22
    iput-object p1, p0, Lcom/gp/monolith/GameRenderer;->context:Landroid/content/Context;

    .line 23
    invoke-virtual {p0}, Lcom/gp/monolith/GameRenderer;->initSound()V

    .line 24
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/gp/monolith/Cube;

    iput-object v0, p0, Lcom/gp/monolith/GameRenderer;->mCube:[Lcom/gp/monolith/Cube;

    .line 25
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->mCube:[Lcom/gp/monolith/Cube;

    new-instance v2, Lcom/gp/monolith/Cube;

    invoke-direct {v2, v4, v7, v7, v8}, Lcom/gp/monolith/Cube;-><init>(IIII)V

    aput-object v2, v0, v7

    .line 26
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->mCube:[Lcom/gp/monolith/Cube;

    new-instance v2, Lcom/gp/monolith/Cube;

    invoke-direct {v2, v7, v4, v7, v8}, Lcom/gp/monolith/Cube;-><init>(IIII)V

    aput-object v2, v0, v5

    .line 27
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->mCube:[Lcom/gp/monolith/Cube;

    const/4 v2, 0x2

    new-instance v3, Lcom/gp/monolith/Cube;

    invoke-direct {v3, v7, v7, v4, v8}, Lcom/gp/monolith/Cube;-><init>(IIII)V

    aput-object v3, v0, v2

    .line 28
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->mCube:[Lcom/gp/monolith/Cube;

    const/4 v2, 0x3

    new-instance v3, Lcom/gp/monolith/Cube;

    invoke-direct {v3, v4, v4, v7, v8}, Lcom/gp/monolith/Cube;-><init>(IIII)V

    aput-object v3, v0, v2

    .line 29
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->mCube:[Lcom/gp/monolith/Cube;

    const/4 v2, 0x4

    new-instance v3, Lcom/gp/monolith/Cube;

    invoke-direct {v3, v4, v7, v4, v8}, Lcom/gp/monolith/Cube;-><init>(IIII)V

    aput-object v3, v0, v2

    .line 30
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->mCube:[Lcom/gp/monolith/Cube;

    const/4 v2, 0x5

    new-instance v3, Lcom/gp/monolith/Cube;

    invoke-direct {v3, v7, v4, v4, v8}, Lcom/gp/monolith/Cube;-><init>(IIII)V

    aput-object v3, v0, v2

    .line 31
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->mCube:[Lcom/gp/monolith/Cube;

    const/4 v2, 0x6

    new-instance v3, Lcom/gp/monolith/Cube;

    const v4, 0xf000

    const/high16 v6, 0xf0000

    invoke-direct {v3, v4, v6, v7, v8}, Lcom/gp/monolith/Cube;-><init>(IIII)V

    aput-object v3, v0, v2

    .line 32
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->mCube:[Lcom/gp/monolith/Cube;

    const/4 v2, 0x7

    new-instance v3, Lcom/gp/monolith/Cube;

    const/16 v4, 0xff

    invoke-direct {v3, v1, v1, v1, v4}, Lcom/gp/monolith/Cube;-><init>(IIII)V

    aput-object v3, v0, v2

    .line 33
    new-instance v0, Lcom/gp/monolith/Starfield;

    const/16 v2, 0x64

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-direct {v0, v2, v3}, Lcom/gp/monolith/Starfield;-><init>(IF)V

    iput-object v0, p0, Lcom/gp/monolith/GameRenderer;->mStarfield:Lcom/gp/monolith/Starfield;

    .line 34
    new-instance v0, Lcom/gp/monolith/Square;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/gp/monolith/Square;-><init>(IIII)V

    iput-object v0, p0, Lcom/gp/monolith/GameRenderer;->mMoon:Lcom/gp/monolith/Square;

    .line 35
    new-instance v0, Lcom/gp/monolith/Square;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/gp/monolith/Square;-><init>(IIII)V

    iput-object v0, p0, Lcom/gp/monolith/GameRenderer;->mEarth:Lcom/gp/monolith/Square;

    .line 36
    new-instance v0, Lcom/gp/monolith/Square;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/gp/monolith/Square;-><init>(IIII)V

    iput-object v0, p0, Lcom/gp/monolith/GameRenderer;->mExplosionRing:Lcom/gp/monolith/Square;

    .line 37
    new-instance v0, Lcom/gp/monolith/Square;

    move v2, v1

    move v3, v1

    move v4, v1

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/gp/monolith/Square;-><init>(IIIIZZ)V

    iput-object v0, p0, Lcom/gp/monolith/GameRenderer;->mExplosionRing:Lcom/gp/monolith/Square;

    .line 38
    new-instance v0, Lcom/gp/monolith/Cube;

    const v1, 0x8000

    const v2, 0x8000

    const v3, 0x8000

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/gp/monolith/Cube;-><init>(IIII)V

    iput-object v0, p0, Lcom/gp/monolith/GameRenderer;->mPlayfieldCube:Lcom/gp/monolith/Cube;

    .line 39
    iput-boolean v7, p0, Lcom/gp/monolith/GameRenderer;->running:Z

    .line 40
    iput-boolean v7, p0, Lcom/gp/monolith/GameRenderer;->highscoreEntry:Z

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/gp/monolith/GameRenderer;->explodingCubes:Ljava/util/LinkedList;

    .line 42
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/gp/monolith/GameRenderer;->explodingRings:Ljava/util/LinkedList;

    .line 43
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/gp/monolith/GameRenderer;->randomgen:Ljava/util/Random;

    .line 45
    invoke-virtual {p2}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gp/monolith/Options;->getGame()Lcom/gp/monolith/Game;

    move-result-object v0

    iput-object v0, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/gp/monolith/GameRenderer;->action:I

    .line 47
    invoke-virtual {p0}, Lcom/gp/monolith/GameRenderer;->initLinearInterpolators()V

    .line 48
    return-void
.end method

.method private drawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 28
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 741
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/monolith/GameRenderer;->w:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/monolith/GameRenderer;->h:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v16, v22, v23

    .line 742
    .local v16, "ratio":F
    const/16 v22, 0x1701

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 743
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 745
    const/high16 v22, 0x42700000    # 60.0f

    const/high16 v23, 0x3f800000    # 1.0f

    const/high16 v24, 0x43020000    # 130.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v16

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLU;->gluPerspective(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 748
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 750
    .local v8, "current":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/monolith/GameRenderer;->rangle:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/gp/monolith/GameRenderer;->lastdrawtime:J

    move-wide/from16 v23, v0

    sub-long v23, v8, v23

    move-wide/from16 v0, v23

    long-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x447a0000    # 1000.0f

    div-float v23, v23, v24

    const/high16 v24, 0x40000000    # 2.0f

    mul-float v23, v23, v24

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/gp/monolith/GameRenderer;->rangle:F

    .line 751
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/monolith/GameRenderer;->rangle:F

    move/from16 v22, v0

    const/high16 v23, 0x43b40000    # 360.0f

    cmpl-float v22, v22, v23

    if-lez v22, :cond_0

    .line 753
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/gp/monolith/GameRenderer;->rangle:F

    .line 755
    :cond_0
    move-wide v0, v8

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/gp/monolith/GameRenderer;->lastdrawtime:J

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/gp/monolith/GameOverlay;->postInvalidate()V

    .line 763
    const/16 v22, 0xbd0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 772
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 775
    const/16 v22, 0xc11

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 776
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/monolith/GameRenderer;->w:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/monolith/GameRenderer;->h:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glScissor(IIII)V

    .line 777
    const/16 v22, 0x4100

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 778
    const/16 v22, 0xb44

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 780
    const/16 v22, 0x1d01

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 784
    const/16 v22, 0xb71

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 791
    const/high16 v22, 0x3f000000    # 0.5f

    const/high16 v23, 0x3f000000    # 0.5f

    const/high16 v24, 0x3f000000    # 0.5f

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 794
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/monolith/GameRenderer;->zoff:F

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 795
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/monolith/GameRenderer;->viewType:I

    move/from16 v22, v0

    if-nez v22, :cond_1

    .line 797
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/monolith/GameRenderer;->rangle:F

    move/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/high16 v25, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 799
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/monolith/GameRenderer;->zx:F

    move/from16 v22, v0

    const/16 v23, 0x0

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 800
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/monolith/GameRenderer;->zy:F

    move/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 801
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/monolith/GameRenderer;->xy:F

    move/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/high16 v25, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 802
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/monolith/GameRenderer;->zoff:F

    move/from16 v24, v0

    move/from16 v0, v24

    neg-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 803
    const/16 v22, 0x1700

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 804
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 805
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 809
    const v22, 0x3f333333    # 0.7f

    const v23, 0x3f333333    # 0.7f

    const v24, 0x3f333333    # 0.7f

    const/high16 v25, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 810
    const v22, 0x8074

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 811
    const v22, 0x8076

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 813
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/gp/monolith/GameRenderer;->backgroundInitialized:Z

    move/from16 v22, v0

    if-nez v22, :cond_2

    .line 815
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/gp/monolith/GameRenderer;->backgroundInitialized:Z

    .line 817
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/monolith/GameRenderer;->viewType:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_0

    .line 1146
    :cond_3
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 1147
    return-void

    .line 821
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/gp/monolith/GameRenderer;->now:J

    .line 822
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/gp/monolith/GameRenderer;->now:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/gp/monolith/GameRenderer;->lastcalltime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->demogame:Lcom/gp/monolith/Game;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/gp/monolith/Game;->getTimer()I

    move-result v26

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v24, v24, v26

    cmp-long v22, v22, v24

    if-lez v22, :cond_4

    .line 825
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/gp/monolith/GameRenderer;->now:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/gp/monolith/GameRenderer;->lastcalltime:J

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->demogame:Lcom/gp/monolith/Game;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/gp/monolith/Game;->gameLoop()V

    .line 828
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/monolith/GameRenderer;->w:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/monolith/GameRenderer;->h:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/gp/monolith/GameRenderer;->drawIntroScreen(Ljavax/microedition/khronos/opengles/GL10;II)V

    goto :goto_0

    .line 835
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/gp/monolith/GameRenderer;->now:J

    .line 836
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/gp/monolith/GameRenderer;->now:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/gp/monolith/GameRenderer;->lastcalltime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->demogame:Lcom/gp/monolith/Game;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/gp/monolith/Game;->getTimer()I

    move-result v26

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v24, v24, v26

    cmp-long v22, v22, v24

    if-lez v22, :cond_5

    .line 839
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/gp/monolith/GameRenderer;->now:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/gp/monolith/GameRenderer;->lastcalltime:J

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->demogame:Lcom/gp/monolith/Game;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/gp/monolith/Game;->gameLoop()V

    .line 842
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/monolith/GameRenderer;->w:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/monolith/GameRenderer;->h:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/gp/monolith/GameRenderer;->drawIntroScreen(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 844
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/monolith/GameRenderer;->action:I

    move/from16 v22, v0

    if-nez v22, :cond_6

    .line 847
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/gp/monolith/GameRenderer;->action:I

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/gp/monolith/Options;->previousOption()V

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/gp/monolith/Options;->isSoundEnabled()Z

    move-result v22

    if-eqz v22, :cond_6

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->soundManager:Lcom/gp/monolith/Sound;

    move-object/from16 v22, v0

    const v23, 0x7f040007

    invoke-interface/range {v22 .. v23}, Lcom/gp/monolith/Sound;->playSound(I)V

    .line 854
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/monolith/GameRenderer;->action:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    .line 856
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/gp/monolith/GameRenderer;->action:I

    .line 857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/gp/monolith/Options;->setPreviousValue()V

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/gp/monolith/Options;->isSoundEnabled()Z

    move-result v22

    if-eqz v22, :cond_7

    .line 860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->soundManager:Lcom/gp/monolith/Sound;

    move-object/from16 v22, v0

    const v23, 0x7f040006

    invoke-interface/range {v22 .. v23}, Lcom/gp/monolith/Sound;->playSound(I)V

    .line 864
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/monolith/GameRenderer;->action:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 866
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/gp/monolith/GameRenderer;->action:I

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/gp/monolith/Options;->setNextValue()V

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/gp/monolith/Options;->isSoundEnabled()Z

    move-result v22

    if-eqz v22, :cond_8

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->soundManager:Lcom/gp/monolith/Sound;

    move-object/from16 v22, v0

    const v23, 0x7f040006

    invoke-interface/range {v22 .. v23}, Lcom/gp/monolith/Sound;->playSound(I)V

    .line 874
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/monolith/GameRenderer;->action:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    .line 876
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/gp/monolith/GameRenderer;->action:I

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/gp/monolith/Options;->nextOption()V

    .line 878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/gp/monolith/Options;->isSoundEnabled()Z

    move-result v22

    if-eqz v22, :cond_9

    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->soundManager:Lcom/gp/monolith/Sound;

    move-object/from16 v22, v0

    const v23, 0x7f040007

    invoke-interface/range {v22 .. v23}, Lcom/gp/monolith/Sound;->playSound(I)V

    .line 884
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/gp/monolith/Options;->getSelectionStatus()I

    move-result v22

    const/16 v23, 0xc

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    .line 886
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/gp/monolith/GameRenderer;->viewType:I

    .line 887
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/gp/monolith/GameRenderer;->setViewType(I)V

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/gp/monolith/GameOverlay;->setDrawType(I)V

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/gp/monolith/GameOverlay;->setOverlayType(I)V

    .line 891
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/gp/monolith/Options;->getSelectionStatus()I

    move-result v22

    const/16 v23, 0xa

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/gp/monolith/Options;->getGame()Lcom/gp/monolith/Game;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/gp/monolith/Options;->getStartingLevel()I

    move-result v23

    invoke-interface/range {v22 .. v23}, Lcom/gp/monolith/Game;->setLevel(I)V

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/gp/monolith/Options;->getGame()Lcom/gp/monolith/Game;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/gp/monolith/Options;->getStartingLevel()I

    move-result v23

    invoke-interface/range {v22 .. v23}, Lcom/gp/monolith/Game;->setLevel(I)V

    .line 896
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/gp/monolith/GameRenderer;->viewType:I

    .line 897
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/gp/monolith/GameRenderer;->setViewType(I)V

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/gp/monolith/GameOverlay;->setDrawType(I)V

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/gp/monolith/GameOverlay;->setOverlayType(I)V

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/gp/monolith/Options;->savePreferences()V

    .line 903
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/gp/monolith/Options;->getChangedOption()I

    move-result v7

    .line 904
    .local v7, "changed":I
    const/16 v22, 0x4

    move v0, v7

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/gp/monolith/Options;->isMusicEnabled()Z

    move-result v22

    if-eqz v22, :cond_c

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->soundManager:Lcom/gp/monolith/Sound;

    move-object/from16 v22, v0

    const v23, 0x7f040004

    invoke-interface/range {v22 .. v23}, Lcom/gp/monolith/Sound;->resumeMusic(I)V

    goto/16 :goto_0

    .line 913
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->soundManager:Lcom/gp/monolith/Sound;

    move-object/from16 v22, v0

    const v23, 0x7f040004

    invoke-interface/range {v22 .. v23}, Lcom/gp/monolith/Sound;->pauseMusic(I)V

    goto/16 :goto_0

    .line 918
    .end local v7    # "changed":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/gp/monolith/Game;->getStatus()I

    move-result v22

    packed-switch v22, :pswitch_data_1

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    move-object/from16 v22, v0

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Lcom/gp/monolith/GameOverlay;->setMessage(Ljava/lang/String;)V

    .line 979
    :cond_d
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/monolith/GameRenderer;->action:I

    move/from16 v22, v0

    if-nez v22, :cond_e

    .line 981
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/gp/monolith/GameRenderer;->action:I

    .line 982
    invoke-virtual/range {p0 .. p0}, Lcom/gp/monolith/GameRenderer;->doRotateBlock()V

    .line 984
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/monolith/GameRenderer;->action:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    .line 986
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/gp/monolith/GameRenderer;->action:I

    .line 987
    invoke-virtual/range {p0 .. p0}, Lcom/gp/monolith/GameRenderer;->doMoveLeft()V

    .line 990
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/monolith/GameRenderer;->action:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_10

    .line 992
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/gp/monolith/GameRenderer;->action:I

    .line 993
    invoke-virtual/range {p0 .. p0}, Lcom/gp/monolith/GameRenderer;->doMoveRight()V

    .line 995
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/monolith/GameRenderer;->action:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_11

    .line 997
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/gp/monolith/GameRenderer;->action:I

    .line 998
    invoke-virtual/range {p0 .. p0}, Lcom/gp/monolith/GameRenderer;->doMoveDown()V

    .line 1000
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/gp/monolith/Options;->getDifficultyLevel()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_12

    .line 1003
    move-object/from16 v0, p0

    move-wide v1, v8

    invoke-virtual {v0, v1, v2}, Lcom/gp/monolith/GameRenderer;->doRotatePlayfield(J)V

    .line 1005
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/gp/monolith/Options;->getDifficultyLevel()I

    move-result v22

    if-nez v22, :cond_13

    .line 1007
    move-object/from16 v0, p0

    move-wide v1, v8

    invoke-virtual {v0, v1, v2}, Lcom/gp/monolith/GameRenderer;->doRotatePlayfieldNormal(J)V

    .line 1010
    :cond_13
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->mMoon:Lcom/gp/monolith/Square;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/monolith/GameRenderer;->xoff:F

    move/from16 v23, v0

    const/high16 v24, 0x41500000    # 13.0f

    add-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/monolith/GameRenderer;->yoff:F

    move/from16 v24, v0

    const/high16 v25, 0x41b00000    # 22.0f

    sub-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/monolith/GameRenderer;->zoff:F

    move/from16 v25, v0

    const/high16 v26, 0x42480000    # 50.0f

    sub-float v25, v25, v26

    invoke-virtual/range {v22 .. v25}, Lcom/gp/monolith/Square;->setPosition(FFF)V

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->mMoon:Lcom/gp/monolith/Square;

    move-object/from16 v22, v0

    const/high16 v23, 0x41900000    # 18.0f

    const/high16 v24, 0x41900000    # 18.0f

    const/high16 v25, 0x3f800000    # 1.0f

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/gp/monolith/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFF)V

    .line 1017
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 1019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->mEarth:Lcom/gp/monolith/Square;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/monolith/GameRenderer;->xoff:F

    move/from16 v23, v0

    const/high16 v24, 0x41500000    # 13.0f

    add-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/monolith/GameRenderer;->yoff:F

    move/from16 v24, v0

    const/high16 v25, 0x40000000    # 2.0f

    sub-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/monolith/GameRenderer;->zoff:F

    move/from16 v25, v0

    const/high16 v26, 0x42700000    # 60.0f

    add-float v25, v25, v26

    invoke-virtual/range {v22 .. v25}, Lcom/gp/monolith/Square;->setPosition(FFF)V

    .line 1020
    const/high16 v22, 0x43340000    # 180.0f

    const/16 v23, 0x0

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->mEarth:Lcom/gp/monolith/Square;

    move-object/from16 v22, v0

    const/high16 v23, 0x41000000    # 8.0f

    const/high16 v24, 0x41000000    # 8.0f

    const/high16 v25, 0x3f800000    # 1.0f

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/gp/monolith/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFF)V

    .line 1022
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 1023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->mStarfield:Lcom/gp/monolith/Starfield;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/monolith/GameRenderer;->rangle:F

    move/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/gp/monolith/Starfield;->draw(Ljavax/microedition/khronos/opengles/GL10;FF)V

    .line 1024
    invoke-virtual/range {p0 .. p1}, Lcom/gp/monolith/GameRenderer;->drawPlayfield(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1027
    invoke-virtual/range {p0 .. p1}, Lcom/gp/monolith/GameRenderer;->drawNextPiece(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/gp/monolith/Options;->getGame()Lcom/gp/monolith/Game;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lcom/gp/monolith/Game;->getLevelName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/gp/monolith/GameOverlay;->setLevel(Ljava/lang/String;)V

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/gp/monolith/Options;->getGame()Lcom/gp/monolith/Game;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lcom/gp/monolith/Game;->getScore()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/gp/monolith/GameOverlay;->setScore(Ljava/lang/String;)V

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/gp/monolith/Options;->getGame()Lcom/gp/monolith/Game;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lcom/gp/monolith/Game;->getLines()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/gp/monolith/GameOverlay;->setLines(Ljava/lang/String;)V

    .line 1041
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/monolith/GameRenderer;->gametype:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_14

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/gp/monolith/Game;->getEnergy()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/gp/monolith/GameOverlay;->setEnergy(Ljava/lang/String;)V

    .line 1054
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->mCube:[Lcom/gp/monolith/Cube;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v6, v22, v23

    .line 1055
    .local v6, "c":Lcom/gp/monolith/Cube;
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/high16 v24, -0x3e100000    # -30.0f

    move-object v0, v6

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/gp/monolith/Cube;->setPosition(FFF)V

    .line 1056
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/monolith/GameRenderer;->mAngle:F

    move/from16 v22, v0

    const v23, 0x3f99999a    # 1.2f

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/gp/monolith/GameRenderer;->mAngle:F

    .line 1058
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/gp/monolith/GameRenderer;->now:J

    .line 1059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/gp/monolith/Game;->getStatus()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_15

    .line 1061
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/gp/monolith/GameRenderer;->sayEvolving:Z

    .line 1063
    :cond_15
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/gp/monolith/GameRenderer;->now:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/gp/monolith/GameRenderer;->lastcalltime:J

    move-wide/from16 v24, v0

    sub-long v10, v22, v24

    .line 1064
    .local v10, "deltatime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/gp/monolith/GameRenderer;->timeaccumulator:J

    move-wide/from16 v22, v0

    add-long v22, v22, v10

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/gp/monolith/GameRenderer;->timeaccumulator:J

    .line 1065
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/gp/monolith/GameRenderer;->timeaccumulator:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/gp/monolith/Game;->getTimer()I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    div-long v20, v22, v24

    .line 1066
    .local v20, "simsteps":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/gp/monolith/GameRenderer;->timeaccumulator:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/gp/monolith/Game;->getTimer()I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    rem-long v17, v22, v24

    .line 1067
    .local v17, "remainder":J
    const/4 v5, 0x0

    .line 1068
    .local v5, "blockoffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/gp/monolith/Game;->getStatus()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/gp/monolith/Game;->getStatus()I

    move-result v22

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_18

    .line 1070
    :cond_16
    const-wide/16 v22, 0x0

    cmp-long v22, v20, v22

    if-lez v22, :cond_17

    .line 1072
    const-wide/16 v12, 0x0

    .local v12, "i":J
    :goto_2
    cmp-long v22, v12, v20

    if-ltz v22, :cond_21

    .line 1089
    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/gp/monolith/GameRenderer;->timeaccumulator:J

    .line 1091
    .end local v12    # "i":J
    :cond_17
    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/gp/monolith/Game;->getTimer()I

    move-result v23

    div-int v5, v22, v23

    .line 1096
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/gp/monolith/Game;->getStatus()I

    move-result v22

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_23

    .line 1098
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/gp/monolith/GameRenderer;->drawFallingBlock(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 1105
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/gp/monolith/Game;->getStatus()I

    move-result v22

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_25

    .line 1113
    const/16 v19, 0xa

    .line 1114
    .local v19, "result":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 1115
    .local v14, "now":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/gp/monolith/GameRenderer;->lastcalltime:J

    move-wide/from16 v22, v0

    sub-long v22, v14, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/gp/monolith/Game;->getTimer()I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    cmp-long v22, v22, v24

    if-lez v22, :cond_24

    .line 1117
    const/16 v19, 0xa

    .line 1126
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    move-object/from16 v22, v0

    const/16 v23, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move/from16 v3, v19

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/gp/monolith/GameRenderer;->drawBlocks(Ljavax/microedition/khronos/opengles/GL10;Lcom/gp/monolith/Game;II)V

    .line 1132
    .end local v14    # "now":J
    .end local v19    # "result":I
    :goto_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/gp/monolith/GameRenderer;->now:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/gp/monolith/GameRenderer;->lastcalltime:J

    .line 1133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/gp/monolith/Game;->getStatus()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/gp/monolith/Game;->getStatus()I

    move-result v22

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 1135
    :cond_19
    invoke-virtual/range {p0 .. p1}, Lcom/gp/monolith/GameRenderer;->drawCubeExplosion(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1136
    invoke-virtual/range {p0 .. p1}, Lcom/gp/monolith/GameRenderer;->drawRingExplosions(Ljavax/microedition/khronos/opengles/GL10;)V

    goto/16 :goto_0

    .line 921
    .end local v5    # "blockoffset":I
    .end local v6    # "c":Lcom/gp/monolith/Cube;
    .end local v10    # "deltatime":J
    .end local v17    # "remainder":J
    .end local v20    # "simsteps":J
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    move-object/from16 v22, v0

    const-string v23, "Game Over"

    invoke-virtual/range {v22 .. v23}, Lcom/gp/monolith/GameOverlay;->setMessage(Ljava/lang/String;)V

    .line 922
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/gp/monolith/GameRenderer;->sayGameOver:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1b

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/gp/monolith/Options;->isSoundEnabled()Z

    move-result v22

    if-eqz v22, :cond_1a

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->soundManager:Lcom/gp/monolith/Sound;

    move-object/from16 v22, v0

    const v23, 0x7f040003

    invoke-interface/range {v22 .. v23}, Lcom/gp/monolith/Sound;->playSound(I)V

    .line 928
    :cond_1a
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/gp/monolith/GameRenderer;->sayGameOver:Z

    .line 930
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/gp/monolith/GameRenderer;->highscoreEntry:Z

    move/from16 v22, v0

    if-nez v22, :cond_1c

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/gp/monolith/GameOverlay;->getHighScoreTable()Lcom/gp/monolith/HighScoreTable;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/gp/monolith/Game;->getScore()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lcom/gp/monolith/HighScoreTable;->isHighScore(I)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 934
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/gp/monolith/GameRenderer;->highscoreEntry:Z

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/gp/monolith/GameOverlay;->setDrawType(I)V

    goto/16 :goto_1

    .line 940
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/monolith/GameRenderer;->action:I

    move/from16 v22, v0

    if-nez v22, :cond_1d

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/gp/monolith/GameOverlay;->selectPreviousChar()V

    .line 944
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/monolith/GameRenderer;->action:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1e

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/gp/monolith/GameOverlay;->selectNextChar()V

    .line 948
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/monolith/GameRenderer;->action:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1f

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/gp/monolith/GameOverlay;->moveBack()V

    .line 952
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gp/monolith/GameRenderer;->action:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_d

    .line 954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/gp/monolith/GameOverlay;->moveForward()Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/gp/monolith/GameRenderer;->highscoreEntry:Z

    .line 955
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/gp/monolith/GameRenderer;->highscoreEntry:Z

    move/from16 v22, v0

    if-nez v22, :cond_d

    .line 957
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/gp/monolith/GameRenderer;->viewType:I

    .line 958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/gp/monolith/GameOverlay;->setOverlayType(I)V

    goto/16 :goto_1

    .line 964
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    move-object/from16 v22, v0

    const-string v23, "Evolving..."

    invoke-virtual/range {v22 .. v23}, Lcom/gp/monolith/GameOverlay;->setMessage(Ljava/lang/String;)V

    .line 965
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/gp/monolith/GameRenderer;->sayEvolving:Z

    move/from16 v22, v0

    if-eqz v22, :cond_d

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/gp/monolith/Options;->isSoundEnabled()Z

    move-result v22

    if-eqz v22, :cond_20

    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->soundManager:Lcom/gp/monolith/Sound;

    move-object/from16 v22, v0

    const/high16 v23, 0x7f040000

    invoke-interface/range {v22 .. v23}, Lcom/gp/monolith/Sound;->playSound(I)V

    .line 971
    :cond_20
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/gp/monolith/GameRenderer;->sayEvolving:Z

    goto/16 :goto_1

    .line 1075
    .restart local v5    # "blockoffset":I
    .restart local v6    # "c":Lcom/gp/monolith/Cube;
    .restart local v10    # "deltatime":J
    .restart local v12    # "i":J
    .restart local v17    # "remainder":J
    .restart local v20    # "simsteps":J
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/gp/monolith/Game;->gameLoop()V

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/gp/monolith/Game;->isBlockPlaced()Z

    move-result v22

    if-eqz v22, :cond_22

    .line 1080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/gp/monolith/Options;->isSoundEnabled()Z

    move-result v22

    if-eqz v22, :cond_22

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->soundManager:Lcom/gp/monolith/Sound;

    move-object/from16 v22, v0

    const v23, 0x7f040005

    invoke-interface/range {v22 .. v23}, Lcom/gp/monolith/Sound;->playSound(I)V

    .line 1085
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/gp/monolith/Game;->flagCompletedLines()V

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/gp/monolith/GameRenderer;->createExplosions(Lcom/gp/monolith/Game;)V

    .line 1072
    const-wide/16 v22, 0x1

    add-long v12, v12, v22

    goto/16 :goto_2

    .line 1102
    .end local v12    # "i":J
    :cond_23
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/gp/monolith/GameRenderer;->drawFallingBlock(Ljavax/microedition/khronos/opengles/GL10;I)V

    goto/16 :goto_3

    .line 1121
    .restart local v14    # "now":J
    .restart local v19    # "result":I
    :cond_24
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/gp/monolith/GameRenderer;->lastcalltime:J

    move-wide/from16 v22, v0

    sub-long v22, v14, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/gp/monolith/Game;->getTimer()I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    rem-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v19, v0

    .line 1122
    mul-int/lit8 v22, v19, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/gp/monolith/Game;->getTimer()I

    move-result v23

    div-int v19, v22, v23

    goto/16 :goto_4

    .line 1130
    .end local v14    # "now":J
    .end local v19    # "result":I
    :cond_25
    invoke-virtual/range {p0 .. p1}, Lcom/gp/monolith/GameRenderer;->drawBlocks(Ljavax/microedition/khronos/opengles/GL10;)V

    goto/16 :goto_5

    .line 817
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 918
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public createExplosions(Lcom/gp/monolith/Game;)V
    .locals 14
    .param p1, "game"    # Lcom/gp/monolith/Game;

    .prologue
    .line 554
    invoke-interface {p1}, Lcom/gp/monolith/Game;->getClearedLines()[I

    move-result-object v9

    .line 555
    .local v9, "clearedLines":[I
    invoke-interface {p1}, Lcom/gp/monolith/Game;->getClearedLineCount()I

    move-result v10

    .line 557
    .local v10, "linecount":I
    const/4 v13, 0x0

    .local v13, "y":I
    :goto_0
    array-length v1, v9

    if-lt v13, v1, :cond_1

    .line 604
    if-lez v10, :cond_0

    .line 606
    iget-object v1, p0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    invoke-virtual {v1}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gp/monolith/Options;->isSoundEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 608
    iget-object v1, p0, Lcom/gp/monolith/GameRenderer;->soundManager:Lcom/gp/monolith/Sound;

    const v2, 0x7f040001

    invoke-interface {v1, v2}, Lcom/gp/monolith/Sound;->playSound(I)V

    .line 613
    :cond_0
    return-void

    .line 559
    :cond_1
    aget v1, v9, v13

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 561
    const/4 v12, 0x0

    .local v12, "x":I
    :goto_1
    const/16 v1, 0xa

    if-lt v12, v1, :cond_3

    .line 557
    .end local v12    # "x":I
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 563
    .restart local v12    # "x":I
    :cond_3
    new-instance v0, Lcom/gp/monolith/ExplodingCube;

    .line 565
    iget v1, p0, Lcom/gp/monolith/GameRenderer;->xoff:F

    int-to-float v2, v12

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 566
    iget v2, p0, Lcom/gp/monolith/GameRenderer;->yoff:F

    int-to-float v3, v13

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 567
    iget v3, p0, Lcom/gp/monolith/GameRenderer;->zoff:F

    .line 568
    iget-object v4, p0, Lcom/gp/monolith/GameRenderer;->randomgen:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float/2addr v4, v5

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v4, v5

    .line 569
    iget-object v5, p0, Lcom/gp/monolith/GameRenderer;->randomgen:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float/2addr v5, v6

    const/high16 v6, 0x41000000    # 8.0f

    mul-float/2addr v5, v6

    .line 570
    iget-object v6, p0, Lcom/gp/monolith/GameRenderer;->randomgen:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    sub-float/2addr v6, v7

    const/high16 v7, 0x40800000    # 4.0f

    mul-float/2addr v6, v7

    .line 571
    invoke-interface {p1, v12, v13}, Lcom/gp/monolith/Game;->getGridValue(II)I

    move-result v7

    .line 572
    const/4 v8, 0x0

    .line 563
    invoke-direct/range {v0 .. v8}, Lcom/gp/monolith/ExplodingCube;-><init>(FFFFFFII)V

    .line 575
    .local v0, "c":Lcom/gp/monolith/ExplodingCube;
    packed-switch v10, :pswitch_data_0

    .line 591
    const/4 v1, 0x0

    iput v1, v0, Lcom/gp/monolith/ExplodingCube;->explosionType:I

    .line 594
    :goto_2
    const/4 v1, 0x0

    iput v1, v0, Lcom/gp/monolith/ExplodingCube;->explosionType:I

    .line 596
    iget-object v1, p0, Lcom/gp/monolith/GameRenderer;->explodingCubes:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 597
    new-instance v11, Lcom/gp/monolith/ExplodingRing;

    iget v1, p0, Lcom/gp/monolith/GameRenderer;->xoff:F

    const/high16 v2, 0x41100000    # 9.0f

    add-float/2addr v1, v2

    iget v2, p0, Lcom/gp/monolith/GameRenderer;->yoff:F

    int-to-float v3, v13

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/gp/monolith/GameRenderer;->zoff:F

    invoke-direct {v11, v1, v2, v3}, Lcom/gp/monolith/ExplodingRing;-><init>(FFF)V

    .line 598
    .local v11, "r":Lcom/gp/monolith/ExplodingRing;
    iget-object v1, p0, Lcom/gp/monolith/GameRenderer;->explodingRings:Ljava/util/LinkedList;

    invoke-virtual {v1, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 561
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 578
    .end local v11    # "r":Lcom/gp/monolith/ExplodingRing;
    :pswitch_0
    const/4 v1, 0x0

    iput v1, v0, Lcom/gp/monolith/ExplodingCube;->explosionType:I

    goto :goto_2

    .line 581
    :pswitch_1
    const/4 v1, 0x1

    iput v1, v0, Lcom/gp/monolith/ExplodingCube;->explosionType:I

    goto :goto_2

    .line 584
    :pswitch_2
    const/4 v1, 0x2

    iput v1, v0, Lcom/gp/monolith/ExplodingCube;->explosionType:I

    goto :goto_2

    .line 588
    :pswitch_3
    const/4 v1, 0x3

    iput v1, v0, Lcom/gp/monolith/ExplodingCube;->explosionType:I

    goto :goto_2

    .line 575
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized doMoveDown()V
    .locals 2

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v0}, Lcom/gp/monolith/Game;->getStatus()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 219
    :goto_0
    monitor-exit p0

    return-void

    .line 205
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v0}, Lcom/gp/monolith/Game;->moveBlockDown()Z

    .line 207
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v0}, Lcom/gp/monolith/Game;->gameLoop()V

    .line 208
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v0}, Lcom/gp/monolith/Game;->isBlockPlaced()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    invoke-virtual {v0}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gp/monolith/Options;->isSoundEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->soundManager:Lcom/gp/monolith/Sound;

    const v1, 0x7f040005

    invoke-interface {v0, v1}, Lcom/gp/monolith/Sound;->playSound(I)V

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v0}, Lcom/gp/monolith/Game;->flagCompletedLines()V

    .line 218
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-virtual {p0, v0}, Lcom/gp/monolith/GameRenderer;->createExplosions(Lcom/gp/monolith/Game;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized doMoveLeft()V
    .locals 2

    .prologue
    .line 222
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v0}, Lcom/gp/monolith/Game;->getStatus()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 228
    :goto_0
    monitor-exit p0

    return-void

    .line 227
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v0}, Lcom/gp/monolith/Game;->moveBlockLeft()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized doMoveRight()V
    .locals 2

    .prologue
    .line 231
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v0}, Lcom/gp/monolith/Game;->getStatus()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 238
    :goto_0
    monitor-exit p0

    return-void

    .line 236
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v0}, Lcom/gp/monolith/Game;->moveBlockRight()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized doRotateBlock()V
    .locals 2

    .prologue
    .line 265
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v0}, Lcom/gp/monolith/Game;->getStatus()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 276
    :goto_0
    monitor-exit p0

    return-void

    .line 270
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    invoke-virtual {v0}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gp/monolith/Options;->isSoundEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->soundManager:Lcom/gp/monolith/Sound;

    const v1, 0x7f040008

    invoke-interface {v0, v1}, Lcom/gp/monolith/Sound;->playSound(I)V

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v0}, Lcom/gp/monolith/Game;->rotateCurrentBlockClockwise()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized doRotatePlayfield(II)V
    .locals 1
    .param p1, "zx"    # I
    .param p2, "zy"    # I

    .prologue
    .line 241
    monitor-enter p0

    int-to-float v0, p1

    :try_start_0
    iput v0, p0, Lcom/gp/monolith/GameRenderer;->zx:F

    .line 242
    int-to-float v0, p2

    iput v0, p0, Lcom/gp/monolith/GameRenderer;->zy:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    monitor-exit p0

    return-void

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized doRotatePlayfield(J)V
    .locals 7
    .param p1, "time"    # J

    .prologue
    const/4 v6, 0x1

    .line 246
    monitor-enter p0

    :try_start_0
    iget-wide v4, p0, Lcom/gp/monolith/GameRenderer;->startGameTime:J

    sub-long v2, p1, v4

    .line 247
    .local v2, "offset":J
    const-wide/32 v4, 0xea60

    rem-long v0, v2, v4

    .line 248
    .local v0, "chooser":J
    iget-object v4, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    invoke-virtual {v5}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gp/monolith/Options;->getGame()Lcom/gp/monolith/Game;

    move-result-object v5

    invoke-interface {v5}, Lcom/gp/monolith/Game;->getLevel()I

    move-result v5

    sub-int/2addr v5, v6

    aget-object v4, v4, v5

    long-to-int v5, v0

    invoke-virtual {v4, v5}, Lcom/gp/monolith/LinearInterpolator;->getValue(I)F

    move-result v4

    iput v4, p0, Lcom/gp/monolith/GameRenderer;->xy:F

    .line 249
    iget-object v4, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x1

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    invoke-virtual {v5}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gp/monolith/Options;->getGame()Lcom/gp/monolith/Game;

    move-result-object v5

    invoke-interface {v5}, Lcom/gp/monolith/Game;->getLevel()I

    move-result v5

    sub-int/2addr v5, v6

    aget-object v4, v4, v5

    long-to-int v5, v0

    invoke-virtual {v4, v5}, Lcom/gp/monolith/LinearInterpolator;->getValue(I)F

    move-result v4

    iput v4, p0, Lcom/gp/monolith/GameRenderer;->zy:F

    .line 250
    iget-object v4, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    invoke-virtual {v5}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gp/monolith/Options;->getGame()Lcom/gp/monolith/Game;

    move-result-object v5

    invoke-interface {v5}, Lcom/gp/monolith/Game;->getLevel()I

    move-result v5

    sub-int/2addr v5, v6

    aget-object v4, v4, v5

    long-to-int v5, v0

    invoke-virtual {v4, v5}, Lcom/gp/monolith/LinearInterpolator;->getValue(I)F

    move-result v4

    iput v4, p0, Lcom/gp/monolith/GameRenderer;->zx:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    monitor-exit p0

    return-void

    .line 246
    .end local v0    # "chooser":J
    .end local v2    # "offset":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized doRotatePlayfieldNormal(J)V
    .locals 7
    .param p1, "time"    # J

    .prologue
    const/4 v6, 0x1

    .line 257
    monitor-enter p0

    :try_start_0
    iget-wide v4, p0, Lcom/gp/monolith/GameRenderer;->startGameTime:J

    sub-long v2, p1, v4

    .line 258
    .local v2, "offset":J
    const-wide/32 v4, 0xea60

    rem-long v0, v2, v4

    .line 259
    .local v0, "chooser":J
    iget-object v4, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    invoke-virtual {v5}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gp/monolith/Options;->getGame()Lcom/gp/monolith/Game;

    move-result-object v5

    invoke-interface {v5}, Lcom/gp/monolith/Game;->getLevel()I

    move-result v5

    sub-int/2addr v5, v6

    aget-object v4, v4, v5

    long-to-int v5, v0

    invoke-virtual {v4, v5}, Lcom/gp/monolith/LinearInterpolator;->getValue(I)F

    move-result v4

    iput v4, p0, Lcom/gp/monolith/GameRenderer;->xy:F

    .line 260
    iget-object v4, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x1

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    invoke-virtual {v5}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gp/monolith/Options;->getGame()Lcom/gp/monolith/Game;

    move-result-object v5

    invoke-interface {v5}, Lcom/gp/monolith/Game;->getLevel()I

    move-result v5

    sub-int/2addr v5, v6

    aget-object v4, v4, v5

    long-to-int v5, v0

    invoke-virtual {v4, v5}, Lcom/gp/monolith/LinearInterpolator;->getValue(I)F

    move-result v4

    iput v4, p0, Lcom/gp/monolith/GameRenderer;->zy:F

    .line 261
    iget-object v4, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    invoke-virtual {v5}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gp/monolith/Options;->getGame()Lcom/gp/monolith/Game;

    move-result-object v5

    invoke-interface {v5}, Lcom/gp/monolith/Game;->getLevel()I

    move-result v5

    sub-int/2addr v5, v6

    aget-object v4, v4, v5

    long-to-int v5, v0

    invoke-virtual {v4, v5}, Lcom/gp/monolith/LinearInterpolator;->getValue(I)F

    move-result v4

    iput v4, p0, Lcom/gp/monolith/GameRenderer;->zx:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    monitor-exit p0

    return-void

    .line 257
    .end local v0    # "chooser":J
    .end local v2    # "offset":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method protected drawBlocks(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 9
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 377
    iget-object v5, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v5}, Lcom/gp/monolith/Game;->getClearedLines()[I

    move-result-object v1

    .line 379
    .local v1, "clearedlines":[I
    const/4 v4, 0x0

    .local v4, "y":I
    :goto_0
    const/16 v5, 0x14

    if-lt v4, v5, :cond_0

    .line 400
    return-void

    .line 381
    :cond_0
    const/4 v2, 0x0

    .line 382
    .local v2, "skipline":Z
    aget v5, v1, v4

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 384
    const/4 v2, 0x1

    .line 386
    :cond_1
    if-nez v2, :cond_2

    .line 388
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_1
    const/16 v5, 0xa

    if-lt v3, v5, :cond_3

    .line 379
    .end local v3    # "x":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 390
    .restart local v3    # "x":I
    :cond_3
    iget-object v5, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v5, v3, v4}, Lcom/gp/monolith/Game;->getGridValue(II)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 392
    iget-object v5, p0, Lcom/gp/monolith/GameRenderer;->mCube:[Lcom/gp/monolith/Cube;

    iget-object v6, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v6, v3, v4}, Lcom/gp/monolith/Game;->getGridValue(II)I

    move-result v6

    aget-object v0, v5, v6

    .line 393
    .local v0, "c":Lcom/gp/monolith/Cube;
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 394
    iget v5, p0, Lcom/gp/monolith/GameRenderer;->xoff:F

    int-to-float v6, v3

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    iget v6, p0, Lcom/gp/monolith/GameRenderer;->yoff:F

    int-to-float v7, v4

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/gp/monolith/GameRenderer;->zoff:F

    invoke-virtual {v0, v5, v6, v7}, Lcom/gp/monolith/Cube;->setPosition(FFF)V

    .line 395
    invoke-virtual {v0, p1}, Lcom/gp/monolith/Cube;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 388
    .end local v0    # "c":Lcom/gp/monolith/Cube;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method protected drawBlocks(Ljavax/microedition/khronos/opengles/GL10;Lcom/gp/monolith/Game;)V
    .locals 7
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "thegame"    # Lcom/gp/monolith/Game;

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 320
    const/4 v2, 0x0

    .local v2, "y":I
    :goto_0
    const/16 v3, 0x14

    if-lt v2, v3, :cond_0

    .line 333
    return-void

    .line 322
    :cond_0
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_1
    const/16 v3, 0xa

    if-lt v1, v3, :cond_1

    .line 320
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 324
    :cond_1
    invoke-interface {p2, v1, v2}, Lcom/gp/monolith/Game;->getGridValue(II)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 326
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->mCube:[Lcom/gp/monolith/Cube;

    invoke-interface {p2, v1, v2}, Lcom/gp/monolith/Game;->getGridValue(II)I

    move-result v4

    aget-object v0, v3, v4

    .line 327
    .local v0, "c":Lcom/gp/monolith/Cube;
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 328
    iget v3, p0, Lcom/gp/monolith/GameRenderer;->xoff:F

    int-to-float v4, v1

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    iget v4, p0, Lcom/gp/monolith/GameRenderer;->yoff:F

    int-to-float v5, v2

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/gp/monolith/GameRenderer;->zoff:F

    invoke-virtual {v0, v3, v4, v5}, Lcom/gp/monolith/Cube;->setPosition(FFF)V

    .line 329
    invoke-virtual {v0, p1}, Lcom/gp/monolith/Cube;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 322
    .end local v0    # "c":Lcom/gp/monolith/Cube;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected drawBlocks(Ljavax/microedition/khronos/opengles/GL10;Lcom/gp/monolith/Game;II)V
    .locals 10
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "thegame"    # Lcom/gp/monolith/Game;
    .param p3, "currentFrame"    # I
    .param p4, "maxFrame"    # I

    .prologue
    const/4 v9, -0x1

    const/high16 v8, 0x40000000    # 2.0f

    .line 336
    int-to-float v5, p3

    int-to-float v6, p4

    div-float v2, v5, v6

    .line 337
    .local v2, "upscalef":F
    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v1, v5, v2

    .line 338
    .local v1, "downscalef":F
    const/4 v4, 0x0

    .local v4, "y":I
    :goto_0
    const/16 v5, 0x14

    if-lt v4, v5, :cond_0

    .line 374
    return-void

    .line 340
    :cond_0
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_1
    const/16 v5, 0xa

    if-lt v3, v5, :cond_1

    .line 338
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 343
    :cond_1
    invoke-interface {p2, v3, v4}, Lcom/gp/monolith/Game;->getGridValue(II)I

    move-result v5

    if-eq v5, v9, :cond_4

    .line 345
    invoke-interface {p2, v3, v4}, Lcom/gp/monolith/Game;->getPreviousGridValue(II)I

    move-result v5

    if-ne v5, v9, :cond_3

    .line 347
    iget-object v5, p0, Lcom/gp/monolith/GameRenderer;->mCube:[Lcom/gp/monolith/Cube;

    invoke-interface {p2, v3, v4}, Lcom/gp/monolith/Game;->getGridValue(II)I

    move-result v6

    aget-object v0, v5, v6

    .line 348
    .local v0, "c":Lcom/gp/monolith/Cube;
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 349
    iget v5, p0, Lcom/gp/monolith/GameRenderer;->xoff:F

    int-to-float v6, v3

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    iget v6, p0, Lcom/gp/monolith/GameRenderer;->yoff:F

    int-to-float v7, v4

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/gp/monolith/GameRenderer;->zoff:F

    invoke-virtual {v0, v5, v6, v7}, Lcom/gp/monolith/Cube;->setPosition(FFF)V

    .line 350
    invoke-virtual {v0, p1, v2}, Lcom/gp/monolith/Cube;->draw(Ljavax/microedition/khronos/opengles/GL10;F)V

    .line 340
    .end local v0    # "c":Lcom/gp/monolith/Cube;
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 354
    :cond_3
    iget-object v5, p0, Lcom/gp/monolith/GameRenderer;->mCube:[Lcom/gp/monolith/Cube;

    invoke-interface {p2, v3, v4}, Lcom/gp/monolith/Game;->getGridValue(II)I

    move-result v6

    aget-object v0, v5, v6

    .line 355
    .restart local v0    # "c":Lcom/gp/monolith/Cube;
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 357
    iget v5, p0, Lcom/gp/monolith/GameRenderer;->xoff:F

    int-to-float v6, v3

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    iget v6, p0, Lcom/gp/monolith/GameRenderer;->yoff:F

    int-to-float v7, v4

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/gp/monolith/GameRenderer;->zoff:F

    invoke-virtual {v0, v5, v6, v7}, Lcom/gp/monolith/Cube;->setPosition(FFF)V

    .line 358
    invoke-virtual {v0, p1}, Lcom/gp/monolith/Cube;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_2

    .line 363
    .end local v0    # "c":Lcom/gp/monolith/Cube;
    :cond_4
    invoke-interface {p2, v3, v4}, Lcom/gp/monolith/Game;->getPreviousGridValue(II)I

    move-result v5

    if-eq v5, v9, :cond_2

    .line 365
    iget-object v5, p0, Lcom/gp/monolith/GameRenderer;->mCube:[Lcom/gp/monolith/Cube;

    invoke-interface {p2, v3, v4}, Lcom/gp/monolith/Game;->getPreviousGridValue(II)I

    move-result v6

    aget-object v0, v5, v6

    .line 366
    .restart local v0    # "c":Lcom/gp/monolith/Cube;
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 367
    iget v5, p0, Lcom/gp/monolith/GameRenderer;->xoff:F

    int-to-float v6, v3

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    iget v6, p0, Lcom/gp/monolith/GameRenderer;->yoff:F

    int-to-float v7, v4

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/gp/monolith/GameRenderer;->zoff:F

    invoke-virtual {v0, v5, v6, v7}, Lcom/gp/monolith/Cube;->setPosition(FFF)V

    .line 368
    invoke-virtual {v0, p1, v1}, Lcom/gp/monolith/Cube;->draw(Ljavax/microedition/khronos/opengles/GL10;F)V

    goto :goto_2
.end method

.method protected drawCubeExplosion(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const v7, -0x41666666    # -0.3f

    .line 464
    iget-object v5, p0, Lcom/gp/monolith/GameRenderer;->explodingCubes:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 465
    .local v2, "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/gp/monolith/ExplodingCube;>;"
    const/4 v0, 0x0

    .line 466
    .local v0, "c":Lcom/gp/monolith/ExplodingCube;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 467
    .local v3, "now":J
    if-eqz v2, :cond_0

    .line 470
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 523
    :cond_0
    return-void

    .line 473
    :cond_1
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "c":Lcom/gp/monolith/ExplodingCube;
    check-cast v0, Lcom/gp/monolith/ExplodingCube;

    .line 474
    .restart local v0    # "c":Lcom/gp/monolith/ExplodingCube;
    iget v5, v0, Lcom/gp/monolith/ExplodingCube;->frame:I

    const/16 v6, 0x64

    if-le v5, v6, :cond_2

    .line 477
    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 481
    :cond_2
    iget-wide v5, v0, Lcom/gp/monolith/ExplodingCube;->startTime:J

    sub-long v5, v3, v5

    long-to-float v5, v5

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float v1, v5, v6

    .line 482
    .local v1, "elapsedTime":F
    invoke-virtual {p0, p1, v0}, Lcom/gp/monolith/GameRenderer;->drawExplodingCube(Ljavax/microedition/khronos/opengles/GL10;Lcom/gp/monolith/ExplodingCube;)V

    .line 483
    iget v5, v0, Lcom/gp/monolith/ExplodingCube;->explosionType:I

    packed-switch v5, :pswitch_data_0

    .line 512
    iget v5, v0, Lcom/gp/monolith/ExplodingCube;->x:F

    iget v6, v0, Lcom/gp/monolith/ExplodingCube;->ux:F

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, v0, Lcom/gp/monolith/ExplodingCube;->x:F

    .line 513
    iget v5, v0, Lcom/gp/monolith/ExplodingCube;->y:F

    iget v6, v0, Lcom/gp/monolith/ExplodingCube;->uy:F

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, v0, Lcom/gp/monolith/ExplodingCube;->y:F

    .line 514
    iget v5, v0, Lcom/gp/monolith/ExplodingCube;->z:F

    iget v6, v0, Lcom/gp/monolith/ExplodingCube;->uz:F

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, v0, Lcom/gp/monolith/ExplodingCube;->z:F

    .line 515
    iget v5, v0, Lcom/gp/monolith/ExplodingCube;->uy:F

    mul-float v6, v1, v7

    add-float/2addr v5, v6

    iput v5, v0, Lcom/gp/monolith/ExplodingCube;->uy:F

    .line 517
    :goto_1
    iget v5, v0, Lcom/gp/monolith/ExplodingCube;->frame:I

    add-int/lit8 v5, v5, 0x1

    .line 519
    iput v5, v0, Lcom/gp/monolith/ExplodingCube;->frame:I

    goto :goto_0

    .line 486
    :pswitch_0
    iget v5, v0, Lcom/gp/monolith/ExplodingCube;->x:F

    iget v6, v0, Lcom/gp/monolith/ExplodingCube;->ux:F

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, v0, Lcom/gp/monolith/ExplodingCube;->x:F

    .line 487
    iget v5, v0, Lcom/gp/monolith/ExplodingCube;->y:F

    iget v6, v0, Lcom/gp/monolith/ExplodingCube;->uy:F

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, v0, Lcom/gp/monolith/ExplodingCube;->y:F

    .line 488
    iget v5, v0, Lcom/gp/monolith/ExplodingCube;->z:F

    iget v6, v0, Lcom/gp/monolith/ExplodingCube;->uz:F

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, v0, Lcom/gp/monolith/ExplodingCube;->z:F

    .line 489
    iget v5, v0, Lcom/gp/monolith/ExplodingCube;->uy:F

    mul-float v6, v1, v7

    add-float/2addr v5, v6

    iput v5, v0, Lcom/gp/monolith/ExplodingCube;->uy:F

    goto :goto_1

    .line 493
    :pswitch_1
    iget v5, v0, Lcom/gp/monolith/ExplodingCube;->x:F

    iget v6, v0, Lcom/gp/monolith/ExplodingCube;->ux:F

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, v0, Lcom/gp/monolith/ExplodingCube;->x:F

    .line 494
    iget v5, v0, Lcom/gp/monolith/ExplodingCube;->y:F

    iget v6, v0, Lcom/gp/monolith/ExplodingCube;->uy:F

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, v0, Lcom/gp/monolith/ExplodingCube;->y:F

    .line 495
    iget v5, v0, Lcom/gp/monolith/ExplodingCube;->z:F

    iget v6, v0, Lcom/gp/monolith/ExplodingCube;->uz:F

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, v0, Lcom/gp/monolith/ExplodingCube;->z:F

    .line 496
    iget v5, v0, Lcom/gp/monolith/ExplodingCube;->uy:F

    mul-float v6, v1, v7

    add-float/2addr v5, v6

    iput v5, v0, Lcom/gp/monolith/ExplodingCube;->uy:F

    goto :goto_1

    .line 500
    :pswitch_2
    iget v5, v0, Lcom/gp/monolith/ExplodingCube;->x:F

    iget v6, v0, Lcom/gp/monolith/ExplodingCube;->ux:F

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, v0, Lcom/gp/monolith/ExplodingCube;->x:F

    .line 501
    iget v5, v0, Lcom/gp/monolith/ExplodingCube;->y:F

    iget v6, v0, Lcom/gp/monolith/ExplodingCube;->uy:F

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, v0, Lcom/gp/monolith/ExplodingCube;->y:F

    .line 502
    iget v5, v0, Lcom/gp/monolith/ExplodingCube;->z:F

    iget v6, v0, Lcom/gp/monolith/ExplodingCube;->uz:F

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, v0, Lcom/gp/monolith/ExplodingCube;->z:F

    .line 503
    iget v5, v0, Lcom/gp/monolith/ExplodingCube;->uy:F

    mul-float v6, v1, v7

    add-float/2addr v5, v6

    iput v5, v0, Lcom/gp/monolith/ExplodingCube;->uy:F

    goto :goto_1

    .line 506
    :pswitch_3
    iget v5, v0, Lcom/gp/monolith/ExplodingCube;->x:F

    iget v6, v0, Lcom/gp/monolith/ExplodingCube;->ux:F

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, v0, Lcom/gp/monolith/ExplodingCube;->x:F

    .line 507
    iget v5, v0, Lcom/gp/monolith/ExplodingCube;->y:F

    iget v6, v0, Lcom/gp/monolith/ExplodingCube;->uy:F

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, v0, Lcom/gp/monolith/ExplodingCube;->y:F

    .line 508
    iget v5, v0, Lcom/gp/monolith/ExplodingCube;->z:F

    iget v6, v0, Lcom/gp/monolith/ExplodingCube;->uz:F

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, v0, Lcom/gp/monolith/ExplodingCube;->z:F

    .line 509
    iget v5, v0, Lcom/gp/monolith/ExplodingCube;->uy:F

    mul-float v6, v1, v7

    add-float/2addr v5, v6

    iput v5, v0, Lcom/gp/monolith/ExplodingCube;->uy:F

    goto/16 :goto_1

    .line 483
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected drawExplodingCube(Ljavax/microedition/khronos/opengles/GL10;Lcom/gp/monolith/ExplodingCube;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "c"    # Lcom/gp/monolith/ExplodingCube;

    .prologue
    .line 313
    iget-object v1, p0, Lcom/gp/monolith/GameRenderer;->mCube:[Lcom/gp/monolith/Cube;

    iget v2, p2, Lcom/gp/monolith/ExplodingCube;->blocktype:I

    aget-object v0, v1, v2

    .line 314
    .local v0, "dc":Lcom/gp/monolith/Cube;
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 315
    iget v1, p2, Lcom/gp/monolith/ExplodingCube;->x:F

    iget v2, p2, Lcom/gp/monolith/ExplodingCube;->y:F

    iget v3, p2, Lcom/gp/monolith/ExplodingCube;->z:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/gp/monolith/Cube;->setPosition(FFF)V

    .line 316
    invoke-virtual {v0, p1}, Lcom/gp/monolith/Cube;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 317
    return-void
.end method

.method protected drawFallingBlock(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 12
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v11, 0x4

    const/high16 v10, -0x3ee00000    # -10.0f

    const/high16 v9, 0x40000000    # 2.0f

    .line 403
    const/4 v3, 0x0

    .line 404
    .local v3, "result":I
    const/4 v2, 0x0

    .line 405
    .local v2, "offset":F
    iget-object v5, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v5}, Lcom/gp/monolith/Game;->getStatus()I

    move-result v5

    if-ne v5, v11, :cond_1

    .line 407
    const/4 v3, 0x0

    .line 414
    :goto_0
    const/high16 v4, 0x41a80000    # 21.0f

    .line 415
    .local v4, "ystart":F
    iget-object v5, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v5}, Lcom/gp/monolith/Game;->getCurrentBlock()Lcom/gp/monolith/Block;

    move-result-object v5

    iget v5, v5, Lcom/gp/monolith/Block;->color:I

    if-ltz v5, :cond_0

    iget-object v5, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v5}, Lcom/gp/monolith/Game;->getCurrentBlock()Lcom/gp/monolith/Block;

    move-result-object v5

    iget v5, v5, Lcom/gp/monolith/Block;->color:I

    iget-object v6, p0, Lcom/gp/monolith/GameRenderer;->mCube:[Lcom/gp/monolith/Cube;

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 417
    iget-object v5, p0, Lcom/gp/monolith/GameRenderer;->mCube:[Lcom/gp/monolith/Cube;

    iget-object v6, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v6}, Lcom/gp/monolith/Game;->getCurrentBlock()Lcom/gp/monolith/Block;

    move-result-object v6

    iget v6, v6, Lcom/gp/monolith/Block;->color:I

    aget-object v0, v5, v6

    .line 419
    .local v0, "c":Lcom/gp/monolith/Cube;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v11, :cond_2

    .line 433
    .end local v0    # "c":Lcom/gp/monolith/Cube;
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 411
    .end local v4    # "ystart":F
    :cond_1
    iget-wide v5, p0, Lcom/gp/monolith/GameRenderer;->now:J

    iget-wide v7, p0, Lcom/gp/monolith/GameRenderer;->lastcalltime:J

    sub-long/2addr v5, v7

    iget-object v7, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v7}, Lcom/gp/monolith/Game;->getTimer()I

    move-result v7

    int-to-long v7, v7

    rem-long/2addr v5, v7

    long-to-int v3, v5

    .line 412
    iget-wide v5, p0, Lcom/gp/monolith/GameRenderer;->now:J

    iget-wide v7, p0, Lcom/gp/monolith/GameRenderer;->lastcalltime:J

    sub-long/2addr v5, v7

    iget-object v7, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v7}, Lcom/gp/monolith/Game;->getTimer()I

    move-result v7

    int-to-long v7, v7

    rem-long/2addr v5, v7

    long-to-float v5, v5

    iget-object v6, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v6}, Lcom/gp/monolith/Game;->getTimer()I

    move-result v6

    int-to-float v6, v6

    div-float v2, v5, v6

    goto :goto_0

    .line 421
    .restart local v0    # "c":Lcom/gp/monolith/Cube;
    .restart local v1    # "i":I
    .restart local v4    # "ystart":F
    :cond_2
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 422
    if-eqz v3, :cond_3

    iget-object v5, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v5}, Lcom/gp/monolith/Game;->canMoveBlockDown()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 424
    iget-object v5, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v5}, Lcom/gp/monolith/Game;->getCurrentBlock()Lcom/gp/monolith/Block;

    move-result-object v5

    iget v5, v5, Lcom/gp/monolith/Block;->xPos:I

    iget-object v6, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v6}, Lcom/gp/monolith/Game;->getCurrentBlock()Lcom/gp/monolith/Block;

    move-result-object v6

    iget-object v6, v6, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/gp/monolith/SubBlock;->xpos:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v9

    add-float/2addr v5, v10

    iget-object v6, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v6}, Lcom/gp/monolith/Game;->getCurrentBlock()Lcom/gp/monolith/Block;

    move-result-object v6

    iget v6, v6, Lcom/gp/monolith/Block;->yPos:I

    iget-object v7, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v7}, Lcom/gp/monolith/Game;->getCurrentBlock()Lcom/gp/monolith/Block;

    move-result-object v7

    iget-object v7, v7, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v7, v7, v1

    iget v7, v7, Lcom/gp/monolith/SubBlock;->ypos:I

    add-int/2addr v6, v7

    neg-int v6, v6

    int-to-float v6, v6

    mul-float/2addr v6, v9

    add-float/2addr v6, v4

    mul-float v7, v2, v9

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/gp/monolith/GameRenderer;->zoff:F

    invoke-virtual {v0, v5, v6, v7}, Lcom/gp/monolith/Cube;->setPosition(FFF)V

    .line 430
    :goto_2
    invoke-virtual {v0, p1}, Lcom/gp/monolith/Cube;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 419
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 428
    :cond_3
    iget-object v5, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v5}, Lcom/gp/monolith/Game;->getCurrentBlock()Lcom/gp/monolith/Block;

    move-result-object v5

    iget v5, v5, Lcom/gp/monolith/Block;->xPos:I

    iget-object v6, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v6}, Lcom/gp/monolith/Game;->getCurrentBlock()Lcom/gp/monolith/Block;

    move-result-object v6

    iget-object v6, v6, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/gp/monolith/SubBlock;->xpos:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v9

    add-float/2addr v5, v10

    iget-object v6, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v6}, Lcom/gp/monolith/Game;->getCurrentBlock()Lcom/gp/monolith/Block;

    move-result-object v6

    iget v6, v6, Lcom/gp/monolith/Block;->yPos:I

    iget-object v7, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v7}, Lcom/gp/monolith/Game;->getCurrentBlock()Lcom/gp/monolith/Block;

    move-result-object v7

    iget-object v7, v7, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v7, v7, v1

    iget v7, v7, Lcom/gp/monolith/SubBlock;->ypos:I

    add-int/2addr v6, v7

    neg-int v6, v6

    int-to-float v6, v6

    mul-float/2addr v6, v9

    add-float/2addr v6, v4

    iget v7, p0, Lcom/gp/monolith/GameRenderer;->zoff:F

    invoke-virtual {v0, v5, v6, v7}, Lcom/gp/monolith/Cube;->setPosition(FFF)V

    goto :goto_2
.end method

.method protected drawFallingBlock(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 10
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "result"    # I

    .prologue
    const/high16 v9, -0x3ee00000    # -10.0f

    const/high16 v8, 0x40000000    # 2.0f

    .line 437
    const/4 v2, 0x0

    .line 439
    .local v2, "offset":F
    iget-wide v4, p0, Lcom/gp/monolith/GameRenderer;->timeaccumulator:J

    iget-object v6, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v6}, Lcom/gp/monolith/Game;->getTimer()I

    move-result v6

    int-to-long v6, v6

    rem-long/2addr v4, v6

    long-to-float v4, v4

    iget-object v5, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v5}, Lcom/gp/monolith/Game;->getTimer()I

    move-result v5

    int-to-float v5, v5

    div-float v2, v4, v5

    .line 441
    const/high16 v3, 0x41a80000    # 21.0f

    .line 442
    .local v3, "ystart":F
    iget-object v4, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v4}, Lcom/gp/monolith/Game;->getCurrentBlock()Lcom/gp/monolith/Block;

    move-result-object v4

    iget v4, v4, Lcom/gp/monolith/Block;->color:I

    if-ltz v4, :cond_0

    iget-object v4, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v4}, Lcom/gp/monolith/Game;->getCurrentBlock()Lcom/gp/monolith/Block;

    move-result-object v4

    iget v4, v4, Lcom/gp/monolith/Block;->color:I

    iget-object v5, p0, Lcom/gp/monolith/GameRenderer;->mCube:[Lcom/gp/monolith/Cube;

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 444
    iget-object v4, p0, Lcom/gp/monolith/GameRenderer;->mCube:[Lcom/gp/monolith/Cube;

    iget-object v5, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v5}, Lcom/gp/monolith/Game;->getCurrentBlock()Lcom/gp/monolith/Block;

    move-result-object v5

    iget v5, v5, Lcom/gp/monolith/Block;->color:I

    aget-object v0, v4, v5

    .line 446
    .local v0, "c":Lcom/gp/monolith/Cube;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v4, 0x4

    if-lt v1, v4, :cond_1

    .line 460
    .end local v0    # "c":Lcom/gp/monolith/Cube;
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 448
    .restart local v0    # "c":Lcom/gp/monolith/Cube;
    .restart local v1    # "i":I
    :cond_1
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 449
    if-eqz p2, :cond_2

    iget-object v4, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v4}, Lcom/gp/monolith/Game;->canMoveBlockDown()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 451
    iget-object v4, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v4}, Lcom/gp/monolith/Game;->getCurrentBlock()Lcom/gp/monolith/Block;

    move-result-object v4

    iget v4, v4, Lcom/gp/monolith/Block;->xPos:I

    iget-object v5, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v5}, Lcom/gp/monolith/Game;->getCurrentBlock()Lcom/gp/monolith/Block;

    move-result-object v5

    iget-object v5, v5, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/gp/monolith/SubBlock;->xpos:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v8

    add-float/2addr v4, v9

    iget-object v5, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v5}, Lcom/gp/monolith/Game;->getCurrentBlock()Lcom/gp/monolith/Block;

    move-result-object v5

    iget v5, v5, Lcom/gp/monolith/Block;->yPos:I

    iget-object v6, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v6}, Lcom/gp/monolith/Game;->getCurrentBlock()Lcom/gp/monolith/Block;

    move-result-object v6

    iget-object v6, v6, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/gp/monolith/SubBlock;->ypos:I

    add-int/2addr v5, v6

    neg-int v5, v5

    int-to-float v5, v5

    mul-float/2addr v5, v8

    add-float/2addr v5, v3

    mul-float v6, v2, v8

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/gp/monolith/GameRenderer;->zoff:F

    invoke-virtual {v0, v4, v5, v6}, Lcom/gp/monolith/Cube;->setPosition(FFF)V

    .line 457
    :goto_1
    invoke-virtual {v0, p1}, Lcom/gp/monolith/Cube;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 446
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 455
    :cond_2
    iget-object v4, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v4}, Lcom/gp/monolith/Game;->getCurrentBlock()Lcom/gp/monolith/Block;

    move-result-object v4

    iget v4, v4, Lcom/gp/monolith/Block;->xPos:I

    iget-object v5, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v5}, Lcom/gp/monolith/Game;->getCurrentBlock()Lcom/gp/monolith/Block;

    move-result-object v5

    iget-object v5, v5, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/gp/monolith/SubBlock;->xpos:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v8

    add-float/2addr v4, v9

    iget-object v5, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v5}, Lcom/gp/monolith/Game;->getCurrentBlock()Lcom/gp/monolith/Block;

    move-result-object v5

    iget v5, v5, Lcom/gp/monolith/Block;->yPos:I

    iget-object v6, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v6}, Lcom/gp/monolith/Game;->getCurrentBlock()Lcom/gp/monolith/Block;

    move-result-object v6

    iget-object v6, v6, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/gp/monolith/SubBlock;->ypos:I

    add-int/2addr v5, v6

    neg-int v5, v5

    int-to-float v5, v5

    mul-float/2addr v5, v8

    add-float/2addr v5, v3

    iget v6, p0, Lcom/gp/monolith/GameRenderer;->zoff:F

    invoke-virtual {v0, v4, v5, v6}, Lcom/gp/monolith/Cube;->setPosition(FFF)V

    goto :goto_1
.end method

.method protected drawIntroScreen(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 9
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    const/4 v4, 0x4

    const/high16 v8, 0x41900000    # 18.0f

    .line 707
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 708
    .local v0, "now":J
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->demogame:Lcom/gp/monolith/Game;

    invoke-interface {v3}, Lcom/gp/monolith/Game;->getStatus()I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 710
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->demogame:Lcom/gp/monolith/Game;

    invoke-interface {v3, v4}, Lcom/gp/monolith/Game;->setStatus(I)V

    .line 712
    :cond_0
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->demogame:Lcom/gp/monolith/Game;

    invoke-interface {v3}, Lcom/gp/monolith/Game;->getCurrentStep()I

    move-result v3

    const/16 v4, 0x32

    if-le v3, v4, :cond_1

    .line 714
    invoke-virtual {p0}, Lcom/gp/monolith/GameRenderer;->setupDemoGrid()V

    .line 715
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->demogame:Lcom/gp/monolith/Game;

    const/16 v4, 0x64

    invoke-interface {v3, v4}, Lcom/gp/monolith/Game;->setEnergy(I)V

    .line 716
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->demogame:Lcom/gp/monolith/Game;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/gp/monolith/Game;->setStep(I)V

    .line 718
    :cond_1
    iget-wide v3, p0, Lcom/gp/monolith/GameRenderer;->lastcalltime:J

    sub-long v3, v0, v3

    iget-object v5, p0, Lcom/gp/monolith/GameRenderer;->demogame:Lcom/gp/monolith/Game;

    invoke-interface {v5}, Lcom/gp/monolith/Game;->getTimer()I

    move-result v5

    int-to-long v5, v5

    rem-long/2addr v3, v5

    long-to-int v2, v3

    .line 719
    .local v2, "result":I
    mul-int/lit8 v3, v2, 0xa

    iget-object v4, p0, Lcom/gp/monolith/GameRenderer;->demogame:Lcom/gp/monolith/Game;

    invoke-interface {v4}, Lcom/gp/monolith/Game;->getTimer()I

    move-result v4

    div-int v2, v3, v4

    .line 723
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->mMoon:Lcom/gp/monolith/Square;

    iget v4, p0, Lcom/gp/monolith/GameRenderer;->xoff:F

    const/high16 v5, 0x41500000    # 13.0f

    add-float/2addr v4, v5

    iget v5, p0, Lcom/gp/monolith/GameRenderer;->yoff:F

    const/high16 v6, 0x41b00000    # 22.0f

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/gp/monolith/GameRenderer;->zoff:F

    const/high16 v7, 0x42480000    # 50.0f

    sub-float/2addr v6, v7

    invoke-virtual {v3, v4, v5, v6}, Lcom/gp/monolith/Square;->setPosition(FFF)V

    .line 724
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->mMoon:Lcom/gp/monolith/Square;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, p1, v8, v8, v4}, Lcom/gp/monolith/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFF)V

    .line 732
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->demogame:Lcom/gp/monolith/Game;

    const/16 v4, 0xa

    invoke-virtual {p0, p1, v3, v2, v4}, Lcom/gp/monolith/GameRenderer;->drawBlocks(Ljavax/microedition/khronos/opengles/GL10;Lcom/gp/monolith/Game;II)V

    .line 737
    return-void
.end method

.method protected drawIntroScreen(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Canvas;II)V
    .locals 7
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v4, 0x4

    .line 675
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 676
    .local v0, "now":J
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->demogame:Lcom/gp/monolith/Game;

    invoke-interface {v3}, Lcom/gp/monolith/Game;->getStatus()I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 678
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->demogame:Lcom/gp/monolith/Game;

    invoke-interface {v3, v4}, Lcom/gp/monolith/Game;->setStatus(I)V

    .line 680
    :cond_0
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->demogame:Lcom/gp/monolith/Game;

    invoke-interface {v3}, Lcom/gp/monolith/Game;->getCurrentStep()I

    move-result v3

    const/16 v4, 0x32

    if-le v3, v4, :cond_1

    .line 682
    invoke-virtual {p0}, Lcom/gp/monolith/GameRenderer;->setupDemoGrid()V

    .line 683
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->demogame:Lcom/gp/monolith/Game;

    const/16 v4, 0x64

    invoke-interface {v3, v4}, Lcom/gp/monolith/Game;->setEnergy(I)V

    .line 684
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->demogame:Lcom/gp/monolith/Game;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/gp/monolith/Game;->setStep(I)V

    .line 686
    :cond_1
    const/4 v2, 0x0

    .line 687
    .local v2, "result":I
    iget-wide v3, p0, Lcom/gp/monolith/GameRenderer;->lastcalltime:J

    sub-long v3, v0, v3

    iget-object v5, p0, Lcom/gp/monolith/GameRenderer;->demogame:Lcom/gp/monolith/Game;

    invoke-interface {v5}, Lcom/gp/monolith/Game;->getTimer()I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 689
    const/16 v2, 0xa

    .line 698
    :goto_0
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->demogame:Lcom/gp/monolith/Game;

    const/16 v4, 0xa

    invoke-virtual {p0, p1, v3, v2, v4}, Lcom/gp/monolith/GameRenderer;->drawBlocks(Ljavax/microedition/khronos/opengles/GL10;Lcom/gp/monolith/Game;II)V

    .line 704
    return-void

    .line 693
    :cond_2
    iget-wide v3, p0, Lcom/gp/monolith/GameRenderer;->lastcalltime:J

    sub-long v3, v0, v3

    iget-object v5, p0, Lcom/gp/monolith/GameRenderer;->demogame:Lcom/gp/monolith/Game;

    invoke-interface {v5}, Lcom/gp/monolith/Game;->getTimer()I

    move-result v5

    int-to-long v5, v5

    rem-long/2addr v3, v5

    long-to-int v2, v3

    .line 694
    mul-int/lit8 v3, v2, 0xa

    iget-object v4, p0, Lcom/gp/monolith/GameRenderer;->demogame:Lcom/gp/monolith/Game;

    invoke-interface {v4}, Lcom/gp/monolith/Game;->getTimer()I

    move-result v4

    div-int v2, v3, v4

    goto :goto_0
.end method

.method protected drawNextPiece(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 290
    iget-object v2, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v2}, Lcom/gp/monolith/Game;->getNextBlock()Lcom/gp/monolith/Block;

    move-result-object v2

    iget v2, v2, Lcom/gp/monolith/Block;->color:I

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v2}, Lcom/gp/monolith/Game;->getNextBlock()Lcom/gp/monolith/Block;

    move-result-object v2

    iget v2, v2, Lcom/gp/monolith/Block;->color:I

    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->mCube:[Lcom/gp/monolith/Cube;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 292
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 293
    iget-object v2, p0, Lcom/gp/monolith/GameRenderer;->mCube:[Lcom/gp/monolith/Cube;

    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v3}, Lcom/gp/monolith/Game;->getNextBlock()Lcom/gp/monolith/Block;

    move-result-object v3

    iget v3, v3, Lcom/gp/monolith/Block;->color:I

    aget-object v0, v2, v3

    .line 295
    .local v0, "c":Lcom/gp/monolith/Cube;
    const/high16 v2, 0x41900000    # 18.0f

    invoke-interface {p1, v2, v4, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 296
    iget v2, p0, Lcom/gp/monolith/GameRenderer;->rangle:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {p1, v2, v4, v4, v3}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 297
    const/high16 v2, -0x3f000000    # -8.0f

    const/high16 v3, -0x40000000    # -2.0f

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 298
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    .line 306
    .end local v0    # "c":Lcom/gp/monolith/Cube;
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 300
    .restart local v0    # "c":Lcom/gp/monolith/Cube;
    .restart local v1    # "i":I
    :cond_1
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 301
    iget-object v2, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v2}, Lcom/gp/monolith/Game;->getNextBlock()Lcom/gp/monolith/Block;

    move-result-object v2

    iget v2, v2, Lcom/gp/monolith/Block;->xPos:I

    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v3}, Lcom/gp/monolith/Game;->getNextBlock()Lcom/gp/monolith/Block;

    move-result-object v3

    iget-object v3, v3, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/gp/monolith/SubBlock;->xpos:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v5

    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v3}, Lcom/gp/monolith/Game;->getNextBlock()Lcom/gp/monolith/Block;

    move-result-object v3

    iget v3, v3, Lcom/gp/monolith/Block;->yPos:I

    iget-object v4, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v4}, Lcom/gp/monolith/Game;->getNextBlock()Lcom/gp/monolith/Block;

    move-result-object v4

    iget-object v4, v4, Lcom/gp/monolith/Block;->subblocks:[Lcom/gp/monolith/SubBlock;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/gp/monolith/SubBlock;->ypos:I

    add-int/2addr v3, v4

    neg-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    iget v4, p0, Lcom/gp/monolith/GameRenderer;->zoff:F

    invoke-virtual {v0, v2, v3, v4}, Lcom/gp/monolith/Cube;->setPosition(FFF)V

    .line 302
    invoke-virtual {v0, p1}, Lcom/gp/monolith/Cube;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 303
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 298
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected drawPlayfield(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/high16 v6, 0x41980000    # 19.0f

    const/high16 v5, 0x41a00000    # 20.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 639
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 640
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->mPlayfieldCube:Lcom/gp/monolith/Cube;

    iget v1, p0, Lcom/gp/monolith/GameRenderer;->xoff:F

    const/high16 v2, 0x40000000    # 2.0f

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/gp/monolith/GameRenderer;->yoff:F

    sub-float/2addr v2, v6

    iget v3, p0, Lcom/gp/monolith/GameRenderer;->zoff:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/gp/monolith/Cube;->setPosition(FFF)V

    .line 641
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->mPlayfieldCube:Lcom/gp/monolith/Cube;

    invoke-virtual {v0, p1, v4, v5, v4}, Lcom/gp/monolith/Cube;->draw(Ljavax/microedition/khronos/opengles/GL10;FFF)V

    .line 642
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 643
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->mPlayfieldCube:Lcom/gp/monolith/Cube;

    iget v1, p0, Lcom/gp/monolith/GameRenderer;->xoff:F

    add-float/2addr v1, v5

    iget v2, p0, Lcom/gp/monolith/GameRenderer;->yoff:F

    sub-float/2addr v2, v6

    iget v3, p0, Lcom/gp/monolith/GameRenderer;->zoff:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/gp/monolith/Cube;->setPosition(FFF)V

    .line 644
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->mPlayfieldCube:Lcom/gp/monolith/Cube;

    invoke-virtual {v0, p1, v4, v5, v4}, Lcom/gp/monolith/Cube;->draw(Ljavax/microedition/khronos/opengles/GL10;FFF)V

    .line 645
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 646
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->mPlayfieldCube:Lcom/gp/monolith/Cube;

    iget v1, p0, Lcom/gp/monolith/GameRenderer;->xoff:F

    const/high16 v2, 0x41100000    # 9.0f

    add-float/2addr v1, v2

    iget v2, p0, Lcom/gp/monolith/GameRenderer;->yoff:F

    const/high16 v3, 0x42200000    # 40.0f

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/gp/monolith/GameRenderer;->zoff:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/gp/monolith/Cube;->setPosition(FFF)V

    .line 647
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->mPlayfieldCube:Lcom/gp/monolith/Cube;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, p1, v1, v4, v4}, Lcom/gp/monolith/Cube;->draw(Ljavax/microedition/khronos/opengles/GL10;FFF)V

    .line 651
    return-void
.end method

.method protected drawRingExplosions(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 10
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 526
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->explodingRings:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v6

    .line 527
    .local v6, "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/gp/monolith/ExplodingRing;>;"
    const/4 v9, 0x0

    .line 528
    .local v9, "r":Lcom/gp/monolith/ExplodingRing;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 529
    .local v7, "now":J
    if-eqz v6, :cond_0

    .line 532
    :goto_0
    invoke-interface {v6}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 551
    :cond_0
    return-void

    .line 535
    :cond_1
    invoke-interface {v6}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "r":Lcom/gp/monolith/ExplodingRing;
    check-cast v9, Lcom/gp/monolith/ExplodingRing;

    .line 536
    .restart local v9    # "r":Lcom/gp/monolith/ExplodingRing;
    iget-wide v0, v9, Lcom/gp/monolith/ExplodingRing;->frame:J

    const-wide/16 v3, 0x7

    cmp-long v0, v0, v3

    if-lez v0, :cond_2

    .line 539
    invoke-interface {v6}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 544
    :cond_2
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->mExplosionRing:Lcom/gp/monolith/Square;

    iget v1, v9, Lcom/gp/monolith/ExplodingRing;->x:F

    iget v3, v9, Lcom/gp/monolith/ExplodingRing;->y:F

    iget v4, v9, Lcom/gp/monolith/ExplodingRing;->z:F

    invoke-virtual {v0, v1, v3, v4}, Lcom/gp/monolith/Square;->setPosition(FFF)V

    .line 545
    iget-wide v0, v9, Lcom/gp/monolith/ExplodingRing;->frame:J

    long-to-float v0, v0

    const v1, 0x4019999a    # 2.4f

    mul-float v2, v0, v1

    .line 546
    .local v2, "scale":F
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->mExplosionRing:Lcom/gp/monolith/Square;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x42b40000    # 90.0f

    move-object v1, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/gp/monolith/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 547
    iget-wide v0, v9, Lcom/gp/monolith/ExplodingRing;->frame:J

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    iput-wide v0, v9, Lcom/gp/monolith/ExplodingRing;->frame:J

    goto :goto_0
.end method

.method protected drawStarfield(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 310
    return-void
.end method

.method public getGameOverlay()Lcom/gp/monolith/GameOverlay;
    .locals 1

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    return-object v0
.end method

.method public initLinearInterpolators()V
    .locals 11

    .prologue
    const v10, 0xea60

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1249
    const/4 v3, 0x3

    const/16 v4, 0xa

    filled-new-array {v9, v3, v4}, [I

    move-result-object v3

    const-class v4, Lcom/gp/monolith/LinearInterpolator;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[[Lcom/gp/monolith/LinearInterpolator;

    iput-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    .line 1250
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-lt v0, v9, :cond_0

    .line 1262
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1263
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1264
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1265
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    const/high16 v4, 0x42700000    # 60.0f

    const/16 v5, 0x7530

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1266
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1267
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v9

    aget-object v3, v3, v6

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1268
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v9

    aget-object v3, v3, v6

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1271
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1272
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    const/high16 v4, 0x42700000    # 60.0f

    const/16 v5, 0x3a98

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1273
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    const/16 v4, 0x7530

    invoke-virtual {v3, v8, v4}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1274
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    const/high16 v4, -0x3d900000    # -60.0f

    const v5, 0xafc8

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1275
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1276
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    aget-object v3, v3, v7

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1277
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    aget-object v3, v3, v7

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1278
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v9

    aget-object v3, v3, v7

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1279
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v9

    aget-object v3, v3, v7

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1282
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    aget-object v3, v3, v9

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1283
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    aget-object v3, v3, v9

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1284
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    aget-object v3, v3, v9

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1285
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    aget-object v3, v3, v9

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1286
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v9

    aget-object v3, v3, v9

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1287
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v9

    aget-object v3, v3, v9

    const/high16 v4, 0x41f00000    # 30.0f

    const/16 v5, 0x3a98

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1288
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v9

    aget-object v3, v3, v9

    const/16 v4, 0x7530

    invoke-virtual {v3, v8, v4}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1289
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v9

    aget-object v3, v3, v9

    const/high16 v4, -0x3e100000    # -30.0f

    const v5, 0xafc8

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1290
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v9

    aget-object v3, v3, v9

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1292
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1293
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1294
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1295
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    const/4 v4, 0x3

    aget-object v3, v3, v4

    const/high16 v4, 0x42700000    # 60.0f

    const/16 v5, 0x3a98

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1296
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    const/4 v4, 0x3

    aget-object v3, v3, v4

    const/16 v4, 0x7530

    invoke-virtual {v3, v8, v4}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1297
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    const/4 v4, 0x3

    aget-object v3, v3, v4

    const/high16 v4, -0x3d900000    # -60.0f

    const v5, 0xafc8

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1298
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1299
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v9

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1300
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v9

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1302
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1303
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    const/4 v4, 0x4

    aget-object v3, v3, v4

    const/high16 v4, 0x42b40000    # 90.0f

    const/16 v5, 0x3a98

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1304
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    const/4 v4, 0x4

    aget-object v3, v3, v4

    const/16 v4, 0x7530

    invoke-virtual {v3, v8, v4}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1305
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    const/4 v4, 0x4

    aget-object v3, v3, v4

    const/high16 v4, -0x3d4c0000    # -90.0f

    const v5, 0xafc8

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1306
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1307
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1308
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1309
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v9

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1310
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v9

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1312
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1313
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    const/4 v4, 0x5

    aget-object v3, v3, v4

    const/high16 v4, 0x42700000    # 60.0f

    const/16 v5, 0x3a98

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1314
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    const/4 v4, 0x5

    aget-object v3, v3, v4

    const/16 v4, 0x7530

    invoke-virtual {v3, v8, v4}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1315
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    const/4 v4, 0x5

    aget-object v3, v3, v4

    const/high16 v4, -0x3d900000    # -60.0f

    const v5, 0xafc8

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1316
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1317
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1318
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    const/4 v4, 0x5

    aget-object v3, v3, v4

    const/high16 v4, 0x41f00000    # 30.0f

    const/16 v5, 0x3a98

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1319
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    const/4 v4, 0x5

    aget-object v3, v3, v4

    const/16 v4, 0x7530

    invoke-virtual {v3, v8, v4}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1320
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    const/4 v4, 0x5

    aget-object v3, v3, v4

    const/high16 v4, -0x3e100000    # -30.0f

    const v5, 0xafc8

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1321
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1322
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v9

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1323
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v9

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1325
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1326
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    const/4 v4, 0x6

    aget-object v3, v3, v4

    const/high16 v4, 0x42700000    # 60.0f

    const/16 v5, 0x3a98

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1327
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    const/4 v4, 0x6

    aget-object v3, v3, v4

    const/16 v4, 0x7530

    invoke-virtual {v3, v8, v4}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1328
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    const/4 v4, 0x6

    aget-object v3, v3, v4

    const/high16 v4, -0x3d900000    # -60.0f

    const v5, 0xafc8

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1329
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1330
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1331
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    const/4 v4, 0x6

    aget-object v3, v3, v4

    const/high16 v4, 0x42700000    # 60.0f

    const/16 v5, 0x3a98

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1332
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    const/4 v4, 0x6

    aget-object v3, v3, v4

    const/16 v4, 0x7530

    invoke-virtual {v3, v8, v4}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1333
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    const/4 v4, 0x6

    aget-object v3, v3, v4

    const/high16 v4, -0x3d900000    # -60.0f

    const v5, 0xafc8

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1334
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1335
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v9

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1336
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v9

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1338
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1339
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    const/4 v4, 0x7

    aget-object v3, v3, v4

    const/high16 v4, 0x42700000    # 60.0f

    const/16 v5, 0x3a98

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1340
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    const/4 v4, 0x7

    aget-object v3, v3, v4

    const/16 v4, 0x7530

    invoke-virtual {v3, v8, v4}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1341
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    const/4 v4, 0x7

    aget-object v3, v3, v4

    const/high16 v4, -0x3d900000    # -60.0f

    const v5, 0xafc8

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1342
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1343
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1344
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    const/4 v4, 0x7

    aget-object v3, v3, v4

    const/high16 v4, 0x42700000    # 60.0f

    const/16 v5, 0x3a98

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1345
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    const/4 v4, 0x7

    aget-object v3, v3, v4

    const/16 v4, 0x7530

    invoke-virtual {v3, v8, v4}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1346
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    const/4 v4, 0x7

    aget-object v3, v3, v4

    const/high16 v4, -0x3d900000    # -60.0f

    const v5, 0xafc8

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1347
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1348
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v9

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1349
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v9

    const/4 v4, 0x7

    aget-object v3, v3, v4

    const/high16 v4, 0x41700000    # 15.0f

    const/16 v5, 0x7530

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1350
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v9

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1352
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1353
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    const/16 v4, 0x8

    aget-object v3, v3, v4

    const/high16 v4, 0x42700000    # 60.0f

    const/16 v5, 0x3a98

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1354
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    const/16 v4, 0x8

    aget-object v3, v3, v4

    const/16 v4, 0x7530

    invoke-virtual {v3, v8, v4}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1355
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    const/16 v4, 0x8

    aget-object v3, v3, v4

    const/high16 v4, -0x3d900000    # -60.0f

    const v5, 0xafc8

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1356
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1357
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1358
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    const/16 v4, 0x8

    aget-object v3, v3, v4

    const/high16 v4, 0x42700000    # 60.0f

    const/16 v5, 0x3a98

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1359
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    const/16 v4, 0x8

    aget-object v3, v3, v4

    const/16 v4, 0x7530

    invoke-virtual {v3, v8, v4}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1360
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    const/16 v4, 0x8

    aget-object v3, v3, v4

    const/high16 v4, -0x3d900000    # -60.0f

    const v5, 0xafc8

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1361
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1362
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v9

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1363
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v9

    const/16 v4, 0x8

    aget-object v3, v3, v4

    const/high16 v4, 0x41700000    # 15.0f

    const/16 v5, 0x7530

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1364
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v9

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1366
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1367
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    const/16 v4, 0x9

    aget-object v3, v3, v4

    const/high16 v4, -0x3d900000    # -60.0f

    const/16 v5, 0x3a98

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1368
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    const/16 v4, 0x9

    aget-object v3, v3, v4

    const/16 v4, 0x7530

    invoke-virtual {v3, v8, v4}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1369
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    const/16 v4, 0x9

    aget-object v3, v3, v4

    const/high16 v4, 0x42700000    # 60.0f

    const v5, 0xafc8

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1370
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1371
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1372
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    const/16 v4, 0x9

    aget-object v3, v3, v4

    const/high16 v4, -0x3d900000    # -60.0f

    const/16 v5, 0x3a98

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1373
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    const/16 v4, 0x9

    aget-object v3, v3, v4

    const/16 v4, 0x7530

    invoke-virtual {v3, v8, v4}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1374
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    const/16 v4, 0x9

    aget-object v3, v3, v4

    const/high16 v4, 0x42700000    # 60.0f

    const v5, 0xafc8

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1375
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1376
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v9

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1377
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v9

    const/16 v4, 0x9

    aget-object v3, v3, v4

    const/high16 v4, 0x41700000    # 15.0f

    const/16 v5, 0x7530

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1378
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v6

    aget-object v3, v3, v9

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1382
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1383
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1384
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1385
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    const/high16 v4, 0x43340000    # 180.0f

    const/16 v5, 0x7530

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1386
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1387
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v9

    aget-object v3, v3, v6

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1388
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v9

    aget-object v3, v3, v6

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1391
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1392
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    const/high16 v4, 0x43340000    # 180.0f

    const/16 v5, 0x3a98

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1393
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    const/16 v4, 0x7530

    invoke-virtual {v3, v8, v4}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1394
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    const/high16 v4, -0x3ccc0000    # -180.0f

    const v5, 0xafc8

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1395
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1396
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v7

    aget-object v3, v3, v7

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1397
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v7

    aget-object v3, v3, v7

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1398
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v9

    aget-object v3, v3, v7

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1399
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v9

    aget-object v3, v3, v7

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1402
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    aget-object v3, v3, v9

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1403
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    aget-object v3, v3, v9

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1404
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v7

    aget-object v3, v3, v9

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1405
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v7

    aget-object v3, v3, v9

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1406
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v9

    aget-object v3, v3, v9

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1407
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v9

    aget-object v3, v3, v9

    const/high16 v4, 0x43340000    # 180.0f

    const/16 v5, 0x3a98

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1408
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v9

    aget-object v3, v3, v9

    const/16 v4, 0x7530

    invoke-virtual {v3, v8, v4}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1409
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v9

    aget-object v3, v3, v9

    const/high16 v4, -0x3ccc0000    # -180.0f

    const v5, 0xafc8

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1410
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v9

    aget-object v3, v3, v9

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1412
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1413
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1414
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v7

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1415
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v7

    const/4 v4, 0x3

    aget-object v3, v3, v4

    const/high16 v4, 0x43340000    # 180.0f

    const/16 v5, 0x3a98

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1416
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v7

    const/4 v4, 0x3

    aget-object v3, v3, v4

    const/16 v4, 0x7530

    invoke-virtual {v3, v8, v4}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1417
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v7

    const/4 v4, 0x3

    aget-object v3, v3, v4

    const/high16 v4, -0x3ccc0000    # -180.0f

    const v5, 0xafc8

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1418
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v7

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1419
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v9

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1420
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v9

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1422
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1423
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    const/4 v4, 0x4

    aget-object v3, v3, v4

    const/high16 v4, 0x43b40000    # 360.0f

    const/16 v5, 0x3a98

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1424
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    const/4 v4, 0x4

    aget-object v3, v3, v4

    const/16 v4, 0x7530

    invoke-virtual {v3, v8, v4}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1425
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    const/4 v4, 0x4

    aget-object v3, v3, v4

    const/high16 v4, -0x3c4c0000    # -360.0f

    const v5, 0xafc8

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1426
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1427
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v7

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1428
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v7

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1429
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v9

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1430
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v9

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1432
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1433
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    const/4 v4, 0x5

    aget-object v3, v3, v4

    const/high16 v4, 0x43340000    # 180.0f

    const/16 v5, 0x3a98

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1434
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    const/4 v4, 0x5

    aget-object v3, v3, v4

    const/16 v4, 0x7530

    invoke-virtual {v3, v8, v4}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1435
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    const/4 v4, 0x5

    aget-object v3, v3, v4

    const/high16 v4, -0x3ccc0000    # -180.0f

    const v5, 0xafc8

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1436
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1437
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v7

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1438
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v7

    const/4 v4, 0x5

    aget-object v3, v3, v4

    const/high16 v4, 0x41f00000    # 30.0f

    const/16 v5, 0x3a98

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1439
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v7

    const/4 v4, 0x5

    aget-object v3, v3, v4

    const/16 v4, 0x7530

    invoke-virtual {v3, v8, v4}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1440
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v7

    const/4 v4, 0x5

    aget-object v3, v3, v4

    const/high16 v4, -0x3e100000    # -30.0f

    const v5, 0xafc8

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1441
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v7

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1442
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v9

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1443
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v9

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1445
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1446
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    const/4 v4, 0x6

    aget-object v3, v3, v4

    const/high16 v4, 0x43340000    # 180.0f

    const/16 v5, 0x3a98

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1447
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    const/4 v4, 0x6

    aget-object v3, v3, v4

    const/16 v4, 0x7530

    invoke-virtual {v3, v8, v4}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1448
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    const/4 v4, 0x6

    aget-object v3, v3, v4

    const/high16 v4, -0x3ccc0000    # -180.0f

    const v5, 0xafc8

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1449
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1450
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v7

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1451
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v7

    const/4 v4, 0x6

    aget-object v3, v3, v4

    const/high16 v4, 0x43340000    # 180.0f

    const/16 v5, 0x3a98

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1452
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v7

    const/4 v4, 0x6

    aget-object v3, v3, v4

    const/16 v4, 0x7530

    invoke-virtual {v3, v8, v4}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1453
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v7

    const/4 v4, 0x6

    aget-object v3, v3, v4

    const/high16 v4, -0x3ccc0000    # -180.0f

    const v5, 0xafc8

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1454
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v7

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1455
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v9

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1456
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v9

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1458
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1459
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    const/4 v4, 0x7

    aget-object v3, v3, v4

    const/high16 v4, 0x43340000    # 180.0f

    const/16 v5, 0x3a98

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1460
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    const/4 v4, 0x7

    aget-object v3, v3, v4

    const/16 v4, 0x7530

    invoke-virtual {v3, v8, v4}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1461
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    const/4 v4, 0x7

    aget-object v3, v3, v4

    const/high16 v4, -0x3ccc0000    # -180.0f

    const v5, 0xafc8

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1462
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1463
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v7

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1464
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v7

    const/4 v4, 0x7

    aget-object v3, v3, v4

    const/high16 v4, 0x43340000    # 180.0f

    const/16 v5, 0x3a98

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1465
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v7

    const/4 v4, 0x7

    aget-object v3, v3, v4

    const/16 v4, 0x7530

    invoke-virtual {v3, v8, v4}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1466
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v7

    const/4 v4, 0x7

    aget-object v3, v3, v4

    const/high16 v4, -0x3ccc0000    # -180.0f

    const v5, 0xafc8

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1467
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v7

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1468
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v9

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1469
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v9

    const/4 v4, 0x7

    aget-object v3, v3, v4

    const/high16 v4, 0x41700000    # 15.0f

    const/16 v5, 0x7530

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1470
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v9

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1472
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1473
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    const/16 v4, 0x8

    aget-object v3, v3, v4

    const/high16 v4, 0x43b40000    # 360.0f

    const/16 v5, 0x3a98

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1474
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    const/16 v4, 0x8

    aget-object v3, v3, v4

    const/16 v4, 0x7530

    invoke-virtual {v3, v8, v4}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1475
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    const/16 v4, 0x8

    aget-object v3, v3, v4

    const/high16 v4, -0x3c4c0000    # -360.0f

    const v5, 0xafc8

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1476
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1477
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v7

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1478
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v7

    const/16 v4, 0x8

    aget-object v3, v3, v4

    const/high16 v4, 0x43340000    # 180.0f

    const/16 v5, 0x3a98

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1479
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v7

    const/16 v4, 0x8

    aget-object v3, v3, v4

    const/16 v4, 0x7530

    invoke-virtual {v3, v8, v4}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1480
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v7

    const/16 v4, 0x8

    aget-object v3, v3, v4

    const/high16 v4, -0x3ccc0000    # -180.0f

    const v5, 0xafc8

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1481
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v7

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1482
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v9

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1483
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v9

    const/16 v4, 0x8

    aget-object v3, v3, v4

    const/high16 v4, 0x41700000    # 15.0f

    const/16 v5, 0x7530

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1484
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v9

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1486
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1487
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    const/16 v4, 0x9

    aget-object v3, v3, v4

    const/high16 v4, -0x3c4c0000    # -360.0f

    const/16 v5, 0x3a98

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1488
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    const/16 v4, 0x9

    aget-object v3, v3, v4

    const/16 v4, 0x7530

    invoke-virtual {v3, v8, v4}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1489
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    const/16 v4, 0x9

    aget-object v3, v3, v4

    const/high16 v4, 0x43b40000    # 360.0f

    const v5, 0xafc8

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1490
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1491
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v7

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1492
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v7

    const/16 v4, 0x9

    aget-object v3, v3, v4

    const/high16 v4, -0x3c4c0000    # -360.0f

    const/16 v5, 0x3a98

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1493
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v7

    const/16 v4, 0x9

    aget-object v3, v3, v4

    const/16 v4, 0x7530

    invoke-virtual {v3, v8, v4}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1494
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v7

    const/16 v4, 0x9

    aget-object v3, v3, v4

    const/high16 v4, 0x43b40000    # 360.0f

    const v5, 0xafc8

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1495
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v7

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1496
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v9

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v6}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1497
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v9

    const/16 v4, 0x9

    aget-object v3, v3, v4

    const/high16 v4, 0x41700000    # 15.0f

    const/16 v5, 0x7530

    invoke-virtual {v3, v4, v5}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1498
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v7

    aget-object v3, v3, v9

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v10}, Lcom/gp/monolith/LinearInterpolator;->addValue(FI)V

    .line 1507
    return-void

    .line 1252
    :cond_0
    const/4 v1, 0x0

    .local v1, "b":I
    :goto_1
    const/4 v3, 0x3

    if-lt v1, v3, :cond_1

    .line 1250
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1254
    :cond_1
    const/4 v2, 0x0

    .local v2, "c":I
    :goto_2
    const/16 v3, 0xa

    if-lt v2, v3, :cond_2

    .line 1252
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1256
    :cond_2
    iget-object v3, p0, Lcom/gp/monolith/GameRenderer;->linearInterpolators:[[[Lcom/gp/monolith/LinearInterpolator;

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    new-instance v4, Lcom/gp/monolith/LinearInterpolator;

    invoke-direct {v4}, Lcom/gp/monolith/LinearInterpolator;-><init>()V

    aput-object v4, v3, v2

    .line 1254
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public initSound()V
    .locals 4

    .prologue
    const v3, 0x7f040004

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/gp/monolith/SoundPoolManager;

    iget-object v1, p0, Lcom/gp/monolith/GameRenderer;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/gp/monolith/SoundPoolManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gp/monolith/GameRenderer;->soundManager:Lcom/gp/monolith/Sound;

    .line 52
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->soundManager:Lcom/gp/monolith/Sound;

    const/4 v1, 0x1

    invoke-interface {v0, v3, v1}, Lcom/gp/monolith/Sound;->addSound(IZ)V

    .line 53
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->soundManager:Lcom/gp/monolith/Sound;

    const v1, 0x7f040001

    invoke-interface {v0, v1, v2}, Lcom/gp/monolith/Sound;->addSound(IZ)V

    .line 54
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->soundManager:Lcom/gp/monolith/Sound;

    const v1, 0x7f040005

    invoke-interface {v0, v1, v2}, Lcom/gp/monolith/Sound;->addSound(IZ)V

    .line 55
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->soundManager:Lcom/gp/monolith/Sound;

    const v1, 0x7f040008

    invoke-interface {v0, v1, v2}, Lcom/gp/monolith/Sound;->addSound(IZ)V

    .line 56
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->soundManager:Lcom/gp/monolith/Sound;

    const v1, 0x7f040006

    invoke-interface {v0, v1, v2}, Lcom/gp/monolith/Sound;->addSound(IZ)V

    .line 57
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->soundManager:Lcom/gp/monolith/Sound;

    const v1, 0x7f040007

    invoke-interface {v0, v1, v2}, Lcom/gp/monolith/Sound;->addSound(IZ)V

    .line 58
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->soundManager:Lcom/gp/monolith/Sound;

    const v1, 0x7f04000a

    invoke-interface {v0, v1, v2}, Lcom/gp/monolith/Sound;->addSound(IZ)V

    .line 59
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->soundManager:Lcom/gp/monolith/Sound;

    const/high16 v1, 0x7f040000

    invoke-interface {v0, v1, v2}, Lcom/gp/monolith/Sound;->addSound(IZ)V

    .line 60
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->soundManager:Lcom/gp/monolith/Sound;

    const v1, 0x7f040003

    invoke-interface {v0, v1, v2}, Lcom/gp/monolith/Sound;->addSound(IZ)V

    .line 63
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->soundManager:Lcom/gp/monolith/Sound;

    invoke-interface {v0}, Lcom/gp/monolith/Sound;->startSound()V

    .line 64
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->soundManager:Lcom/gp/monolith/Sound;

    invoke-interface {v0, v3}, Lcom/gp/monolith/Sound;->startMusic(I)V

    .line 65
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    invoke-virtual {v0}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gp/monolith/Options;->isMusicEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->soundManager:Lcom/gp/monolith/Sound;

    invoke-interface {v0, v3}, Lcom/gp/monolith/Sound;->pauseMusic(I)V

    .line 69
    :cond_0
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/gp/monolith/GameRenderer;->isPaused:Z

    if-nez v0, :cond_0

    .line 78
    invoke-direct {p0, p1}, Lcom/gp/monolith/GameRenderer;->drawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 84
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gp/monolith/GameRenderer;->isPaused:Z

    .line 90
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->soundManager:Lcom/gp/monolith/Sound;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->soundManager:Lcom/gp/monolith/Sound;

    const v1, 0x7f040004

    invoke-interface {v0, v1}, Lcom/gp/monolith/Sound;->pauseMusic(I)V

    .line 94
    :cond_0
    const-string v0, "GameRenderer"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gp/monolith/GameRenderer;->isPaused:Z

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gp/monolith/GameRenderer;->lastcalltime:J

    .line 101
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    invoke-virtual {v0}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gp/monolith/Options;->isMusicEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->soundManager:Lcom/gp/monolith/Sound;

    const v1, 0x7f040004

    invoke-interface {v0, v1}, Lcom/gp/monolith/Sound;->resumeMusic(I)V

    .line 105
    :cond_0
    const-string v0, "GameRenderer"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 109
    const-string v0, "GameRenderer"

    const-string v1, "onSurfaceChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iput p2, p0, Lcom/gp/monolith/GameRenderer;->w:I

    .line 111
    iput p3, p0, Lcom/gp/monolith/GameRenderer;->h:I

    .line 112
    iget v0, p0, Lcom/gp/monolith/GameRenderer;->w:I

    iget v1, p0, Lcom/gp/monolith/GameRenderer;->h:I

    invoke-interface {p1, v2, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 117
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const v4, 0x7f02000c

    const v3, 0x7f020009

    const v2, 0x7f020005

    .line 121
    const-string v0, "GameRenderer"

    const-string v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->textures:Lcom/gp/monolith/GLTextures;

    if-eqz v0, :cond_0

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gp/monolith/GameRenderer;->textures:Lcom/gp/monolith/GLTextures;

    .line 128
    :cond_0
    new-instance v0, Lcom/gp/monolith/GLTextures;

    iget-object v1, p0, Lcom/gp/monolith/GameRenderer;->context:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/gp/monolith/GLTextures;-><init>(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gp/monolith/GameRenderer;->textures:Lcom/gp/monolith/GLTextures;

    .line 129
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->textures:Lcom/gp/monolith/GLTextures;

    invoke-virtual {v0, v3}, Lcom/gp/monolith/GLTextures;->add(I)V

    .line 130
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->textures:Lcom/gp/monolith/GLTextures;

    invoke-virtual {v0, v2}, Lcom/gp/monolith/GLTextures;->add(I)V

    .line 131
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->textures:Lcom/gp/monolith/GLTextures;

    invoke-virtual {v0, v4}, Lcom/gp/monolith/GLTextures;->add(I)V

    .line 132
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->textures:Lcom/gp/monolith/GLTextures;

    invoke-virtual {v0}, Lcom/gp/monolith/GLTextures;->loadTextures()V

    .line 133
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->mMoon:Lcom/gp/monolith/Square;

    invoke-virtual {v0, v3}, Lcom/gp/monolith/Square;->setTextureId(I)V

    .line 134
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->mMoon:Lcom/gp/monolith/Square;

    iget-object v1, p0, Lcom/gp/monolith/GameRenderer;->textures:Lcom/gp/monolith/GLTextures;

    invoke-virtual {v0, v1}, Lcom/gp/monolith/Square;->setTextures(Lcom/gp/monolith/GLTextures;)V

    .line 135
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->mEarth:Lcom/gp/monolith/Square;

    invoke-virtual {v0, v2}, Lcom/gp/monolith/Square;->setTextureId(I)V

    .line 136
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->mEarth:Lcom/gp/monolith/Square;

    iget-object v1, p0, Lcom/gp/monolith/GameRenderer;->textures:Lcom/gp/monolith/GLTextures;

    invoke-virtual {v0, v1}, Lcom/gp/monolith/Square;->setTextures(Lcom/gp/monolith/GLTextures;)V

    .line 137
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->mExplosionRing:Lcom/gp/monolith/Square;

    invoke-virtual {v0, v4}, Lcom/gp/monolith/Square;->setTextureId(I)V

    .line 138
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->mExplosionRing:Lcom/gp/monolith/Square;

    iget-object v1, p0, Lcom/gp/monolith/GameRenderer;->textures:Lcom/gp/monolith/GLTextures;

    invoke-virtual {v0, v1}, Lcom/gp/monolith/Square;->setTextures(Lcom/gp/monolith/GLTextures;)V

    .line 139
    invoke-virtual {p0}, Lcom/gp/monolith/GameRenderer;->reinit()V

    .line 142
    return-void
.end method

.method public reinit()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 159
    iput v3, p0, Lcom/gp/monolith/GameRenderer;->zx:F

    .line 160
    iput v3, p0, Lcom/gp/monolith/GameRenderer;->zy:F

    .line 161
    iput v3, p0, Lcom/gp/monolith/GameRenderer;->xy:F

    .line 162
    const/high16 v0, -0x3ee00000    # -10.0f

    iput v0, p0, Lcom/gp/monolith/GameRenderer;->xoff:F

    .line 163
    const/high16 v0, 0x41a80000    # 21.0f

    iput v0, p0, Lcom/gp/monolith/GameRenderer;->yoff:F

    .line 164
    const/high16 v0, -0x3db80000    # -50.0f

    iput v0, p0, Lcom/gp/monolith/GameRenderer;->zoff:F

    .line 167
    iput-boolean v2, p0, Lcom/gp/monolith/GameRenderer;->sayGameOver:Z

    .line 168
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    invoke-virtual {v0}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gp/monolith/Options;->getGame()Lcom/gp/monolith/Game;

    move-result-object v0

    iput-object v0, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    .line 173
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    iget-object v1, p0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    invoke-virtual {v1}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gp/monolith/Options;->getStartingLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/gp/monolith/Game;->initGame(I)V

    .line 174
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v0, v2}, Lcom/gp/monolith/Game;->setTimerEnabled(Z)V

    .line 175
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->game:Lcom/gp/monolith/Game;

    invoke-interface {v0, v2}, Lcom/gp/monolith/Game;->setStatus(I)V

    .line 177
    new-instance v0, Lcom/gp/monolith/MonolithGameData;

    invoke-direct {v0}, Lcom/gp/monolith/MonolithGameData;-><init>()V

    iput-object v0, p0, Lcom/gp/monolith/GameRenderer;->demogame:Lcom/gp/monolith/Game;

    .line 178
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->demogame:Lcom/gp/monolith/Game;

    invoke-interface {v0, v2}, Lcom/gp/monolith/Game;->initGame(I)V

    .line 179
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->demogame:Lcom/gp/monolith/Game;

    invoke-interface {v0, v4}, Lcom/gp/monolith/Game;->setScore(I)V

    .line 180
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->demogame:Lcom/gp/monolith/Game;

    invoke-interface {v0, v4}, Lcom/gp/monolith/Game;->setLines(I)V

    .line 181
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->demogame:Lcom/gp/monolith/Game;

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Lcom/gp/monolith/Game;->setEnergy(I)V

    .line 183
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->demogame:Lcom/gp/monolith/Game;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/gp/monolith/Game;->setStatus(I)V

    .line 184
    invoke-virtual {p0}, Lcom/gp/monolith/GameRenderer;->setupDemoGrid()V

    .line 185
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gp/monolith/GameRenderer;->lastcalltime:J

    .line 186
    iget-wide v0, p0, Lcom/gp/monolith/GameRenderer;->lastcalltime:J

    iput-wide v0, p0, Lcom/gp/monolith/GameRenderer;->startGameTime:J

    .line 187
    iput v3, p0, Lcom/gp/monolith/GameRenderer;->rangle:F

    .line 188
    iput-boolean v2, p0, Lcom/gp/monolith/GameRenderer;->running:Z

    .line 189
    iput-boolean v4, p0, Lcom/gp/monolith/GameRenderer;->mSizeChanged:Z

    .line 190
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->overlay:Lcom/gp/monolith/GameOverlay;

    invoke-virtual {v0}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gp/monolith/Options;->isSoundEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->soundManager:Lcom/gp/monolith/Sound;

    const v1, 0x7f04000a

    invoke-interface {v0, v1}, Lcom/gp/monolith/Sound;->playSound(I)V

    .line 194
    :cond_0
    iput-boolean v2, p0, Lcom/gp/monolith/GameRenderer;->sayEvolving:Z

    .line 195
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/gp/monolith/GameRenderer;->timeaccumulator:J

    .line 196
    return-void
.end method

.method public setAction(III)V
    .locals 1
    .param p1, "action"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 1229
    iput p1, p0, Lcom/gp/monolith/GameRenderer;->action:I

    .line 1232
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1234
    invoke-virtual {p0}, Lcom/gp/monolith/GameRenderer;->getGameOverlay()Lcom/gp/monolith/GameOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gp/monolith/GameOverlay;->getOptions()Lcom/gp/monolith/Options;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gp/monolith/Options;->getDifficultyLevel()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1241
    invoke-virtual {p0, p2, p3}, Lcom/gp/monolith/GameRenderer;->doRotatePlayfield(II)V

    .line 1245
    :cond_0
    :pswitch_0
    return-void

    .line 1234
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setGameType(I)V
    .locals 0
    .param p1, "gametype"    # I

    .prologue
    .line 149
    iput p1, p0, Lcom/gp/monolith/GameRenderer;->gametype:I

    .line 150
    return-void
.end method

.method public setViewType(I)V
    .locals 0
    .param p1, "viewtype"    # I

    .prologue
    .line 145
    iput p1, p0, Lcom/gp/monolith/GameRenderer;->viewType:I

    .line 146
    return-void
.end method

.method public setupDemoGrid()V
    .locals 6

    .prologue
    .line 654
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 656
    .local v0, "randomgen":Ljava/util/Random;
    const/4 v3, 0x0

    .local v3, "y":I
    :goto_0
    const/16 v4, 0x14

    if-lt v3, v4, :cond_0

    .line 672
    return-void

    .line 658
    :cond_0
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_1
    const/16 v4, 0xa

    if-lt v2, v4, :cond_1

    .line 656
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 660
    :cond_1
    const/16 v4, 0x15

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 661
    .local v1, "result":I
    const/4 v4, 0x7

    if-ge v1, v4, :cond_2

    .line 664
    iget-object v4, p0, Lcom/gp/monolith/GameRenderer;->demogame:Lcom/gp/monolith/Game;

    rem-int/lit8 v5, v1, 0x6

    invoke-interface {v4, v2, v3, v5}, Lcom/gp/monolith/Game;->setGridValue(III)V

    .line 658
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 668
    :cond_2
    iget-object v4, p0, Lcom/gp/monolith/GameRenderer;->demogame:Lcom/gp/monolith/Game;

    const/4 v5, -0x1

    invoke-interface {v4, v2, v3, v5}, Lcom/gp/monolith/Game;->setGridValue(III)V

    goto :goto_2
.end method

.method public declared-synchronized stopMusic()V
    .locals 1

    .prologue
    .line 280
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->soundManager:Lcom/gp/monolith/Sound;

    invoke-interface {v0}, Lcom/gp/monolith/Sound;->stopSound()V

    .line 282
    iget-object v0, p0, Lcom/gp/monolith/GameRenderer;->soundManager:Lcom/gp/monolith/Sound;

    invoke-interface {v0}, Lcom/gp/monolith/Sound;->stopSound()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    monitor-exit p0

    return-void

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
