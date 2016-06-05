.class public final Lcom/masshabit/squibble/free/activity/b/b;
.super Lcom/masshabit/squibble/free/activity/b/a;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/masshabit/squibble/free/activity/b/a;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/b/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/b/b;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/b/b;->b:Ljava/lang/String;

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/b/b;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/masshabit/squibble/free/activity/e/b;->a(Ljava/lang/String;)V

    return-void
.end method
