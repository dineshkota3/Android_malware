.class public Lcom/masshabit/squibble/PlayerSelectPanel;
.super Lcom/masshabit/common/entity/Entity;
.source "PlayerSelectPanel.java"

# interfaces
.implements Lcom/masshabit/common/tween/ITweenCompleteListener;


# static fields
.field public static final FUNCTION_CONFIRM_DELETE_NO:I = 0x3

.field public static final FUNCTION_CONFIRM_DELETE_YES:I = 0x2

.field public static final FUNCTION_ENTER_NAME_NO:I = 0x1

.field public static final FUNCTION_ENTER_NAME_YES:I = 0x0

.field public static final LEFT_SIDE:F = 260.0f

.field public static final PARAM_END:F = 0.0f

.field public static final PARAM_SPEED:F = 800.0f

.field public static final PARAM_START:F = -300.0f

.field public static final SLOTS:[Landroid/graphics/RectF;

.field public static final SLOT_BOTTOM_PADDING:F = 25.0f

.field public static final SLOT_LEFT_PADDING:F = 60.0f

.field public static final STATE_MOVING:I = 0x1

.field public static final STATE_STILL:I = 0x0

.field public static final TAG:Ljava/lang/String; = "PlayerSelectPanel"


# instance fields
.field public mBack:Lcom/masshabit/squibble/ButtonEntity;

.field public mDelete:Lcom/masshabit/squibble/ButtonEntity;

.field public mHighlights:[Lcom/masshabit/squibble/HidableEntity;

.field public mMainButtonPanel:Lcom/masshabit/squibble/MainButtonPanel;

.field protected mMoveTween:Lcom/masshabit/common/tween/Tween;

.field protected mPaint:Landroid/graphics/Paint;

.field protected mPositionParam:F

.field protected mSelectedSlotIndex:I

.field public mSlotLabels:[Ljava/lang/String;

.field public mStart:Lcom/masshabit/squibble/ButtonEntity;

.field protected mState:I

.field protected mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/high16 v7, 0x43030000    # 131.0f

    const/high16 v6, 0x42890000    # 68.5f

    const/high16 v5, 0x436b0000    # 235.0f

    const/4 v4, 0x0

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/RectF;

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/RectF;

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-direct {v2, v4, v3, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v4, v6, v5, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Landroid/graphics/RectF;

    const v3, 0x43418000    # 193.5f

    invoke-direct {v2, v4, v7, v5, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/masshabit/squibble/PlayerSelectPanel;->SLOTS:[Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 61
    invoke-direct {p0}, Lcom/masshabit/common/entity/Entity;-><init>()V

    .line 47
    new-array v0, v1, [Lcom/masshabit/squibble/HidableEntity;

    iput-object v0, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mHighlights:[Lcom/masshabit/squibble/HidableEntity;

    .line 48
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mSlotLabels:[Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public checkTap(FF)Z
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/16 v9, 0x1e

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 184
    iget-boolean v4, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mVisible:Z

    if-eqz v4, :cond_9

    iget v4, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mState:I

    if-nez v4, :cond_9

    .line 186
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 187
    .local v0, "env":Lcom/masshabit/common/Environment;
    invoke-static {}, Lcom/masshabit/squibble/ProfileManager;->instance()Lcom/masshabit/common/ProfileManagerBase;

    move-result-object v2

    check-cast v2, Lcom/masshabit/squibble/ProfileManager;

    .line 188
    .local v2, "pm":Lcom/masshabit/squibble/ProfileManager;
    iget v4, v0, Lcom/masshabit/common/Environment;->mScreenWidth:F

    const/high16 v5, 0x43820000    # 260.0f

    sub-float/2addr v4, v5

    sub-float/2addr p1, v4

    .line 190
    iget-object v4, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mStart:Lcom/masshabit/squibble/ButtonEntity;

    invoke-virtual {v4, p1, p2}, Lcom/masshabit/squibble/ButtonEntity;->checkTap(FF)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 193
    iget v4, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mSelectedSlotIndex:I

    if-eq v4, v8, :cond_0

    move v4, v6

    :goto_0
    invoke-static {v4}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 195
    invoke-virtual {v2}, Lcom/masshabit/squibble/ProfileManager;->getProfile()Lcom/masshabit/common/ProfileManagerBase$PlayerProfile;

    move-result-object v3

    check-cast v3, Lcom/masshabit/squibble/Profile;

    .line 196
    .local v3, "profile":Lcom/masshabit/squibble/Profile;
    iget-object v4, v3, Lcom/masshabit/squibble/Profile;->mLevels:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 199
    const-string v4, "intro/intro.story"

    sput-object v4, Lcom/masshabit/squibble/Screen;->sSharedArgs:Ljava/lang/String;

    .line 200
    iget-object v4, v0, Lcom/masshabit/common/Environment;->mGame:Lcom/masshabit/squibble/Game;

    invoke-virtual {v4, v9}, Lcom/masshabit/squibble/Game;->pushScreen(I)V

    .line 201
    iget-object v4, v0, Lcom/masshabit/common/Environment;->mGame:Lcom/masshabit/squibble/Game;

    const/16 v5, 0x46

    invoke-virtual {v4, v5}, Lcom/masshabit/squibble/Game;->changeScreen(I)V

    :goto_1
    move v4, v6

    .line 250
    .end local v0    # "env":Lcom/masshabit/common/Environment;
    .end local v2    # "pm":Lcom/masshabit/squibble/ProfileManager;
    .end local v3    # "profile":Lcom/masshabit/squibble/Profile;
    :goto_2
    return v4

    .restart local v0    # "env":Lcom/masshabit/common/Environment;
    .restart local v2    # "pm":Lcom/masshabit/squibble/ProfileManager;
    :cond_0
    move v4, v7

    .line 193
    goto :goto_0

    .line 206
    .restart local v3    # "profile":Lcom/masshabit/squibble/Profile;
    :cond_1
    const/4 v4, 0x0

    sput-object v4, Lcom/masshabit/squibble/Screen;->sSharedArgs:Ljava/lang/String;

    .line 207
    iget-object v4, v0, Lcom/masshabit/common/Environment;->mGame:Lcom/masshabit/squibble/Game;

    invoke-virtual {v4, v9}, Lcom/masshabit/squibble/Game;->changeScreen(I)V

    goto :goto_1

    .line 211
    .end local v3    # "profile":Lcom/masshabit/squibble/Profile;
    :cond_2
    iget-object v4, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mBack:Lcom/masshabit/squibble/ButtonEntity;

    invoke-virtual {v4, p1, p2}, Lcom/masshabit/squibble/ButtonEntity;->checkTap(FF)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 213
    invoke-virtual {p0, v7}, Lcom/masshabit/squibble/PlayerSelectPanel;->setVisible(Z)V

    .line 214
    iget-object v4, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mMainButtonPanel:Lcom/masshabit/squibble/MainButtonPanel;

    invoke-virtual {v4, v6}, Lcom/masshabit/squibble/MainButtonPanel;->setVisible(Z)V

    move v4, v6

    .line 215
    goto :goto_2

    .line 217
    :cond_3
    iget-object v4, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mDelete:Lcom/masshabit/squibble/ButtonEntity;

    invoke-virtual {v4, p1, p2}, Lcom/masshabit/squibble/ButtonEntity;->checkTap(FF)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 220
    iget v4, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mSelectedSlotIndex:I

    if-eq v4, v8, :cond_4

    move v4, v6

    :goto_3
    invoke-static {v4}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 221
    iget v4, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mSelectedSlotIndex:I

    invoke-virtual {v2, v4}, Lcom/masshabit/squibble/ProfileManager;->setCurrentProfile(I)V

    .line 222
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/masshabit/common/Environment;->showDialog(I)V

    move v4, v6

    .line 223
    goto :goto_2

    :cond_4
    move v4, v7

    .line 220
    goto :goto_3

    .line 227
    :cond_5
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    sget-object v4, Lcom/masshabit/squibble/PlayerSelectPanel;->SLOTS:[Landroid/graphics/RectF;

    array-length v4, v4

    if-ge v1, v4, :cond_8

    .line 229
    sget-object v4, Lcom/masshabit/squibble/PlayerSelectPanel;->SLOTS:[Landroid/graphics/RectF;

    aget-object v4, v4, v1

    invoke-virtual {v4, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 231
    invoke-virtual {p0, v1}, Lcom/masshabit/squibble/PlayerSelectPanel;->setSelected(I)V

    .line 232
    invoke-virtual {v2}, Lcom/masshabit/squibble/ProfileManager;->getProfile()Lcom/masshabit/common/ProfileManagerBase$PlayerProfile;

    move-result-object v3

    check-cast v3, Lcom/masshabit/squibble/Profile;

    .line 233
    .restart local v3    # "profile":Lcom/masshabit/squibble/Profile;
    iget-object v4, v3, Lcom/masshabit/squibble/Profile;->mName:Ljava/lang/String;

    if-nez v4, :cond_6

    .line 235
    iget-object v4, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mDelete:Lcom/masshabit/squibble/ButtonEntity;

    invoke-virtual {v4, v7}, Lcom/masshabit/squibble/ButtonEntity;->setEnabled(Z)V

    .line 236
    iget-object v4, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mStart:Lcom/masshabit/squibble/ButtonEntity;

    invoke-virtual {v4, v7}, Lcom/masshabit/squibble/ButtonEntity;->setEnabled(Z)V

    .line 237
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/masshabit/common/Environment;->showDialog(I)V

    :goto_5
    move v4, v6

    .line 244
    goto :goto_2

    .line 241
    :cond_6
    iget-object v4, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mDelete:Lcom/masshabit/squibble/ButtonEntity;

    invoke-virtual {v4, v6}, Lcom/masshabit/squibble/ButtonEntity;->setEnabled(Z)V

    .line 242
    iget-object v4, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mStart:Lcom/masshabit/squibble/ButtonEntity;

    invoke-virtual {v4, v6}, Lcom/masshabit/squibble/ButtonEntity;->setEnabled(Z)V

    goto :goto_5

    .line 227
    .end local v3    # "profile":Lcom/masshabit/squibble/Profile;
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    move v4, v7

    .line 247
    goto :goto_2

    .end local v0    # "env":Lcom/masshabit/common/Environment;
    .end local v1    # "i":I
    .end local v2    # "pm":Lcom/masshabit/squibble/ProfileManager;
    :cond_9
    move v4, v7

    .line 250
    goto :goto_2
.end method

.method public confirmDeleteNo()V
    .locals 2

    .prologue
    .line 267
    const-string v0, "PlayerSelectPanel"

    const-string v1, "confirmDeleteNo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return-void
.end method

.method public confirmDeleteYes()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 255
    const-string v2, "PlayerSelectPanel"

    const-string v3, "confirmDeleteYes"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-static {}, Lcom/masshabit/squibble/ProfileManager;->instance()Lcom/masshabit/common/ProfileManagerBase;

    move-result-object v0

    check-cast v0, Lcom/masshabit/squibble/ProfileManager;

    .line 257
    .local v0, "pm":Lcom/masshabit/squibble/ProfileManager;
    invoke-virtual {v0}, Lcom/masshabit/squibble/ProfileManager;->getProfile()Lcom/masshabit/common/ProfileManagerBase$PlayerProfile;

    move-result-object v1

    check-cast v1, Lcom/masshabit/squibble/Profile;

    .line 258
    .local v1, "profile":Lcom/masshabit/squibble/Profile;
    invoke-virtual {v1}, Lcom/masshabit/squibble/Profile;->reset()V

    .line 259
    invoke-virtual {v0}, Lcom/masshabit/squibble/ProfileManager;->saveProfile()V

    .line 260
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/masshabit/squibble/PlayerSelectPanel;->setSelected(I)V

    .line 261
    invoke-virtual {p0}, Lcom/masshabit/squibble/PlayerSelectPanel;->setSlotLabels()V

    .line 262
    iget-object v2, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mDelete:Lcom/masshabit/squibble/ButtonEntity;

    invoke-virtual {v2, v4}, Lcom/masshabit/squibble/ButtonEntity;->setEnabled(Z)V

    .line 263
    iget-object v2, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mStart:Lcom/masshabit/squibble/ButtonEntity;

    invoke-virtual {v2, v4}, Lcom/masshabit/squibble/ButtonEntity;->setEnabled(Z)V

    .line 264
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 159
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 160
    .local v0, "env":Lcom/masshabit/common/Environment;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 161
    iget v2, v0, Lcom/masshabit/common/Environment;->mScreenWidth:F

    const/high16 v3, 0x43820000    # 260.0f

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mPositionParam:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 162
    invoke-virtual {p0, p1}, Lcom/masshabit/squibble/PlayerSelectPanel;->drawChildren(Landroid/graphics/Canvas;)V

    .line 165
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/masshabit/squibble/PlayerSelectPanel;->SLOTS:[Landroid/graphics/RectF;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 168
    iget-object v2, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mSlotLabels:[Ljava/lang/String;

    aget-object v2, v2, v1

    sget-object v3, Lcom/masshabit/squibble/PlayerSelectPanel;->SLOTS:[Landroid/graphics/RectF;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/graphics/RectF;->left:F

    const/high16 v4, 0x42700000    # 60.0f

    add-float/2addr v3, v4

    sget-object v4, Lcom/masshabit/squibble/PlayerSelectPanel;->SLOTS:[Landroid/graphics/RectF;

    aget-object v4, v4, v1

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    const/high16 v5, 0x41c80000    # 25.0f

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 171
    return-void
.end method

.method public enterNameNo()V
    .locals 2

    .prologue
    .line 283
    const-string v0, "PlayerSelectPanel"

    const-string v1, "enterNameNo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/masshabit/squibble/PlayerSelectPanel;->setSelected(I)V

    .line 285
    return-void
.end method

.method public enterNameYes(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 272
    const-string v2, "PlayerSelectPanel"

    const-string v3, "enterNameYes"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-static {}, Lcom/masshabit/squibble/ProfileManager;->instance()Lcom/masshabit/common/ProfileManagerBase;

    move-result-object v0

    check-cast v0, Lcom/masshabit/squibble/ProfileManager;

    .line 274
    .local v0, "pm":Lcom/masshabit/squibble/ProfileManager;
    invoke-virtual {v0}, Lcom/masshabit/squibble/ProfileManager;->getProfile()Lcom/masshabit/common/ProfileManagerBase$PlayerProfile;

    move-result-object v1

    check-cast v1, Lcom/masshabit/squibble/Profile;

    .line 275
    .local v1, "profile":Lcom/masshabit/squibble/Profile;
    iput-object p1, v1, Lcom/masshabit/squibble/Profile;->mName:Ljava/lang/String;

    .line 276
    invoke-virtual {v0}, Lcom/masshabit/squibble/ProfileManager;->saveProfile()V

    .line 277
    invoke-virtual {p0}, Lcom/masshabit/squibble/PlayerSelectPanel;->setSlotLabels()V

    .line 278
    iget-object v2, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mDelete:Lcom/masshabit/squibble/ButtonEntity;

    invoke-virtual {v2, v4}, Lcom/masshabit/squibble/ButtonEntity;->setEnabled(Z)V

    .line 279
    iget-object v2, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mStart:Lcom/masshabit/squibble/ButtonEntity;

    invoke-virtual {v2, v4}, Lcom/masshabit/squibble/ButtonEntity;->setEnabled(Z)V

    .line 280
    return-void
.end method

.method public init()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    const/high16 v4, -0x3c6a0000    # -300.0f

    const/4 v6, 0x0

    .line 67
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 69
    .local v0, "env":Lcom/masshabit/common/Environment;
    invoke-virtual {p0}, Lcom/masshabit/squibble/PlayerSelectPanel;->initChildren()V

    .line 70
    iput-boolean v6, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mVisible:Z

    .line 71
    iput v6, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mState:I

    .line 72
    new-instance v2, Lcom/masshabit/common/tween/Tween;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/masshabit/common/tween/Tween;-><init>(Lcom/masshabit/common/tween/ITweenCompleteListener;Lcom/masshabit/common/tween/Ease$EaseBase;)V

    iput-object v2, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mMoveTween:Lcom/masshabit/common/tween/Tween;

    .line 73
    iget-object v2, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mMoveTween:Lcom/masshabit/common/tween/Tween;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4, v4, v3}, Lcom/masshabit/common/tween/Tween;->init(FFF)V

    .line 74
    iget-object v2, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mMoveTween:Lcom/masshabit/common/tween/Tween;

    iget v2, v2, Lcom/masshabit/common/tween/Tween;->mValue:F

    iput v2, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mPositionParam:F

    .line 76
    iget-object v2, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v2, v2, Lcom/masshabit/common/Level;->mEntityIds:Ljava/util/HashMap;

    const-string v3, "start"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/masshabit/squibble/ButtonEntity;

    iput-object v2, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mStart:Lcom/masshabit/squibble/ButtonEntity;

    .line 77
    iget-object v2, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v2, v2, Lcom/masshabit/common/Level;->mEntityIds:Ljava/util/HashMap;

    const-string v3, "back"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/masshabit/squibble/ButtonEntity;

    iput-object v2, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mBack:Lcom/masshabit/squibble/ButtonEntity;

    .line 78
    iget-object v2, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v2, v2, Lcom/masshabit/common/Level;->mEntityIds:Ljava/util/HashMap;

    const-string v3, "delete"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/masshabit/squibble/ButtonEntity;

    iput-object v2, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mDelete:Lcom/masshabit/squibble/ButtonEntity;

    .line 80
    iput v8, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mSelectedSlotIndex:I

    .line 81
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/masshabit/squibble/PlayerSelectPanel;->SLOTS:[Landroid/graphics/RectF;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 83
    iget-object v3, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mHighlights:[Lcom/masshabit/squibble/HidableEntity;

    iget-object v2, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v2, v2, Lcom/masshabit/common/Level;->mEntityIds:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "highlight"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/masshabit/squibble/HidableEntity;

    aput-object v2, v3, v1

    .line 84
    iget-object v2, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mHighlights:[Lcom/masshabit/squibble/HidableEntity;

    aget-object v2, v2, v1

    invoke-virtual {v2, v6}, Lcom/masshabit/squibble/HidableEntity;->setVisible(Z)V

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :cond_0
    iget-object v2, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v2, v2, Lcom/masshabit/common/Level;->mEntityIds:Ljava/util/HashMap;

    const-string v3, "main_button_panel"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/masshabit/squibble/MainButtonPanel;

    iput-object v2, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mMainButtonPanel:Lcom/masshabit/squibble/MainButtonPanel;

    .line 89
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mPaint:Landroid/graphics/Paint;

    .line 90
    iget-object v2, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    iget-object v2, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 92
    iget-object v2, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 93
    iget-object v2, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 94
    iget-object v2, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, -0x78000000

    invoke-virtual {v2, v3, v7, v7, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 96
    invoke-virtual {p0}, Lcom/masshabit/squibble/PlayerSelectPanel;->setSlotLabels()V

    .line 97
    return-void
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mVisible:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setSelected(I)V
    .locals 9
    .param p1, "index"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "PlayerSelectPanel"

    .line 115
    const-string v2, "PlayerSelectPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting selected index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iput p1, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mSelectedSlotIndex:I

    .line 119
    invoke-static {}, Lcom/masshabit/squibble/ProfileManager;->instance()Lcom/masshabit/common/ProfileManagerBase;

    move-result-object v1

    check-cast v1, Lcom/masshabit/squibble/ProfileManager;

    .line 120
    .local v1, "pm":Lcom/masshabit/squibble/ProfileManager;
    invoke-virtual {v1, p1}, Lcom/masshabit/squibble/ProfileManager;->setCurrentProfile(I)V

    .line 122
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    sget-object v2, Lcom/masshabit/squibble/PlayerSelectPanel;->SLOTS:[Landroid/graphics/RectF;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 124
    const-string v2, "PlayerSelectPanel"

    const-string v2, "Setting mHighlights[%d].mVisible = %d == %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x2

    iget v5, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mSelectedSlotIndex:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v2, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mHighlights:[Lcom/masshabit/squibble/HidableEntity;

    aget-object v2, v2, v0

    iget v3, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mSelectedSlotIndex:I

    if-ne v0, v3, :cond_0

    move v3, v7

    :goto_1
    invoke-virtual {v2, v3}, Lcom/masshabit/squibble/HidableEntity;->setVisible(Z)V

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v3, v6

    .line 125
    goto :goto_1

    .line 127
    :cond_1
    return-void
.end method

.method protected setSlotLabels()V
    .locals 7

    .prologue
    .line 101
    const-string v4, "PlayerSelectPanel"

    const-string v5, "Updating slot labels"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 103
    .local v0, "env":Lcom/masshabit/common/Environment;
    invoke-static {}, Lcom/masshabit/squibble/ProfileManager;->instance()Lcom/masshabit/common/ProfileManagerBase;

    move-result-object v2

    check-cast v2, Lcom/masshabit/squibble/ProfileManager;

    .line 104
    .local v2, "pm":Lcom/masshabit/squibble/ProfileManager;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    sget-object v4, Lcom/masshabit/squibble/PlayerSelectPanel;->SLOTS:[Landroid/graphics/RectF;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 106
    invoke-virtual {v2, v1}, Lcom/masshabit/squibble/ProfileManager;->setCurrentProfile(I)V

    .line 107
    invoke-virtual {v2}, Lcom/masshabit/squibble/ProfileManager;->getProfile()Lcom/masshabit/common/ProfileManagerBase$PlayerProfile;

    move-result-object v3

    check-cast v3, Lcom/masshabit/squibble/Profile;

    .line 108
    .local v3, "profile":Lcom/masshabit/squibble/Profile;
    iget-object v4, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mSlotLabels:[Ljava/lang/String;

    iget-object v5, v3, Lcom/masshabit/squibble/Profile;->mName:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v3, Lcom/masshabit/squibble/Profile;->mName:Ljava/lang/String;

    :goto_1
    aput-object v5, v4, v1

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    :cond_0
    iget-object v5, v0, Lcom/masshabit/common/Environment;->mActivity:Landroid/app/Activity;

    const v6, 0x7f04000a

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 110
    .end local v3    # "profile":Lcom/masshabit/squibble/Profile;
    :cond_1
    iget v4, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mSelectedSlotIndex:I

    invoke-virtual {v2, v4}, Lcom/masshabit/squibble/ProfileManager;->setCurrentProfile(I)V

    .line 111
    return-void
.end method

.method public setVisible(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x44480000    # 800.0f

    const/high16 v1, 0x43960000    # 300.0f

    const/4 v3, 0x0

    const/high16 v2, -0x3c6a0000    # -300.0f

    .line 131
    iget-boolean v0, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mVisible:Z

    if-ne v0, p1, :cond_0

    .line 149
    :goto_0
    return-void

    .line 134
    :cond_0
    iput-boolean p1, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mVisible:Z

    .line 136
    iget-boolean v0, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mVisible:Z

    if-nez v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mMoveTween:Lcom/masshabit/common/tween/Tween;

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v4

    invoke-virtual {v0, v3, v2, v1}, Lcom/masshabit/common/tween/Tween;->init(FFF)V

    .line 139
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/masshabit/squibble/PlayerSelectPanel;->setSelected(I)V

    .line 147
    :goto_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mState:I

    .line 148
    iget-object v0, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mMoveTween:Lcom/masshabit/common/tween/Tween;

    iget v0, v0, Lcom/masshabit/common/tween/Tween;->mValue:F

    iput v0, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mPositionParam:F

    goto :goto_0

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mMoveTween:Lcom/masshabit/common/tween/Tween;

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v4

    invoke-virtual {v0, v2, v3, v1}, Lcom/masshabit/common/tween/Tween;->init(FFF)V

    .line 144
    iget-object v0, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mDelete:Lcom/masshabit/squibble/ButtonEntity;

    invoke-virtual {v0, v5}, Lcom/masshabit/squibble/ButtonEntity;->setEnabled(Z)V

    .line 145
    iget-object v0, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mStart:Lcom/masshabit/squibble/ButtonEntity;

    invoke-virtual {v0, v5}, Lcom/masshabit/squibble/ButtonEntity;->setEnabled(Z)V

    goto :goto_1
.end method

.method public tweenComplete(Ljava/lang/Object;)V
    .locals 1
    .param p1, "tween"    # Ljava/lang/Object;

    .prologue
    .line 290
    const/4 v0, 0x0

    iput v0, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mState:I

    .line 291
    return-void
.end method

.method public update(F)V
    .locals 1
    .param p1, "dt"    # F

    .prologue
    .line 176
    iget-object v0, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mMoveTween:Lcom/masshabit/common/tween/Tween;

    invoke-virtual {v0, p1}, Lcom/masshabit/common/tween/Tween;->update(F)V

    .line 177
    iget-object v0, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mMoveTween:Lcom/masshabit/common/tween/Tween;

    iget v0, v0, Lcom/masshabit/common/tween/Tween;->mValue:F

    iput v0, p0, Lcom/masshabit/squibble/PlayerSelectPanel;->mPositionParam:F

    .line 179
    invoke-virtual {p0, p1}, Lcom/masshabit/squibble/PlayerSelectPanel;->updateChildren(F)V

    .line 180
    return-void
.end method
