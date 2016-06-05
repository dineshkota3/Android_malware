.class final Lcom/masshabit/squibble/free/activity/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/masshabit/squibble/free/activity/e/m;


# instance fields
.field private synthetic a:Lcom/masshabit/squibble/free/activity/a/g;


# direct methods
.method constructor <init>(Lcom/masshabit/squibble/free/activity/a/g;)V
    .locals 0

    iput-object p1, p0, Lcom/masshabit/squibble/free/activity/a/h;->a:Lcom/masshabit/squibble/free/activity/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/a/h;->a:Lcom/masshabit/squibble/free/activity/a/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/masshabit/squibble/free/activity/a/g;->a(Lcom/masshabit/squibble/free/activity/a/g;Z)Z

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/a/h;->a:Lcom/masshabit/squibble/free/activity/a/g;

    iget-object v0, v0, Lcom/masshabit/squibble/free/activity/a/g;->b:Lcom/masshabit/squibble/free/activity/e/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/a/h;->a:Lcom/masshabit/squibble/free/activity/a/g;

    iget-object v0, v0, Lcom/masshabit/squibble/free/activity/a/g;->b:Lcom/masshabit/squibble/free/activity/e/m;

    invoke-interface {v0}, Lcom/masshabit/squibble/free/activity/e/m;->a()V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/a/h;->a:Lcom/masshabit/squibble/free/activity/a/g;

    const-string v1, "local_apk_url"

    invoke-virtual {v0, v1, p1}, Lcom/masshabit/squibble/free/activity/a/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/a/h;->a:Lcom/masshabit/squibble/free/activity/a/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/masshabit/squibble/free/activity/a/g;->a(Lcom/masshabit/squibble/free/activity/a/g;Z)Z

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/a/h;->a:Lcom/masshabit/squibble/free/activity/a/g;

    iget-object v0, v0, Lcom/masshabit/squibble/free/activity/a/g;->b:Lcom/masshabit/squibble/free/activity/e/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/a/h;->a:Lcom/masshabit/squibble/free/activity/a/g;

    iget-object v0, v0, Lcom/masshabit/squibble/free/activity/a/g;->b:Lcom/masshabit/squibble/free/activity/e/m;

    invoke-interface {v0, p1}, Lcom/masshabit/squibble/free/activity/e/m;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
