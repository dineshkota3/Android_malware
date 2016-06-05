.class final Lcn/domob/android/ads/i$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/i;->a()Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcn/domob/android/ads/i;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/i;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/domob/android/ads/i$14;->a:Lcn/domob/android/ads/i;

    .line 722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 724
    iget-object v0, p0, Lcn/domob/android/ads/i$14;->a:Lcn/domob/android/ads/i;

    invoke-static {v0}, Lcn/domob/android/ads/i;->j(Lcn/domob/android/ads/i;)V

    .line 725
    new-instance v0, Lcn/domob/android/ads/i$a;

    iget-object v1, p0, Lcn/domob/android/ads/i$14;->a:Lcn/domob/android/ads/i;

    invoke-direct {v0, v1}, Lcn/domob/android/ads/i$a;-><init>(Lcn/domob/android/ads/i;)V

    .line 726
    iget-object v1, p0, Lcn/domob/android/ads/i$14;->a:Lcn/domob/android/ads/i;

    invoke-static {v1}, Lcn/domob/android/ads/i;->k(Lcn/domob/android/ads/i;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 727
    return-void
.end method
