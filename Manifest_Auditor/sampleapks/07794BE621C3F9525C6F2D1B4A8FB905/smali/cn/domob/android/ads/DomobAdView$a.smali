.class final Lcn/domob/android/ads/DomobAdView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/DomobAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Lcn/domob/android/ads/DomobAdBuilder;

.field private b:Lcn/domob/android/ads/DomobAdView;

.field private c:I


# direct methods
.method constructor <init>(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdBuilder;I)V
    .locals 0

    .prologue
    .line 1106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1103
    iput-object p2, p0, Lcn/domob/android/ads/DomobAdView$a;->b:Lcn/domob/android/ads/DomobAdView;

    .line 1104
    iput-object p3, p0, Lcn/domob/android/ads/DomobAdView$a;->a:Lcn/domob/android/ads/DomobAdBuilder;

    .line 1105
    iput p4, p0, Lcn/domob/android/ads/DomobAdView$a;->c:I

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    const-string v1, "DomobSDK"

    .line 1114
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1115
    const-string v0, "DomobSDK"

    const-string v0, "DomobAdView onAnimationEnd."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$a;->a:Lcn/domob/android/ads/DomobAdBuilder;

    if-eqz v0, :cond_2

    .line 1122
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$a;->b:Lcn/domob/android/ads/DomobAdView;

    invoke-static {v0}, Lcn/domob/android/ads/DomobAdView;->m(Lcn/domob/android/ads/DomobAdView;)Lcn/domob/android/ads/DomobAdBuilder;

    move-result-object v0

    .line 1124
    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView$a;->a:Lcn/domob/android/ads/DomobAdBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/DomobAdBuilder;->setVisibility(I)V

    .line 1125
    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView$a;->b:Lcn/domob/android/ads/DomobAdView;

    iget-object v2, p0, Lcn/domob/android/ads/DomobAdView$a;->a:Lcn/domob/android/ads/DomobAdBuilder;

    invoke-static {v1, v2}, Lcn/domob/android/ads/DomobAdView;->a(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdBuilder;)Lcn/domob/android/ads/DomobAdBuilder;

    .line 1127
    if-eqz v0, :cond_1

    .line 1128
    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView$a;->b:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/DomobAdView;->removeView(Landroid/view/View;)V

    .line 1129
    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdBuilder;->c()V

    .line 1131
    :cond_1
    iget v0, p0, Lcn/domob/android/ads/DomobAdView$a;->c:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    .line 1132
    iget v0, p0, Lcn/domob/android/ads/DomobAdView$a;->c:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    .line 1133
    iget v0, p0, Lcn/domob/android/ads/DomobAdView$a;->c:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView$a;->b:Lcn/domob/android/ads/DomobAdView;

    invoke-static {v0, v1}, Lcn/domob/android/ads/DomobReport;->a(ILcn/domob/android/ads/DomobAdView;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1134
    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView$a;->b:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/DomobAdView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1137
    :cond_2
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 1141
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 1110
    return-void
.end method
