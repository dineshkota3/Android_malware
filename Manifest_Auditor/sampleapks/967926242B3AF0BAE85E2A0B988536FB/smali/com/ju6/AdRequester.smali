.class public Lcom/ju6/AdRequester;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/ju6/AdListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/ju6/AdRequester;->a:Landroid/content/Context;

    .line 18
    return-void
.end method


# virtual methods
.method public getAd()V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Lcom/ju6/a;

    iget-object v1, p0, Lcom/ju6/AdRequester;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/ju6/AdRequester;->b:Lcom/ju6/AdListener;

    invoke-direct {v0, v1, v2}, Lcom/ju6/a;-><init>(Landroid/content/Context;Lcom/ju6/AdListener;)V

    .line 30
    invoke-virtual {v0}, Lcom/ju6/a;->start()V

    .line 31
    return-void
.end method

.method public setAdListener(Lcom/ju6/AdListener;)V
    .locals 1
    .param p1, "paramAdListener"    # Lcom/ju6/AdListener;

    .prologue
    .line 22
    :try_start_0
    iput-object p1, p0, Lcom/ju6/AdRequester;->b:Lcom/ju6/AdListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
