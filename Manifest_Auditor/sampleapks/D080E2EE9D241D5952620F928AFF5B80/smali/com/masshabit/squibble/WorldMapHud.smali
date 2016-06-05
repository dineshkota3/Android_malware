.class public Lcom/masshabit/squibble/WorldMapHud;
.super Lcom/masshabit/common/entity/Entity;
.source "WorldMapHud.java"


# static fields
.field protected static final BUTTON_LEFT:F = 80.0f

.field protected static final HIDDEN_Y:F = -250.0f

.field public static final RESOURCE_TYPE_STRING:Ljava/lang/String; = "string"

.field protected static final SHOWING_Y:F

.field protected static SLIDE_SPEED:F


# instance fields
.field protected mActive:Z

.field protected mBackground:Lcom/masshabit/common/entity/Entity;

.field protected mButton:Lcom/masshabit/common/entity/Entity;

.field protected mData:Lcom/masshabit/squibble/WorldMapNode;

.field protected mDropIcon:Landroid/graphics/Bitmap;

.field protected mPaint:Landroid/graphics/Paint;

.field protected mScore:Ljava/lang/String;

.field protected mSlideTween:Lcom/masshabit/common/tween/Tween;

.field protected mTitle:Ljava/lang/String;

.field protected mY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/high16 v0, 0x44480000    # 800.0f

    sput v0, Lcom/masshabit/squibble/WorldMapHud;->SLIDE_SPEED:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/masshabit/common/entity/Entity;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/masshabit/squibble/WorldMapHud;->mActive:Z

    .line 40
    return-void
.end method


