.class Lcom/energysource/szj/embeded/AdvWebView$MyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "AdvWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/energysource/szj/embeded/AdvWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyWebViewClient"
.end annotation


# instance fields
.field resContent:Ljava/lang/String;

.field resTitle:Ljava/lang/String;

.field showtype:I

.field tid:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public getResContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/energysource/szj/embeded/AdvWebView$MyWebViewClient;->resContent:Ljava/lang/String;

    return-object v0
.end method

.method public getResTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/energysource/szj/embeded/AdvWebView$MyWebViewClient;->resTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getShowtype()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/energysource/szj/embeded/AdvWebView$MyWebViewClient;->showtype:I

    return v0
.end method

.method public getTid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/energysource/szj/embeded/AdvWebView$MyWebViewClient;->tid:Ljava/lang/String;

    return-object v0
.end method

.method public setResContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "resContent"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/energysource/szj/embeded/AdvWebView$MyWebViewClient;->resContent:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setResTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "resTitle"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/energysource/szj/embeded/AdvWebView$MyWebViewClient;->resTitle:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setShowtype(I)V
    .locals 0
    .param p1, "showtype"    # I

    .prologue
    .line 169
    iput p1, p0, Lcom/energysource/szj/embeded/AdvWebView$MyWebViewClient;->showtype:I

    .line 170
    return-void
.end method

