.class public Lcom/masshabit/squibble/MenuScreen;
.super Lcom/masshabit/squibble/Screen;
.source "MenuScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/masshabit/squibble/MenuScreen$DialogResponse;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MenuScreen"


# instance fields
.field public mLevel:Lcom/masshabit/common/Level;

.field public mMainButtonPanel:Lcom/masshabit/squibble/MainButtonPanel;

.field public mMute:Lcom/masshabit/squibble/MuteEntity;

.field public mPaint:Landroid/graphics/Paint;

.field public mPlayerSelectPanel:Lcom/masshabit/squibble/PlayerSelectPanel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/masshabit/squibble/Screen;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method protected createDialogListener(I)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p1, "dialogId"    # I

    .prologue
    .line 207
    packed-switch p1, :pswitch_data_0

    .line 247
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 210
    :pswitch_0
    new-instance v0, Lcom/masshabit/squibble/MenuScreen$1;

    invoke-direct {v0, p0}, Lcom/masshabit/squibble/MenuScreen$1;-><init>(Lcom/masshabit/squibble/MenuScreen;)V

    goto :goto_0

    .line 230
    :pswitch_1
    new-instance v0, Lcom/masshabit/squibble/MenuScreen$2;

    invoke-direct {v0, p0}, Lcom/masshabit/squibble/MenuScreen$2;-><init>(Lcom/masshabit/squibble/MenuScreen;)V

    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Lcom/masshabit/squibble/Screen;->destroy()V

    .line 134
    iget-object v0, p0, Lcom/masshabit/squibble/MenuScreen;->mLevel:Lcom/masshabit/common/Level;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/masshabit/squibble/MenuScreen;->mLevel:Lcom/masshabit/common/Level;

    invoke-virtual {v0}, Lcom/masshabit/common/Level;->destroy()V

    .line 138
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 143
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 145
    .local v0, "env":Lcom/masshabit/common/Environment;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 146
    iget-object v3, v0, Lcom/masshabit/common/Environment;->mCamera:Lcom/masshabit/common/Camera;

    iget-object v3, v3, Lcom/masshabit/common/Camera;->mView:Landroid/graphics/Matrix;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 148
    iget-object v3, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v3, v3, Lcom/masshabit/common/Level;->mLayers:[Lcom/masshabit/common/Layer;

    array-length v2, v3

    .line 149
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 151
    iget-object v3, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v3, v3, Lcom/masshabit/common/Level;->mLayers:[Lcom/masshabit/common/Layer;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lcom/masshabit/common/Layer;->draw(Landroid/graphics/Canvas;)V

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    :cond_0
    iget-object v3, v0, Lcom/masshabit/common/Environment;->mContext:Landroid/content/Context;

    const/high16 v4, 0x7f040000

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Lcom/masshabit/common/Environment;->mScreenWidth:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget v5, v0, Lcom/masshabit/common/Environment;->mScreenHeight:F

    const/high16 v6, 0x40c00000    # 6.0f

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/masshabit/squibble/MenuScreen;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 156
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 157
    return-void
.end method

.method public init()V
    .locals 10

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v8, 0x3f000000    # 0.5f

    .line 55
    sget-object v2, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 59
    .local v2, "env":Lcom/masshabit/common/Environment;
    new-instance v5, Lcom/masshabit/common/Level;

    const-string v6, "menu"

    invoke-direct {v5, v6}, Lcom/masshabit/common/Level;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/masshabit/squibble/MenuScreen;->mLevel:Lcom/masshabit/common/Level;

    .line 60
    iget-object v5, p0, Lcom/masshabit/squibble/MenuScreen;->mLevel:Lcom/masshabit/common/Level;

    iput-object v5, v2, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    .line 61
    iget-object v5, p0, Lcom/masshabit/squibble/MenuScreen;->mLevel:Lcom/masshabit/common/Level;

    invoke-virtual {v5}, Lcom/masshabit/common/Level;->registerGeometry()V

    .line 63
    new-instance v5, Lcom/masshabit/common/LevelLoader;

    iget-object v6, p0, Lcom/masshabit/squibble/MenuScreen;->mLevel:Lcom/masshabit/common/Level;

    new-instance v7, Lcom/masshabit/squibble/EntityFactory;

    invoke-direct {v7}, Lcom/masshabit/squibble/EntityFactory;-><init>()V

    invoke-direct {v5, v6, v7}, Lcom/masshabit/common/LevelLoader;-><init>(Lcom/masshabit/common/Level;Lcom/masshabit/common/entity/IEntityFactory;)V

    const-string v6, "menu.svg"

    invoke-virtual {v5, v6}, Lcom/masshabit/common/LevelLoader;->load(Ljava/lang/String;)V

    .line 64
    iget-object v5, p0, Lcom/masshabit/squibble/MenuScreen;->mLevel:Lcom/masshabit/common/Level;

    iget-boolean v5, v5, Lcom/masshabit/common/Level;->mLoaded:Z

    if-nez v5, :cond_0

    .line 66
    const-string v5, "MenuScreen"

    const-string v6, "Level load failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    iget-object v5, p0, Lcom/masshabit/squibble/MenuScreen;->mLevel:Lcom/masshabit/common/Level;

    iget-object v5, v5, Lcom/masshabit/common/Level;->mEntityIds:Ljava/util/HashMap;

    const-string v6, "mute"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/masshabit/squibble/MuteEntity;

    iput-object v5, p0, Lcom/masshabit/squibble/MenuScreen;->mMute:Lcom/masshabit/squibble/MuteEntity;

    .line 70
    iget-object v5, p0, Lcom/masshabit/squibble/MenuScreen;->mLevel:Lcom/masshabit/common/Level;

    iget-object v5, v5, Lcom/masshabit/common/Level;->mEntityIds:Ljava/util/HashMap;

    const-string v6, "player_select_panel"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/masshabit/squibble/PlayerSelectPanel;

    iput-object v5, p0, Lcom/masshabit/squibble/MenuScreen;->mPlayerSelectPanel:Lcom/masshabit/squibble/PlayerSelectPanel;

    .line 71
    iget-object v5, p0, Lcom/masshabit/squibble/MenuScreen;->mLevel:Lcom/masshabit/common/Level;

    iget-object v5, v5, Lcom/masshabit/common/Level;->mEntityIds:Ljava/util/HashMap;

    const-string v6, "main_button_panel"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/masshabit/squibble/MainButtonPanel;

    iput-object v5, p0, Lcom/masshabit/squibble/MenuScreen;->mMainButtonPanel:Lcom/masshabit/squibble/MainButtonPanel;

    .line 73
    iget v5, v2, Lcom/masshabit/common/Environment;->mScreenWidth:F

    div-float v0, v5, v9

    .line 74
    .local v0, "camx":F
    iget v5, v2, Lcom/masshabit/common/Environment;->mScreenHeight:F

    div-float v1, v5, v9

    .line 75
    .local v1, "camy":F
    iget-object v5, v2, Lcom/masshabit/common/Environment;->mCamera:Lcom/masshabit/common/Camera;

    invoke-virtual {v5, v0, v1}, Lcom/masshabit/common/Camera;->move(FF)V

    .line 76
    iget-object v5, v2, Lcom/masshabit/common/Environment;->mCamera:Lcom/masshabit/common/Camera;

    invoke-virtual {v5, v0, v1}, Lcom/masshabit/common/Camera;->setTarget(FF)V

    .line 77
    iget-object v5, v2, Lcom/masshabit/common/Environment;->mCamera:Lcom/masshabit/common/Camera;

    invoke-virtual {v5}, Lcom/masshabit/common/Camera;->calculateMatrices()V

    .line 80
    sget-boolean v5, Lcom/masshabit/common/Globals;->DEBUG_BUILD:Z

    if-eqz v5, :cond_1

    .line 83
    invoke-static {}, Lcom/masshabit/squibble/ProfileManager;->instance()Lcom/masshabit/common/ProfileManagerBase;

    move-result-object v3

    check-cast v3, Lcom/masshabit/squibble/ProfileManager;

    .line 84
    .local v3, "pm":Lcom/masshabit/squibble/ProfileManager;
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/masshabit/squibble/ProfileManager;->setCurrentProfile(I)V

    .line 86
    invoke-virtual {v3}, Lcom/masshabit/squibble/ProfileManager;->getProfile()Lcom/masshabit/common/ProfileManagerBase$PlayerProfile;

    move-result-object v4

    check-cast v4, Lcom/masshabit/squibble/Profile;

    .line 87
    .local v4, "profile":Lcom/masshabit/squibble/Profile;
    invoke-virtual {v4}, Lcom/masshabit/squibble/Profile;->reset()V

    .line 88
    const-string v5, "Unlocked!"

    iput-object v5, v4, Lcom/masshabit/squibble/Profile;->mName:Ljava/lang/String;

    .line 89
    const-string v5, "lab_1"

    invoke-virtual {v4, v5, v8}, Lcom/masshabit/squibble/Profile;->setLevelComplete(Ljava/lang/String;F)V

    .line 90
    const-string v5, "lab_2"

    invoke-virtual {v4, v5, v8}, Lcom/masshabit/squibble/Profile;->setLevelComplete(Ljava/lang/String;F)V

    .line 91
    const-string v5, "lab_3"

    invoke-virtual {v4, v5, v8}, Lcom/masshabit/squibble/Profile;->setLevelComplete(Ljava/lang/String;F)V

    .line 92
    const-string v5, "lab_4"

    invoke-virtual {v4, v5, v8}, Lcom/masshabit/squibble/Profile;->setLevelComplete(Ljava/lang/String;F)V

    .line 93
    const-string v5, "lab_5"

    invoke-virtual {v4, v5, v8}, Lcom/masshabit/squibble/Profile;->setLevelComplete(Ljava/lang/String;F)V

    .line 95
    const-string v5, "forest_1"

    invoke-virtual {v4, v5, v8}, Lcom/masshabit/squibble/Profile;->setLevelComplete(Ljava/lang/String;F)V

    .line 96
    const-string v5, "forest_2"

    invoke-virtual {v4, v5, v8}, Lcom/masshabit/squibble/Profile;->setLevelComplete(Ljava/lang/String;F)V

    .line 97
    const-string v5, "forest_3"

    invoke-virtual {v4, v5, v8}, Lcom/masshabit/squibble/Profile;->setLevelComplete(Ljava/lang/String;F)V

    .line 98
    const-string v5, "forest_4"

    invoke-virtual {v4, v5, v8}, Lcom/masshabit/squibble/Profile;->setLevelComplete(Ljava/lang/String;F)V

    .line 99
    const-string v5, "forest_5"

    invoke-virtual {v4, v5, v8}, Lcom/masshabit/squibble/Profile;->setLevelComplete(Ljava/lang/String;F)V

    .line 101
    const-string v5, "beach_1"

    invoke-virtual {v4, v5, v8}, Lcom/masshabit/squibble/Profile;->setLevelComplete(Ljava/lang/String;F)V

    .line 102
    const-string v5, "beach_2"

    invoke-virtual {v4, v5, v8}, Lcom/masshabit/squibble/Profile;->setLevelComplete(Ljava/lang/String;F)V

    .line 103
    const-string v5, "beach_3"

    invoke-virtual {v4, v5, v8}, Lcom/masshabit/squibble/Profile;->setLevelComplete(Ljava/lang/String;F)V

    .line 104
    const-string v5, "beach_4"

    invoke-virtual {v4, v5, v8}, Lcom/masshabit/squibble/Profile;->setLevelComplete(Ljava/lang/String;F)V

    .line 105
    const-string v5, "beach_5"

    invoke-virtual {v4, v5, v8}, Lcom/masshabit/squibble/Profile;->setLevelComplete(Ljava/lang/String;F)V

    .line 107
    const-string v5, "dock_1"

    invoke-virtual {v4, v5, v8}, Lcom/masshabit/squibble/Profile;->setLevelComplete(Ljava/lang/String;F)V

    .line 108
    const-string v5, "dock_2"

    invoke-virtual {v4, v5, v8}, Lcom/masshabit/squibble/Profile;->setLevelComplete(Ljava/lang/String;F)V

    .line 109
    const-string v5, "dock_3"

    invoke-virtual {v4, v5, v8}, Lcom/masshabit/squibble/Profile;->setLevelComplete(Ljava/lang/String;F)V

    .line 110
    const-string v5, "dock_4"

    invoke-virtual {v4, v5, v8}, Lcom/masshabit/squibble/Profile;->setLevelComplete(Ljava/lang/String;F)V

    .line 111
    const-string v5, "dock_5"

    invoke-virtual {v4, v5, v8}, Lcom/masshabit/squibble/Profile;->setLevelComplete(Ljava/lang/String;F)V

    .line 113
    invoke-virtual {v3}, Lcom/masshabit/squibble/ProfileManager;->saveProfile()V

    .line 116
    .end local v3    # "pm":Lcom/masshabit/squibble/ProfileManager;
    .end local v4    # "profile":Lcom/masshabit/squibble/Profile;
    :cond_1
    iget-object v5, p0, Lcom/masshabit/squibble/MenuScreen;->mLevel:Lcom/masshabit/common/Level;

    invoke-virtual {v5}, Lcom/masshabit/common/Level;->init()V

    .line 119
    iget-object v5, v2, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v5, v5, Lcom/masshabit/common/Level;->mEntityIds:Ljava/util/HashMap;

    const-string v6, "lite"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/masshabit/squibble/HidableEntity;

    invoke-static {}, Lcom/masshabit/common/Globals;->freeMode()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/masshabit/squibble/HidableEntity;->setVisible(Z)V

    .line 122
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/masshabit/squibble/MenuScreen;->mPaint:Landroid/graphics/Paint;

    .line 123
    iget-object v5, p0, Lcom/masshabit/squibble/MenuScreen;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 124
    iget-object v5, p0, Lcom/masshabit/squibble/MenuScreen;->mPaint:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 125
    iget-object v5, p0, Lcom/masshabit/squibble/MenuScreen;->mPaint:Landroid/graphics/Paint;

    const v6, -0x77bbbbbc

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    iget-object v5, p0, Lcom/masshabit/squibble/MenuScreen;->mPaint:Landroid/graphics/Paint;

    const/high16 v6, 0x41400000    # 12.0f

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 128
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 13
    .param p1, "id"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, -0x2

    const/16 v8, 0xa

    .line 271
    sget-object v5, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 272
    .local v5, "env":Lcom/masshabit/common/Environment;
    const/4 v6, 0x2

    if-ne p1, v6, :cond_0

    .line 274
    invoke-virtual {p0, p1}, Lcom/masshabit/squibble/MenuScreen;->createDialogListener(I)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    .line 275
    .local v3, "dialogClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, v5, Lcom/masshabit/common/Environment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 276
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v6, 0x7f04000b

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f040005

    invoke-virtual {v6, v7, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f040006

    invoke-virtual {v6, v7, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 279
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 320
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "dialogClickListener":Landroid/content/DialogInterface$OnClickListener;
    :goto_0
    return-object v6

    .line 281
    :cond_0
    const/4 v6, 0x3

    if-ne p1, v6, :cond_1

    .line 283
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v6, v5, Lcom/masshabit/common/Environment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 284
    .local v1, "container":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v8, v8, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 286
    new-instance v4, Landroid/widget/EditText;

    iget-object v6, v5, Lcom/masshabit/common/Environment;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 287
    .local v4, "edit":Landroid/widget/EditText;
    new-array v6, v12, [Landroid/text/InputFilter;

    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v7, v8}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v7, v6, v11

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 290
    invoke-virtual {v4, v12}, Landroid/widget/EditText;->setId(I)V

    .line 292
    invoke-virtual {p0, p1}, Lcom/masshabit/squibble/MenuScreen;->createDialogListener(I)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    .line 294
    .restart local v3    # "dialogClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, v5, Lcom/masshabit/common/Environment;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f04000c

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 300
    .local v2, "dialog":Landroid/app/AlertDialog;
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v10, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    invoke-virtual {v4}, Landroid/widget/EditText;->setSingleLine()V

    .line 302
    new-instance v6, Lcom/masshabit/squibble/MenuScreen$3;

    invoke-direct {v6, p0, v2}, Lcom/masshabit/squibble/MenuScreen$3;-><init>(Lcom/masshabit/squibble/MenuScreen;Landroid/app/AlertDialog;)V

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 314
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 315
    iget-object v6, v5, Lcom/masshabit/common/Environment;->mContext:Landroid/content/Context;

    const v7, 0x7f040007

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v10, v6, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 316
    iget-object v6, v5, Lcom/masshabit/common/Environment;->mContext:Landroid/content/Context;

    const v7, 0x7f040008

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v9, v6, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    move-object v6, v2

    .line 318
    goto :goto_0

    .line 320
    .end local v1    # "container":Landroid/widget/LinearLayout;
    .end local v2    # "dialog":Landroid/app/AlertDialog;
    .end local v3    # "dialogClickListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v4    # "edit":Landroid/widget/EditText;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public onInputEvent(Lcom/masshabit/common/InputEvent;)V
    .locals 3
    .param p1, "e"    # Lcom/masshabit/common/InputEvent;

    .prologue
    .line 175
    iget-byte v0, p1, Lcom/masshabit/common/InputEvent;->mEventType:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 177
    iget v0, p1, Lcom/masshabit/common/InputEvent;->mAction:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/masshabit/squibble/MenuScreen;->mMute:Lcom/masshabit/squibble/MuteEntity;

    iget-object v1, p1, Lcom/masshabit/common/InputEvent;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v2, p1, Lcom/masshabit/common/InputEvent;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/masshabit/squibble/MuteEntity;->checkTap(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/masshabit/squibble/MenuScreen;->mMute:Lcom/masshabit/squibble/MuteEntity;

    invoke-virtual {v0}, Lcom/masshabit/squibble/MuteEntity;->toggle()V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/masshabit/squibble/MenuScreen;->mPlayerSelectPanel:Lcom/masshabit/squibble/PlayerSelectPanel;

    invoke-virtual {v0}, Lcom/masshabit/squibble/PlayerSelectPanel;->isReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    iget-object v0, p0, Lcom/masshabit/squibble/MenuScreen;->mPlayerSelectPanel:Lcom/masshabit/squibble/PlayerSelectPanel;

    iget-object v1, p1, Lcom/masshabit/common/InputEvent;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v2, p1, Lcom/masshabit/common/InputEvent;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/masshabit/squibble/PlayerSelectPanel;->checkTap(FF)Z

    goto :goto_0

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/masshabit/squibble/MenuScreen;->mMainButtonPanel:Lcom/masshabit/squibble/MainButtonPanel;

    invoke-virtual {v0}, Lcom/masshabit/squibble/MainButtonPanel;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/masshabit/squibble/MenuScreen;->mMainButtonPanel:Lcom/masshabit/squibble/MainButtonPanel;

    iget-object v1, p1, Lcom/masshabit/common/InputEvent;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v1, v1, Lcom/masshabit/common/physics/Vector2;->x:F

    iget-object v2, p1, Lcom/masshabit/common/InputEvent;->mPos:Lcom/masshabit/common/physics/Vector2;

    iget v2, v2, Lcom/masshabit/common/physics/Vector2;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/masshabit/squibble/MainButtonPanel;->checkTap(FF)Z

    goto :goto_0

    .line 195
    :cond_3
    iget v0, p1, Lcom/masshabit/common/InputEvent;->mAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 197
    iget v0, p1, Lcom/masshabit/common/InputEvent;->mKeyCode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 199
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    invoke-virtual {v0}, Lcom/masshabit/common/Environment;->quit()V

    goto :goto_0
.end method

.method public onMutedChanged(Z)V
    .locals 1
    .param p1, "muted"    # Z

    .prologue
    .line 326
    iget-object v0, p0, Lcom/masshabit/squibble/MenuScreen;->mMute:Lcom/masshabit/squibble/MuteEntity;

    invoke-virtual {v0, p1}, Lcom/masshabit/squibble/MuteEntity;->onMutedChanged(Z)V

    .line 327
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 9
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    .line 252
    move-object v0, p2

    check-cast v0, Landroid/app/AlertDialog;

    move-object v1, v0

    .line 253
    .local v1, "d":Landroid/app/AlertDialog;
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 254
    .local v5, "positiveLabel":Ljava/lang/CharSequence;
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 256
    .local v4, "negativeLabel":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1}, Lcom/masshabit/squibble/MenuScreen;->createDialogListener(I)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    .line 258
    .local v3, "listener":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {v1, v8, v5, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 259
    invoke-virtual {v1, v7, v4, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 261
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2    # "dialog":Landroid/app/Dialog;
    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 262
    .local v2, "edit":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 264
    check-cast v2, Landroid/widget/EditText;

    .end local v2    # "edit":Landroid/view/View;
    const-string v6, ""

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 266
    :cond_0
    return-void
.end method

.method public update(F)V
    .locals 4
    .param p1, "dt"    # F

    .prologue
    .line 162
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 163
    .local v0, "env":Lcom/masshabit/common/Environment;
    iget-object v3, v0, Lcom/masshabit/common/Environment;->mCamera:Lcom/masshabit/common/Camera;

    invoke-virtual {v3, p1}, Lcom/masshabit/common/Camera;->update(F)V

    .line 165
    iget-object v3, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v3, v3, Lcom/masshabit/common/Level;->mLayers:[Lcom/masshabit/common/Layer;

    array-length v2, v3

    .line 166
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 168
    iget-object v3, v0, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v3, v3, Lcom/masshabit/common/Level;->mLayers:[Lcom/masshabit/common/Layer;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lcom/masshabit/common/Layer;->update(F)V

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    :cond_0
    return-void
.end method
