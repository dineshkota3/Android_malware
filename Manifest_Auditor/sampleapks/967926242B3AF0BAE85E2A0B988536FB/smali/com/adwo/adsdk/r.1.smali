.class final Lcom/adwo/adsdk/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/adwo/adsdk/j;


# direct methods
.method constructor <init>(Lcom/adwo/adsdk/j;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adwo/adsdk/r;->a:Lcom/adwo/adsdk/j;

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 523
    iget-object v0, p0, Lcom/adwo/adsdk/r;->a:Lcom/adwo/adsdk/j;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adwo/adsdk/j;->a(Lcom/adwo/adsdk/j;Z)V

    .line 524
    return-void
.end method
