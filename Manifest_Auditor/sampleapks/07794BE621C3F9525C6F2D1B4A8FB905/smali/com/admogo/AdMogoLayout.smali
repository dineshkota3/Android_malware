.class public Lcom/admogo/AdMogoLayout;
.super Landroid/widget/RelativeLayout;
.source "AdMogoLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/admogo/AdMogoLayout$HandleAdRunnable;,
        Lcom/admogo/AdMogoLayout$InitRunnable;,
        Lcom/admogo/AdMogoLayout$PingUrlRunnable;,
        Lcom/admogo/AdMogoLayout$RotateAdRunnable;,
        Lcom/admogo/AdMogoLayout$ViewAdRunnable;,
        Lcom/admogo/AdMogoLayout$getAdByCountryCode;
    }
.end annotation


# static fields
.field public static final ADMOGO_ADTYPE:Ljava/lang/String; = "ADMOGO_ADTYPE"

.field public static final ADMOGO_KEY:Ljava/lang/String; = "ADMOGO_KEY"

.field private static countryCode:Ljava/lang/String;

.field static getContext:Landroid/content/Context;

.field private static isEmulator:Z

.field private static totalAdType:I

.field public static final twice_schedulera:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field public activeRation:Lcom/admogo/obj/Ration;

.field public activityReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private adMogoListener:Lcom/admogo/AdMogoListener;

.field public adMogoManager:Lcom/admogo/AdMogoManager;

.field private ad_type:I

.field public clickflag:Ljava/lang/String;

.field public clickview:Ljava/lang/String;

.field public custom:Lcom/admogo/obj/Custom;

.field public extra:Lcom/admogo/obj/Extra;

.field public final handler:Landroid/os/Handler;

.field private hasWindow:Z

.field private height:I

.field public index:I

.field private isScheduled:Z

.field private keyAdMogo:Ljava/lang/String;

.field private maxHeight:I

.field private maxWidth:I

.field public mogo:Lcom/admogo/obj/Mogo;

.field public nextRation:Lcom/admogo/obj/Ration;

.field public final scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field public superViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/RelativeLayout;",
            ">;"
        }
    .end annotation
