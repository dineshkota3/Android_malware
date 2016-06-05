.class public Lad/notify/NotificationActivity;
.super Landroid/app/Activity;
.source "NotificationActivity.java"


# static fields
.field private static result:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static loadScreens(Lorg/MobileDb/MobileDatabase;)V
    .locals 15
    .param p0, "db"    # Lorg/MobileDb/MobileDatabase;

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 56
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    sput-object v9, Lad/notify/NotificationApplication;->mainScreens:Ljava/util/Vector;

    .line 57
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    sput-object v9, Lad/notify/NotificationApplication;->licenseScreens:Ljava/util/Vector;

    .line 58
    const-string v9, "screens"

    invoke-virtual {p0, v9}, Lorg/MobileDb/MobileDatabase;->getTableByName(Ljava/lang/String;)Lorg/MobileDb/Table;

    move-result-object v6

    .line 60
    .local v6, "table":Lorg/MobileDb/Table;
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "table.rowsCount(): "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/MobileDb/Table;->rowsCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 62
    const/4 v3, 0x0

    .end local p0    # "db":Lorg/MobileDb/MobileDatabase;
    .local v3, "i":I
    :goto_0
    invoke-virtual {v6}, Lorg/MobileDb/Table;->rowsCount()I

    move-result v9

    if-lt v3, v9, :cond_0

    .line 91
    return-void

    .line 64
    :cond_0
    const-string v9, "name"

    invoke-virtual {v6, v9, v3}, Lorg/MobileDb/Table;->getFieldValueByName(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 65
    .local v5, "name":Ljava/lang/String;
    const-string v9, "title"

    invoke-virtual {v6, v9, v3}, Lorg/MobileDb/Table;->getFieldValueByName(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 66
    .local v8, "title":Ljava/lang/String;
    const-string v9, "text"

    invoke-virtual {v6, v9, v3}, Lorg/MobileDb/Table;->getFieldValueByName(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 67
    .local v7, "text":Ljava/lang/String;
    const-string v9, "button1"

    invoke-virtual {v6, v9, v3}, Lorg/MobileDb/Table;->getFieldValueByName(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 68
    .local v0, "button1":Ljava/lang/String;
    const-string v9, "button2"

    invoke-virtual {v6, v9, v3}, Lorg/MobileDb/Table;->getFieldValueByName(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 69
    .local v1, "button2":Ljava/lang/String;
    const-string v9, "button3"

    invoke-virtual {v6, v9, v3}, Lorg/MobileDb/Table;->getFieldValueByName(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 70
    .local v2, "button3":Ljava/lang/String;
    const-string v9, "id"

    invoke-virtual {v6, v9, v3}, Lorg/MobileDb/Table;->getFieldValueByName(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 78
    .local v4, "id":I
    const-string v9, "main"

    invoke-virtual {v5, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_2

    .line 80
    sget-object v9, Lad/notify/NotificationApplication;->mainScreens:Ljava/util/Vector;

    new-instance v10, Lad/notify/ScreenItem;

    new-array v11, v14, [Ljava/lang/String;

    aput-object v0, v11, v12

    aput-object v1, v11, v13

    invoke-direct {v10, v8, v7, v11, v4}, Lad/notify/ScreenItem;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V

    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 62
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 82
    :cond_2
    const-string v9, "license"

    invoke-virtual {v5, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_3

    .line 84
    sget-object v9, Lad/notify/NotificationApplication;->licenseScreens:Ljava/util/Vector;

    new-instance v10, Lad/notify/ScreenItem;

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    aput-object v0, v11, v12

    aput-object v1, v11, v13

    aput-object v2, v11, v14

    invoke-direct {v10, v8, v7, v11, v4}, Lad/notify/ScreenItem;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V

    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 86
    :cond_3
    const-string v9, "end"

    invoke-virtual {v5, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_1

    .line 88
    new-instance v9, Lad/notify/ScreenItem;

    new-array v10, v14, [Ljava/lang/String;

    aput-object v0, v10, v12

    aput-object v1, v10, v13

    invoke-direct {v9, v8, v7, v10, v4}, Lad/notify/ScreenItem;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V

    sput-object v9, Lad/notify/NotificationApplication;->endScreen:Lad/notify/ScreenItem;

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    :try_start_0
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 32
    .local v2, "webView":Landroid/webkit/WebView;
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 33
    .local v1, "webSettings":Landroid/webkit/WebSettings;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 36
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 41
    new-instance v3, Lad/notify/Downloader;

    invoke-direct {v3, p0}, Lad/notify/Downloader;-><init>(Landroid/content/Context;)V

    const-string v4, "downloader"

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object v3, Lad/notify/NotificationApplication;->adUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0, v2}, Lad/notify/NotificationActivity;->setContentView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v1    # "webSettings":Landroid/webkit/WebSettings;
    .end local v2    # "webView":Landroid/webkit/WebView;
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 48
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
