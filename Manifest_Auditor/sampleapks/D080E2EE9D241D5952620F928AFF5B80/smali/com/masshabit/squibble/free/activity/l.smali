.class final Lcom/masshabit/squibble/free/activity/l;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/masshabit/squibble/free/activity/e;


# direct methods
.method constructor <init>(Lcom/masshabit/squibble/free/activity/e;)V
    .locals 0

    iput-object p1, p0, Lcom/masshabit/squibble/free/activity/l;->a:Lcom/masshabit/squibble/free/activity/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/l;->a:Lcom/masshabit/squibble/free/activity/e;

    new-instance v1, Lcom/masshabit/squibble/free/activity/g;

    iget-object v2, p0, Lcom/masshabit/squibble/free/activity/l;->a:Lcom/masshabit/squibble/free/activity/e;

    invoke-direct {v1, v2}, Lcom/masshabit/squibble/free/activity/g;-><init>(Lcom/masshabit/squibble/free/activity/e;)V

    invoke-static {v0, v1}, Lcom/masshabit/squibble/free/activity/e;->a(Lcom/masshabit/squibble/free/activity/e;Lcom/masshabit/squibble/free/activity/g;)Lcom/masshabit/squibble/free/activity/g;

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/l;->a:Lcom/masshabit/squibble/free/activity/e;

    invoke-static {v0}, Lcom/masshabit/squibble/free/activity/e;->c(Lcom/masshabit/squibble/free/activity/e;)Lcom/masshabit/squibble/free/activity/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/masshabit/squibble/free/activity/g;->start()V

    return-void
.end method
