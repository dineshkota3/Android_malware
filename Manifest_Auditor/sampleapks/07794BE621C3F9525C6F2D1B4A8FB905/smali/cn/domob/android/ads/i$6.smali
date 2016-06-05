.class final Lcn/domob/android/ads/i$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/i;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lcn/domob/android/ads/i$6;->a:Landroid/content/Context;

    iput-object p3, p0, Lcn/domob/android/ads/i$6;->b:Landroid/content/Intent;

    .line 935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 937
    iget-object v0, p0, Lcn/domob/android/ads/i$6;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/ads/DomobActivity;->initReceiver(Landroid/content/Context;)V

    .line 938
    iget-object v0, p0, Lcn/domob/android/ads/i$6;->b:Landroid/content/Intent;

    .line 939
    iget-object v1, p0, Lcn/domob/android/ads/i$6;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 940
    return-void
.end method
