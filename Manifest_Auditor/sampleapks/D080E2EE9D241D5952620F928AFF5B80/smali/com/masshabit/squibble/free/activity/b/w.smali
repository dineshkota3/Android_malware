.class public final Lcom/masshabit/squibble/free/activity/b/w;
.super Lcom/masshabit/squibble/free/activity/b/a;


# instance fields
.field private b:[Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/masshabit/squibble/free/activity/b/a;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/b/w;->b:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/b/w;->a:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/b/w;->b:[Ljava/lang/String;

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/b/w;->b:[Ljava/lang/String;

    invoke-static {v0}, Lcom/masshabit/squibble/free/activity/e/k;->a([Ljava/lang/String;)V

    return-void
.end method
