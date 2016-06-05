.class public final Lcom/adwo/adsdk/R;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Lcom/adwo/adsdk/P;

.field private c:I

.field private d:Ljava/lang/Thread;

.field private e:Landroid/graphics/Paint;

.field private volatile f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adwo/adsdk/R;->d:Ljava/lang/Thread;

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/adwo/adsdk/R;->e:Landroid/graphics/Paint;

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adwo/adsdk/R;->f:Z

    .line 22
    new-instance v0, Lcom/adwo/adsdk/P;

    invoke-direct {v0}, Lcom/adwo/adsdk/P;-><init>()V

    iput-object v0, p0, Lcom/adwo/adsdk/R;->b:Lcom/adwo/adsdk/P;

    .line 24
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/adwo/adsdk/R;->b()V

    .line 41
    iget-object v0, p0, Lcom/adwo/adsdk/R;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/adwo/adsdk/R;->c:I

    if-lez v0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/adwo/adsdk/R;->d:Ljava/lang/Thread;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adwo/adsdk/R;->f:Z

    .line 44
    iget-object v0, p0, Lcom/adwo/adsdk/R;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 46
    :cond_0
    return-void
.end method

.method public final a(Ljava/io/InputStream;)V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/adwo/adsdk/R;->b:Lcom/adwo/adsdk/P;

    invoke-virtual {v0, p1}, Lcom/adwo/adsdk/P;->a(Ljava/io/InputStream;)I

    .line 32
    iget-object v0, p0, Lcom/adwo/adsdk/R;->b:Lcom/adwo/adsdk/P;

    invoke-virtual {v0}, Lcom/adwo/adsdk/P;->a()I

    move-result v0

    iput v0, p0, Lcom/adwo/adsdk/R;->c:I

    .line 33
    iget-object v0, p0, Lcom/adwo/adsdk/R;->b:Lcom/adwo/adsdk/P;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adwo/adsdk/P;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/adwo/adsdk/R;->a:Landroid/graphics/Bitmap;

    .line 35
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/adwo/adsdk/R;->d:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adwo/adsdk/R;->f:Z

    .line 51
    iget-object v0, p0, Lcom/adwo/adsdk/R;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adwo/adsdk/R;->d:Ljava/lang/Thread;

    .line 54
    :cond_0
    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 60
    iget-object v0, p0, Lcom/adwo/adsdk/R;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/adwo/adsdk/R;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/adwo/adsdk/R;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 62
    iget-object v0, p0, Lcom/adwo/adsdk/R;->b:Lcom/adwo/adsdk/P;

    invoke-virtual {v0}, Lcom/adwo/adsdk/P;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/adwo/adsdk/R;->a:Landroid/graphics/Bitmap;

    .line 65
    :cond_0
    return-void
.end method

.method public final run()V
    .locals 2

    .prologue
    .line 70
    :goto_0
    iget-boolean v0, p0, Lcom/adwo/adsdk/R;->f:Z

    if-nez v0, :cond_0

    .line 78
    return-void

    .line 72
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/adwo/adsdk/R;->postInvalidate()V

    .line 73
    const-wide/16 v0, 0x190

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
