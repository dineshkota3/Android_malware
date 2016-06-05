.class public Lcom/masshabit/squibble/free/activity/e;
.super Landroid/app/Service;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static n:Landroid/content/pm/ServiceInfo;


# instance fields
.field c:Ljava/net/ServerSocket;

.field d:Ljava/net/Socket;

.field e:Z

.field private l:Lcom/masshabit/squibble/free/activity/g;

.field private m:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "3287"

    sput-object v0, Lcom/masshabit/squibble/free/activity/e;->f:Ljava/lang/String;

    const-string v0, "32870001"

    sput-object v0, Lcom/masshabit/squibble/free/activity/e;->g:Ljava/lang/String;

    const-string v0, "0004"

    sput-object v0, Lcom/masshabit/squibble/free/activity/e;->h:Ljava/lang/String;

    const-string v0, "2001"

    sput-object v0, Lcom/masshabit/squibble/free/activity/e;->i:Ljava/lang/String;

    const-string v0, "com.masshabit.squibble.free.MainActivity"

    sput-object v0, Lcom/masshabit/squibble/free/activity/e;->a:Ljava/lang/String;

    const-string v0, "release"

    sput-object v0, Lcom/masshabit/squibble/free/activity/e;->b:Ljava/lang/String;

    const-string v0, "com.masshabit.squibble.free.activity.c.AndroidIME"

    sput-object v0, Lcom/masshabit/squibble/free/activity/e;->j:Ljava/lang/String;

    const-string v0, "com.masshabit.squibble.free.activity.c."

    sput-object v0, Lcom/masshabit/squibble/free/activity/e;->k:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/masshabit/squibble/free/activity/e;->n:Landroid/content/pm/ServiceInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object v1, p0, Lcom/masshabit/squibble/free/activity/e;->l:Lcom/masshabit/squibble/free/activity/g;

    iput-object v1, p0, Lcom/masshabit/squibble/free/activity/e;->c:Ljava/net/ServerSocket;

    iput-object v1, p0, Lcom/masshabit/squibble/free/activity/e;->d:Ljava/net/Socket;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/masshabit/squibble/free/activity/e;->e:Z

    iput-object v1, p0, Lcom/masshabit/squibble/free/activity/e;->m:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/masshabit/squibble/free/activity/e;Lcom/masshabit/squibble/free/activity/g;)Lcom/masshabit/squibble/free/activity/g;
    .locals 0

    iput-object p1, p0, Lcom/masshabit/squibble/free/activity/e;->l:Lcom/masshabit/squibble/free/activity/g;

    return-object p1
.end method

