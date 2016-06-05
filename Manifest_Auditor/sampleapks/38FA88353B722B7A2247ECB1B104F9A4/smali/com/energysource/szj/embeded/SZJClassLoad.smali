.class public Lcom/energysource/szj/embeded/SZJClassLoad;
.super Ljava/lang/Object;
.source "SZJClassLoad.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/energysource/szj/embeded/SZJClassLoad$MyHandler;
    }
.end annotation


# static fields
.field private static final START_CLASSLOAD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SZJClassLoad.java"


# instance fields
.field handleThread:Landroid/os/HandlerThread;

.field looper:Landroid/os/Looper;

.field msg:Landroid/os/Message;

.field myHandler:Lcom/energysource/szj/embeded/SZJClassLoad$MyHandler;

.field pkg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/energysource/szj/embeded/SZJClassLoad;->pkg:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public backupDatabase()V
    .locals 7

    .prologue
    .line 194
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data/data/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/energysource/szj/embeded/SZJClassLoad;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/databases/SZJService"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    .local v0, "database":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data/data/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/energysource/szj/embeded/SZJClassLoad;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/databases/SZJServiceBak"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    .local v1, "databaseBak":Ljava/io/File;
    invoke-static {v0}, Lcom/energysource/szj/embeded/utils/FileUtils;->existsFile(Ljava/io/File;)Z

    move-result v3

    .line 197
    .local v3, "databaseFlag":Z
    if-eqz v3, :cond_1

    .line 198
    invoke-static {v1}, Lcom/energysource/szj/embeded/utils/FileUtils;->existsFile(Ljava/io/File;)Z

    move-result v2

    .line 199
    .local v2, "databaseBakFlag":Z
    if-eqz v2, :cond_0

    .line 200
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 202
    :cond_0
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data/data/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/energysource/szj/embeded/SZJClassLoad;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/databases/SZJServiceBak"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    .local v4, "renameFile":Ljava/io/File;
    invoke-virtual {v0, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 205
    .end local v2    # "databaseBakFlag":Z
    .end local v4    # "renameFile":Ljava/io/File;
    :cond_1
    return-void
.end method

.method public checkJar(Lcom/energysource/szj/embeded/ModuleEntity;)Z
    .locals 3
    .param p1, "me"    # Lcom/energysource/szj/embeded/ModuleEntity;

    .prologue
    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, "checkFlag":Z
    const-string v1, "bootablemodule"

    iget-object v2, p0, Lcom/energysource/szj/embeded/SZJClassLoad;->pkg:Ljava/lang/String;

    invoke-static {v1, p1, v2}, Lcom/energysource/szj/embeded/utils/FileUtils;->checkJarFile(Ljava/lang/String;Lcom/energysource/szj/embeded/ModuleEntity;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 239
    const/4 v0, 0x1

    .line 241
    :cond_0
    return v0
.end method

.method public classLoad()Z
    .locals 8

    .prologue
    .line 270
    const/4 v2, 0x1

    .line 271
    .local v2, "flag":Z
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 272
    .local v0, "chm":Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/energysource/szj/embeded/SZJServiceInstance;->getInstance()Lcom/energysource/szj/embeded/SZJServiceInstance;

    move-result-object v3

    .line 273
    .local v3, "instance":Lcom/energysource/szj/embeded/SZJServiceInstance;
    invoke-virtual {v3}, Lcom/energysource/szj/embeded/SZJServiceInstance;->getMe()Lcom/energysource/szj/embeded/ModuleEntity;

    move-result-object v4

    .line 275
    .local v4, "me":Lcom/energysource/szj/embeded/ModuleEntity;
    :try_start_0
    invoke-virtual {v4}, Lcom/energysource/szj/embeded/ModuleEntity;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/energysource/szj/embeded/ModuleEntity;->getLoadClassPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/energysource/szj/embeded/SZJClassLoad;->loadJar(Ljava/lang/String;Ljava/lang/String;)Lcom/energysource/szj/android/SZJModule;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 276
    .local v5, "module":Lcom/energysource/szj/android/SZJModule;
    if-nez v5, :cond_1

    .line 277
    const/4 v2, 0x0

    .line 285
    .end local v5    # "module":Lcom/energysource/szj/android/SZJModule;
    :goto_0
    if-eqz v2, :cond_0

    .line 286
    invoke-virtual {v3, v0}, Lcom/energysource/szj/embeded/SZJServiceInstance;->setModulesMap(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 288
    :cond_0
    return v2

    .line 279
    .restart local v5    # "module":Lcom/energysource/szj/android/SZJModule;
    :cond_1
    :try_start_1
    const-string v6, "bootableModule"

    invoke-virtual {v0, v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 281
    .end local v5    # "module":Lcom/energysource/szj/android/SZJModule;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 282
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "SZJClassLoad.java"

    const-string v7, "classLoadException"

    invoke-static {v6, v7, v1}, Lcom/energysource/szj/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 283
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public copyBakFile()Z
    .locals 11

    .prologue
    .line 164
    const/4 v3, 0x1

    .line 165
    .local v3, "flag":Z
    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "data/data/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/energysource/szj/embeded/SZJClassLoad;->pkg:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/bakjar/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "bootablemodule"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jar"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    .local v2, "f":Ljava/io/File;
    const-string v8, "framework"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "path==="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/energysource/szj/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {v2}, Lcom/energysource/szj/embeded/utils/FileUtils;->existsFile(Ljava/io/File;)Z

    move-result v3

    .line 168
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/energysource/szj/embeded/SZJFrameworkConfig;->BAKJARPATH:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "bootablemodule.xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    .local v7, "xmlFile":Ljava/io/File;
    invoke-static {v7}, Lcom/energysource/szj/embeded/utils/FileUtils;->existsFile(Ljava/io/File;)Z

    move-result v3

    .line 170
    if-eqz v3, :cond_0

    .line 171
    sget-object v8, Lcom/energysource/szj/embeded/SZJFrameworkConfig;->JARPATH:Ljava/lang/String;

    invoke-static {v8}, Lcom/energysource/szj/embeded/utils/FileUtils;->deleteDirectory(Ljava/lang/String;)Z

    move-result v3

    .line 172
    if-eqz v3, :cond_0

    .line 174
    :try_start_0
    sget-object v8, Lcom/energysource/szj/embeded/SZJFrameworkConfig;->JARPATH:Ljava/lang/String;

    invoke-static {v8}, Lcom/energysource/szj/embeded/utils/FileUtils;->createDire(Ljava/lang/String;)Z

    move-result v0

    .line 175
    .local v0, "cl":Z
    new-instance v6, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "data/data/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/energysource/szj/embeded/SZJClassLoad;->pkg:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/loadjar/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    .local v6, "targetFile":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "data/data/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/energysource/szj/embeded/SZJClassLoad;->pkg:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/bakjar/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "bootablemodule"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jar"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    .local v4, "sourceFile":Ljava/io/File;
    invoke-static {v4, v6}, Lcom/energysource/szj/embeded/utils/ZipUtil;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 178
    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "data/data/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/energysource/szj/embeded/SZJClassLoad;->pkg:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/bakjar/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "bootablemodule.xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    .local v5, "sourceXml":Ljava/io/File;
    invoke-static {v5, v6}, Lcom/energysource/szj/embeded/utils/ZipUtil;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .end local v0    # "cl":Z
    .end local v4    # "sourceFile":Ljava/io/File;
    .end local v5    # "sourceXml":Ljava/io/File;
    .end local v6    # "targetFile":Ljava/io/File;
    :cond_0
    :goto_0
    return v3

    .line 180
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 181
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "SZJClassLoad.java"

    const-string v9, "copyBakFileException:"

    invoke-static {v8, v9, v1}, Lcom/energysource/szj/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public loadJar(Ljava/lang/String;Ljava/lang/String;)Lcom/energysource/szj/android/SZJModule;
    .locals 10
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "classname"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 299
    :try_start_0
    const-string v5, "framework"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "classname==="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "===fileName===="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/energysource/szj/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    new-instance v0, Ldalvik/system/DexClassLoader;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data/data/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/energysource/szj/embeded/SZJClassLoad;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/loadjar/moduleconfig"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jar"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data/data/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/energysource/szj/embeded/SZJClassLoad;->pkg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/loadjar/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-direct {v0, v5, v6, v7, v8}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 308
    .local v0, "classLoader":Ldalvik/system/DexClassLoader;
    new-instance v1, Ldalvik/system/DexClassLoader;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data/data/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/energysource/szj/embeded/SZJClassLoad;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/loadjar/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jar"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data/data/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/energysource/szj/embeded/SZJClassLoad;->pkg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/loadjar/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v1, v5, v6, v7, v0}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 314
    .end local v0    # "classLoader":Ldalvik/system/DexClassLoader;
    .local v1, "classLoader":Ldalvik/system/DexClassLoader;
    invoke-virtual {v1, p2}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 315
    .local v4, "myClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/energysource/szj/android/SZJModule;

    .line 316
    .local v3, "module":Lcom/energysource/szj/android/SZJModule;
    const-string v5, "framework"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "name=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "==classpath=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/energysource/szj/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v3

    .line 321
    .end local v1    # "classLoader":Ldalvik/system/DexClassLoader;
    .end local v3    # "module":Lcom/energysource/szj/android/SZJModule;
    .end local v4    # "myClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v5

    .line 318
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 319
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "SZJClassLoad.java"

    const-string v6, "loadJarException:"

    invoke-static {v5, v6, v2}, Lcom/energysource/szj/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v5, v9

    .line 321
    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "handler_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/energysource/szj/embeded/SZJClassLoad;->handleThread:Landroid/os/HandlerThread;

    .line 64
    iget-object v0, p0, Lcom/energysource/szj/embeded/SZJClassLoad;->handleThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 65
    iget-object v0, p0, Lcom/energysource/szj/embeded/SZJClassLoad;->handleThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/energysource/szj/embeded/SZJClassLoad;->looper:Landroid/os/Looper;

    .line 66
    new-instance v0, Lcom/energysource/szj/embeded/SZJClassLoad$MyHandler;

    iget-object v1, p0, Lcom/energysource/szj/embeded/SZJClassLoad;->looper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/energysource/szj/embeded/SZJClassLoad$MyHandler;-><init>(Lcom/energysource/szj/embeded/SZJClassLoad;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/energysource/szj/embeded/SZJClassLoad;->myHandler:Lcom/energysource/szj/embeded/SZJClassLoad$MyHandler;

    .line 67
    iget-object v0, p0, Lcom/energysource/szj/embeded/SZJClassLoad;->myHandler:Lcom/energysource/szj/embeded/SZJClassLoad$MyHandler;

    invoke-virtual {v0}, Lcom/energysource/szj/embeded/SZJClassLoad$MyHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/energysource/szj/embeded/SZJClassLoad;->msg:Landroid/os/Message;

    .line 68
    iget-object v0, p0, Lcom/energysource/szj/embeded/SZJClassLoad;->msg:Landroid/os/Message;

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 69
    iget-object v0, p0, Lcom/energysource/szj/embeded/SZJClassLoad;->msg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 70
    return-void
.end method

.method public startClassLoad()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    .line 76
    new-instance v12, Lcom/energysource/szj/embeded/UpgradeJar;

    invoke-direct {v12}, Lcom/energysource/szj/embeded/UpgradeJar;-><init>()V

    invoke-virtual {v12}, Lcom/energysource/szj/embeded/UpgradeJar;->startUpgradeJar()V

    .line 77
    const/4 v3, 0x1

    .line 78
    .local v3, "flag":Z
    invoke-static {}, Lcom/energysource/szj/embeded/SZJServiceInstance;->getInstance()Lcom/energysource/szj/embeded/SZJServiceInstance;

    move-result-object v4

    .line 79
    .local v4, "instance":Lcom/energysource/szj/embeded/SZJServiceInstance;
    invoke-virtual {v4}, Lcom/energysource/szj/embeded/SZJServiceInstance;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/energysource/szj/embeded/SZJClassLoad;->pkg:Ljava/lang/String;

    .line 80
    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "data/data/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/energysource/szj/embeded/SZJClassLoad;->pkg:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/loadjar/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "bootablemodule.xml"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .local v11, "xmlFile":Ljava/io/File;
    invoke-static {v11}, Lcom/energysource/szj/embeded/utils/FileUtils;->existsFile(Ljava/io/File;)Z

    move-result v5

    .line 82
    .local v5, "isExist":Z
    if-nez v5, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/energysource/szj/embeded/SZJClassLoad;->copyBakFile()Z

    move-result v0

    .line 84
    .local v0, "bakflag":Z
    const/4 v3, 0x0

    .line 85
    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/energysource/szj/embeded/SZJClassLoad;->backupDatabase()V

    .line 87
    const/4 v10, 0x0

    .line 89
    .local v10, "unzipflag":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/energysource/szj/embeded/SZJClassLoad;->unzipJar()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 93
    :goto_0
    if-eqz v10, :cond_0

    .line 94
    const/4 v3, 0x1

    .line 97
    .end local v0    # "bakflag":Z
    .end local v10    # "unzipflag":Z
    :cond_0
    invoke-static {v11}, Lcom/energysource/szj/embeded/utils/FileUtils;->readXml(Ljava/io/File;)Lcom/energysource/szj/embeded/ModuleEntity;

    move-result-object v7

    .line 98
    .local v7, "me":Lcom/energysource/szj/embeded/ModuleEntity;
    invoke-virtual {v4, v7}, Lcom/energysource/szj/embeded/SZJServiceInstance;->setMe(Lcom/energysource/szj/embeded/ModuleEntity;)V

    .line 99
    invoke-virtual {p0, v7}, Lcom/energysource/szj/embeded/SZJClassLoad;->checkJar(Lcom/energysource/szj/embeded/ModuleEntity;)Z

    move-result v1

    .line 100
    .local v1, "checkflag":Z
    if-eqz v1, :cond_1

    .line 101
    const/4 v3, 0x0

    .line 102
    invoke-virtual {v4, v14}, Lcom/energysource/szj/embeded/SZJServiceInstance;->setLoadClassFlag(Z)V

    .line 103
    invoke-virtual {p0}, Lcom/energysource/szj/embeded/SZJClassLoad;->copyBakFile()Z

    move-result v0

    .line 104
    .restart local v0    # "bakflag":Z
    if-nez v0, :cond_1

    .line 105
    invoke-virtual {p0, v7}, Lcom/energysource/szj/embeded/SZJClassLoad;->checkJar(Lcom/energysource/szj/embeded/ModuleEntity;)Z

    move-result v0

    .line 106
    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/energysource/szj/embeded/SZJClassLoad;->backupDatabase()V

    .line 108
    invoke-virtual {p0}, Lcom/energysource/szj/embeded/SZJClassLoad;->unzipJar()Z

    move-result v10

    .line 109
    .restart local v10    # "unzipflag":Z
    if-eqz v10, :cond_1

    .line 110
    const/4 v3, 0x1

    .line 114
    .end local v0    # "bakflag":Z
    .end local v10    # "unzipflag":Z
    :cond_1
    if-eqz v3, :cond_6

    .line 115
    invoke-virtual {v4}, Lcom/energysource/szj/embeded/SZJServiceInstance;->getModulesMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v8

    .line 116
    .local v8, "moduleMap":Ljava/util/concurrent/ConcurrentHashMap;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v12

    if-lez v12, :cond_2

    .line 119
    :cond_2
    invoke-virtual {p0}, Lcom/energysource/szj/embeded/SZJClassLoad;->classLoad()Z

    move-result v6

    .line 120
    .local v6, "loadFlag":Z
    if-nez v6, :cond_5

    .line 121
    invoke-virtual {v4}, Lcom/energysource/szj/embeded/SZJServiceInstance;->isLoadClassFlag()Z

    move-result v12

    if-nez v12, :cond_3

    .line 122
    invoke-virtual {p0}, Lcom/energysource/szj/embeded/SZJClassLoad;->copyBakFile()Z

    move-result v3

    .line 123
    if-nez v3, :cond_3

    .line 124
    invoke-virtual {p0, v7}, Lcom/energysource/szj/embeded/SZJClassLoad;->checkJar(Lcom/energysource/szj/embeded/ModuleEntity;)Z

    move-result v3

    .line 125
    if-eqz v3, :cond_3

    .line 126
    invoke-virtual {v4, v14}, Lcom/energysource/szj/embeded/SZJServiceInstance;->setLoadClassFlag(Z)V

    .line 130
    :cond_3
    invoke-virtual {v4}, Lcom/energysource/szj/embeded/SZJServiceInstance;->isLoadClassFlag()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 131
    invoke-virtual {p0}, Lcom/energysource/szj/embeded/SZJClassLoad;->backupDatabase()V

    .line 132
    invoke-virtual {p0}, Lcom/energysource/szj/embeded/SZJClassLoad;->unzipJar()Z

    .line 134
    :cond_4
    invoke-virtual {p0}, Lcom/energysource/szj/embeded/SZJClassLoad;->classLoad()Z

    move-result v6

    .line 136
    :cond_5
    if-eqz v6, :cond_6

    .line 137
    invoke-virtual {p0}, Lcom/energysource/szj/embeded/SZJClassLoad;->startModule()Z

    move-result v9

    .line 138
    .local v9, "startFlag":Z
    if-eqz v9, :cond_7

    .line 139
    const-string v12, "framework"

    const-string v13, "startModuleSuccess"

    invoke-static {v12, v13}, Lcom/energysource/szj/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .end local v6    # "loadFlag":Z
    .end local v8    # "moduleMap":Ljava/util/concurrent/ConcurrentHashMap;
    .end local v9    # "startFlag":Z
    :cond_6
    :goto_1
    return-void

    .line 90
    .end local v1    # "checkflag":Z
    .end local v7    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    .restart local v0    # "bakflag":Z
    .restart local v10    # "unzipflag":Z
    :catch_0
    move-exception v2

    .line 91
    .local v2, "e":Ljava/lang/Exception;
    const-string v12, "SZJClassLoad.java"

    const-string v13, "unzipJar"

    invoke-static {v12, v13, v2}, Lcom/energysource/szj/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 141
    .end local v0    # "bakflag":Z
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v10    # "unzipflag":Z
    .restart local v1    # "checkflag":Z
    .restart local v6    # "loadFlag":Z
    .restart local v7    # "me":Lcom/energysource/szj/embeded/ModuleEntity;
    .restart local v8    # "moduleMap":Ljava/util/concurrent/ConcurrentHashMap;
    .restart local v9    # "startFlag":Z
    :cond_7
    invoke-virtual {p0}, Lcom/energysource/szj/embeded/SZJClassLoad;->copyBakFile()Z

    move-result v3

    .line 142
    if-nez v3, :cond_6

    .line 143
    invoke-virtual {p0, v7}, Lcom/energysource/szj/embeded/SZJClassLoad;->checkJar(Lcom/energysource/szj/embeded/ModuleEntity;)Z

    move-result v3

    .line 144
    if-eqz v3, :cond_6

    .line 145
    invoke-virtual {v4, v14}, Lcom/energysource/szj/embeded/SZJServiceInstance;->setLoadClassFlag(Z)V

    .line 146
    invoke-virtual {p0}, Lcom/energysource/szj/embeded/SZJClassLoad;->backupDatabase()V

    .line 147
    invoke-virtual {p0}, Lcom/energysource/szj/embeded/SZJClassLoad;->unzipJar()Z

    .line 148
    invoke-virtual {p0}, Lcom/energysource/szj/embeded/SZJClassLoad;->classLoad()Z

    move-result v6

    .line 149
    if-eqz v6, :cond_6

    .line 150
    invoke-virtual {p0}, Lcom/energysource/szj/embeded/SZJClassLoad;->startModule()Z

    goto :goto_1
.end method

.method public startModule()Z
    .locals 11

    .prologue
    .line 329
    const/4 v4, 0x1

    .line 331
    .local v4, "flag":Z
    :try_start_0
    invoke-static {}, Lcom/energysource/szj/embeded/SZJServiceInstance;->getInstance()Lcom/energysource/szj/embeded/SZJServiceInstance;

    move-result-object v6

    .line 332
    .local v6, "instance":Lcom/energysource/szj/embeded/SZJServiceInstance;
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 333
    .local v5, "initValues":Ljava/util/concurrent/ConcurrentHashMap;
    const-string v9, "context"

    invoke-virtual {v6}, Lcom/energysource/szj/embeded/SZJServiceInstance;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    invoke-virtual {v6}, Lcom/energysource/szj/embeded/SZJServiceInstance;->getModulesMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    .line 335
    .local v1, "chm":Ljava/util/concurrent/ConcurrentHashMap;
    const-string v9, "bootableModule"

    invoke-virtual {v1, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/energysource/szj/android/SZJModule;

    .line 336
    .local v0, "bootable":Lcom/energysource/szj/android/SZJModule;
    invoke-virtual {v6}, Lcom/energysource/szj/embeded/SZJServiceInstance;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 337
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 338
    .local v7, "resource":Landroid/content/res/Resources;
    const-string v9, "watchertype"

    const-string v10, ""

    invoke-virtual {v5, v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const-string v9, "bootableModule"

    invoke-virtual {v5, v9, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string v9, "projecttype"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string v9, "wifi"

    invoke-virtual {v2, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    .line 342
    .local v8, "wifiManager":Landroid/net/wifi/WifiManager;
    const-string v9, "wifiManager"

    invoke-virtual {v5, v9, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-string v9, "activity"

    invoke-virtual {v6}, Lcom/energysource/szj/embeded/SZJServiceInstance;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-string v9, "debugFlag"

    invoke-virtual {v6}, Lcom/energysource/szj/embeded/SZJServiceInstance;->isDebug()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    invoke-virtual {v6}, Lcom/energysource/szj/embeded/SZJServiceInstance;->getDebugListener()Lcom/energysource/szj/android/DebugListener;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 346
    const-string v9, "debugListener"

    invoke-virtual {v6}, Lcom/energysource/szj/embeded/SZJServiceInstance;->getDebugListener()Lcom/energysource/szj/android/DebugListener;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    :cond_0
    invoke-virtual {v6}, Lcom/energysource/szj/embeded/SZJServiceInstance;->getAppsec()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    const-string v9, ""

    invoke-virtual {v6}, Lcom/energysource/szj/embeded/SZJServiceInstance;->getAppsec()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 349
    :cond_1
    iget-object v9, p0, Lcom/energysource/szj/embeded/SZJClassLoad;->pkg:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/energysource/szj/embeded/SZJServiceInstance;->setAppsec(Ljava/lang/String;)V

    .line 351
    :cond_2
    const-string v9, "appsec"

    invoke-virtual {v6}, Lcom/energysource/szj/embeded/SZJServiceInstance;->getAppsec()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    invoke-interface {v0, v5}, Lcom/energysource/szj/android/SZJModule;->initValue(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 353
    invoke-interface {v0}, Lcom/energysource/szj/android/SZJModule;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    .end local v0    # "bootable":Lcom/energysource/szj/android/SZJModule;
    .end local v1    # "chm":Ljava/util/concurrent/ConcurrentHashMap;
    .end local v2    # "context":Landroid/content/Context;
    .end local v5    # "initValues":Ljava/util/concurrent/ConcurrentHashMap;
    .end local v6    # "instance":Lcom/energysource/szj/embeded/SZJServiceInstance;
    .end local v7    # "resource":Landroid/content/res/Resources;
    .end local v8    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_0
    return v4

    .line 358
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 359
    .local v3, "e":Ljava/lang/Exception;
    const-string v9, "SZJClassLoad.java"

    const-string v10, "startModuleException:"

    invoke-static {v9, v10, v3}, Lcom/energysource/szj/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 360
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public stopModule()Z
    .locals 7

    .prologue
    .line 249
    invoke-static {}, Lcom/energysource/szj/embeded/SZJServiceInstance;->getInstance()Lcom/energysource/szj/embeded/SZJServiceInstance;

    move-result-object v4

    .line 250
    .local v4, "instance":Lcom/energysource/szj/embeded/SZJServiceInstance;
    invoke-virtual {v4}, Lcom/energysource/szj/embeded/SZJServiceInstance;->getModulesMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 251
    .local v0, "chm":Ljava/util/concurrent/ConcurrentHashMap;
    const/4 v2, 0x1

    .line 253
    .local v2, "flag":Z
    if-eqz v0, :cond_0

    :try_start_0
    const-string v5, "bootableModule"

    invoke-virtual {v0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 254
    const-string v5, "bootableModule"

    invoke-virtual {v0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/energysource/szj/android/SZJModule;

    .line 255
    .local v3, "framework":Lcom/energysource/szj/android/SZJModule;
    invoke-interface {v3}, Lcom/energysource/szj/android/SZJModule;->destory()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .end local v3    # "framework":Lcom/energysource/szj/android/SZJModule;
    :cond_0
    :goto_0
    return v2

    .line 258
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 259
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "SZJClassLoad.java"

    const-string v6, "stopModuleException:"

    invoke-static {v5, v6, v1}, Lcom/energysource/szj/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 260
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public unzipJar()Z
    .locals 8

    .prologue
    .line 209
    const/4 v3, 0x0

    .line 210
    .local v3, "flag":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data/data/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/energysource/szj/embeded/SZJClassLoad;->pkg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/loadjar/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/energysource/szj/embeded/utils/FileUtils;->deleteDirectory(Ljava/lang/String;)Z

    move-result v3

    .line 211
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data/data/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/energysource/szj/embeded/SZJClassLoad;->pkg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/loadjar/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/energysource/szj/embeded/utils/FileUtils;->createDire(Ljava/lang/String;)Z

    move-result v3

    .line 213
    if-eqz v3, :cond_0

    .line 215
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const-string v7, "modulejar.zip"

    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 216
    .local v5, "is":Ljava/io/InputStream;
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data/data/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/energysource/szj/embeded/SZJClassLoad;->pkg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/loadjar/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    .local v1, "f":Ljava/io/File;
    invoke-static {v5, v1}, Lcom/energysource/szj/embeded/utils/ZipUtil;->doExtract(Ljava/io/InputStream;Ljava/io/File;)V

    .line 218
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/data/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/energysource/szj/embeded/SZJClassLoad;->pkg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/bakjar/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/energysource/szj/embeded/utils/FileUtils;->createDire(Ljava/lang/String;)Z

    move-result v4

    .line 219
    .local v4, "flag2":Z
    if-eqz v4, :cond_0

    .line 220
    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/data/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/energysource/szj/embeded/SZJClassLoad;->pkg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/bakjar/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 222
    .local v2, "f2":Ljava/io/File;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const-string v7, "modulejar.zip"

    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 223
    invoke-static {v5, v2}, Lcom/energysource/szj/embeded/utils/ZipUtil;->doExtract(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "f2":Ljava/io/File;
    .end local v4    # "flag2":Z
    .end local v5    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return v3

    .line 226
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "SZJClassLoad.java"

    const-string v7, "unzipjarException:"

    invoke-static {v6, v7, v0}, Lcom/energysource/szj/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 228
    const/4 v3, 0x0

    goto :goto_0
.end method
