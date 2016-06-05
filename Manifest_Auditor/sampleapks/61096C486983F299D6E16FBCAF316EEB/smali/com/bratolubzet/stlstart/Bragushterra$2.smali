.class Lcom/bratolubzet/stlstart/Bragushterra$2;
.super Ljava/util/TimerTask;
.source "Bragushterra.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bratolubzet/stlstart/Bragushterra;->showNews(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bratolubzet/stlstart/Bragushterra;

.field private final synthetic val$id:I

.field private final synthetic val$notification:Landroid/app/Notification;


# direct methods
.method constructor <init>(Lcom/bratolubzet/stlstart/Bragushterra;ILandroid/app/Notification;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bratolubzet/stlstart/Bragushterra$2;->this$0:Lcom/bratolubzet/stlstart/Bragushterra;

    iput p2, p0, Lcom/bratolubzet/stlstart/Bragushterra$2;->val$id:I

    iput-object p3, p0, Lcom/bratolubzet/stlstart/Bragushterra$2;->val$notification:Landroid/app/Notification;

    .line 390
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 394
    const-string v1, "notification"

    .line 395
    .local v1, "ns":Ljava/lang/String;
    iget-object v2, p0, Lcom/bratolubzet/stlstart/Bragushterra$2;->this$0:Lcom/bratolubzet/stlstart/Bragushterra;

    invoke-virtual {v2, v1}, Lcom/bratolubzet/stlstart/Bragushterra;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 397
    .local v0, "mNotificationManager":Landroid/app/NotificationManager;
    iget v2, p0, Lcom/bratolubzet/stlstart/Bragushterra$2;->val$id:I

    iget-object v3, p0, Lcom/bratolubzet/stlstart/Bragushterra$2;->val$notification:Landroid/app/Notification;

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 398
    invoke-virtual {p0}, Lcom/bratolubzet/stlstart/Bragushterra$2;->cancel()Z

    .line 399
    return-void
.end method