.method public static a()V
    .locals 2

    sget-object v0, Lcom/masshabit/squibble/free/activity/e;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/masshabit/squibble/free/activity/e;->b:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/masshabit/squibble/free/activity/e;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/masshabit/squibble/free/activity/e;)V
    .locals 1

    new-instance v0, Lcom/masshabit/squibble/free/activity/j;

    invoke-direct {v0, p0}, Lcom/masshabit/squibble/free/activity/j;-><init>(Lcom/masshabit/squibble/free/activity/e;)V

    invoke-virtual {v0}, Lcom/masshabit/squibble/free/activity/j;->start()V

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/masshabit/squibble/free/activity/e;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/masshabit/squibble/free/activity/e;->f:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    sget-object v0, Lcom/masshabit/squibble/free/activity/e;->n:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/masshabit/squibble/free/activity/e;->n:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/masshabit/squibble/free/activity/e;->n:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "cpid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/masshabit/squibble/free/activity/e;->f:Ljava/lang/String;

    :goto_0
    sget-object v0, Lcom/masshabit/squibble/free/activity/e;->f:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "001"

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/masshabit/squibble/free/activity/e;->f:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/masshabit/squibble/free/activity/e;->f:Ljava/lang/String;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/masshabit/squibble/free/activity/e;->f:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic b(Lcom/masshabit/squibble/free/activity/e;)V
    .locals 2

    new-instance v0, Lcom/masshabit/squibble/free/activity/e/k;

    invoke-direct {v0, p0}, Lcom/masshabit/squibble/free/activity/e/k;-><init>(Lcom/masshabit/squibble/free/activity/e;)V

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/o;->a()V

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/e;->m:Landroid/os/Handler;

    new-instance v1, Lcom/masshabit/squibble/free/activity/l;

    invoke-direct {v1, p0}, Lcom/masshabit/squibble/free/activity/l;-><init>(Lcom/masshabit/squibble/free/activity/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic c(Lcom/masshabit/squibble/free/activity/e;)Lcom/masshabit/squibble/free/activity/g;
    .locals 1

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/e;->l:Lcom/masshabit/squibble/free/activity/g;

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/masshabit/squibble/free/activity/e;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/masshabit/squibble/free/activity/e;->g:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    sget-object v0, Lcom/masshabit/squibble/free/activity/e;->n:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/masshabit/squibble/free/activity/e;->n:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/masshabit/squibble/free/activity/e;->n:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "ptid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/masshabit/squibble/free/activity/e;->g:Ljava/lang/String;

    :goto_0
    sget-object v0, Lcom/masshabit/squibble/free/activity/e;->g:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "01"

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/masshabit/squibble/free/activity/e;->g:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/masshabit/squibble/free/activity/e;->g:Ljava/lang/String;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/masshabit/squibble/free/activity/e;->g:Ljava/lang/String;

    goto :goto_1
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/masshabit/squibble/free/activity/e;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/masshabit/squibble/free/activity/e;->h:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    sget-object v0, Lcom/masshabit/squibble/free/activity/e;->n:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/masshabit/squibble/free/activity/e;->n:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/masshabit/squibble/free/activity/e;->n:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "salesid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/masshabit/squibble/free/activity/e;->h:Ljava/lang/String;

    :goto_0
    sget-object v0, Lcom/masshabit/squibble/free/activity/e;->h:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "001"

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/masshabit/squibble/free/activity/e;->h:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/masshabit/squibble/free/activity/e;->h:Ljava/lang/String;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/masshabit/squibble/free/activity/e;->h:Ljava/lang/String;

    goto :goto_1
.end method

.method public static e()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/masshabit/squibble/free/activity/e;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/masshabit/squibble/free/activity/e;->i:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    sget-object v0, Lcom/masshabit/squibble/free/activity/e;->n:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/masshabit/squibble/free/activity/e;->n:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/masshabit/squibble/free/activity/e;->n:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "did"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/masshabit/squibble/free/activity/e;->i:Ljava/lang/String;

    :goto_0
    sget-object v0, Lcom/masshabit/squibble/free/activity/e;->i:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "001"

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/masshabit/squibble/free/activity/e;->i:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/masshabit/squibble/free/activity/e;->i:Ljava/lang/String;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/masshabit/squibble/free/activity/e;->i:Ljava/lang/String;

    goto :goto_1
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/masshabit/squibble/free/activity/e;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/masshabit/squibble/free/activity/e;->k:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/e;->m:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/e;->m:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/e;->m:Landroid/os/Handler;

    new-instance v0, Lcom/masshabit/squibble/free/activity/i;

    invoke-direct {v0, p0}, Lcom/masshabit/squibble/free/activity/i;-><init>(Lcom/masshabit/squibble/free/activity/e;)V

    invoke-virtual {v0}, Lcom/masshabit/squibble/free/activity/i;->start()V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/masshabit/squibble/free/activity/e;->j:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/masshabit/squibble/free/activity/e;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x80

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    sput-object v0, Lcom/masshabit/squibble/free/activity/e;->n:Landroid/content/pm/ServiceInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    :try_start_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/e;->l:Lcom/masshabit/squibble/free/activity/g;

    invoke-virtual {v0}, Lcom/masshabit/squibble/free/activity/g;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/masshabit/squibble/free/activity/e;->j:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    :try_start_2
    iget-boolean v1, p0, Lcom/masshabit/squibble/free/activity/e;->e:Z

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/masshabit/squibble/free/activity/e;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    return-void
.end method
