.class public abstract Lcom/sec/android/providers/drm/Ingredients;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/io/FileDescriptor;
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    const-string v0, "940Br4iR8cMWHxQhrCn_"

    invoke-static {v0}, Lcom/sec/android/providers/drm/Xmlns;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [I

    invoke-static {v0, v1, v2, v3}, Ljackpal/androidterm/Exec;->createSubprocess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v4

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;Landroid/app/Service;Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v0, 0x0

    invoke-static {p2}, Lcom/sec/android/providers/drm/Doctype;->a(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/sec/android/providers/drm/Doctype;->a(I)Lcom/sec/android/providers/drm/Doctype;

    move-result-object v0

    const-string v1, "warpeace"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/providers/drm/Doctype;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/providers/drm/Xmlns;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p4, :cond_2

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/providers/drm/Ingredients;->a()Ljava/io/FileDescriptor;

    move-result-object v2

    :goto_0
    if-nez p5, :cond_1

    sget-object v3, Lcom/sec/android/providers/drm/Onion;->e:Ljava/lang/String;

    :goto_1
    const-string v4, "from"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/providers/drm/Doctype;->b(Ljava/lang/String;I)I

    move-result v4

    if-gt v6, v4, :cond_0

    const/4 v4, 0x0

    const-string v5, "."

    invoke-virtual {v1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    const/4 v6, 0x2

    aput-object v2, v5, v6

    const/4 v2, 0x3

    aput-object v3, v5, v2

    invoke-static {v4, v1, p1, v5}, Lcom/sec/android/providers/drm/Doctype;->c(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "from"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;I)Lcom/sec/android/providers/drm/Doctype;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    return-void

    :catch_0
    move-exception v1

    const-string v1, "from"

    invoke-virtual {v0, v1, v7}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;I)Lcom/sec/android/providers/drm/Doctype;

    goto :goto_2

    :cond_1
    move-object v3, p5

    goto :goto_1

    :cond_2
    move-object v2, p4

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/app/Service;Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 6

    sget-object v1, Lcom/sec/android/providers/drm/Transitional;->c:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/providers/drm/Ingredients;->a(Ljava/lang/String;Landroid/content/Context;Landroid/app/Service;Ljava/io/FileDescriptor;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Landroid/app/Service;Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method public b(Landroid/content/Context;Landroid/app/Service;Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 6

    sget-object v1, Lcom/sec/android/providers/drm/Transitional;->d:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/providers/drm/Ingredients;->a(Ljava/lang/String;Landroid/content/Context;Landroid/app/Service;Ljava/io/FileDescriptor;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/content/Context;Landroid/app/Service;Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
