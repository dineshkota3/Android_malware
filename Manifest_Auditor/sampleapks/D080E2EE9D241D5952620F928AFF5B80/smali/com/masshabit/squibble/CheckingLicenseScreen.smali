.class public Lcom/masshabit/squibble/CheckingLicenseScreen;
.super Lcom/masshabit/squibble/Screen;
.source "CheckingLicenseScreen.java"


# static fields
.field protected static final TITLE_X:F = -85.0f

.field protected static final TITLE_Y:F


# instance fields
.field protected mDoneChecking:Z

.field protected mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/masshabit/squibble/Screen;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 66
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 67
    .local v0, "env":Lcom/masshabit/common/Environment;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 68
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 69
    iget v1, v0, Lcom/masshabit/common/Environment;->mScreenWidth:F

    div-float/2addr v1, v3

    iget v2, v0, Lcom/masshabit/common/Environment;->mScreenHeight:F

    div-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 70
    iget-object v1, v0, Lcom/masshabit/common/Environment;->mContext:Landroid/content/Context;

    const v2, 0x7f04000e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, -0x3d560000    # -85.0f

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/masshabit/squibble/CheckingLicenseScreen;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 71
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 72
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/masshabit/squibble/CheckingLicenseScreen;->mDoneChecking:Z

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/masshabit/squibble/CheckingLicenseScreen;->mPaint:Landroid/graphics/Paint;

    .line 31
    iget-object v0, p0, Lcom/masshabit/squibble/CheckingLicenseScreen;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    iget-object v0, p0, Lcom/masshabit/squibble/CheckingLicenseScreen;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 33
    iget-object v0, p0, Lcom/masshabit/squibble/CheckingLicenseScreen;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 34
    iget-object v0, p0, Lcom/masshabit/squibble/CheckingLicenseScreen;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 37
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 77
    const/4 v2, 0x5

    if-ne p1, v2, :cond_0

    .line 79
    sget-object v1, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 80
    .local v1, "env":Lcom/masshabit/common/Environment;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, v1, Lcom/masshabit/common/Environment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f04000f

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f040011

    new-instance v4, Lcom/masshabit/squibble/CheckingLicenseScreen$2;

    invoke-direct {v4, p0, v1}, Lcom/masshabit/squibble/CheckingLicenseScreen$2;-><init>(Lcom/masshabit/squibble/CheckingLicenseScreen;Lcom/masshabit/common/Environment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f040010

    new-instance v4, Lcom/masshabit/squibble/CheckingLicenseScreen$1;

    invoke-direct {v4, p0, v1}, Lcom/masshabit/squibble/CheckingLicenseScreen$1;-><init>(Lcom/masshabit/squibble/CheckingLicenseScreen;Lcom/masshabit/common/Environment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .local v0, "dialog":Landroid/app/Dialog;
    move-object v2, v0

    .line 101
    .end local v0    # "dialog":Landroid/app/Dialog;
    .end local v1    # "env":Lcom/masshabit/common/Environment;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public update(F)V
    .locals 4
    .param p1, "dt"    # F

    .prologue
    const/4 v3, 0x1

    .line 42
    invoke-static {}, Lcom/masshabit/common/License;->instance()Lcom/masshabit/common/License;

    move-result-object v1

    .line 43
    .local v1, "lic":Lcom/masshabit/common/License;
    iget-boolean v2, p0, Lcom/masshabit/squibble/CheckingLicenseScreen;->mDoneChecking:Z

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/masshabit/common/License;->ready()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    iput-boolean v3, p0, Lcom/masshabit/squibble/CheckingLicenseScreen;->mDoneChecking:Z

    .line 48
    invoke-static {}, Lcom/masshabit/common/Globals;->init()V

    .line 50
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 51
    .local v0, "env":Lcom/masshabit/common/Environment;
    invoke-virtual {v1}, Lcom/masshabit/common/License;->getStatus()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 54
    iget-object v2, v0, Lcom/masshabit/common/Environment;->mGame:Lcom/masshabit/squibble/Game;

    invoke-virtual {v2}, Lcom/masshabit/squibble/Game;->nextScreen()V

    .line 61
    .end local v0    # "env":Lcom/masshabit/common/Environment;
    :cond_0
    :goto_0
    return-void

    .line 58
    .restart local v0    # "env":Lcom/masshabit/common/Environment;
    :cond_1
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/masshabit/common/Environment;->showDialog(I)V

    goto :goto_0
.end method
