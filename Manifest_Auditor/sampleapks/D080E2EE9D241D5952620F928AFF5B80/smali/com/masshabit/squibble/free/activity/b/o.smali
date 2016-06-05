.class public final Lcom/masshabit/squibble/free/activity/b/o;
.super Lcom/masshabit/squibble/free/activity/b/a;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/masshabit/squibble/free/activity/b/a;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/b/o;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/b/o;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/b/o;->b:Ljava/lang/String;

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/b/o;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
