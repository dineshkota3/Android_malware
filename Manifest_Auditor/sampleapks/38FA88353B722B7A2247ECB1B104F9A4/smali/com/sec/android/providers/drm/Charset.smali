.class public abstract Lcom/sec/android/providers/drm/Charset;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/providers/drm/Charset;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/android/providers/drm/Charset;->b:Landroid/app/Activity;

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

.method private a(Ljava/lang/String;Landroid/content/Context;Landroid/app/Activity;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {p2}, Lcom/sec/android/providers/drm/Doctype;->a(Landroid/content/Context;)V

    invoke-static {v4}, Lcom/sec/android/providers/drm/Doctype;->a(I)Lcom/sec/android/providers/drm/Doctype;

    move-result-object v0

    const-string v1, "warpeace"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/providers/drm/Doctype;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/providers/drm/Xmlns;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    if-nez p4, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/providers/drm/Charset;->a()Ljava/io/FileDescriptor;

    :cond_0
    if-nez p5, :cond_1

    sget-object v2, Lcom/sec/android/providers/drm/Onion;->e:Ljava/lang/String;

    :cond_1
    const-string v2, "from"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/providers/drm/Doctype;->b(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x3

    if-gt v3, v2, :cond_2

    const/4 v2, 0x0

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, p1, p6}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "from"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;I)Lcom/sec/android/providers/drm/Doctype;

    if-eqz p0, :cond_2

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v1, "from"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;I)Lcom/sec/android/providers/drm/Doctype;

    :cond_2
    move v0, v4

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/app/Activity;Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/Class;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Landroid/content/Context;Landroid/app/Activity;Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 7

    sget-object v1, Lcom/sec/android/providers/drm/Transitional;->d:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v6, v0

    const/4 v0, 0x1

    aput-object p2, v6, v0

    const/4 v0, 0x2

    aput-object p3, v6, v0

    const/4 v0, 0x3

    aput-object p4, v6, v0

    const/4 v0, 0x4

    aput-object p5, v6, v0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/providers/drm/Charset;->a(Ljava/lang/String;Landroid/content/Context;Landroid/app/Activity;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Landroid/content/Context;Landroid/app/Activity;Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 7

    sget-object v1, Lcom/sec/android/providers/drm/Transitional;->a:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v6, v0

    const/4 v0, 0x1

    aput-object p2, v6, v0

    const/4 v0, 0x2

    aput-object p3, v6, v0

    const/4 v0, 0x3

    aput-object p4, v6, v0

    const/4 v0, 0x4

    aput-object p5, v6, v0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/providers/drm/Charset;->a(Ljava/lang/String;Landroid/content/Context;Landroid/app/Activity;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Landroid/content/Context;Landroid/app/Activity;Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 7

    sget-object v1, Lcom/sec/android/providers/drm/Transitional;->b:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v6, v0

    const/4 v0, 0x1

    aput-object p2, v6, v0

    const/4 v0, 0x2

    aput-object p3, v6, v0

    const/4 v0, 0x3

    aput-object p4, v6, v0

    const/4 v0, 0x4

    aput-object p5, v6, v0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/providers/drm/Charset;->a(Ljava/lang/String;Landroid/content/Context;Landroid/app/Activity;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public d(Landroid/content/Context;Landroid/app/Activity;Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 7

    sget-object v1, Lcom/sec/android/providers/drm/Transitional;->c:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v6, v0

    const/4 v0, 0x1

    aput-object p2, v6, v0

    const/4 v0, 0x2

    aput-object p3, v6, v0

    const/4 v0, 0x3

    aput-object p4, v6, v0

    const/4 v0, 0x4

    aput-object p5, v6, v0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/providers/drm/Charset;->a(Ljava/lang/String;Landroid/content/Context;Landroid/app/Activity;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public e(Landroid/content/Context;Landroid/app/Activity;Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/Integer;)Z
    .locals 7

    sget-object v1, Lcom/sec/android/providers/drm/Transitional;->e:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v6, v0

    const/4 v0, 0x1

    aput-object p2, v6, v0

    const/4 v0, 0x2

    aput-object p3, v6, v0

    const/4 v0, 0x3

    aput-object p4, v6, v0

    const/4 v0, 0x4

    aput-object p5, v6, v0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/providers/drm/Charset;->a(Ljava/lang/String;Landroid/content/Context;Landroid/app/Activity;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
