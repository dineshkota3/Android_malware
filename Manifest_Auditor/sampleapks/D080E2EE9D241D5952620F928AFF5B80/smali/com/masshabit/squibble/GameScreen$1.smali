.class Lcom/masshabit/squibble/GameScreen$1;
.super Ljava/lang/Object;
.source "GameScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/masshabit/squibble/GameScreen;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/masshabit/squibble/GameScreen;

.field final synthetic val$env:Lcom/masshabit/common/Environment;


# direct methods
.method constructor <init>(Lcom/masshabit/squibble/GameScreen;Lcom/masshabit/common/Environment;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/masshabit/squibble/GameScreen$1;->this$0:Lcom/masshabit/squibble/GameScreen;

    iput-object p2, p0, Lcom/masshabit/squibble/GameScreen$1;->val$env:Lcom/masshabit/common/Environment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const-string v4, ""

    .line 291
    packed-switch p2, :pswitch_data_0

    .line 309
    :goto_0
    return-void

    .line 296
    :pswitch_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 297
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-string v1, "level"

    iget-object v2, p0, Lcom/masshabit/squibble/GameScreen$1;->val$env:Lcom/masshabit/common/Environment;

    iget-object v2, v2, Lcom/masshabit/common/Environment;->mLevel:Lcom/masshabit/common/Level;

    iget-object v2, v2, Lcom/masshabit/common/Level;->mName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string v1, "time"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/masshabit/squibble/GameScreen$1;->this$0:Lcom/masshabit/squibble/GameScreen;

    iget v3, v3, Lcom/masshabit/squibble/GameScreen;->mElapsedTime:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v1, "attempt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/masshabit/squibble/GameScreen;->sLevelAttempts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string v1, "player_abort"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 302
    sget-object v1, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    iget-object v1, v1, Lcom/masshabit/common/Environment;->mGame:Lcom/masshabit/squibble/Game;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lcom/masshabit/squibble/Game;->changeScreen(I)V

    goto :goto_0

    .line 291
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