# virtual methods
.method public checkPlayTap(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v2, 0x0

    .line 141
    iget-boolean v0, p0, Lcom/masshabit/squibble/WorldMapHud;->mActive:Z

    if-nez v0, :cond_0

    move v0, v2

    .line 149
    :goto_0
    return v0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/masshabit/squibble/WorldMapHud;->mButton:Lcom/masshabit/common/entity/Entity;

    iget-object v0, v0, Lcom/masshabit/common/entity/Entity;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->x:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/masshabit/squibble/WorldMapHud;->mButton:Lcom/masshabit/common/entity/Entity;

    iget-object v0, v0, Lcom/masshabit/common/entity/Entity;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapHud;->mButton:Lcom/masshabit/common/entity/Entity;

    iget v1, v1, Lcom/masshabit/common/entity/Entity;->mWidth:F

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/masshabit/squibble/WorldMapHud;->mButton:Lcom/masshabit/common/entity/Entity;

    iget-object v0, v0, Lcom/masshabit/common/entity/Entity;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->y:F

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/masshabit/squibble/WorldMapHud;->mButton:Lcom/masshabit/common/entity/Entity;

    iget-object v0, v0, Lcom/masshabit/common/entity/Entity;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->y:F

    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapHud;->mButton:Lcom/masshabit/common/entity/Entity;

    iget v1, v1, Lcom/masshabit/common/entity/Entity;->mHeight:F

    add-float/2addr v0, v1

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1

    .line 147
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 149
    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x41a00000    # 20.0f

    .line 104
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 105
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 106
    iget-object v0, p0, Lcom/masshabit/squibble/WorldMapHud;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v0, v0, Lcom/masshabit/common/physics/Vector2;->x:F

    iget v1, p0, Lcom/masshabit/squibble/WorldMapHud;->mY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 107
    invoke-virtual {p0, p1}, Lcom/masshabit/squibble/WorldMapHud;->drawChildren(Landroid/graphics/Canvas;)V

    .line 110
    iget-object v0, p0, Lcom/masshabit/squibble/WorldMapHud;->mTitle:Ljava/lang/String;

    const/high16 v1, 0x42200000    # 40.0f

    iget-object v2, p0, Lcom/masshabit/squibble/WorldMapHud;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 111
    iget-object v0, p0, Lcom/masshabit/squibble/WorldMapHud;->mDropIcon:Landroid/graphics/Bitmap;

    const/high16 v1, 0x42380000    # 46.0f

    invoke-virtual {p1, v0, v3, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 112
    iget-object v0, p0, Lcom/masshabit/squibble/WorldMapHud;->mScore:Ljava/lang/String;

    const/high16 v1, 0x42100000    # 36.0f

    const/high16 v2, 0x42700000    # 60.0f

    iget-object v3, p0, Lcom/masshabit/squibble/WorldMapHud;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 113
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 114
    return-void
.end method

.method public getData()Lcom/masshabit/squibble/WorldMapNode;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/masshabit/squibble/WorldMapHud;->mData:Lcom/masshabit/squibble/WorldMapNode;

    return-object v0
.end method

.method public init()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 45
    invoke-super {p0}, Lcom/masshabit/common/entity/Entity;->init()V

    .line 46
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 47
    .local v0, "env":Lcom/masshabit/common/Environment;
    iget-object v1, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v1, v1, Lcom/masshabit/common/Level;->mEntityIds:Ljava/util/HashMap;

    const-string v2, "hud_bg"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/masshabit/common/entity/Entity;

    iput-object v1, p0, Lcom/masshabit/squibble/WorldMapHud;->mBackground:Lcom/masshabit/common/entity/Entity;

    .line 48
    iget-object v1, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v1, v1, Lcom/masshabit/common/Level;->mEntityIds:Ljava/util/HashMap;

    const-string v2, "play_button"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/masshabit/common/entity/Entity;

    iput-object v1, p0, Lcom/masshabit/squibble/WorldMapHud;->mButton:Lcom/masshabit/common/entity/Entity;

    .line 51
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapHud;->mButton:Lcom/masshabit/common/entity/Entity;

    iget-object v1, v1, Lcom/masshabit/common/entity/Entity;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v0, Lcom/masshabit/common/Environment;->mScreenWidth:F

    const/high16 v3, 0x42a00000    # 80.0f

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/masshabit/common/physics/Vector2;->x:F

    .line 52
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapHud;->mButton:Lcom/masshabit/common/entity/Entity;

    iget-object v1, v1, Lcom/masshabit/common/entity/Entity;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 53
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapHud;->mButton:Lcom/masshabit/common/entity/Entity;

    iget-object v1, v1, Lcom/masshabit/common/entity/Entity;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/masshabit/squibble/WorldMapHud;->mButton:Lcom/masshabit/common/entity/Entity;

    iget-object v2, v2, Lcom/masshabit/common/entity/Entity;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v3, p0, Lcom/masshabit/squibble/WorldMapHud;->mButton:Lcom/masshabit/common/entity/Entity;

    iget-object v3, v3, Lcom/masshabit/common/entity/Entity;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 55
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/masshabit/squibble/WorldMapHud;->mPaint:Landroid/graphics/Paint;

    .line 56
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapHud;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapHud;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 58
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapHud;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 59
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapHud;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 61
    iput-boolean v5, p0, Lcom/masshabit/squibble/WorldMapHud;->mActive:Z

    .line 62
    new-instance v1, Lcom/masshabit/common/tween/Tween;

    invoke-direct {v1, v6, v6}, Lcom/masshabit/common/tween/Tween;-><init>(Lcom/masshabit/common/tween/ITweenCompleteListener;Lcom/masshabit/common/tween/Ease$EaseBase;)V

    iput-object v1, p0, Lcom/masshabit/squibble/WorldMapHud;->mSlideTween:Lcom/masshabit/common/tween/Tween;

    .line 63
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapHud;->mSlideTween:Lcom/masshabit/common/tween/Tween;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v4, v4, v2}, Lcom/masshabit/common/tween/Tween;->init(FFF)V

    .line 64
    iput v4, p0, Lcom/masshabit/squibble/WorldMapHud;->mY:F

    .line 66
    iget-object v1, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v1, v1, Lcom/masshabit/common/Level;->mBitmaps:Lcom/masshabit/common/resource/BitmapResourceMap;

    iget-object v2, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v2, v2, Lcom/masshabit/common/Level;->mBitmaps:Lcom/masshabit/common/resource/BitmapResourceMap;

    const-string v3, "common/droplet-icn.png"

    invoke-virtual {v2, v3}, Lcom/masshabit/common/resource/BitmapResourceMap;->load(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/masshabit/common/resource/BitmapResourceMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/masshabit/squibble/WorldMapHud;->mDropIcon:Landroid/graphics/Bitmap;

    .line 67
    return-void
.end method

.method public setActive(Z)V
    .locals 5
    .param p1, "active"    # Z

    .prologue
    const/high16 v4, -0x3c860000    # -250.0f

    const/4 v3, 0x0

    .line 71
    iget-boolean v1, p0, Lcom/masshabit/squibble/WorldMapHud;->mActive:Z

    if-ne v1, p1, :cond_0

    .line 91
    :goto_0
    return-void

    .line 74
    :cond_0
    if-eqz p1, :cond_2

    .line 76
    iget v1, p0, Lcom/masshabit/squibble/WorldMapHud;->mY:F

    sub-float v1, v3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lcom/masshabit/squibble/WorldMapHud;->SLIDE_SPEED:F

    div-float v0, v1, v2

    .line 77
    .local v0, "time":F
    cmpl-float v1, v0, v3

    if-lez v1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapHud;->mSlideTween:Lcom/masshabit/common/tween/Tween;

    iget v2, p0, Lcom/masshabit/squibble/WorldMapHud;->mY:F

    invoke-virtual {v1, v2, v3, v0}, Lcom/masshabit/common/tween/Tween;->init(FFF)V

    .line 90
    :cond_1
    :goto_1
    iput-boolean p1, p0, Lcom/masshabit/squibble/WorldMapHud;->mActive:Z

    goto :goto_0

    .line 84
    .end local v0    # "time":F
    :cond_2
    iget v1, p0, Lcom/masshabit/squibble/WorldMapHud;->mY:F

    sub-float v1, v4, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lcom/masshabit/squibble/WorldMapHud;->SLIDE_SPEED:F

    div-float v0, v1, v2

    .line 85
    .restart local v0    # "time":F
    cmpl-float v1, v0, v3

    if-lez v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/masshabit/squibble/WorldMapHud;->mSlideTween:Lcom/masshabit/common/tween/Tween;

    iget v2, p0, Lcom/masshabit/squibble/WorldMapHud;->mY:F

    invoke-virtual {v1, v2, v4, v0}, Lcom/masshabit/common/tween/Tween;->init(FFF)V

    goto :goto_1
.end method

.method public setData(Lcom/masshabit/squibble/WorldMapNode;)V
    .locals 7
    .param p1, "n"    # Lcom/masshabit/squibble/WorldMapNode;

    .prologue
    .line 118
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 120
    .local v0, "env":Lcom/masshabit/common/Environment;
    iput-object p1, p0, Lcom/masshabit/squibble/WorldMapHud;->mData:Lcom/masshabit/squibble/WorldMapNode;

    .line 121
    iget-object v2, v0, Lcom/masshabit/common/Environment;->mRes:Landroid/content/res/Resources;

    iget-object v3, v0, Lcom/masshabit/common/Environment;->mRes:Landroid/content/res/Resources;

    iget-object v4, p1, Lcom/masshabit/squibble/WorldMapNode;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v4, v4, Lcom/masshabit/common/entity/EntityProperties;->id:Ljava/lang/String;

    const-string v5, "string"

    iget-object v6, v0, Lcom/masshabit/common/Environment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/masshabit/squibble/WorldMapHud;->mTitle:Ljava/lang/String;

    .line 123
    invoke-static {}, Lcom/masshabit/squibble/ProfileManager;->instance()Lcom/masshabit/common/ProfileManagerBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/masshabit/common/ProfileManagerBase;->getProfile()Lcom/masshabit/common/ProfileManagerBase$PlayerProfile;

    move-result-object v1

    check-cast v1, Lcom/masshabit/squibble/Profile;

    .line 124
    .local v1, "profile":Lcom/masshabit/squibble/Profile;
    iget-object v2, v1, Lcom/masshabit/squibble/Profile;->mLevels:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/masshabit/squibble/WorldMapNode;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v3, v3, Lcom/masshabit/common/entity/EntityProperties;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/masshabit/squibble/Profile;->mLevels:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/masshabit/squibble/WorldMapNode;->mProps:Lcom/masshabit/common/entity/EntityProperties;

    iget-object v4, v4, Lcom/masshabit/common/entity/EntityProperties;->id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/masshabit/squibble/Profile$CompletedLevel;

    iget v2, v2, Lcom/masshabit/squibble/Profile$CompletedLevel;->mScore:F

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/masshabit/squibble/WorldMapHud;->mScore:Ljava/lang/String;

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    const-string v2, "0%"

    iput-object v2, p0, Lcom/masshabit/squibble/WorldMapHud;->mScore:Ljava/lang/String;

    goto :goto_0
.end method

.method public update(F)V
    .locals 1
    .param p1, "dt"    # F

    .prologue
    .line 96
    iget-object v0, p0, Lcom/masshabit/squibble/WorldMapHud;->mSlideTween:Lcom/masshabit/common/tween/Tween;

    invoke-virtual {v0, p1}, Lcom/masshabit/common/tween/Tween;->update(F)V

    .line 97
    iget-object v0, p0, Lcom/masshabit/squibble/WorldMapHud;->mSlideTween:Lcom/masshabit/common/tween/Tween;

    iget v0, v0, Lcom/masshabit/common/tween/Tween;->mValue:F

    iput v0, p0, Lcom/masshabit/squibble/WorldMapHud;->mY:F

    .line 98
    return-void
.end method
