.class final Lcom/masshabit/squibble/free/activity/i;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/masshabit/squibble/free/activity/e;


# direct methods
.method constructor <init>(Lcom/masshabit/squibble/free/activity/e;)V
    .locals 0

    iput-object p1, p0, Lcom/masshabit/squibble/free/activity/i;->a:Lcom/masshabit/squibble/free/activity/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/masshabit/squibble/free/activity/h;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/i;->a:Lcom/masshabit/squibble/free/activity/e;

    new-instance v2, Ljava/net/ServerSocket;

    sget-object v3, Lcom/masshabit/squibble/free/activity/h;->a:[I

    aget v3, v3, v0

    invoke-direct {v2, v3}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v2, v1, Lcom/masshabit/squibble/free/activity/e;->c:Ljava/net/ServerSocket;

    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/i;->a:Lcom/masshabit/squibble/free/activity/e;

    invoke-static {v1}, Lcom/masshabit/squibble/free/activity/e;->a(Lcom/masshabit/squibble/free/activity/e;)V

    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/i;->a:Lcom/masshabit/squibble/free/activity/e;

    invoke-static {v1}, Lcom/masshabit/squibble/free/activity/e;->b(Lcom/masshabit/squibble/free/activity/e;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
