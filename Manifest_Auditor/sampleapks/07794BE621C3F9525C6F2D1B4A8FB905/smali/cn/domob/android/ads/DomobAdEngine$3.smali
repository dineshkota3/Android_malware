.class final Lcn/domob/android/ads/DomobAdEngine$3;
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

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/DomobAdEngine;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdEngine$3;->a:Lcn/domob/android/ads/DomobAdEngine;

    iput-object p2, p0, Lcn/domob/android/ads/DomobAdEngine$3;->b:Landroid/content/Context;

    iput-object p3, p0, Lcn/domob/android/ads/DomobAdEngine$3;->c:Ljava/lang/String;

    .line 1567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 1571
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine$3;->b:Landroid/content/Context;

    const-string v1, "\u5f00\u59cb\u4e0b\u8f7d"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1572
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine$3;->a:Lcn/domob/android/ads/DomobAdEngine;

    const/16 v1, 0x9

    iget-object v2, p0, Lcn/domob/android/ads/DomobAdEngine$3;->a:Lcn/domob/android/ads/DomobAdEngine;

    invoke-static {v2}, Lcn/domob/android/ads/DomobAdEngine;->c(Lcn/domob/android/ads/DomobAdEngine;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/domob/android/ads/DomobAdEngine;->a(Lcn/domob/android/ads/DomobAdEngine;ILjava/util/HashMap;)V

    .line 1573
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine$3;->a:Lcn/domob/android/ads/DomobAdEngine;

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdEngine$3;->c:Ljava/lang/String;

    iget-object v2, p0, Lcn/domob/android/ads/DomobAdEngine$3;->b:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcn/domob/android/ads/DomobAdEngine;->a(Lcn/domob/android/ads/DomobAdEngine;Ljava/lang/String;Landroid/content/Context;)V

    .line 1574
    return-void
.end method
