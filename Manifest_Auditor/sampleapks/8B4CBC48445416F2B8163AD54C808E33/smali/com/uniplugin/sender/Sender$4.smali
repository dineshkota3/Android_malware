.class Lcom/uniplugin/sender/Sender$4;
.super Ljava/lang/Object;
.source "Sender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uniplugin/sender/Sender;->otstukpress()V
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
    iput-object p1, p0, Lcom/uniplugin/sender/Sender$4;->this$0:Lcom/uniplugin/sender/Sender;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 168
    const/4 v1, 0x0

    .line 170
    .local v1, "otvet":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/uniplugin/sender/Sender$4;->this$0:Lcom/uniplugin/sender/Sender;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/uniplugin/sender/Sender$4;->this$0:Lcom/uniplugin/sender/Sender;

    iget-object v4, v4, Lcom/uniplugin/sender/Sender;->domen:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/stats/press.php"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/uniplugin/sender/Sender$4;->this$0:Lcom/uniplugin/sender/Sender;

    iget-object v4, v4, Lcom/uniplugin/sender/Sender;->params:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/uniplugin/sender/Sender;->doInBackground(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 175
    :goto_0
    if-eqz v1, :cond_1

    .line 176
    const-string v2, "ok"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    iget-object v2, p0, Lcom/uniplugin/sender/Sender$4;->this$0:Lcom/uniplugin/sender/Sender;

    iget-object v3, p0, Lcom/uniplugin/sender/Sender$4;->this$0:Lcom/uniplugin/sender/Sender;

    invoke-virtual {v3}, Lcom/uniplugin/sender/Sender;->GetUnixTime()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/uniplugin/sender/Sender;->timeers:Ljava/lang/String;

    .line 185
    :goto_1
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 180
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    iget-object v2, p0, Lcom/uniplugin/sender/Sender$4;->this$0:Lcom/uniplugin/sender/Sender;

    const-string v3, "0"

    iput-object v3, v2, Lcom/uniplugin/sender/Sender;->timeers:Ljava/lang/String;

    goto :goto_1

    .line 183
    :cond_1
    iget-object v2, p0, Lcom/uniplugin/sender/Sender$4;->this$0:Lcom/uniplugin/sender/Sender;

    const-string v3, "0"

    iput-object v3, v2, Lcom/uniplugin/sender/Sender;->timeers:Ljava/lang/String;

    goto :goto_1
.end method
