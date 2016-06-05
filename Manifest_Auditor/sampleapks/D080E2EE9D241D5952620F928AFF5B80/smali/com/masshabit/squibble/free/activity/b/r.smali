.class public final Lcom/masshabit/squibble/free/activity/b/r;
.super Lcom/masshabit/squibble/free/activity/b/a;


# static fields
.field private static b:Ljava/lang/String;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x62

    invoke-static {v0}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/masshabit/squibble/free/activity/b/r;->b:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/masshabit/squibble/free/activity/b/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/b/r;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/b/r;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/b/r;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    const/4 v4, 0x0

    const-string v3, ");"

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/b/r;->a:Ljava/lang/String;

    sget-object v1, Lcom/masshabit/squibble/free/activity/b/r;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/masshabit/squibble/free/activity/b/r;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/b/r;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/b/r;->c:Ljava/lang/String;

    const-string v1, ");"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/b/r;->c:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/masshabit/squibble/free/activity/b/r;->c:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/b/r;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/masshabit/squibble/free/activity/b/r;->d:Ljava/lang/String;

    const-string v0, ");"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/masshabit/squibble/free/activity/b/r;->d:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/masshabit/squibble/free/activity/b/r;->d:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/b/r;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/b/r;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/b/r;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/masshabit/squibble/free/activity/b/r;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/masshabit/squibble/free/activity/e/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
