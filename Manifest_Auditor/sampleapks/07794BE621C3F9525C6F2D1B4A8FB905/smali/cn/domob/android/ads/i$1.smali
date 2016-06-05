.class final Lcn/domob/android/ads/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;Lcn/domob/android/ads/DomobAdView;Ljava/util/HashMap;)Landroid/app/Dialog;
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
    iput-object p1, p0, Lcn/domob/android/ads/i$1;->a:Lcn/domob/android/ads/i;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcn/domob/android/ads/i$1;->a:Lcn/domob/android/ads/i;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcn/domob/android/ads/i;->a(Lcn/domob/android/ads/i;I)V

    .line 171
    return-void
.end method
