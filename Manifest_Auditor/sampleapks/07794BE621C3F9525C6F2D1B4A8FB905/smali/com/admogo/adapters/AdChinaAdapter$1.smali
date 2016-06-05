.class Lcom/admogo/adapters/AdChinaAdapter$1;
.super Ljava/lang/Object;
.source "AdChinaAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/admogo/adapters/AdChinaAdapter;->onReceiveFullScreenAd(Lcom/adchina/android/ads/views/FullScreenAdView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/admogo/adapters/AdChinaAdapter;


# direct methods
.method constructor <init>(Lcom/admogo/adapters/AdChinaAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/admogo/adapters/AdChinaAdapter$1;->this$0:Lcom/admogo/adapters/AdChinaAdapter;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/admogo/adapters/AdChinaAdapter$1;->this$0:Lcom/admogo/adapters/AdChinaAdapter;

    # getter for: Lcom/admogo/adapters/AdChinaAdapter;->adMogoLayout:Lcom/admogo/AdMogoLayout;
    invoke-static {v0}, Lcom/admogo/adapters/AdChinaAdapter;->access$0(Lcom/admogo/adapters/AdChinaAdapter;)Lcom/admogo/AdMogoLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/admogo/AdMogoLayout;->removeAllViews()V

    .line 249
    const/4 v0, 0x1

    return v0
.end method
