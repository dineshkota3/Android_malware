.class public Lcn/domob/android/ads/DomobAdBuilder$ShowClickAnimViewThread;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/DomobAdBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShowClickAnimViewThread"
.end annotation


# instance fields
.field private a:Lcn/domob/android/ads/DomobAdBuilder;


# direct methods
.method public constructor <init>(Lcn/domob/android/ads/DomobAdBuilder;)V
    .locals 1
    .param p1, "b"    # Lcn/domob/android/ads/DomobAdBuilder;

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdBuilder$ShowClickAnimViewThread;->a:Lcn/domob/android/ads/DomobAdBuilder;

    .line 191
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdBuilder$ShowClickAnimViewThread;->a:Lcn/domob/android/ads/DomobAdBuilder;

    .line 192
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdBuilder$ShowClickAnimViewThread;->a:Lcn/domob/android/ads/DomobAdBuilder;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdBuilder$ShowClickAnimViewThread;->a:Lcn/domob/android/ads/DomobAdBuilder;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdBuilder;->e()V

    .line 198
    :cond_0
    return-void
.end method
