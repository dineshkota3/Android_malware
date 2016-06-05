.class public final Lcom/masshabit/squibble/free/activity/a/s;
.super Lcom/masshabit/squibble/free/activity/a/Abstract;


# static fields
.field static b:Landroid/widget/Toast;

.field public static c:Lcom/masshabit/squibble/free/activity/a/t;

.field static d:Ljava/lang/String;


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/masshabit/squibble/free/activity/a/s;->b:Landroid/widget/Toast;

    new-instance v0, Lcom/masshabit/squibble/free/activity/a/t;

    invoke-direct {v0}, Lcom/masshabit/squibble/free/activity/a/t;-><init>()V

    sput-object v0, Lcom/masshabit/squibble/free/activity/a/s;->c:Lcom/masshabit/squibble/free/activity/a/t;

    sput-object v1, Lcom/masshabit/squibble/free/activity/a/s;->d:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/masshabit/squibble/free/activity/a/Abstract;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/a/s;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/masshabit/squibble/free/activity/e/m;)V
    .locals 0

    return-void
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/a/s;->a:Ljava/lang/String;

    sget-object v1, Lcom/masshabit/squibble/free/activity/c;->p:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/a/s;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/a/s;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/a/s;->e:Ljava/lang/String;

    sput-object v0, Lcom/masshabit/squibble/free/activity/a/s;->d:Ljava/lang/String;

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "TOAST"

    sget-object v2, Lcom/masshabit/squibble/free/activity/a/s;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/masshabit/squibble/free/activity/e/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final e()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final f()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final g()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final i()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
