.class final Lcom/adwo/adsdk/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/adwo/adsdk/w;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/adwo/adsdk/w;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adwo/adsdk/y;->a:Lcom/adwo/adsdk/w;

    iput-object p2, p0, Lcom/adwo/adsdk/y;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/adwo/adsdk/y;->c:Landroid/app/Activity;

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 537
    iget-object v0, p0, Lcom/adwo/adsdk/y;->a:Lcom/adwo/adsdk/w;

    invoke-static {v0}, Lcom/adwo/adsdk/w;->a(Lcom/adwo/adsdk/w;)Lcom/adwo/adsdk/j;

    move-result-object v0

    iget-object v1, p0, Lcom/adwo/adsdk/y;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/adwo/adsdk/y;->c:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcom/adwo/adsdk/j;->a(Lcom/adwo/adsdk/j;Ljava/lang/String;Landroid/app/Activity;)V

    .line 538
    return-void
.end method
