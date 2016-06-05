.class final Lcom/masshabit/squibble/free/activity/j;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/masshabit/squibble/free/activity/e;


# direct methods
.method constructor <init>(Lcom/masshabit/squibble/free/activity/e;)V
    .locals 0

    iput-object p1, p0, Lcom/masshabit/squibble/free/activity/j;->a:Lcom/masshabit/squibble/free/activity/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/j;->a:Lcom/masshabit/squibble/free/activity/e;

    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/j;->a:Lcom/masshabit/squibble/free/activity/e;

    iget-object v1, v1, Lcom/masshabit/squibble/free/activity/e;->c:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    iput-object v1, v0, Lcom/masshabit/squibble/free/activity/e;->d:Ljava/net/Socket;

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/j;->a:Lcom/masshabit/squibble/free/activity/e;

    iget-object v0, v0, Lcom/masshabit/squibble/free/activity/e;->d:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/j;->a:Lcom/masshabit/squibble/free/activity/e;

    iget-object v1, v1, Lcom/masshabit/squibble/free/activity/e;->d:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    new-instance v3, Lcom/masshabit/squibble/free/activity/k;

    invoke-direct {v3, p0}, Lcom/masshabit/squibble/free/activity/k;-><init>(Lcom/masshabit/squibble/free/activity/j;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const/16 v3, 0x100

    new-array v3, v3, [B

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6, v4}, Ljava/lang/String;-><init>([BII)V

    const-string v3, "hi,are you online?"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    const-string v3, "yes,I\'m online!"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v3

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v4

    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Ljava/io/OutputStream;->write(I)V

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/j;->a:Lcom/masshabit/squibble/free/activity/e;

    iget-object v0, v0, Lcom/masshabit/squibble/free/activity/e;->d:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v5, 0x1

    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gt v3, v1, :cond_0

    if-ne v3, v1, :cond_1

    if-le v4, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/j;->a:Lcom/masshabit/squibble/free/activity/e;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/masshabit/squibble/free/activity/e;->e:Z

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/j;->a:Lcom/masshabit/squibble/free/activity/e;

    invoke-virtual {v0}, Lcom/masshabit/squibble/free/activity/e;->stopSelf()V

    :cond_1
    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method
