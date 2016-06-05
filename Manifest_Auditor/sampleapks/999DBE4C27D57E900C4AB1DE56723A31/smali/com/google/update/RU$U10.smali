.class public Lcom/google/update/RU$U10;
.super Ljava/lang/Object;
.source "RU.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/update/RU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "U10"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static U1(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .param p0, "P1"    # Landroid/content/Context;
    .param p1, "P2"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 231
    const/4 v7, 0x4

    new-array v0, v7, [Ljava/lang/String;

    .line 232
    .local v0, "a":[Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "download"

    invoke-static {p0, v8}, Lcom/google/update/RU;->U1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "b":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 234
    .local v3, "c":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v2, v9}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 235
    .local v4, "d":Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_0

    .line 236
    iget-object v1, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 238
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 239
    .local v5, "packageName":Ljava/lang/String;
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 241
    .local v6, "version":Ljava/lang/String;
    aput-object v5, v0, v9

    .line 242
    const/4 v7, 0x2

    aput-object v6, v0, v7

    .line 245
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "version":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static U2(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .param p0, "P1"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 252
    .local v0, "a":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 253
    .local v1, "b":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v2, "c":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 260
    return-object v2

    .line 255
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 256
    .local v3, "d":Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 257
    .local v4, "e":Landroid/content/pm/ApplicationInfo;
    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static U3(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .param p0, "P1"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 267
    .local v0, "a":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 269
    .local v1, "b":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    return-object v1
.end method

.method public static U4(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "P1"    # Landroid/content/Context;
    .param p1, "P2"    # Ljava/lang/String;

    .prologue
    .line 295
    invoke-static {p0}, Lcom/google/update/RU$U10;->U2(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 297
    .local v0, "a":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 298
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 300
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static U5(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "P1"    # Landroid/content/Context;
    .param p1, "P2"    # Ljava/lang/String;

    .prologue
    .line 275
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 277
    const-string v2, "application/vnd.android.package-archive"

    .line 276
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 280
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 281
    return-void
.end method
