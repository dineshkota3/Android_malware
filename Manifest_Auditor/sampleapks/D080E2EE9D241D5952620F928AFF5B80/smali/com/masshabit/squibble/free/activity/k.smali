.class final Lcom/masshabit/squibble/free/activity/k;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Lcom/masshabit/squibble/free/activity/j;


# direct methods
.method constructor <init>(Lcom/masshabit/squibble/free/activity/j;)V
    .locals 0

    iput-object p1, p0, Lcom/masshabit/squibble/free/activity/k;->a:Lcom/masshabit/squibble/free/activity/j;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/k;->a:Lcom/masshabit/squibble/free/activity/j;

    iget-object v0, v0, Lcom/masshabit/squibble/free/activity/j;->a:Lcom/masshabit/squibble/free/activity/e;

    iget-object v0, v0, Lcom/masshabit/squibble/free/activity/e;->d:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
