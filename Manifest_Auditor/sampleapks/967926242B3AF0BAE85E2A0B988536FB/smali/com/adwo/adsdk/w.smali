.class final Lcom/adwo/adsdk/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/adwo/adsdk/v;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/adwo/adsdk/v;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adwo/adsdk/w;->a:Lcom/adwo/adsdk/v;

    iput-object p2, p0, Lcom/adwo/adsdk/w;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/adwo/adsdk/w;->c:Landroid/app/Activity;

    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 654
    iget-object v0, p0, Lcom/adwo/adsdk/w;->a:Lcom/adwo/adsdk/v;

    invoke-static {v0}, Lcom/adwo/adsdk/v;->a(Lcom/adwo/adsdk/v;)Lcom/adwo/adsdk/j;

    move-result-object v0

    iget-object v1, p0, Lcom/adwo/adsdk/w;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/adwo/adsdk/w;->c:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lcom/adwo/adsdk/j;->a(Ljava/lang/String;Landroid/app/Activity;)V

    .line 655
    return-void
.end method
