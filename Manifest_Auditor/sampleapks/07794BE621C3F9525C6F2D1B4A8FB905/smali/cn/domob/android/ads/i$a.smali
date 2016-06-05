.class final Lcn/domob/android/ads/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lcn/domob/android/ads/i;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/i;)V
    .locals 0

    .prologue
    .line 693
    iput-object p1, p0, Lcn/domob/android/ads/i$a;->a:Lcn/domob/android/ads/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 697
    iget-object v0, p0, Lcn/domob/android/ads/i$a;->a:Lcn/domob/android/ads/i;

    invoke-static {v0}, Lcn/domob/android/ads/i;->a(Lcn/domob/android/ads/i;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 698
    iget-object v0, p0, Lcn/domob/android/ads/i$a;->a:Lcn/domob/android/ads/i;

    invoke-static {v0}, Lcn/domob/android/ads/i;->b(Lcn/domob/android/ads/i;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 700
    iget-object v0, p0, Lcn/domob/android/ads/i$a;->a:Lcn/domob/android/ads/i;

    invoke-static {v0}, Lcn/domob/android/ads/i;->c(Lcn/domob/android/ads/i;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcn/domob/android/ads/i$a;->a:Lcn/domob/android/ads/i;

    invoke-static {v1}, Lcn/domob/android/ads/i;->d(Lcn/domob/android/ads/i;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 702
    :cond_0
    return-void
.end method
