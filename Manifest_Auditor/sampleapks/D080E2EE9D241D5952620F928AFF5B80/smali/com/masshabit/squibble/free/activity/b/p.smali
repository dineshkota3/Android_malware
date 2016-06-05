.class public final Lcom/masshabit/squibble/free/activity/b/p;
.super Lcom/masshabit/squibble/free/activity/b/a;


# instance fields
.field private b:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/masshabit/squibble/free/activity/b/a;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/masshabit/squibble/free/activity/b/p;->b:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/b/p;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/masshabit/squibble/free/activity/b/p;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput v0, p0, Lcom/masshabit/squibble/free/activity/b/p;->b:I

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    iget v0, p0, Lcom/masshabit/squibble/free/activity/b/p;->b:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/masshabit/squibble/free/activity/b/p;->b:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/masshabit/squibble/free/activity/g;->a(J)V

    :cond_0
    return-void
.end method
