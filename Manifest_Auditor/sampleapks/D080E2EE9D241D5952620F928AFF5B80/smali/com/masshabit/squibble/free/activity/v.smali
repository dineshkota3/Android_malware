.class final Lcom/masshabit/squibble/free/activity/v;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field private synthetic a:Lcom/masshabit/squibble/free/activity/h;


# direct methods
.method constructor <init>(Lcom/masshabit/squibble/free/activity/h;)V
    .locals 0

    iput-object p1, p0, Lcom/masshabit/squibble/free/activity/v;->a:Lcom/masshabit/squibble/free/activity/h;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCloseWindow(Landroid/webkit/WebView;)V
    .locals 0

    return-void
.end method

.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/v;->a:Lcom/masshabit/squibble/free/activity/h;

    iget-object v0, v0, Lcom/masshabit/squibble/free/activity/h;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void
.end method

.method public final onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/v;->a:Lcom/masshabit/squibble/free/activity/h;

    invoke-virtual {v0, p2}, Lcom/masshabit/squibble/free/activity/h;->setTitle(Ljava/lang/CharSequence;)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