.end field

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 72
    sput-object v0, Lcom/admogo/AdMogoLayout;->twice_schedulera:Ljava/util/concurrent/ScheduledExecutorService;

    .line 118
    const/4 v0, 0x0

    sput-boolean v0, Lcom/admogo/AdMogoLayout;->isEmulator:Z

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "keyAdMogo"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const-string v2, ""

    .line 131
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/admogo/AdMogoLayout;->handler:Landroid/os/Handler;

    .line 70
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/admogo/AdMogoLayout;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 89
    const-string v0, ""

    iput-object v2, p0, Lcom/admogo/AdMogoLayout;->clickview:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v2, p0, Lcom/admogo/AdMogoLayout;->clickflag:Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/admogo/AdMogoLayout;->index:I

    .line 110
    const/16 v0, 0x140

    iput v0, p0, Lcom/admogo/AdMogoLayout;->width:I

    .line 111
    const/16 v0, 0x32

    iput v0, p0, Lcom/admogo/AdMogoLayout;->height:I

    .line 132
    invoke-virtual {p0, p1, p2, v1}, Lcom/admogo/AdMogoLayout;->init(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "keyAdMogo"    # Ljava/lang/String;
    .param p3, "ad_type"    # I

    .prologue
    const-string v1, ""

    .line 126
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/admogo/AdMogoLayout;->handler:Landroid/os/Handler;

    .line 70
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/admogo/AdMogoLayout;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 89
    const-string v0, ""

    iput-object v1, p0, Lcom/admogo/AdMogoLayout;->clickview:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v1, p0, Lcom/admogo/AdMogoLayout;->clickflag:Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/admogo/AdMogoLayout;->index:I

    .line 110
    const/16 v0, 0x140

    iput v0, p0, Lcom/admogo/AdMogoLayout;->width:I

    .line 111
    const/16 v0, 0x32

    iput v0, p0, Lcom/admogo/AdMogoLayout;->height:I

    .line 127
    invoke-virtual {p0, p1, p2, p3}, Lcom/admogo/AdMogoLayout;->init(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-string v3, ""

    .line 136
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/admogo/AdMogoLayout;->handler:Landroid/os/Handler;

    .line 70
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/admogo/AdMogoLayout;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 89
    const-string v2, ""

    iput-object v3, p0, Lcom/admogo/AdMogoLayout;->clickview:Ljava/lang/String;

    .line 90
    const-string v2, ""

    iput-object v3, p0, Lcom/admogo/AdMogoLayout;->clickflag:Ljava/lang/String;

    .line 91
    const/4 v2, 0x0

    iput v2, p0, Lcom/admogo/AdMogoLayout;->index:I

    .line 110
    const/16 v2, 0x140

    iput v2, p0, Lcom/admogo/AdMogoLayout;->width:I

    .line 111
    const/16 v2, 0x32

    iput v2, p0, Lcom/admogo/AdMogoLayout;->height:I

    .line 138
    invoke-virtual {p0, p1}, Lcom/admogo/AdMogoLayout;->getAdMogoKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "key":Ljava/lang/String;
    const/4 v0, 0x1

    .line 140
    .local v0, "ad_type":I
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p0, p1, v1, v0}, Lcom/admogo/AdMogoLayout;->init(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 141
    return-void
.end method

.method static synthetic access$0(Lcom/admogo/AdMogoLayout;)Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/admogo/AdMogoLayout;->hasWindow:Z

    return v0
.end method

.method static synthetic access$1(Lcom/admogo/AdMogoLayout;Z)V
    .locals 0

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/admogo/AdMogoLayout;->isScheduled:Z

    return-void
.end method

.method static synthetic access$2(Z)V
    .locals 0

    .prologue
    .line 118
    sput-boolean p0, Lcom/admogo/AdMogoLayout;->isEmulator:Z

    return-void
.end method

.method static synthetic access$3()Z
    .locals 1

    .prologue
    .line 118
    sget-boolean v0, Lcom/admogo/AdMogoLayout;->isEmulator:Z

    return v0
.end method

.method static synthetic access$4(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    sput-object p0, Lcom/admogo/AdMogoLayout;->countryCode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/admogo/AdMogoLayout;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/admogo/AdMogoLayout;)V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/admogo/AdMogoLayout;->rotateAd()V

    return-void
.end method

.method static synthetic access$7(Lcom/admogo/AdMogoLayout;)V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/admogo/AdMogoLayout;->handleAd()V

    return-void
.end method

.method static synthetic access$8(I)V
    .locals 0

    .prologue
    .line 93
    sput p0, Lcom/admogo/AdMogoLayout;->totalAdType:I

    return-void
.end method

.method static synthetic access$9()I
    .locals 1

    .prologue
    .line 93
    sget v0, Lcom/admogo/AdMogoLayout;->totalAdType:I

    return v0
.end method

.method private countClick()V
    .locals 9

    .prologue
    const/4 v4, 0x6

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 421
    iget-object v2, p0, Lcom/admogo/AdMogoLayout;->adMogoListener:Lcom/admogo/AdMogoListener;

    if-eqz v2, :cond_0

    .line 422
    iget-object v2, p0, Lcom/admogo/AdMogoLayout;->adMogoListener:Lcom/admogo/AdMogoListener;

    invoke-interface {v2}, Lcom/admogo/AdMogoListener;->onClickAd()V

    .line 424
    :cond_0
    invoke-virtual {p0}, Lcom/admogo/AdMogoLayout;->getAdType()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 425
    iget-object v2, p0, Lcom/admogo/AdMogoLayout;->nextRation:Lcom/admogo/obj/Ration;

    iput-object v2, p0, Lcom/admogo/AdMogoLayout;->activeRation:Lcom/admogo/obj/Ration;

    .line 427
    :cond_1
    iget-object v2, p0, Lcom/admogo/AdMogoLayout;->activeRation:Lcom/admogo/obj/Ration;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/admogo/AdMogoLayout;->clickview:Ljava/lang/String;

    iget-object v3, p0, Lcom/admogo/AdMogoLayout;->clickflag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 428
    iget-object v2, p0, Lcom/admogo/AdMogoLayout;->clickview:Ljava/lang/String;

    iput-object v2, p0, Lcom/admogo/AdMogoLayout;->clickflag:Ljava/lang/String;

    .line 429
    iget v2, p0, Lcom/admogo/AdMogoLayout;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/admogo/AdMogoLayout;->index:I

    .line 430
    const-string v2, "http://clk.adsmogo.com/exclick.ashx?appid=%s&nid=%s&type=%d&uuid=%s&client=2&adtype=%s&country=%s"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/admogo/AdMogoLayout;->keyAdMogo:Ljava/lang/String;

    aput-object v4, v3, v6

    .line 431
    iget-object v4, p0, Lcom/admogo/AdMogoLayout;->activeRation:Lcom/admogo/obj/Ration;

    iget-object v4, v4, Lcom/admogo/obj/Ration;->nid:Ljava/lang/String;

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/admogo/AdMogoLayout;->activeRation:Lcom/admogo/obj/Ration;

    iget v4, v4, Lcom/admogo/obj/Ration;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    const/4 v4, 0x3

    .line 432
    iget-object v5, p0, Lcom/admogo/AdMogoLayout;->adMogoManager:Lcom/admogo/AdMogoManager;

    iget-object v5, v5, Lcom/admogo/AdMogoManager;->deviceIDHash:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget v5, p0, Lcom/admogo/AdMogoLayout;->ad_type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    sget-object v5, Lcom/admogo/AdMogoLayout;->countryCode:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 430
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 433
    .local v1, "url":Ljava/lang/String;
    const-string v2, "Showing Click:\n nid: %s\n Type: %s"

    new-array v3, v8, [Ljava/lang/Object;

    .line 434
    iget-object v4, p0, Lcom/admogo/AdMogoLayout;->activeRation:Lcom/admogo/obj/Ration;

    iget-object v4, v4, Lcom/admogo/obj/Ration;->nid:Ljava/lang/String;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/admogo/AdMogoLayout;->activeRation:Lcom/admogo/obj/Ration;

    iget v4, v4, Lcom/admogo/obj/Ration;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    .line 433
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, "click":Ljava/lang/String;
    const-string v2, "AdsMOGO SDK"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v2, p0, Lcom/admogo/AdMogoLayout;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/admogo/AdMogoLayout$PingUrlRunnable;

    invoke-direct {v3, v1}, Lcom/admogo/AdMogoLayout$PingUrlRunnable;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 439
    .end local v0    # "click":Ljava/lang/String;
    .end local v1    # "url":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private countFailed()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 442
    iget-object v2, p0, Lcom/admogo/AdMogoLayout;->adMogoListener:Lcom/admogo/AdMogoListener;

    if-eqz v2, :cond_0

    .line 443
    iget-object v2, p0, Lcom/admogo/AdMogoLayout;->adMogoListener:Lcom/admogo/AdMogoListener;

    invoke-interface {v2}, Lcom/admogo/AdMogoListener;->onFailedReceiveAd()V

    .line 445
    :cond_0
    const-string v2, "http://blk.adsmogo.com/blank.ashx?appid=%s&nid=%s&type=%d&uuid=%s&client=2&adtype=%s&country=%s"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/admogo/AdMogoLayout;->keyAdMogo:Ljava/lang/String;

    aput-object v4, v3, v6

    .line 446
    sget-object v4, Lcom/admogo/AdMogoManager;->lastRation:Lcom/admogo/obj/Ration;

    iget-object v4, v4, Lcom/admogo/obj/Ration;->nid:Ljava/lang/String;

    aput-object v4, v3, v7

    sget-object v4, Lcom/admogo/AdMogoManager;->lastRation:Lcom/admogo/obj/Ration;

    iget v4, v4, Lcom/admogo/obj/Ration;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    const/4 v4, 0x3

    .line 447
    iget-object v5, p0, Lcom/admogo/AdMogoLayout;->adMogoManager:Lcom/admogo/AdMogoManager;

    iget-object v5, v5, Lcom/admogo/AdMogoManager;->deviceIDHash:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget v5, p0, Lcom/admogo/AdMogoLayout;->ad_type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    sget-object v5, Lcom/admogo/AdMogoLayout;->countryCode:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 445
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 449
    .local v1, "url":Ljava/lang/String;
    const-string v2, "Showing impFailed:\n nid: %s\n Type: %s"

    new-array v3, v8, [Ljava/lang/Object;

    .line 450
    sget-object v4, Lcom/admogo/AdMogoManager;->lastRation:Lcom/admogo/obj/Ration;

    iget-object v4, v4, Lcom/admogo/obj/Ration;->nid:Ljava/lang/String;

    aput-object v4, v3, v6

    sget-object v4, Lcom/admogo/AdMogoManager;->lastRation:Lcom/admogo/obj/Ration;

    iget v4, v4, Lcom/admogo/obj/Ration;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    .line 448
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "nullList":Ljava/lang/String;
    const-string v2, "AdsMOGO SDK"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v2, p0, Lcom/admogo/AdMogoLayout;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/admogo/AdMogoLayout$PingUrlRunnable;

    invoke-direct {v3, v1}, Lcom/admogo/AdMogoLayout$PingUrlRunnable;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 455
    return-void
.end method

.method private countImpression()V
    .locals 9

    .prologue
    const/4 v3, 0x6

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 402
    iget-object v2, p0, Lcom/admogo/AdMogoLayout;->adMogoListener:Lcom/admogo/AdMogoListener;

    if-eqz v2, :cond_0

    .line 403
    iget-object v2, p0, Lcom/admogo/AdMogoLayout;->adMogoListener:Lcom/admogo/AdMogoListener;

    invoke-interface {v2}, Lcom/admogo/AdMogoListener;->onReceiveAd()V

    .line 405
    :cond_0
    invoke-virtual {p0}, Lcom/admogo/AdMogoLayout;->getAdType()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 406
    iget-object v2, p0, Lcom/admogo/AdMogoLayout;->nextRation:Lcom/admogo/obj/Ration;

    iput-object v2, p0, Lcom/admogo/AdMogoLayout;->activeRation:Lcom/admogo/obj/Ration;

    .line 408
    :cond_1
    iget-object v2, p0, Lcom/admogo/AdMogoLayout;->activeRation:Lcom/admogo/obj/Ration;

    if-eqz v2, :cond_2

    .line 409
    const-string v2, "http://imp.adsmogo.com/exmet.ashx?appid=%s&nid=%s&type=%d&uuid=%s&client=2&adtype=%s&country=%s"

    new-array v3, v3, [Ljava/lang/Object;

    .line 410
    iget-object v4, p0, Lcom/admogo/AdMogoLayout;->keyAdMogo:Ljava/lang/String;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/admogo/AdMogoLayout;->activeRation:Lcom/admogo/obj/Ration;

    iget-object v4, v4, Lcom/admogo/obj/Ration;->nid:Ljava/lang/String;

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/admogo/AdMogoLayout;->activeRation:Lcom/admogo/obj/Ration;

    iget v4, v4, Lcom/admogo/obj/Ration;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    const/4 v4, 0x3

    .line 411
    iget-object v5, p0, Lcom/admogo/AdMogoLayout;->adMogoManager:Lcom/admogo/AdMogoManager;

    iget-object v5, v5, Lcom/admogo/AdMogoManager;->deviceIDHash:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget v5, p0, Lcom/admogo/AdMogoLayout;->ad_type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    sget-object v5, Lcom/admogo/AdMogoLayout;->countryCode:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 409
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 413
    .local v1, "url":Ljava/lang/String;
    const-string v2, "Showing Impression:\n nid: %s\n Type: %s"

    new-array v3, v8, [Ljava/lang/Object;

    .line 414
    iget-object v4, p0, Lcom/admogo/AdMogoLayout;->activeRation:Lcom/admogo/obj/Ration;

    iget-object v4, v4, Lcom/admogo/obj/Ration;->nid:Ljava/lang/String;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/admogo/AdMogoLayout;->activeRation:Lcom/admogo/obj/Ration;

    iget v4, v4, Lcom/admogo/obj/Ration;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    .line 412
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, "impression":Ljava/lang/String;
    const-string v2, "AdsMOGO SDK"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v2, p0, Lcom/admogo/AdMogoLayout;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/admogo/AdMogoLayout$PingUrlRunnable;

    invoke-direct {v3, v1}, Lcom/admogo/AdMogoLayout$PingUrlRunnable;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 418
    .end local v0    # "impression":Ljava/lang/String;
    .end local v1    # "url":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private countRequest()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 389
    iget-object v2, p0, Lcom/admogo/AdMogoLayout;->nextRation:Lcom/admogo/obj/Ration;

    if-eqz v2, :cond_0

    .line 390
    const-string v2, "http://req.adsmogo.com/exrequest.ashx?appid=%s&nid=%s&type=%d&uuid=%s&client=2&adtype=%s&country=%s"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/admogo/AdMogoLayout;->keyAdMogo:Ljava/lang/String;

    aput-object v4, v3, v6

    .line 391
    iget-object v4, p0, Lcom/admogo/AdMogoLayout;->nextRation:Lcom/admogo/obj/Ration;

    iget-object v4, v4, Lcom/admogo/obj/Ration;->nid:Ljava/lang/String;

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/admogo/AdMogoLayout;->nextRation:Lcom/admogo/obj/Ration;

    iget v4, v4, Lcom/admogo/obj/Ration;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    const/4 v4, 0x3

    .line 392
    iget-object v5, p0, Lcom/admogo/AdMogoLayout;->adMogoManager:Lcom/admogo/AdMogoManager;

    iget-object v5, v5, Lcom/admogo/AdMogoManager;->deviceIDHash:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget v5, p0, Lcom/admogo/AdMogoLayout;->ad_type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    sget-object v5, Lcom/admogo/AdMogoLayout;->countryCode:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 390
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, "url":Ljava/lang/String;
    const-string v2, "Showing Request:\n nid: %s\n Type: %s"

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/admogo/AdMogoLayout;->nextRation:Lcom/admogo/obj/Ration;

    iget-object v4, v4, Lcom/admogo/obj/Ration;->nid:Ljava/lang/String;

    aput-object v4, v3, v6

    .line 395
    iget-object v4, p0, Lcom/admogo/AdMogoLayout;->nextRation:Lcom/admogo/obj/Ration;

    iget v4, v4, Lcom/admogo/obj/Ration;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    .line 393
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, "request":Ljava/lang/String;
    const-string v2, "AdsMOGO SDK"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v2, p0, Lcom/admogo/AdMogoLayout;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/admogo/AdMogoLayout$PingUrlRunnable;

    invoke-direct {v3, v1}, Lcom/admogo/AdMogoLayout$PingUrlRunnable;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 399
    .end local v0    # "request":Ljava/lang/String;
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private handleAd()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const-string v6, "AdsMOGO SDK"

    .line 251
    iget-object v2, p0, Lcom/admogo/AdMogoLayout;->nextRation:Lcom/admogo/obj/Ration;

    if-nez v2, :cond_1

    .line 252
    const-string v2, "AdsMOGO SDK"

    const-string v2, "nextRation is null!"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-direct {p0}, Lcom/admogo/AdMogoLayout;->countFailed()V

    .line 254
    iget-object v2, p0, Lcom/admogo/AdMogoLayout;->adMogoManager:Lcom/admogo/AdMogoManager;

    invoke-virtual {v2}, Lcom/admogo/AdMogoManager;->resetRollover()V

    .line 255
    iget v2, p0, Lcom/admogo/AdMogoLayout;->ad_type:I

    if-ne v2, v7, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/admogo/AdMogoLayout;->rotateThreadedDelayed()V

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    const-string v2, "Showing ad:\n\tnid: %s\n\tname: %s\n\ttype: %d\n\tkey: %s\n\tkey2: %s"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 263
    iget-object v5, p0, Lcom/admogo/AdMogoLayout;->nextRation:Lcom/admogo/obj/Ration;

    iget-object v5, v5, Lcom/admogo/obj/Ration;->nid:Ljava/lang/String;

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/admogo/AdMogoLayout;->nextRation:Lcom/admogo/obj/Ration;

    iget-object v4, v4, Lcom/admogo/obj/Ration;->name:Ljava/lang/String;

    aput-object v4, v3, v7

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/admogo/AdMogoLayout;->nextRation:Lcom/admogo/obj/Ration;

    iget v5, v5, Lcom/admogo/obj/Ration;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 264
    iget-object v5, p0, Lcom/admogo/AdMogoLayout;->nextRation:Lcom/admogo/obj/Ration;

    iget-object v5, v5, Lcom/admogo/obj/Ration;->key:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/admogo/AdMogoLayout;->nextRation:Lcom/admogo/obj/Ration;

    iget-object v5, v5, Lcom/admogo/obj/Ration;->key2:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 262
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "rationInfo":Ljava/lang/String;
    const-string v2, "AdsMOGO SDK"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/admogo/AdMogoLayout;->nextRation:Lcom/admogo/obj/Ration;

    iget v3, v3, Lcom/admogo/obj/Ration;->type:I

    if-eq v2, v3, :cond_2

    .line 268
    const/16 v2, 0x1b

    iget-object v3, p0, Lcom/admogo/AdMogoLayout;->nextRation:Lcom/admogo/obj/Ration;

    iget v3, v3, Lcom/admogo/obj/Ration;->type:I

    if-ne v2, v3, :cond_3

    .line 269
    :cond_2
    const-string v2, "AdsMOGO SDK"

    const-string v2, "HTTP/1.1 200 OK"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/admogo/AdMogoLayout;->nextRation:Lcom/admogo/obj/Ration;

    invoke-static {p0, v2}, Lcom/admogo/adapters/AdMogoAdapter;->handle(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 275
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 276
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "AdsMOGO SDK"

    const-string v2, "Caught an exception in adapter:"

    invoke-static {v6, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    invoke-virtual {p0}, Lcom/admogo/AdMogoLayout;->rollover()V

    goto :goto_0

    .line 271
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_3
    invoke-direct {p0}, Lcom/admogo/AdMogoLayout;->countRequest()V

    goto :goto_1
.end method

.method private rotateAd()V
    .locals 2

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/admogo/AdMogoLayout;->hasWindow:Z

    if-nez v0, :cond_0

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/admogo/AdMogoLayout;->isScheduled:Z

    .line 245
    :goto_0
    return-void

    .line 241
    :cond_0
    const-string v0, "AdsMOGO SDK"

    const-string v1, "Rotating Ad"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/admogo/AdMogoLayout;->adMogoManager:Lcom/admogo/AdMogoManager;

    invoke-virtual {v0}, Lcom/admogo/AdMogoManager;->getRation()Lcom/admogo/obj/Ration;

    move-result-object v0

    iput-object v0, p0, Lcom/admogo/AdMogoLayout;->nextRation:Lcom/admogo/obj/Ration;

    .line 244
    iget-object v0, p0, Lcom/admogo/AdMogoLayout;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/admogo/AdMogoLayout$HandleAdRunnable;

    invoke-direct {v1, p0}, Lcom/admogo/AdMogoLayout$HandleAdRunnable;-><init>(Lcom/admogo/AdMogoLayout;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public CountImpAd()V
    .locals 0

    .prologue
    .line 709
    invoke-direct {p0}, Lcom/admogo/AdMogoLayout;->countImpression()V

    .line 710
    return-void
.end method

.method protected getAdMogoKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    const-string v7, "ADMOGO_KEY"

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 145
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "activityName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 147
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 151
    .local v3, "bundle":Landroid/os/Bundle;
    :try_start_0
    new-instance v7, Landroid/content/ComponentName;

    .line 152
    invoke-direct {v7, v5, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x80

    .line 151
    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 153
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 154
    if-eqz v3, :cond_0

    .line 155
    const-string v7, "ADMOGO_KEY"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 173
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :goto_0
    return-object v7

    .line 157
    :catch_0
    move-exception v7

    move-object v4, v7

    .local v4, "exception":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v7, v9

    .line 159
    goto :goto_0

    .line 164
    .end local v4    # "exception":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_0
    const/16 v7, 0x80

    .line 163
    :try_start_1
    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 165
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 166
    if-eqz v3, :cond_1

    .line 167
    const-string v7, "ADMOGO_KEY"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    goto :goto_0

    .line 169
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v7

    move-object v4, v7

    .restart local v4    # "exception":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v7, v9

    .line 171
    goto :goto_0

    .end local v4    # "exception":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    move-object v7, v9

    .line 173
    goto :goto_0
.end method

.method public getAdType()I
    .locals 1

    .prologue
    .line 759
    iget v0, p0, Lcom/admogo/AdMogoLayout;->ad_type:I

    return v0
.end method

.method protected init(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 8
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "keyAdMogo"    # Ljava/lang/String;
    .param p3, "ad_type"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 178
    invoke-virtual {p0}, Lcom/admogo/AdMogoLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 179
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 180
    .local v0, "density":F
    iget v2, p0, Lcom/admogo/AdMogoLayout;->width:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/admogo/AdMogoLayout;->width:I

    .line 181
    iget v2, p0, Lcom/admogo/AdMogoLayout;->height:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/admogo/AdMogoLayout;->height:I

    .line 182
    sput-object p1, Lcom/admogo/AdMogoLayout;->getContext:Landroid/content/Context;

    .line 183
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/admogo/AdMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    .line 184
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/admogo/AdMogoLayout;->superViewReference:Ljava/lang/ref/WeakReference;

    .line 185
    iput-object p2, p0, Lcom/admogo/AdMogoLayout;->keyAdMogo:Ljava/lang/String;

    .line 186
    iput-boolean v3, p0, Lcom/admogo/AdMogoLayout;->hasWindow:Z

    .line 187
    iput-boolean v3, p0, Lcom/admogo/AdMogoLayout;->isScheduled:Z

    .line 188
    iput p3, p0, Lcom/admogo/AdMogoLayout;->ad_type:I

    .line 189
    iget-object v2, p0, Lcom/admogo/AdMogoLayout;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/admogo/AdMogoLayout$InitRunnable;

    invoke-direct {v3, p0, p2, p3}, Lcom/admogo/AdMogoLayout$InitRunnable;-><init>(Lcom/admogo/AdMogoLayout;Ljava/lang/String;I)V

    const-wide/16 v4, 0x0

    .line 190
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 189
    invoke-interface {v2, v3, v4, v5, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 191
    invoke-virtual {p0, v7}, Lcom/admogo/AdMogoLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 192
    invoke-virtual {p0, v7}, Lcom/admogo/AdMogoLayout;->setVerticalScrollBarEnabled(Z)V

    .line 193
    iput v7, p0, Lcom/admogo/AdMogoLayout;->maxWidth:I

    .line 194
    iput v7, p0, Lcom/admogo/AdMogoLayout;->maxHeight:I

    .line 196
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v7, 0x10000000

    const/4 v5, 0x0

    const-string v9, "android.intent.action.VIEW"

    const-string v8, "Could not handle click to "

    const-string v6, "AdsMOGO SDK"

    .line 460
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    move v3, v5

    .line 526
    :goto_1
    return v3

    .line 466
    :pswitch_0
    iget v3, p0, Lcom/admogo/AdMogoLayout;->ad_type:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    .line 467
    iget-object v3, p0, Lcom/admogo/AdMogoLayout;->activeRation:Lcom/admogo/obj/Ration;

    if-nez v3, :cond_1

    .line 468
    invoke-direct {p0}, Lcom/admogo/AdMogoLayout;->countClick()V

    move v3, v5

    .line 469
    goto :goto_1

    .line 471
    :cond_1
    const-string v3, "AdsMOGO SDK"

    const-string v3, "Intercepted ACTION_DOWN event"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v3, p0, Lcom/admogo/AdMogoLayout;->activeRation:Lcom/admogo/obj/Ration;

    if-eqz v3, :cond_0

    .line 473
    invoke-direct {p0}, Lcom/admogo/AdMogoLayout;->countClick()V

    .line 475
    iget-object v3, p0, Lcom/admogo/AdMogoLayout;->activeRation:Lcom/admogo/obj/Ration;

    iget v3, v3, Lcom/admogo/obj/Ration;->type:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_5

    .line 476
    iget-object v3, p0, Lcom/admogo/AdMogoLayout;->custom:Lcom/admogo/obj/Custom;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/admogo/AdMogoLayout;->custom:Lcom/admogo/obj/Custom;

    iget-object v3, v3, Lcom/admogo/obj/Custom;->link:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 477
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    .line 478
    iget-object v3, p0, Lcom/admogo/AdMogoLayout;->custom:Lcom/admogo/obj/Custom;

    iget-object v3, v3, Lcom/admogo/obj/Custom;->link:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 477
    invoke-direct {v2, v9, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 479
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 481
    :try_start_0
    iget-object v3, p0, Lcom/admogo/AdMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_2

    move v3, v5

    .line 482
    goto :goto_1

    .line 484
    :cond_2
    iget-object v3, p0, Lcom/admogo/AdMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 485
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_3

    move v3, v5

    .line 486
    goto :goto_1

    .line 488
    :cond_3
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 489
    .end local v0    # "activity":Landroid/app/Activity;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 490
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "AdsMOGO SDK"

    .line 491
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not handle click to "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/admogo/AdMogoLayout;->custom:Lcom/admogo/obj/Custom;

    iget-object v4, v4, Lcom/admogo/obj/Custom;->link:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 490
    invoke-static {v6, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 495
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    const-string v3, "AdsMOGO SDK"

    .line 496
    const-string v3, "In onInterceptTouchEvent(), but custom or custom.link is null"

    .line 495
    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 498
    :cond_5
    iget-object v3, p0, Lcom/admogo/AdMogoLayout;->activeRation:Lcom/admogo/obj/Ration;

    iget v3, v3, Lcom/admogo/obj/Ration;->type:I

    const/16 v4, 0x1b

    if-ne v3, v4, :cond_0

    .line 499
    iget-object v3, p0, Lcom/admogo/AdMogoLayout;->mogo:Lcom/admogo/obj/Mogo;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/admogo/AdMogoLayout;->mogo:Lcom/admogo/obj/Mogo;

    iget-object v3, v3, Lcom/admogo/obj/Mogo;->link:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 500
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    .line 501
    iget-object v3, p0, Lcom/admogo/AdMogoLayout;->mogo:Lcom/admogo/obj/Mogo;

    iget-object v3, v3, Lcom/admogo/obj/Mogo;->link:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 500
    invoke-direct {v2, v9, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 502
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 504
    :try_start_1
    iget-object v3, p0, Lcom/admogo/AdMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_6

    move v3, v5

    .line 505
    goto/16 :goto_1

    .line 507
    :cond_6
    iget-object v3, p0, Lcom/admogo/AdMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 508
    .restart local v0    # "activity":Landroid/app/Activity;
    if-nez v0, :cond_7

    move v3, v5

    .line 509
    goto/16 :goto_1

    .line 511
    :cond_7
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 512
    .end local v0    # "activity":Landroid/app/Activity;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 513
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v3, "AdsMOGO SDK"

    .line 514
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not handle click to "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/admogo/AdMogoLayout;->mogo:Lcom/admogo/obj/Mogo;

    iget-object v4, v4, Lcom/admogo/obj/Mogo;->link:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 513
    invoke-static {v6, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 517
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_8
    const-string v3, "AdsMOGO SDK"

    .line 518
    const-string v3, "In onInterceptTouchEvent(), but mogo or mogo.link is null"

    .line 517
    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 460
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v3, -0x80000000

    .line 200
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 201
    .local v1, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 203
    .local v0, "heightSize":I
    iget v2, p0, Lcom/admogo/AdMogoLayout;->maxWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/admogo/AdMogoLayout;->maxWidth:I

    if-le v1, v2, :cond_0

    .line 204
    iget v2, p0, Lcom/admogo/AdMogoLayout;->maxWidth:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 208
    :cond_0
    iget v2, p0, Lcom/admogo/AdMogoLayout;->maxHeight:I

    if-lez v2, :cond_1

    iget v2, p0, Lcom/admogo/AdMogoLayout;->maxHeight:I

    if-le v0, v2, :cond_1

    .line 209
    iget v2, p0, Lcom/admogo/AdMogoLayout;->maxHeight:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 213
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 214
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 5
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x1

    .line 218
    if-nez p1, :cond_2

    .line 219
    iput-boolean v1, p0, Lcom/admogo/AdMogoLayout;->hasWindow:Z

    .line 220
    iget-boolean v0, p0, Lcom/admogo/AdMogoLayout;->isScheduled:Z

    if-nez v0, :cond_0

    .line 221
    iput-boolean v1, p0, Lcom/admogo/AdMogoLayout;->isScheduled:Z

    .line 223
    iget-object v0, p0, Lcom/admogo/AdMogoLayout;->extra:Lcom/admogo/obj/Extra;

    if-eqz v0, :cond_1

    .line 224
    invoke-virtual {p0}, Lcom/admogo/AdMogoLayout;->rotateThreadedNow()V

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/admogo/AdMogoLayout;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/admogo/AdMogoLayout$InitRunnable;

    iget-object v2, p0, Lcom/admogo/AdMogoLayout;->keyAdMogo:Ljava/lang/String;

    .line 227
    iget v3, p0, Lcom/admogo/AdMogoLayout;->ad_type:I

    invoke-direct {v1, p0, v2, v3}, Lcom/admogo/AdMogoLayout$InitRunnable;-><init>(Lcom/admogo/AdMogoLayout;Ljava/lang/String;I)V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 226
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 231
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/admogo/AdMogoLayout;->hasWindow:Z

    goto :goto_0
.end method

.method public pushSubView(Landroid/view/ViewGroup;I)V
    .locals 10
    .param p1, "subView"    # Landroid/view/ViewGroup;
    .param p2, "adType"    # I

    .prologue
    const/16 v9, 0x9

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v7, -0x1

    const/16 v6, 0xd

    .line 312
    iget-object v4, p0, Lcom/admogo/AdMogoLayout;->superViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 313
    .local v3, "superView":Landroid/widget/RelativeLayout;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/admogo/AdMogoLayout;->clickview:Ljava/lang/String;

    .line 314
    if-nez v3, :cond_1

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    const/16 v4, 0x18

    if-ne v4, p2, :cond_3

    .line 318
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    .line 319
    .local v0, "count":I
    const/4 v4, 0x2

    if-le v0, v4, :cond_2

    .line 320
    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->removeViewAt(I)V

    .line 374
    .end local v0    # "count":I
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/admogo/AdMogoLayout;->nextRation:Lcom/admogo/obj/Ration;

    iput-object v4, p0, Lcom/admogo/AdMogoLayout;->activeRation:Lcom/admogo/obj/Ration;

    .line 375
    if-eq v9, p2, :cond_0

    .line 376
    const/16 v4, 0x1b

    if-eq v4, p2, :cond_0

    .line 378
    const-string v4, "AdsMOGO SDK"

    const-string v5, "Added subview"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-direct {p0}, Lcom/admogo/AdMogoLayout;->countImpression()V

    goto :goto_0

    .line 322
    :cond_3
    const/16 v4, 0x1d

    if-eq v4, p2, :cond_4

    .line 323
    const/16 v4, 0x21

    if-eq v4, p2, :cond_4

    .line 324
    const/16 v4, 0x1a

    if-eq v4, p2, :cond_4

    .line 325
    const/16 v4, 0x1c

    if-ne v4, p2, :cond_5

    .line 326
    :cond_4
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    .line 327
    .restart local v0    # "count":I
    if-le v0, v5, :cond_2

    .line 328
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    sub-int v4, v0, v5

    if-ge v1, v4, :cond_2

    .line 329
    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->removeViewAt(I)V

    .line 328
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 332
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_5
    if-eq v9, p2, :cond_6

    .line 333
    const/16 v4, 0x1b

    if-ne v4, p2, :cond_7

    .line 334
    :cond_6
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 335
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 336
    iget v4, p0, Lcom/admogo/AdMogoLayout;->width:I

    iget v5, p0, Lcom/admogo/AdMogoLayout;->height:I

    .line 335
    invoke-direct {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 337
    .local v2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 338
    invoke-virtual {v3, p1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 339
    .end local v2    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_7
    const/16 v4, 0x15

    if-ne v4, p2, :cond_8

    .line 340
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 341
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 342
    iget v4, p0, Lcom/admogo/AdMogoLayout;->width:I

    iget v5, p0, Lcom/admogo/AdMogoLayout;->height:I

    .line 341
    invoke-direct {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 343
    .restart local v2    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 344
    invoke-virtual {v3, p1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 345
    .end local v2    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_8
    const/16 v4, 0x23

    if-ne v4, p2, :cond_9

    .line 346
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 347
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 348
    iget v4, p0, Lcom/admogo/AdMogoLayout;->width:I

    iget v5, p0, Lcom/admogo/AdMogoLayout;->height:I

    .line 347
    invoke-direct {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 349
    .restart local v2    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 350
    invoke-virtual {v3, p1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 351
    .end local v2    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_9
    const/16 v4, 0x1e

    if-ne v4, p2, :cond_a

    .line 352
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 353
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 354
    iget v4, p0, Lcom/admogo/AdMogoLayout;->width:I

    iget v5, p0, Lcom/admogo/AdMogoLayout;->height:I

    .line 353
    invoke-direct {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 355
    .restart local v2    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 356
    invoke-virtual {v3, p1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 358
    .end local v2    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_a
    iget v4, p0, Lcom/admogo/AdMogoLayout;->ad_type:I

    if-ne v4, v5, :cond_b

    .line 359
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 360
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 362
    const/4 v4, -0x2

    .line 360
    invoke-direct {v2, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 363
    .restart local v2    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 364
    invoke-virtual {v3, p1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 365
    .end local v2    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_b
    iget v4, p0, Lcom/admogo/AdMogoLayout;->ad_type:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_2

    .line 367
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 370
    .restart local v2    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 371
    invoke-virtual {v3, p1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1
.end method

.method public rollover()V
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/admogo/AdMogoLayout;->adMogoManager:Lcom/admogo/AdMogoManager;

    invoke-virtual {v0}, Lcom/admogo/AdMogoManager;->getRollover()Lcom/admogo/obj/Ration;

    move-result-object v0

    iput-object v0, p0, Lcom/admogo/AdMogoLayout;->nextRation:Lcom/admogo/obj/Ration;

    .line 385
    iget-object v0, p0, Lcom/admogo/AdMogoLayout;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/admogo/AdMogoLayout$HandleAdRunnable;

    invoke-direct {v1, p0}, Lcom/admogo/AdMogoLayout$HandleAdRunnable;-><init>(Lcom/admogo/AdMogoLayout;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 386
    return-void
.end method

.method public rotateThreadedDelayed()V
    .locals 5

    .prologue
    const-string v4, "Will call rotateAd() in "

    const-string v3, " seconds"

    const-string v2, "AdsMOGO SDK"

    .line 289
    sget v0, Lcom/admogo/AdMogoLayout;->totalAdType:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_1

    .line 290
    iget-object v0, p0, Lcom/admogo/AdMogoLayout;->extra:Lcom/admogo/obj/Extra;

    iget v0, v0, Lcom/admogo/obj/Extra;->cycleTime:I

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_0

    .line 291
    const-string v0, "AdsMOGO SDK"

    .line 292
    const-string v0, "YouMiAd need call rotateAd() in 30 seconds"

    .line 291
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/admogo/AdMogoLayout;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/admogo/AdMogoLayout$RotateAdRunnable;

    invoke-direct {v1, p0}, Lcom/admogo/AdMogoLayout$RotateAdRunnable;-><init>(Lcom/admogo/AdMogoLayout;)V

    const-wide/16 v2, 0x1c

    .line 294
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 293
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 307
    :goto_0
    return-void

    .line 296
    :cond_0
    const-string v0, "AdsMOGO SDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Will call rotateAd() in "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    iget-object v1, p0, Lcom/admogo/AdMogoLayout;->extra:Lcom/admogo/obj/Extra;

    iget v1, v1, Lcom/admogo/obj/Extra;->cycleTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/admogo/AdMogoLayout;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/admogo/AdMogoLayout$RotateAdRunnable;

    invoke-direct {v1, p0}, Lcom/admogo/AdMogoLayout$RotateAdRunnable;-><init>(Lcom/admogo/AdMogoLayout;)V

    .line 299
    iget-object v2, p0, Lcom/admogo/AdMogoLayout;->extra:Lcom/admogo/obj/Extra;

    iget v2, v2, Lcom/admogo/obj/Extra;->cycleTime:I

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 298
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 302
    :cond_1
    const-string v0, "AdsMOGO SDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Will call rotateAd() in "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 303
    iget-object v1, p0, Lcom/admogo/AdMogoLayout;->extra:Lcom/admogo/obj/Extra;

    iget v1, v1, Lcom/admogo/obj/Extra;->cycleTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lcom/admogo/AdMogoLayout;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/admogo/AdMogoLayout$RotateAdRunnable;

    invoke-direct {v1, p0}, Lcom/admogo/AdMogoLayout$RotateAdRunnable;-><init>(Lcom/admogo/AdMogoLayout;)V

    iget-object v2, p0, Lcom/admogo/AdMogoLayout;->extra:Lcom/admogo/obj/Extra;

    iget v2, v2, Lcom/admogo/obj/Extra;->cycleTime:I

    int-to-long v2, v2

    .line 305
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 304
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method

.method public rotateThreadedNow()V
    .locals 5

    .prologue
    .line 284
    iget-object v0, p0, Lcom/admogo/AdMogoLayout;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/admogo/AdMogoLayout$RotateAdRunnable;

    invoke-direct {v1, p0}, Lcom/admogo/AdMogoLayout$RotateAdRunnable;-><init>(Lcom/admogo/AdMogoLayout;)V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 285
    return-void
.end method

.method public setAdMogoListener(Lcom/admogo/AdMogoListener;)V
    .locals 0
    .param p1, "adListener"    # Lcom/admogo/AdMogoListener;

    .prologue
    .line 538
    iput-object p1, p0, Lcom/admogo/AdMogoLayout;->adMogoListener:Lcom/admogo/AdMogoListener;

    .line 539
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 121
    iput p1, p0, Lcom/admogo/AdMogoLayout;->maxHeight:I

    .line 122
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/admogo/AdMogoLayout;->maxWidth:I

    .line 115
    return-void
.end method
