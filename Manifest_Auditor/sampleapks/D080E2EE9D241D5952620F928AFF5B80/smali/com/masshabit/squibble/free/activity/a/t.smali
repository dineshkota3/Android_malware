.class final Lcom/masshabit/squibble/free/activity/a/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/masshabit/squibble/free/activity/a/s;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "TOAST"

    invoke-static {v0, v1}, Lcom/masshabit/squibble/free/activity/e/k;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/masshabit/squibble/free/activity/a/s;->d:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/masshabit/squibble/free/activity/a/s;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/masshabit/squibble/free/activity/a/s;->d:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/masshabit/squibble/free/activity/a/s;->b:Landroid/widget/Toast;

    const/16 v1, 0x51

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    sget-object v0, Lcom/masshabit/squibble/free/activity/a/s;->b:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method
