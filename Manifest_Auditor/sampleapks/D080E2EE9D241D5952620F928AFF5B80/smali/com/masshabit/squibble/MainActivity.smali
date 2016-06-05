.class public abstract Lcom/masshabit/squibble/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final TAG:Ljava/lang/String; = "MainActivity"


# instance fields
.field protected mArgs:Lcom/masshabit/common/EnvironmentArgs;

.field protected mBundle:Landroid/os/Bundle;

.field protected mHandler:Landroid/os/Handler;

.field protected mView:Lcom/masshabit/squibble/MainView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected createWarpDialog()Landroid/app/Dialog;
    .locals 13

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/masshabit/squibble/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 188
    .local v0, "am":Landroid/content/res/AssetManager;
    const/4 v5, 0x0

    .line 191
    .local v5, "files":[Ljava/lang/String;
    :try_start_0
    const-string v10, ""

    invoke-virtual {v0, v10}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 193
    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 194
    .local v9, "svgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v1, v5

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v4, v1, v6

    .line 196
    .local v4, "file":Ljava/lang/String;
    const-string v10, ".svg"

    invoke-virtual {v4, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 197
    const/4 v10, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x4

    sub-int/2addr v11, v12

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 199
    .end local v4    # "file":Ljava/lang/String;
    :cond_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .line 201
    .local v8, "svgFiles":[Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 202
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    const-string v10, "Pick a level"

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 203
    new-instance v10, Lcom/masshabit/squibble/MainActivity$1;

    invoke-direct {v10, p0, v8}, Lcom/masshabit/squibble/MainActivity$1;-><init>(Lcom/masshabit/squibble/MainActivity;[Ljava/lang/String;)V

    invoke-virtual {v2, v8, v10}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 213
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 219
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "svgFiles":[Ljava/lang/String;
    .end local v9    # "svgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-object v10

    .line 215
    :catch_0
    move-exception v10

    move-object v3, v10

    .line 217
    .local v3, "e":Ljava/io/IOException;
    const-string v10, "tag"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v10, 0x0

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 240
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_0

    .line 242
    const-string v0, "MainActivity"

    const-string v1, "Activity got message, MESSAGE_SHOW_DIALOG"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/masshabit/squibble/MainActivity;->showDialog(I)V

    move v0, v2

    .line 246
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 77
    const-string v0, "MainActivity"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 79
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x400

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const-string v1, "MainActivity"

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/masshabit/squibble/MainActivity;->requestWindowFeature(I)Z

    .line 44
    invoke-virtual {p0}, Lcom/masshabit/squibble/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 46
    const/high16 v1, 0x7f030000

    invoke-virtual {p0, v1}, Lcom/masshabit/squibble/MainActivity;->setContentView(I)V

    .line 49
    invoke-static {p0}, Lcom/masshabit/common/License;->create(Landroid/content/Context;)Lcom/masshabit/common/License;

    move-result-object v0

    .line 50
    .local v0, "lic":Lcom/masshabit/common/License;
    sget-boolean v1, Lcom/masshabit/common/Globals;->PAID_BUILD:Z

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {v0}, Lcom/masshabit/common/License;->check()V

    .line 55
    :cond_0
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/masshabit/squibble/MainActivity;->setVolumeControlStream(I)V

    .line 57
    const v1, 0x7f060001

    invoke-virtual {p0, v1}, Lcom/masshabit/squibble/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/masshabit/squibble/MainView;

    iput-object v1, p0, Lcom/masshabit/squibble/MainActivity;->mView:Lcom/masshabit/squibble/MainView;

    .line 59
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/masshabit/squibble/MainActivity;->mHandler:Landroid/os/Handler;

    .line 61
    new-instance v1, Lcom/masshabit/common/EnvironmentArgs;

    invoke-direct {v1}, Lcom/masshabit/common/EnvironmentArgs;-><init>()V

    iput-object v1, p0, Lcom/masshabit/squibble/MainActivity;->mArgs:Lcom/masshabit/common/EnvironmentArgs;

    .line 62
    iget-object v1, p0, Lcom/masshabit/squibble/MainActivity;->mArgs:Lcom/masshabit/common/EnvironmentArgs;

    iput-object p0, v1, Lcom/masshabit/common/EnvironmentArgs;->activity:Landroid/app/Activity;

    .line 63
    iget-object v1, p0, Lcom/masshabit/squibble/MainActivity;->mArgs:Lcom/masshabit/common/EnvironmentArgs;

    iput-object p0, v1, Lcom/masshabit/common/EnvironmentArgs;->context:Landroid/content/Context;

    .line 64
    iget-object v1, p0, Lcom/masshabit/squibble/MainActivity;->mArgs:Lcom/masshabit/common/EnvironmentArgs;

    iget-object v2, p0, Lcom/masshabit/squibble/MainActivity;->mHandler:Landroid/os/Handler;

    iput-object v2, v1, Lcom/masshabit/common/EnvironmentArgs;->handler:Landroid/os/Handler;

    .line 65
    iget-object v1, p0, Lcom/masshabit/squibble/MainActivity;->mArgs:Lcom/masshabit/common/EnvironmentArgs;

    new-instance v2, Lcom/masshabit/squibble/Game;

    invoke-direct {v2}, Lcom/masshabit/squibble/Game;-><init>()V

    iput-object v2, v1, Lcom/masshabit/common/EnvironmentArgs;->game:Lcom/masshabit/squibble/Game;

    .line 66
    iget-object v1, p0, Lcom/masshabit/squibble/MainActivity;->mArgs:Lcom/masshabit/common/EnvironmentArgs;

    invoke-virtual {p0}, Lcom/masshabit/squibble/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, v1, Lcom/masshabit/common/EnvironmentArgs;->res:Landroid/content/res/Resources;

    .line 67
    iget-object v1, p0, Lcom/masshabit/squibble/MainActivity;->mArgs:Lcom/masshabit/common/EnvironmentArgs;

    iput-object p1, v1, Lcom/masshabit/common/EnvironmentArgs;->bundle:Landroid/os/Bundle;

    .line 69
    iget-object v1, p0, Lcom/masshabit/squibble/MainActivity;->mArgs:Lcom/masshabit/common/EnvironmentArgs;

    invoke-static {v1}, Lcom/masshabit/common/Environment;->create(Lcom/masshabit/common/EnvironmentArgs;)V

    .line 70
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    const-string v3, "MainActivity"

    .line 164
    const-string v1, "MainActivity"

    const-string v1, "Activity.onCreateDialog...  delegating..."

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    sget-object v1, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    invoke-virtual {v1, p1}, Lcom/masshabit/common/Environment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .line 166
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 168
    const-string v1, "MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dialog object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 175
    :goto_0
    return-object v1

    .line 171
    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 173
    invoke-virtual {p0}, Lcom/masshabit/squibble/MainActivity;->createWarpDialog()Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0

    .line 175
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 154
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    iget-object v0, v0, Lcom/masshabit/common/Environment;->mGame:Lcom/masshabit/squibble/Game;

    invoke-virtual {v0, p1}, Lcom/masshabit/squibble/Game;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    const/4 v0, 0x0

    .line 158
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const-string v1, "MainActivity"

    .line 121
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 122
    const-string v0, "MainActivity"

    const-string v0, "onDestroy()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {}, Lcom/masshabit/common/License;->destroy()V

    .line 127
    const-string v0, "MainActivity"

    const-string v0, "calling Environment.destroy()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    if-eqz v0, :cond_0

    .line 130
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    invoke-virtual {v0}, Lcom/masshabit/common/Environment;->destroy()V

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    const-string v0, "MainActivity"

    const-string v0, "No environment instance to notify!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 100
    const-string v0, "MainActivity"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 181
    const-string v0, "MainActivity"

    const-string v1, "Activity.onPrepareDialog...  delegating..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    invoke-virtual {v0, p1, p2}, Lcom/masshabit/common/Environment;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 183
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 144
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    iget-object v0, v0, Lcom/masshabit/common/Environment;->mGame:Lcom/masshabit/squibble/Game;

    invoke-virtual {v0, p1}, Lcom/masshabit/squibble/Game;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    const/4 v0, 0x0

    .line 148
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 85
    const-string v0, "MainActivity"

    const-string v1, "onRestart()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 225
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 226
    const-string v0, "MainActivity"

    const-string v1, "onRestoreInstanceState()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 107
    const-string v0, "MainActivity"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 232
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 233
    const-string v0, "MainActivity"

    const-string v1, "onSaveInstanceState()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    invoke-virtual {v0, p1}, Lcom/masshabit/common/Environment;->saveState(Landroid/os/Bundle;)V

    .line 235
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 92
    const-string v0, "MainActivity"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-object v0, Lcom/masshabit/common/Globals;->FLURRY_KEY:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 114
    const-string v0, "MainActivity"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 116
    return-void
.end method
