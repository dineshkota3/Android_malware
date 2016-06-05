.class Lcom/admogo/AdMogoLayout$RotateAdRunnable;
.super Ljava/lang/Object;
.source "AdMogoLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admogo/AdMogoLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RotateAdRunnable"
.end annotation


# instance fields
.field private adMogoLayoutReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/admogo/AdMogoLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/admogo/AdMogoLayout;)V
    .locals 1
    .param p1, "adMogoLayout"    # Lcom/admogo/AdMogoLayout;

    .prologue
    .line 715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 716
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 717
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 716
    iput-object v0, p0, Lcom/admogo/AdMogoLayout$RotateAdRunnable;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    .line 718
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 721
    iget-object v1, p0, Lcom/admogo/AdMogoLayout$RotateAdRunnable;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admogo/AdMogoLayout;

    .line 722
    .local v0, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-eqz v0, :cond_0

    .line 723
    # invokes: Lcom/admogo/AdMogoLayout;->rotateAd()V
    invoke-static {v0}, Lcom/admogo/AdMogoLayout;->access$6(Lcom/admogo/AdMogoLayout;)V

    .line 725
    :cond_0
    return-void
.end method
