.class final Lcom/madhouse/android/ads/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic _:Lcom/madhouse/android/ads/fffff;

.field private final synthetic __:Lcom/madhouse/android/ads/eeee;


# direct methods
.method constructor <init>(Lcom/madhouse/android/ads/fffff;Lcom/madhouse/android/ads/eeee;)V
    .locals 0

    iput-object p1, p0, Lcom/madhouse/android/ads/g;->_:Lcom/madhouse/android/ads/fffff;

    iput-object p2, p0, Lcom/madhouse/android/ads/g;->__:Lcom/madhouse/android/ads/eeee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/madhouse/android/ads/g;->_:Lcom/madhouse/android/ads/fffff;

    iget-object v0, v0, Lcom/madhouse/android/ads/fffff;->_:Lcom/madhouse/android/ads/fff;

    iget-object v0, v0, Lcom/madhouse/android/ads/fff;->_:Lcom/madhouse/android/ads/AdView;

    iget-object v1, p0, Lcom/madhouse/android/ads/g;->__:Lcom/madhouse/android/ads/eeee;

    invoke-static {v0, v1}, Lcom/madhouse/android/ads/AdView;->_(Lcom/madhouse/android/ads/AdView;Lcom/madhouse/android/ads/eeee;)V

    return-void
.end method