.method public setTid(Ljava/lang/String;)V
    .locals 0
    .param p1, "tid"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/energysource/szj/embeded/AdvWebView$MyWebViewClient;->tid:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 13
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 175
    :try_start_0
    const-string v9, "AdvWebView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "shouldOverrideUrlLoading========url:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 177
    .local v8, "urls":[Ljava/lang/String;
    array-length v9, v8

    const/4 v10, 0x2

    if-lt v9, v10, :cond_9

    .line 178
    invoke-static {}, Lcom/energysource/szj/embeded/SZJServiceInstance;->getInstance()Lcom/energysource/szj/embeded/SZJServiceInstance;

    move-result-object v4

    .line 179
    .local v4, "instance":Lcom/energysource/szj/embeded/SZJServiceInstance;
    invoke-virtual {v4}, Lcom/energysource/szj/embeded/SZJServiceInstance;->getModulesMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 180
    .local v0, "chm":Ljava/util/concurrent/ConcurrentHashMap;
    if-eqz v0, :cond_0

    .line 181
    const-string v9, "bootableModule"

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/energysource/szj/android/SZJModule;

    .line 182
    .local v2, "framework":Lcom/energysource/szj/android/SZJModule;
    iget-object v9, p0, Lcom/energysource/szj/embeded/AdvWebView$MyWebViewClient;->tid:Ljava/lang/String;

    iget v10, p0, Lcom/energysource/szj/embeded/AdvWebView$MyWebViewClient;->showtype:I

    invoke-interface {v2, v9, v10}, Lcom/energysource/szj/android/SZJModule;->saveClickOP(Ljava/lang/String;I)V

    .line 184
    .end local v2    # "framework":Lcom/energysource/szj/android/SZJModule;
    :cond_0
    const-string v9, "cmd"

    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 185
    const-string v9, "AdvWebView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "shouldOverrideUrlLoading======cmd:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .end local v0    # "chm":Ljava/util/concurrent/ConcurrentHashMap;
    .end local v4    # "instance":Lcom/energysource/szj/embeded/SZJServiceInstance;
    .end local v8    # "urls":[Ljava/lang/String;
    :goto_0
    const/4 v9, 0x1

    return v9

    .line 186
    .restart local v0    # "chm":Ljava/util/concurrent/ConcurrentHashMap;
    .restart local v4    # "instance":Lcom/energysource/szj/embeded/SZJServiceInstance;
    .restart local v8    # "urls":[Ljava/lang/String;
    :cond_1
    const-string v9, "tel"

    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 187
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "tel:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 188
    .local v7, "uri":Landroid/net/Uri;
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.DIAL"

    invoke-direct {v5, v9, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 189
    .local v5, "intent":Landroid/content/Intent;
    const/high16 v9, 0x10000000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 190
    sget-object v9, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    invoke-virtual {v9}, Lcom/energysource/szj/embeded/AdManager;->getContextFromActivity()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 243
    .end local v0    # "chm":Ljava/util/concurrent/ConcurrentHashMap;
    .end local v4    # "instance":Lcom/energysource/szj/embeded/SZJServiceInstance;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v7    # "uri":Landroid/net/Uri;
    .end local v8    # "urls":[Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 244
    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "AdvWebView"

    const-string v10, "shouldOverrideUrlLoading Exception:"

    invoke-static {v9, v10, v1}, Lcom/energysource/szj/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 191
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "chm":Ljava/util/concurrent/ConcurrentHashMap;
    .restart local v4    # "instance":Lcom/energysource/szj/embeded/SZJServiceInstance;
    .restart local v8    # "urls":[Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v9, "smsto"

    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 192
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 193
    .restart local v7    # "uri":Landroid/net/Uri;
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.SENDTO"

    invoke-direct {v5, v9, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 194
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v9, "sms_body"

    invoke-virtual {p0}, Lcom/energysource/szj/embeded/AdvWebView$MyWebViewClient;->getResContent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const/high16 v9, 0x10000000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 196
    sget-object v9, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    invoke-virtual {v9}, Lcom/energysource/szj/embeded/AdManager;->getContextFromActivity()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 197
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_3
    const-string v9, "mailto"

    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 198
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.SEND"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v9, "text/plain"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const-string v9, "android.intent.extra.EMAIL"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x1

    aget-object v12, v8, v12

    aput-object v12, v10, v11

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    const-string v9, "android.intent.extra.SUBJECT"

    invoke-virtual {p0}, Lcom/energysource/szj/embeded/AdvWebView$MyWebViewClient;->getResTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const-string v9, "android.intent.extra.TEXT"

    invoke-virtual {p0}, Lcom/energysource/szj/embeded/AdvWebView$MyWebViewClient;->getResContent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const/high16 v9, 0x10000000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 204
    sget-object v9, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    invoke-virtual {v9}, Lcom/energysource/szj/embeded/AdManager;->getContextFromActivity()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 205
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_4
    const-string v9, "geo"

    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 206
    const/4 v9, 0x1

    aget-object v9, v8, v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 207
    .local v6, "t":[Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "http://maps.google.com/maps?q="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 208
    .local v3, "geo":Ljava/lang/String;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 209
    .restart local v7    # "uri":Landroid/net/Uri;
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v5, v9, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 210
    .restart local v5    # "intent":Landroid/content/Intent;
    const/high16 v9, 0x10000000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 211
    sget-object v9, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    invoke-virtual {v9}, Lcom/energysource/szj/embeded/AdManager;->getContextFromActivity()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 212
    .end local v3    # "geo":Ljava/lang/String;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "t":[Ljava/lang/String;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_5
    const-string v9, "pkg"

    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 213
    const-string v9, "mp4"

    invoke-virtual {p2, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 214
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x1

    aget-object v11, v8, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x2

    aget-object v11, v8, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x3

    aget-object v11, v8, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v5, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 215
    .restart local v5    # "intent":Landroid/content/Intent;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x3

    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const-string v10, "video/*"

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const/high16 v9, 0x10000000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 217
    sget-object v9, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    invoke-virtual {v9}, Lcom/energysource/szj/embeded/AdManager;->getContextFromActivity()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 218
    const-string v9, "AdvWebView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "====shouldOverrideUrlLoading==pkg==\u4e0b\u8f7d\u7684mp4:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 220
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_6
    const-string v9, "pkg:"

    const-string v10, ""

    invoke-virtual {p2, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 221
    .restart local v7    # "uri":Landroid/net/Uri;
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v5, v9, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 222
    .restart local v5    # "intent":Landroid/content/Intent;
    const/high16 v9, 0x10000000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 223
    sget-object v9, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    invoke-virtual {v9}, Lcom/energysource/szj/embeded/AdManager;->getContextFromActivity()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 224
    const-string v9, "AdvWebView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "====shouldOverrideUrlLoading==pkg==\u4e0b\u8f7d\u975emp4\u6587\u4ef6:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 226
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_7
    const-string v9, "video"

    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    array-length v9, v8

    const/4 v10, 0x4

    if-ne v9, v10, :cond_8

    .line 227
    const-string v9, "AdvWebView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "====shouldOverrideUrlLoading==video==\u5728\u7ebf\u64ad\u653e\u7684mp4:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x1

    aget-object v11, v8, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x2

    aget-object v11, v8, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x3

    aget-object v11, v8, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v5, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 229
    .restart local v5    # "intent":Landroid/content/Intent;
    const/high16 v9, 0x10000000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 230
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x3

    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const-string v10, "video/*"

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    sget-object v9, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    invoke-virtual {v9}, Lcom/energysource/szj/embeded/AdManager;->getContextFromActivity()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 234
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_8
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 235
    .restart local v7    # "uri":Landroid/net/Uri;
    const-string v9, "AdvWebView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "====shouldOverrideUrlLoading==else:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v5, v9, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 237
    .restart local v5    # "intent":Landroid/content/Intent;
    const/high16 v9, 0x10000000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 238
    sget-object v9, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    invoke-virtual {v9}, Lcom/energysource/szj/embeded/AdManager;->getContextFromActivity()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 241
    .end local v0    # "chm":Ljava/util/concurrent/ConcurrentHashMap;
    .end local v4    # "instance":Lcom/energysource/szj/embeded/SZJServiceInstance;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_9
    const-string v9, "AdvWebView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "===shouldOverrideUrlLoading==urls.length>=2==="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
