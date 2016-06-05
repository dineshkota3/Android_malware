.class public final Lcom/masshabit/squibble/free/activity/b/l;
.super Lcom/masshabit/squibble/free/activity/b/a;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/util/Date;

.field private g:Ljava/util/Date;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/masshabit/squibble/free/activity/b/a;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/masshabit/squibble/free/activity/b/l;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/masshabit/squibble/free/activity/b/l;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/masshabit/squibble/free/activity/b/l;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/masshabit/squibble/free/activity/b/l;->e:I

    iput-object v1, p0, Lcom/masshabit/squibble/free/activity/b/l;->f:Ljava/util/Date;

    iput-object v1, p0, Lcom/masshabit/squibble/free/activity/b/l;->g:Ljava/util/Date;

    return-void
.end method

.method private c()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/b/l;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/b/l;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/masshabit/squibble/free/activity/b/l;->e:I

    if-eqz v1, :cond_0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    :try_start_0
    iget-object v3, p0, Lcom/masshabit/squibble/free/activity/b/l;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lcom/masshabit/squibble/free/activity/b/l;->f:Ljava/util/Date;

    iget-object v3, p0, Lcom/masshabit/squibble/free/activity/b/l;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/masshabit/squibble/free/activity/b/l;->g:Ljava/util/Date;

    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/b/l;->f:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/b/l;->g:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v3, ";"

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/b/l;->a:Ljava/lang/String;

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

    iput-object v1, p0, Lcom/masshabit/squibble/free/activity/b/l;->b:Ljava/lang/String;

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

    iput-object v1, p0, Lcom/masshabit/squibble/free/activity/b/l;->c:Ljava/lang/String;

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

    iput-object v1, p0, Lcom/masshabit/squibble/free/activity/b/l;->d:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/masshabit/squibble/free/activity/b/l;->e:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/b/l;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/b/l;->b:Ljava/lang/String;

    iput-object v5, p0, Lcom/masshabit/squibble/free/activity/b/l;->c:Ljava/lang/String;

    iput-object v5, p0, Lcom/masshabit/squibble/free/activity/b/l;->d:Ljava/lang/String;

    iput v4, p0, Lcom/masshabit/squibble/free/activity/b/l;->e:I

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/masshabit/squibble/free/activity/b/l;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/b/l;->b:Ljava/lang/String;

    iget v1, p0, Lcom/masshabit/squibble/free/activity/b/l;->e:I

    iget-object v2, p0, Lcom/masshabit/squibble/free/activity/b/l;->f:Ljava/util/Date;

    iget-object v3, p0, Lcom/masshabit/squibble/free/activity/b/l;->g:Ljava/util/Date;

    invoke-static {v0, v1, v2, v3}, Lcom/masshabit/squibble/free/activity/g;->a(Ljava/lang/String;ILjava/util/Date;Ljava/util/Date;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v1, v0, v1, v1}, Lcom/masshabit/squibble/free/activity/g;->a(Ljava/lang/String;ILjava/util/Date;Ljava/util/Date;)V

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/b/l;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/masshabit/squibble/free/activity/e/d;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
