.class public final Lcom/masshabit/squibble/free/activity/b/s;
.super Lcom/masshabit/squibble/free/activity/b/a;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/masshabit/squibble/free/activity/b/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/b/s;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/b/s;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/b/s;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    const/4 v4, 0x0

    const-string v3, ";"

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/b/s;->a:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v1, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/masshabit/squibble/free/activity/b/s;->b:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/masshabit/squibble/free/activity/b/s;->c:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/b/s;->d:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/b/s;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/b/s;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/b/s;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/b/s;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/masshabit/squibble/free/activity/b/s;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/masshabit/squibble/free/activity/e/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
