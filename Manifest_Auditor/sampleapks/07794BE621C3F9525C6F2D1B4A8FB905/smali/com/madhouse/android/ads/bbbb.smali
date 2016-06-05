.class final Lcom/madhouse/android/ads/bbbb;
.super Landroid/webkit/WebView;


# instance fields
.field _:Landroid/content/Context;

.field final synthetic __:Lcom/madhouse/android/ads/_____;


# direct methods
.method protected constructor <init>(Lcom/madhouse/android/ads/_____;Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/madhouse/android/ads/bbbb;->__:Lcom/madhouse/android/ads/_____;

    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/madhouse/android/ads/bbbb;->_:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/madhouse/android/ads/bbbb;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/madhouse/android/ads/bbbb;->setFocusable(Z)V

    invoke-virtual {p0, v1}, Lcom/madhouse/android/ads/bbbb;->setClickable(Z)V

    invoke-direct {p0}, Lcom/madhouse/android/ads/bbbb;->_()V

    new-instance v0, Lcom/madhouse/android/ads/bbbbb;

    invoke-direct {v0, p0}, Lcom/madhouse/android/ads/bbbbb;-><init>(Lcom/madhouse/android/ads/bbbb;)V

    invoke-virtual {p0, v0}, Lcom/madhouse/android/ads/bbbb;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Lcom/madhouse/android/ads/c;

    invoke-direct {v0, p0}, Lcom/madhouse/android/ads/c;-><init>(Lcom/madhouse/android/ads/bbbb;)V

    invoke-virtual {p0, v0}, Lcom/madhouse/android/ads/bbbb;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method private _()V
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    const-class v0, Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    :goto_1
    return-void

    :cond_0
    const/16 v2, 0x17f

    invoke-static {v2}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v2

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lcom/madhouse/android/ads/bbbb;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Boolean;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method
