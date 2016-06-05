.class final Lcn/domob/android/ads/DomobAdEngine$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/DomobAdEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcn/domob/android/ads/DomobAdEngine;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/DomobAdEngine;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdEngine$2;->a:Lcn/domob/android/ads/DomobAdEngine;

    iput-object p2, p0, Lcn/domob/android/ads/DomobAdEngine$2;->b:Landroid/content/Context;

    .line 1547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 1550
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine$2;->b:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/ads/DomobActivity;->initReceiver(Landroid/content/Context;)V

    .line 1551
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine$2;->a:Lcn/domob/android/ads/DomobAdEngine;

    invoke-static {v0}, Lcn/domob/android/ads/DomobAdEngine;->b(Lcn/domob/android/ads/DomobAdEngine;)Landroid/content/Intent;

    move-result-object v0

    .line 1552
    iget-object v1, p0, Lcn/domob/android/ads/DomobAdEngine$2;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1553
    return-void
.end method
