.class public Lcom/energysource/szj/embeded/AdManager;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final AD_EXIT_FULL_SCREEN:I = 0x6

.field public static final AD_FILL_PARENT:I = 0x3e8

.field private static final AD_INTO_FULL_SCREEN:I = 0x5

.field static final AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

.field public static final AD_SIZE_1024_768:I = 0x8fe

.field public static final AD_SIZE_240_320:I = 0x4b1

.field public static final AD_SIZE_240_38:I = 0x44d

.field public static final AD_SIZE_320_240:I = 0x4b2

.field public static final AD_SIZE_320_480:I = 0x837

.field public static final AD_SIZE_320_50:I = 0x835

.field public static final AD_SIZE_468_60:I = 0x1fa6

.field public static final AD_SIZE_480_320:I = 0x836

.field public static final AD_SIZE_480_800:I = 0x515

.field public static final AD_SIZE_768_1024:I = 0x8ff

.field public static final AD_SIZE_800_480:I = 0x516

.field public static final Bottom_Banner:I = 0x51

.field public static final Bottom_Left:I = 0x53

.field public static final Bottom_Right:I = 0x55

.field private static final CLOSE_FULL_AD:I = 0x64

.field private static final DESTORY_ATONCE:I = 0xc9

.field private static final DESTORY_DELAY:I = 0xc8

.field public static final Middle_Banner:I = 0x11

.field private static final SHOWTYPELOADING:I = 0x4

.field private static final SHOWTYPEQR:I = 0x8

.field private static final TAG:Ljava/lang/String; = "ADMANAGER"

.field private static final TRYREQUEST:I = 0x1

.field public static final Top_Banner:I = 0x31

.field public static final Top_Left:I = 0x33

.field public static final Top_Right:I = 0x35

.field private static final intArray:[Ljava/lang/Integer;

.field private static permisJudge:Lcom/energysource/szj/embeded/PermissionJudge;

.field private static sdkConfigMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activityMap:Ljava/util/HashMap;

.field private adListener:Lcom/energysource/szj/embeded/AdListener;

.field private advIntoFlag:Z

.field private adviewMap:Ljava/util/HashMap;

.field private echoLoadingFlag:Z

.field private isDebug:Z

.field private layoutMap:Ljava/util/HashMap;

.field protected mActivity:Landroid/app/Activity;

.field final mAdViewList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/energysource/szj/embeded/AdView;",
            ">;"
        }
    .end annotation
.end field

.field private mRootView:Landroid/widget/FrameLayout;

.field final mTimeList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/energysource/szj/embeded/AdView$AdViewTime;",
            ">;"
        }
    .end annotation
.end field

.field private msgidLs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field webViewMap:Ljava/util/HashMap;

.field private wm:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Lcom/energysource/szj/embeded/AdManager;

    invoke-direct {v0}, Lcom/energysource/szj/embeded/AdManager;-><init>()V

    sput-object v0, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    .line 48
    new-instance v0, Lcom/energysource/szj/embeded/PermissionJudge;

    invoke-direct {v0}, Lcom/energysource/szj/embeded/PermissionJudge;-><init>()V

    sput-object v0, Lcom/energysource/szj/embeded/AdManager;->permisJudge:Lcom/energysource/szj/embeded/PermissionJudge;

    .line 166
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/16 v2, 0xf0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x140

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x1e0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x300

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/energysource/szj/embeded/AdManager;->intArray:[Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean v1, p0, Lcom/energysource/szj/embeded/AdManager;->echoLoadingFlag:Z

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/energysource/szj/embeded/AdManager;->msgidLs:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/energysource/szj/embeded/AdManager;->mAdViewList:Landroid/util/SparseArray;

    .line 71
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/energysource/szj/embeded/AdManager;->mTimeList:Landroid/util/SparseArray;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/energysource/szj/embeded/AdManager;->layoutMap:Ljava/util/HashMap;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/energysource/szj/embeded/AdManager;->adviewMap:Ljava/util/HashMap;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/energysource/szj/embeded/AdManager;->activityMap:Ljava/util/HashMap;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/energysource/szj/embeded/AdManager;->webViewMap:Ljava/util/HashMap;

    .line 87
    iput-boolean v1, p0, Lcom/energysource/szj/embeded/AdManager;->isDebug:Z

    .line 42
    return-void
.end method

.method public static addAd(IIIII)V
    .locals 9
    .param p0, "id"    # I
    .param p1, "size"    # I
    .param p2, "align"    # I
    .param p3, "xMargin"    # I
    .param p4, "yMargin"    # I

    .prologue
    .line 383
    const/4 v2, 0x0

    .line 384
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v0, 0x0

    .line 385
    .local v0, "changeDipFlag":Z
    sget-object v1, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v1, v1, Lcom/energysource/szj/embeded/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    const/16 v3, 0x140

    if-le v1, v3, :cond_0

    .line 386
    const/4 v0, 0x1

    .line 388
    :cond_0
    const/4 v3, 0x0

    .line 389
    .local v3, "w":I
    const/4 v1, 0x0

    .line 391
    .local v1, "h":I
    sparse-switch p1, :sswitch_data_0

    .line 518
    const-string v0, "ADMANAGER"

    .end local v0    # "changeDipFlag":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "===add ad size(width):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    sget-object v0, Lcom/energysource/szj/embeded/AdManager;->sdkConfigMap:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 520
    sget-object v0, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    invoke-direct {v0}, Lcom/energysource/szj/embeded/AdManager;->getSizeNo()V

    .line 523
    :cond_1
    sget-object v0, Lcom/energysource/szj/embeded/AdManager;->sdkConfigMap:Ljava/util/HashMap;

    if-eqz v0, :cond_f

    .line 524
    sget-object v0, Lcom/energysource/szj/embeded/AdManager;->sdkConfigMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 526
    const/4 v4, 0x0

    .line 527
    .local v4, "width":I
    const/4 v0, 0x0

    .line 529
    .local v0, "height":I
    sget-object v2, Lcom/energysource/szj/embeded/AdManager;->sdkConfigMap:Ljava/util/HashMap;

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 530
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "height":I
    check-cast v0, Ljava/util/Map$Entry;

    .line 531
    .local v0, "en":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "en":Ljava/util/Map$Entry;
    check-cast v0, Ljava/lang/String;

    .line 532
    .local v0, "hm":Ljava/lang/String;
    const-string v4, ","

    .end local v4    # "width":I
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, "values":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 534
    .restart local v4    # "width":I
    const/4 v5, 0x1

    aget-object v0, v0, v5

    .end local v0    # "values":[Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 535
    .local v0, "height":I
    const-string v5, "ADMANAGER"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "==get sizeno:width:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",height:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 395
    .end local v4    # "width":I
    .local v0, "changeDipFlag":Z
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :sswitch_0
    if-eqz v0, :cond_3

    .line 396
    const-string v0, "240"

    .end local v0    # "changeDipFlag":Z
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/energysource/szj/embeded/AdManager;->changeDipToPx(F)I

    move-result v2

    .line 397
    .end local v3    # "w":I
    .local v2, "w":I
    const-string v0, "38"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/energysource/szj/embeded/AdManager;->changeDipToPx(F)I

    move-result v0

    .line 398
    .end local v1    # "h":I
    .local v0, "h":I
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 564
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :goto_1
    new-instance v0, Lcom/energysource/szj/embeded/AdView;

    .end local v0    # "h":I
    sget-object v2, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    .end local v2    # "w":I
    iget-object v2, v2, Lcom/energysource/szj/embeded/AdManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, p0}, Lcom/energysource/szj/embeded/AdView;-><init>(Landroid/content/Context;I)V

    .line 566
    .local v0, "adView":Lcom/energysource/szj/embeded/AdView;
    if-eqz v1, :cond_2

    .line 567
    const/4 v2, 0x5

    if-eq p1, v2, :cond_12

    const/4 v2, 0x6

    if-eq p1, v2, :cond_12

    .line 568
    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 569
    invoke-virtual {v0, p1}, Lcom/energysource/szj/embeded/AdView;->setSizeNo(I)V

    .line 570
    sparse-switch p2, :sswitch_data_1

    .line 597
    :goto_2
    :sswitch_1
    sget-object p1, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    .end local p1    # "size":I
    iget-object p1, p1, Lcom/energysource/szj/embeded/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 598
    .local p1, "rootView":Landroid/widget/FrameLayout;
    sget-object p2, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    .end local p2    # "align":I
    iget-object p2, p2, Lcom/energysource/szj/embeded/AdManager;->adviewMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .end local p3    # "xMargin":I
    invoke-virtual {p2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    sget-object p2, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object p2, p2, Lcom/energysource/szj/embeded/AdManager;->layoutMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    sget-object p2, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object p2, p2, Lcom/energysource/szj/embeded/AdManager;->activityMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .end local p0    # "id":I
    sget-object p3, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object p3, p3, Lcom/energysource/szj/embeded/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 623
    .end local p1    # "rootView":Landroid/widget/FrameLayout;
    :cond_2
    :goto_3
    return-void

    .line 400
    .local v0, "changeDipFlag":Z
    .local v1, "h":I
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "w":I
    .restart local p0    # "id":I
    .local p1, "size":I
    .restart local p2    # "align":I
    .restart local p3    # "xMargin":I
    :cond_3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "changeDipFlag":Z
    const/16 v2, 0xf0

    const/16 v4, 0x26

    invoke-direct {v0, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v2, v3

    .end local v3    # "w":I
    .local v2, "w":I
    move v8, v1

    .end local v1    # "h":I
    .local v8, "h":I
    move-object v1, v0

    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v0, v8

    .line 403
    .end local v8    # "h":I
    .local v0, "h":I
    goto :goto_1

    .line 407
    .local v0, "changeDipFlag":Z
    .local v1, "h":I
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "w":I
    :sswitch_2
    if-eqz v0, :cond_4

    .line 408
    const-string v0, "320"

    .end local v0    # "changeDipFlag":Z
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/energysource/szj/embeded/AdManager;->changeDipToPx(F)I

    move-result v2

    .line 409
    .end local v3    # "w":I
    .local v2, "w":I
    const-string v0, "50"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/energysource/szj/embeded/AdManager;->changeDipToPx(F)I

    move-result v0

    .line 410
    .end local v1    # "h":I
    .local v0, "h":I
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    goto/16 :goto_1

    .line 412
    .local v0, "changeDipFlag":Z
    .local v1, "h":I
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "w":I
    :cond_4
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "changeDipFlag":Z
    const/16 v2, 0x140

    const/16 v4, 0x32

    invoke-direct {v0, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v2, v3

    .end local v3    # "w":I
    .local v2, "w":I
    move v8, v1

    .end local v1    # "h":I
    .restart local v8    # "h":I
    move-object v1, v0

    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v0, v8

    .line 414
    .end local v8    # "h":I
    .local v0, "h":I
    goto/16 :goto_1

    .line 418
    .local v0, "changeDipFlag":Z
    .local v1, "h":I
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "w":I
    :sswitch_3
    if-eqz v0, :cond_5

    .line 419
    const-string v0, "240"

    .end local v0    # "changeDipFlag":Z
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/energysource/szj/embeded/AdManager;->changeDipToPx(F)I

    move-result v2

    .line 420
    .end local v3    # "w":I
    .local v2, "w":I
    const-string v0, "320"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/energysource/szj/embeded/AdManager;->changeDipToPx(F)I

    move-result v0

    .line 421
    .end local v1    # "h":I
    .local v0, "h":I
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    goto/16 :goto_1

    .line 423
    .local v0, "changeDipFlag":Z
    .local v1, "h":I
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "w":I
    :cond_5
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "changeDipFlag":Z
    const/16 v2, 0xf0

    const/16 v4, 0x140

    invoke-direct {v0, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v2, v3

    .end local v3    # "w":I
    .local v2, "w":I
    move v8, v1

    .end local v1    # "h":I
    .restart local v8    # "h":I
    move-object v1, v0

    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v0, v8

    .line 425
    .end local v8    # "h":I
    .local v0, "h":I
    goto/16 :goto_1

    .line 429
    .local v0, "changeDipFlag":Z
    .local v1, "h":I
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "w":I
    :sswitch_4
    if-eqz v0, :cond_6

    .line 430
    const-string v0, "320"

    .end local v0    # "changeDipFlag":Z
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/energysource/szj/embeded/AdManager;->changeDipToPx(F)I

    move-result v2

    .line 431
    .end local v3    # "w":I
    .local v2, "w":I
    const-string v0, "240"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/energysource/szj/embeded/AdManager;->changeDipToPx(F)I

    move-result v0

    .line 432
    .end local v1    # "h":I
    .local v0, "h":I
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    goto/16 :goto_1

    .line 434
    .local v0, "changeDipFlag":Z
    .local v1, "h":I
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "w":I
    :cond_6
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "changeDipFlag":Z
    const/16 v2, 0x140

    const/16 v4, 0xf0

    invoke-direct {v0, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v2, v3

    .end local v3    # "w":I
    .local v2, "w":I
    move v8, v1

    .end local v1    # "h":I
    .restart local v8    # "h":I
    move-object v1, v0

    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v0, v8

    .line 436
    .end local v8    # "h":I
    .local v0, "h":I
    goto/16 :goto_1

    .line 440
    .local v0, "changeDipFlag":Z
    .local v1, "h":I
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "w":I
    :sswitch_5
    if-eqz v0, :cond_7

    .line 441
    const-string v0, "480"

    .end local v0    # "changeDipFlag":Z
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/energysource/szj/embeded/AdManager;->changeDipToPx(F)I

    move-result v2

    .line 442
    .end local v3    # "w":I
    .local v2, "w":I
    const-string v0, "320"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/energysource/szj/embeded/AdManager;->changeDipToPx(F)I

    move-result v0

    .line 443
    .end local v1    # "h":I
    .local v0, "h":I
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    goto/16 :goto_1

    .line 445
    .local v0, "changeDipFlag":Z
    .local v1, "h":I
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "w":I
    :cond_7
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "changeDipFlag":Z
    const/16 v2, 0x1e0

    const/16 v4, 0x140

    invoke-direct {v0, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v2, v3

    .end local v3    # "w":I
    .local v2, "w":I
    move v8, v1

    .end local v1    # "h":I
    .restart local v8    # "h":I
    move-object v1, v0

    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v0, v8

    .line 447
    .end local v8    # "h":I
    .local v0, "h":I
    goto/16 :goto_1

    .line 451
    .local v0, "changeDipFlag":Z
    .local v1, "h":I
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "w":I
    :sswitch_6
    if-eqz v0, :cond_8

    .line 452
    const-string v1, "320"

    .end local v1    # "h":I
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Lcom/energysource/szj/embeded/AdManager;->changeDipToPx(F)I

    move-result v3

    .line 453
    const-string v1, "480"

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Lcom/energysource/szj/embeded/AdManager;->changeDipToPx(F)I

    move-result v1

    .line 454
    .restart local v1    # "h":I
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v2, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 461
    .restart local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :goto_4
    :sswitch_7
    if-eqz v0, :cond_9

    .line 462
    const-string v0, "768"

    .end local v0    # "changeDipFlag":Z
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/energysource/szj/embeded/AdManager;->changeDipToPx(F)I

    move-result v2

    .line 463
    .end local v3    # "w":I
    .local v2, "w":I
    const-string v0, "1024"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/energysource/szj/embeded/AdManager;->changeDipToPx(F)I

    move-result v0

    .line 464
    .end local v1    # "h":I
    .local v0, "h":I
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    goto/16 :goto_1

    .line 456
    .local v0, "changeDipFlag":Z
    .local v1, "h":I
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "w":I
    :cond_8
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x140

    const/16 v5, 0x1e0

    invoke-direct {v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .restart local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_4

    .line 466
    :cond_9
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "changeDipFlag":Z
    const/16 v2, 0x300

    const/16 v4, 0x400

    invoke-direct {v0, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v2, v3

    .end local v3    # "w":I
    .local v2, "w":I
    move v8, v1

    .end local v1    # "h":I
    .restart local v8    # "h":I
    move-object v1, v0

    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v0, v8

    .line 468
    .end local v8    # "h":I
    .local v0, "h":I
    goto/16 :goto_1

    .line 472
    .local v0, "changeDipFlag":Z
    .local v1, "h":I
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "w":I
    :sswitch_8
    if-eqz v0, :cond_a

    .line 473
    const-string v0, "1024"

    .end local v0    # "changeDipFlag":Z
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/energysource/szj/embeded/AdManager;->changeDipToPx(F)I

    move-result v2

    .line 474
    .end local v3    # "w":I
    .local v2, "w":I
    const-string v0, "768"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/energysource/szj/embeded/AdManager;->changeDipToPx(F)I

    move-result v0

    .line 475
    .end local v1    # "h":I
    .local v0, "h":I
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    goto/16 :goto_1

    .line 477
    .local v0, "changeDipFlag":Z
    .local v1, "h":I
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "w":I
    :cond_a
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "changeDipFlag":Z
    const/16 v2, 0x400

    const/16 v4, 0x300

    invoke-direct {v0, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v2, v3

    .end local v3    # "w":I
    .local v2, "w":I
    move v8, v1

    .end local v1    # "h":I
    .restart local v8    # "h":I
    move-object v1, v0

    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v0, v8

    .line 479
    .end local v8    # "h":I
    .local v0, "h":I
    goto/16 :goto_1

    .line 483
    .local v0, "changeDipFlag":Z
    .local v1, "h":I
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "w":I
    :sswitch_9
    if-eqz v0, :cond_b

    .line 484
    const-string v0, "468"

    .end local v0    # "changeDipFlag":Z
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/energysource/szj/embeded/AdManager;->changeDipToPx(F)I

    move-result v2

    .line 485
    .end local v3    # "w":I
    .local v2, "w":I
    const-string v0, "60"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/energysource/szj/embeded/AdManager;->changeDipToPx(F)I

    move-result v0

    .line 486
    .end local v1    # "h":I
    .local v0, "h":I
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    goto/16 :goto_1

    .line 488
    .local v0, "changeDipFlag":Z
    .local v1, "h":I
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "w":I
    :cond_b
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "changeDipFlag":Z
    const/16 v2, 0x1d4

    const/16 v4, 0x3c

    invoke-direct {v0, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v2, v3

    .end local v3    # "w":I
    .local v2, "w":I
    move v8, v1

    .end local v1    # "h":I
    .restart local v8    # "h":I
    move-object v1, v0

    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v0, v8

    .line 490
    .end local v8    # "h":I
    .local v0, "h":I
    goto/16 :goto_1

    .line 493
    .local v0, "changeDipFlag":Z
    .local v1, "h":I
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "w":I
    :sswitch_a
    if-eqz v0, :cond_c

    .line 494
    const-string v0, "480"

    .end local v0    # "changeDipFlag":Z
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/energysource/szj/embeded/AdManager;->changeDipToPx(F)I

    move-result v2

    .line 495
    .end local v3    # "w":I
    .local v2, "w":I
    const-string v0, "800"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/energysource/szj/embeded/AdManager;->changeDipToPx(F)I

    move-result v0

    .line 496
    .end local v1    # "h":I
    .local v0, "h":I
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    goto/16 :goto_1

    .line 498
    .local v0, "changeDipFlag":Z
    .local v1, "h":I
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "w":I
    :cond_c
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "changeDipFlag":Z
    const/16 v2, 0x1e0

    const/16 v4, 0x320

    invoke-direct {v0, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v2, v3

    .end local v3    # "w":I
    .local v2, "w":I
    move v8, v1

    .end local v1    # "h":I
    .restart local v8    # "h":I
    move-object v1, v0

    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v0, v8

    .line 500
    .end local v8    # "h":I
    .local v0, "h":I
    goto/16 :goto_1

    .line 503
    .local v0, "changeDipFlag":Z
    .local v1, "h":I
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "w":I
    :sswitch_b
    if-eqz v0, :cond_d

    .line 504
    const-string v0, "800"

    .end local v0    # "changeDipFlag":Z
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/energysource/szj/embeded/AdManager;->changeDipToPx(F)I

    move-result v2

    .line 505
    .end local v3    # "w":I
    .local v2, "w":I
    const-string v0, "480"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/energysource/szj/embeded/AdManager;->changeDipToPx(F)I

    move-result v0

    .line 506
    .end local v1    # "h":I
    .local v0, "h":I
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    goto/16 :goto_1

    .line 508
    .local v0, "changeDipFlag":Z
    .local v1, "h":I
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "w":I
    :cond_d
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "changeDipFlag":Z
    const/16 v2, 0x320

    const/16 v4, 0x1e0

    invoke-direct {v0, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v2, v3

    .end local v3    # "w":I
    .local v2, "w":I
    move v8, v1

    .end local v1    # "h":I
    .restart local v8    # "h":I
    move-object v1, v0

    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v0, v8

    .line 510
    .end local v8    # "h":I
    .local v0, "h":I
    goto/16 :goto_1

    .line 512
    .local v0, "changeDipFlag":Z
    .local v1, "h":I
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "w":I
    :sswitch_c
    sget-object p1, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    .end local p1    # "size":I
    iget-object p1, p1, Lcom/energysource/szj/embeded/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 513
    .end local v3    # "w":I
    .local v2, "w":I
    invoke-static {v2}, Lcom/energysource/szj/embeded/AdManager;->getSizeNo(I)I

    move-result p1

    .line 514
    .restart local p1    # "size":I
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "changeDipFlag":Z
    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v8, v1

    .end local v1    # "h":I
    .restart local v8    # "h":I
    move-object v1, v0

    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v0, v8

    .line 515
    .end local v8    # "h":I
    .local v0, "h":I
    goto/16 :goto_1

    .line 537
    .local v0, "height":I
    .local v1, "h":I
    .local v2, "it":Ljava/util/Iterator;
    .restart local v3    # "w":I
    .restart local v4    # "width":I
    :cond_e
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2    # "it":Ljava/util/Iterator;
    invoke-direct {v2, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v0, v1

    .end local v1    # "h":I
    .local v0, "h":I
    move-object v1, v2

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v2, v3

    .line 539
    .end local v3    # "w":I
    .local v2, "w":I
    goto/16 :goto_1

    .line 541
    .end local v0    # "h":I
    .end local v4    # "width":I
    .local v1, "h":I
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "w":I
    :cond_f
    sget-object v0, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    invoke-direct {v0}, Lcom/energysource/szj/embeded/AdManager;->getSizeNo()V

    .line 543
    sget-object v0, Lcom/energysource/szj/embeded/AdManager;->sdkConfigMap:Ljava/util/HashMap;

    if-nez v0, :cond_10

    .line 544
    const-string v0, "ADMANAGER"

    const-string v4, " get sizeno is null ....233"

    invoke-static {v0, v4}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .end local v1    # "h":I
    .restart local v0    # "h":I
    move-object v1, v2

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v2, v3

    .end local v3    # "w":I
    .local v2, "w":I
    goto/16 :goto_1

    .line 546
    .end local v0    # "h":I
    .local v1, "h":I
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "w":I
    :cond_10
    const/4 v4, 0x0

    .line 547
    .restart local v4    # "width":I
    const/4 v0, 0x0

    .line 549
    .local v0, "height":I
    sget-object v2, Lcom/energysource/szj/embeded/AdManager;->sdkConfigMap:Ljava/util/HashMap;

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 550
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "height":I
    check-cast v0, Ljava/util/Map$Entry;

    .line 551
    .local v0, "en":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "en":Ljava/util/Map$Entry;
    check-cast v0, Ljava/lang/String;

    .line 552
    .local v0, "hm":Ljava/lang/String;
    const-string v4, ","

    .end local v4    # "width":I
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 553
    .local v0, "values":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 554
    .restart local v4    # "width":I
    const/4 v5, 0x1

    aget-object v0, v0, v5

    .end local v0    # "values":[Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 555
    .local v0, "height":I
    const-string v5, "ADMANAGER"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "==get sizeno:width:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",height:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 557
    :cond_11
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2    # "it":Ljava/util/Iterator;
    invoke-direct {v2, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v0, v1

    .end local v1    # "h":I
    .local v0, "h":I
    move-object v1, v2

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v2, v3

    .end local v3    # "w":I
    .local v2, "w":I
    goto/16 :goto_1

    .line 572
    .end local v2    # "w":I
    .end local v4    # "width":I
    .local v0, "adView":Lcom/energysource/szj/embeded/AdView;
    :sswitch_d
    iput p4, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_2

    .line 579
    :sswitch_e
    iput p3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 580
    iput p4, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_2

    .line 583
    :sswitch_f
    iput p3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 584
    iput p4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_2

    .line 587
    :sswitch_10
    iput p3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 588
    iput p4, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_2

    .line 591
    :sswitch_11
    iput p3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 592
    iput p4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_2

    .line 608
    :cond_12
    const/4 p0, 0x5

    if-ne p1, p0, :cond_13

    .line 609
    .end local p0    # "id":I
    sget-object p0, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object p0, p0, Lcom/energysource/szj/embeded/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    .line 612
    .local p0, "rootView":Landroid/widget/FrameLayout;
    sget-object p1, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    .end local p1    # "size":I
    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/energysource/szj/embeded/AdManager;->advIntoFlag:Z

    .line 613
    .end local p2    # "align":I
    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 614
    .end local p0    # "rootView":Landroid/widget/FrameLayout;
    .restart local p1    # "size":I
    .restart local p2    # "align":I
    :cond_13
    const/4 p0, 0x6

    if-ne p1, p0, :cond_2

    .line 615
    sget-object p0, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object p0, p0, Lcom/energysource/szj/embeded/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    .line 618
    .restart local p0    # "rootView":Landroid/widget/FrameLayout;
    sget-object p1, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    .end local p1    # "size":I
    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/energysource/szj/embeded/AdManager;->advIntoFlag:Z

    .line 619
    .end local p2    # "align":I
    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .end local v0    # "adView":Lcom/energysource/szj/embeded/AdView;
    .local v1, "h":I
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "w":I
    .local p0, "id":I
    .restart local p1    # "size":I
    .restart local p2    # "align":I
    :cond_14
    move v0, v1

    .end local v1    # "h":I
    .local v0, "h":I
    move-object v1, v2

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v2, v3

    .end local v3    # "w":I
    .local v2, "w":I
    goto/16 :goto_1

    .line 391
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_c
        0x44d -> :sswitch_0
        0x4b1 -> :sswitch_3
        0x4b2 -> :sswitch_4
        0x515 -> :sswitch_a
        0x516 -> :sswitch_b
        0x835 -> :sswitch_2
        0x836 -> :sswitch_5
        0x837 -> :sswitch_6
        0x8fe -> :sswitch_8
        0x8ff -> :sswitch_7
        0x1fa6 -> :sswitch_9
    .end sparse-switch

    .line 570
    :sswitch_data_1
    .sparse-switch
        0x11 -> :sswitch_1
        0x31 -> :sswitch_d
        0x33 -> :sswitch_e
        0x35 -> :sswitch_10
        0x51 -> :sswitch_1
        0x53 -> :sswitch_f
        0x55 -> :sswitch_11
    .end sparse-switch
.end method

.method public static changeDipToPx(F)I
    .locals 13
    .param p0, "s"    # F

    .prologue
    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    .line 307
    sget-object v8, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v8, v8, Lcom/energysource/szj/embeded/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    float-to-double v3, v8

    .line 308
    .local v3, "t":D
    float-to-double v8, p0

    mul-double/2addr v8, v3

    add-double/2addr v8, v11

    double-to-int v2, v8

    .line 312
    .local v2, "size":I
    sget-object v8, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v8, v8, Lcom/energysource/szj/embeded/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v6, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 313
    .local v6, "w":I
    sget-object v8, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v8, v8, Lcom/energysource/szj/embeded/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 315
    .local v0, "h":I
    const/4 v7, 0x0

    .local v7, "width":I
    const/4 v1, 0x0

    .line 316
    .local v1, "height":I
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v3, v8

    if-nez v8, :cond_0

    .line 317
    const-string v8, "ADMANAGER"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "==width:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",height:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    if-ge v6, v0, :cond_1

    .line 319
    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    .line 320
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "t:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",\u5f53\u524d\u624b\u673a\u5206\u8fa8\u7387\u4e3a\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    int-to-double v9, v6

    mul-double/2addr v9, v3

    add-double/2addr v9, v11

    double-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    int-to-double v9, v0

    mul-double/2addr v9, v3

    add-double/2addr v9, v11

    double-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 321
    .local v5, "tmp":Ljava/lang/String;
    const-string v8, "ADMANAGER"

    invoke-static {v8, v5}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    int-to-double v8, v6

    mul-double/2addr v8, v3

    add-double/2addr v8, v11

    double-to-int v7, v8

    .line 323
    int-to-double v8, v0

    mul-double/2addr v8, v3

    add-double/2addr v8, v11

    double-to-int v1, v8

    .line 335
    .end local v5    # "tmp":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 324
    :cond_1
    if-le v6, v0, :cond_2

    .line 325
    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    .line 326
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "t:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",\u5f53\u524d\u624b\u673a\u5206\u8fa8\u7387\u4e3a\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    int-to-double v9, v0

    mul-double/2addr v9, v3

    add-double/2addr v9, v11

    double-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    int-to-double v9, v6

    mul-double/2addr v9, v3

    add-double/2addr v9, v11

    double-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 327
    .restart local v5    # "tmp":Ljava/lang/String;
    const-string v8, "ADMANAGER"

    invoke-static {v8, v5}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    int-to-double v8, v0

    mul-double/2addr v8, v3

    add-double/2addr v8, v11

    double-to-int v7, v8

    .line 329
    int-to-double v8, v6

    mul-double/2addr v8, v3

    add-double/2addr v8, v11

    double-to-int v1, v8

    .line 330
    goto :goto_0

    .line 331
    .end local v5    # "tmp":Ljava/lang/String;
    :cond_2
    const-string v8, "ADMANAGER"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u5176\u5b83\uff1a,w:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",h:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static clearMemory()V
    .locals 0

    .prologue
    .line 1064
    return-void
.end method

.method public static closeAdView(I)V
    .locals 7
    .param p0, "id"    # I

    .prologue
    .line 773
    sget-object v4, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v4, v4, Lcom/energysource/szj/embeded/AdManager;->activityMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 774
    .local v0, "act":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 775
    const-string v4, "ADMANAGER"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "closeAdView\u6ca1\u6709\u53d6\u5230\u5f53\u524dActivity,id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    :cond_0
    :goto_0
    return-void

    .line 779
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 780
    .local v3, "rootView":Landroid/widget/FrameLayout;
    sget-object v4, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v4, v4, Lcom/energysource/szj/embeded/AdManager;->adviewMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 781
    sget-object v4, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v4, v4, Lcom/energysource/szj/embeded/AdManager;->adviewMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/energysource/szj/embeded/AdView;

    .line 785
    .local v1, "adView":Lcom/energysource/szj/embeded/AdView;
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lcom/energysource/szj/embeded/AdView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 787
    .end local v1    # "adView":Lcom/energysource/szj/embeded/AdView;
    .end local v3    # "rootView":Landroid/widget/FrameLayout;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 788
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "ADMANAGER"

    const-string v5, "closeAdView Exception:"

    invoke-static {v4, v5, v2}, Lcom/energysource/szj/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static closeAllAdView()V
    .locals 4

    .prologue
    .line 798
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    sget-object v2, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v2, v2, Lcom/energysource/szj/embeded/AdManager;->mAdViewList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 799
    sget-object v2, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    sget-object v2, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v2, v2, Lcom/energysource/szj/embeded/AdManager;->mAdViewList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Lcom/energysource/szj/embeded/AdManager;->closeAdView(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 801
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 802
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ADMANAGER"

    const-string v3, "=error="

    invoke-static {v2, v3, v0}, Lcom/energysource/szj/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 804
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public static destoryAd()V
    .locals 11

    .prologue
    .line 633
    const/4 v10, 0x0

    .line 634
    .local v10, "view":Lcom/energysource/szj/embeded/AdView;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 637
    .local v2, "adtime_out":J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    sget-object v0, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v0, v0, Lcom/energysource/szj/embeded/AdManager;->mAdViewList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v8, v0, :cond_3

    .line 638
    sget-object v0, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v0, v0, Lcom/energysource/szj/embeded/AdManager;->mAdViewList:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "view":Lcom/energysource/szj/embeded/AdView;
    check-cast v10, Lcom/energysource/szj/embeded/AdView;

    .line 639
    .restart local v10    # "view":Lcom/energysource/szj/embeded/AdView;
    if-nez v10, :cond_1

    .line 640
    const-string v0, "ADMANAGER"

    const-string v1, "===VIEW is null"

    invoke-static {v0, v1}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 643
    :cond_1
    invoke-virtual {v10}, Lcom/energysource/szj/embeded/AdView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 645
    :try_start_0
    invoke-virtual {v10}, Lcom/energysource/szj/embeded/AdView;->getAdtime_in()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    invoke-virtual {v10}, Lcom/energysource/szj/embeded/AdView;->getTid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 647
    invoke-virtual {v10}, Lcom/energysource/szj/embeded/AdView;->getAdtime_in()J

    move-result-wide v0

    invoke-virtual {v10}, Lcom/energysource/szj/embeded/AdView;->getTid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/energysource/szj/embeded/AdView;->getShowtype()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/energysource/szj/embeded/AdManager;->saveAdViewShowTime(JJLjava/lang/String;I)V

    .line 649
    const-string v0, "ADMANAGER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u3010destoryAd===onDetachedFromWindow\u3011\uff1aadviewid:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/energysource/szj/embeded/AdView;->getId()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "=onDetachedFromWindow=\u5e7f\u544a\u6210\u529f\u5c55\u793a\u4e00\u6b21:\u3010\u65f6\u95f4\u3011:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/energysource/szj/embeded/AdView;->getAdtime_in()J

    move-result-wide v4

    sub-long v4, v2, v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ",tid:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/energysource/szj/embeded/AdView;->getTid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ",showtype:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/energysource/szj/embeded/AdView;->getShowtype()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "=="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 657
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 658
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "ADMANAGER"

    const-string v1, "onWindowVisibilityChanged:"

    invoke-static {v0, v1, v7}, Lcom/energysource/szj/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 654
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v0, "ADMANAGER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5e7f\u544a\u5c55\u793a\u65f6\u95f4\u8bb0\u5f55\u8fc7\u6ee4\uff1aadtime_in:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/energysource/szj/embeded/AdView;->getAdtime_in()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 674
    :cond_3
    invoke-static {}, Lcom/energysource/szj/embeded/SZJServiceInstance;->getInstance()Lcom/energysource/szj/embeded/SZJServiceInstance;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/energysource/szj/embeded/SZJServiceInstance;->setStartLoadFlag(Z)V

    .line 675
    new-instance v6, Lcom/energysource/szj/embeded/SZJClassLoad;

    invoke-direct {v6}, Lcom/energysource/szj/embeded/SZJClassLoad;-><init>()V

    .line 676
    .local v6, "cl":Lcom/energysource/szj/embeded/SZJClassLoad;
    invoke-virtual {v6}, Lcom/energysource/szj/embeded/SZJClassLoad;->stopModule()Z

    .line 677
    invoke-static {}, Lcom/energysource/szj/embeded/SZJServiceInstance;->getInstance()Lcom/energysource/szj/embeded/SZJServiceInstance;

    move-result-object v9

    .line 678
    .local v9, "instance":Lcom/energysource/szj/embeded/SZJServiceInstance;
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lcom/energysource/szj/embeded/SZJServiceInstance;->setModulesMap(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 679
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lcom/energysource/szj/embeded/SZJServiceInstance;->setDestoryFlag(Z)V

    .line 680
    const-string v0, "ADMANAGER"

    const-string v1, "==admanager \u603b\u7b97\u9500\u6bc1\u4e86=="

    invoke-static {v0, v1}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    return-void
.end method

.method private static getAppsec()Ljava/lang/String;
    .locals 7

    .prologue
    .line 202
    :try_start_0
    sget-object v4, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v4, v4, Lcom/energysource/szj/embeded/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 203
    .local v3, "packagemanager":Landroid/content/pm/PackageManager;
    sget-object v4, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v4, v4, Lcom/energysource/szj/embeded/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 204
    .local v0, "applicationinfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 206
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "appsec"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "appsec":Ljava/lang/String;
    const-string v4, "ADMANAGER"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "appsec from meta-data:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v1

    .line 213
    .end local v0    # "applicationinfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appsec":Ljava/lang/String;
    .end local v3    # "packagemanager":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v4

    .line 210
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 211
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "ADMANAGER"

    const-string v5, ""

    invoke-static {v4, v5, v2}, Lcom/energysource/szj/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v4, ""

    goto :goto_0
.end method

.method private static getSizeNo(I)I
    .locals 11
    .param p0, "width"    # I

    .prologue
    const/4 v10, 0x0

    .line 277
    sget-object v8, Lcom/energysource/szj/embeded/AdManager;->sdkConfigMap:Ljava/util/HashMap;

    if-nez v8, :cond_0

    .line 278
    const-string v8, "ADMANAGER"

    const-string v9, "===getSizeNo null"

    invoke-static {v8, v9}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    sget-object v8, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    invoke-direct {v8}, Lcom/energysource/szj/embeded/AdManager;->getSizeNo()V

    .line 280
    sget-object v8, Lcom/energysource/szj/embeded/AdManager;->sdkConfigMap:Ljava/util/HashMap;

    if-nez v8, :cond_0

    .line 281
    const-string v8, "ADMANAGER"

    const-string v9, "===getSizeNo null agagin"

    invoke-static {v8, v9}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v10

    .line 299
    :goto_0
    return v8

    .line 286
    :cond_0
    const/4 v3, 0x0

    .line 287
    .local v3, "sizeNo":I
    move v4, p0

    .line 288
    .local v4, "t":I
    sget-object v8, Lcom/energysource/szj/embeded/AdManager;->sdkConfigMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 289
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 290
    .local v0, "en":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 291
    .local v1, "hm":Ljava/lang/String;
    const-string v8, ","

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 292
    .local v7, "values":[Ljava/lang/String;
    aget-object v8, v7, v10

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 293
    .local v6, "twidth":I
    const/4 v8, 0x1

    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 294
    .local v5, "theight":I
    if-lt p0, v6, :cond_1

    const/16 v8, 0xc8

    if-lt v8, v5, :cond_1

    sub-int v8, p0, v6

    if-le v4, v8, :cond_1

    .line 295
    sub-int v4, p0, v6

    .line 296
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    .end local v0    # "en":Ljava/util/Map$Entry;
    .end local v1    # "hm":Ljava/lang/String;
    .end local v5    # "theight":I
    .end local v6    # "twidth":I
    .end local v7    # "values":[Ljava/lang/String;
    :cond_2
    move v8, v3

    .line 299
    goto :goto_0
.end method

.method private getSizeNo()V
    .locals 4

    .prologue
    .line 260
    invoke-static {}, Lcom/energysource/szj/embeded/SZJServiceInstance;->getInstance()Lcom/energysource/szj/embeded/SZJServiceInstance;

    move-result-object v2

    .line 261
    .local v2, "instance":Lcom/energysource/szj/embeded/SZJServiceInstance;
    invoke-virtual {v2}, Lcom/energysource/szj/embeded/SZJServiceInstance;->getModulesMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    .line 262
    .local v1, "chm":Ljava/util/concurrent/ConcurrentHashMap;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 263
    const-string v3, "bootableModule"

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 264
    const-string v3, "bootableModule"

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/energysource/szj/android/SZJModule;

    .line 265
    .local v0, "bootable":Lcom/energysource/szj/android/SZJModule;
    invoke-interface {v0}, Lcom/energysource/szj/android/SZJModule;->getSizeNO()Ljava/util/HashMap;

    move-result-object v3

    sput-object v3, Lcom/energysource/szj/embeded/AdManager;->sdkConfigMap:Ljava/util/HashMap;

    .line 268
    .end local v0    # "bootable":Lcom/energysource/szj/android/SZJModule;
    :cond_0
    return-void
.end method

.method public static initAd(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appsec"    # Ljava/lang/String;

    .prologue
    .line 222
    const-string v3, "ADMANAGER"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " =====come in webViewMap.size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v5, v5, Lcom/energysource/szj/embeded/AdManager;->webViewMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    sget-object v3, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v3, v3, Lcom/energysource/szj/embeded/AdManager;->webViewMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 225
    invoke-static {}, Lcom/energysource/szj/embeded/SZJServiceInstance;->getInstance()Lcom/energysource/szj/embeded/SZJServiceInstance;

    move-result-object v1

    .line 226
    .local v1, "instance":Lcom/energysource/szj/embeded/SZJServiceInstance;
    sget-object v3, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iput-object p0, v3, Lcom/energysource/szj/embeded/AdManager;->mActivity:Landroid/app/Activity;

    .line 227
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 228
    .local v2, "rootView":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_0

    .line 229
    sget-object v3, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    check-cast v2, Landroid/widget/FrameLayout;

    .end local v2    # "rootView":Landroid/view/View;
    iput-object v2, v3, Lcom/energysource/szj/embeded/AdManager;->mRootView:Landroid/widget/FrameLayout;

    .line 231
    :cond_0
    invoke-virtual {v1}, Lcom/energysource/szj/embeded/SZJServiceInstance;->isStartLoadFlag()Z

    move-result v3

    if-nez v3, :cond_2

    .line 232
    const-string v3, "ADMANAGER"

    const-string v4, "===\u52a0\u8f7d\u7c7b\u3002\u3002\u3002\u3002\u53ea\u6267\u884c\u4e00\u6b21\u3002"

    invoke-static {v3, v4}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/energysource/szj/embeded/SZJServiceInstance;->setStartLoadFlag(Z)V

    .line 234
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/energysource/szj/embeded/SZJServiceInstance;->setContext(Landroid/content/Context;)V

    .line 235
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/energysource/szj/embeded/SZJServiceInstance;->setDestoryFlag(Z)V

    .line 236
    invoke-virtual {v1, p0}, Lcom/energysource/szj/embeded/SZJServiceInstance;->setActivity(Landroid/app/Activity;)V

    .line 238
    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 239
    sget-object v3, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    invoke-static {}, Lcom/energysource/szj/embeded/AdManager;->getAppsec()Ljava/lang/String;

    move-result-object p1

    .line 242
    :cond_1
    if-nez p1, :cond_3

    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 243
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/energysource/szj/embeded/SZJServiceInstance;->setAppsec(Ljava/lang/String;)V

    .line 247
    :goto_0
    new-instance v0, Lcom/energysource/szj/embeded/SZJClassLoad;

    invoke-direct {v0}, Lcom/energysource/szj/embeded/SZJClassLoad;-><init>()V

    .line 249
    .local v0, "cl":Lcom/energysource/szj/embeded/SZJClassLoad;
    invoke-virtual {v0}, Lcom/energysource/szj/embeded/SZJClassLoad;->start()V

    .line 254
    .end local v0    # "cl":Lcom/energysource/szj/embeded/SZJClassLoad;
    :cond_2
    sget-object v3, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    invoke-direct {v3}, Lcom/energysource/szj/embeded/AdManager;->getSizeNo()V

    .line 256
    return-void

    .line 245
    :cond_3
    invoke-virtual {v1, p1}, Lcom/energysource/szj/embeded/SZJServiceInstance;->setAppsec(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static openAdView(I)V
    .locals 9
    .param p0, "id"    # I

    .prologue
    .line 718
    sget-object v6, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v6, v6, Lcom/energysource/szj/embeded/AdManager;->activityMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 719
    .local v0, "act":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 720
    const-string v6, "ADMANAGER"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "openView\u6ca1\u6709\u53d6\u5230\u5f53\u524dActivity,id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    :cond_0
    :goto_0
    return-void

    .line 724
    :cond_1
    :try_start_0
    sget-object v6, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v6, v6, Lcom/energysource/szj/embeded/AdManager;->layoutMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 725
    sget-object v6, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v6, v6, Lcom/energysource/szj/embeded/AdManager;->layoutMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 727
    .local v4, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    sget-object v6, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v6, v6, Lcom/energysource/szj/embeded/AdManager;->adviewMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/energysource/szj/embeded/AdView;

    .line 729
    .local v1, "adView":Lcom/energysource/szj/embeded/AdView;
    sget-object v6, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v6, v6, Lcom/energysource/szj/embeded/AdManager;->adviewMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 730
    sget-object v6, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v6, v6, Lcom/energysource/szj/embeded/AdManager;->adviewMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    :cond_2
    sget-object v6, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v6, v6, Lcom/energysource/szj/embeded/AdManager;->layoutMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 733
    sget-object v6, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v6, v6, Lcom/energysource/szj/embeded/AdManager;->layoutMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    :cond_3
    sget-object v6, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v6, v6, Lcom/energysource/szj/embeded/AdManager;->activityMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 736
    sget-object v6, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v6, v6, Lcom/energysource/szj/embeded/AdManager;->activityMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v8, v8, Lcom/energysource/szj/embeded/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    .line 739
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    .local v5, "rootView":Landroid/widget/FrameLayout;
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v1, v6}, Lcom/energysource/szj/embeded/AdView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 752
    :goto_1
    :try_start_2
    sget-object v6, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v6, v6, Lcom/energysource/szj/embeded/AdManager;->mAdViewList:Landroid/util/SparseArray;

    invoke-virtual {v6, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_5

    .line 753
    sget-object v6, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v6, v6, Lcom/energysource/szj/embeded/AdManager;->mAdViewList:Landroid/util/SparseArray;

    invoke-virtual {v6, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 754
    const-string v6, "wljie"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "openAdView(int id)==(AD_MANAGER.mAdViewList.get(id)==null==============adView.getHeight()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/energysource/szj/embeded/AdView;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/energysource/szj/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 762
    .end local v1    # "adView":Lcom/energysource/szj/embeded/AdView;
    .end local v4    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "rootView":Landroid/widget/FrameLayout;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 763
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "ADMANAGER"

    const-string v7, "==error=="

    invoke-static {v6, v7, v2}, Lcom/energysource/szj/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 744
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "adView":Lcom/energysource/szj/embeded/AdView;
    .restart local v4    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v5    # "rootView":Landroid/widget/FrameLayout;
    :catch_1
    move-exception v3

    .line 745
    .local v3, "e1":Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v6, "ADMANAGER"

    const-string v7, "==error=="

    invoke-static {v6, v7, v3}, Lcom/energysource/szj/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 756
    .end local v3    # "e1":Ljava/lang/IllegalStateException;
    :cond_5
    sget-object v6, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v6, v6, Lcom/energysource/szj/embeded/AdManager;->mAdViewList:Landroid/util/SparseArray;

    invoke-virtual {v6, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 757
    sget-object v6, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v6, v6, Lcom/energysource/szj/embeded/AdManager;->mAdViewList:Landroid/util/SparseArray;

    invoke-virtual {v6, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 758
    const-string v6, "wljie"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "openAdView(int id)==(AD_MANAGER.mAdViewList.get(id)==null not ============adView.getHeight()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/energysource/szj/embeded/AdView;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/energysource/szj/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method public static openAllAdView()V
    .locals 2

    .prologue
    .line 708
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v1, v1, Lcom/energysource/szj/embeded/AdManager;->mAdViewList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 709
    sget-object v1, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    sget-object v1, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v1, v1, Lcom/energysource/szj/embeded/AdManager;->mAdViewList:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Lcom/energysource/szj/embeded/AdManager;->openAdView(I)V

    .line 708
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 711
    :cond_0
    return-void
.end method

.method public static openDebug()V
    .locals 2

    .prologue
    .line 118
    sget-object v0, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/energysource/szj/embeded/AdManager;->setDebug(Z)V

    .line 119
    return-void
.end method

.method public static openDebugListener(Lcom/energysource/szj/android/DebugListener;)V
    .locals 1
    .param p0, "dl"    # Lcom/energysource/szj/android/DebugListener;

    .prologue
    .line 126
    invoke-static {}, Lcom/energysource/szj/embeded/SZJServiceInstance;->getInstance()Lcom/energysource/szj/embeded/SZJServiceInstance;

    move-result-object v0

    .line 127
    .local v0, "instance":Lcom/energysource/szj/embeded/SZJServiceInstance;
    invoke-virtual {v0, p0}, Lcom/energysource/szj/embeded/SZJServiceInstance;->setDebugListener(Lcom/energysource/szj/android/DebugListener;)V

    .line 128
    return-void
.end method

.method public static openPermissionJudge()V
    .locals 2

    .prologue
    .line 59
    sget-object v0, Lcom/energysource/szj/embeded/AdManager;->permisJudge:Lcom/energysource/szj/embeded/PermissionJudge;

    sget-object v1, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v1, v1, Lcom/energysource/szj/embeded/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/energysource/szj/embeded/PermissionJudge;->setContext(Landroid/content/Context;)V

    .line 60
    sget-object v0, Lcom/energysource/szj/embeded/AdManager;->permisJudge:Lcom/energysource/szj/embeded/PermissionJudge;

    invoke-virtual {v0}, Lcom/energysource/szj/embeded/PermissionJudge;->openSwitchFlag()V

    .line 61
    return-void
.end method

.method protected static saveAdViewShowTime(JJLjava/lang/String;I)V
    .locals 10
    .param p0, "start"    # J
    .param p2, "end"    # J
    .param p4, "tid"    # Ljava/lang/String;
    .param p5, "showtype"    # I

    .prologue
    .line 815
    :try_start_0
    invoke-static {}, Lcom/energysource/szj/embeded/SZJServiceInstance;->getInstance()Lcom/energysource/szj/embeded/SZJServiceInstance;

    move-result-object v9

    .line 816
    .local v9, "instance":Lcom/energysource/szj/embeded/SZJServiceInstance;
    invoke-virtual {v9}, Lcom/energysource/szj/embeded/SZJServiceInstance;->getModulesMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    .line 818
    .local v7, "chm":Ljava/util/concurrent/ConcurrentHashMap;
    if-nez v7, :cond_0

    .line 819
    const-string v1, "ADMANAGER"

    const-string v2, "\u5df2\u7ecf\u9500\u6bc1,chm==null"

    invoke-static {v1, v2}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    .end local v7    # "chm":Ljava/util/concurrent/ConcurrentHashMap;
    .end local v9    # "instance":Lcom/energysource/szj/embeded/SZJServiceInstance;
    :goto_0
    return-void

    .line 822
    .restart local v7    # "chm":Ljava/util/concurrent/ConcurrentHashMap;
    .restart local v9    # "instance":Lcom/energysource/szj/embeded/SZJServiceInstance;
    :cond_0
    const-string v1, "bootableModule"

    invoke-virtual {v7, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/energysource/szj/android/SZJModule;

    .local v0, "framework":Lcom/energysource/szj/android/SZJModule;
    move-wide v1, p0

    move-wide v3, p2

    move-object v5, p4

    move v6, p5

    .line 824
    invoke-interface/range {v0 .. v6}, Lcom/energysource/szj/android/SZJModule;->saveShowNum(JJLjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 826
    .end local v0    # "framework":Lcom/energysource/szj/android/SZJModule;
    .end local v7    # "chm":Ljava/util/concurrent/ConcurrentHashMap;
    .end local v9    # "instance":Lcom/energysource/szj/embeded/SZJServiceInstance;
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 827
    .local v8, "e":Ljava/lang/Exception;
    const-string v1, "ADMANAGER"

    const-string v2, "=saveAdViewShowTime="

    invoke-static {v1, v2, v8}, Lcom/energysource/szj/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setAdListener(Lcom/energysource/szj/embeded/AdListener;)V
    .locals 1
    .param p0, "adListener"    # Lcom/energysource/szj/embeded/AdListener;

    .prologue
    .line 134
    sget-object v0, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iput-object p0, v0, Lcom/energysource/szj/embeded/AdManager;->adListener:Lcom/energysource/szj/embeded/AdListener;

    .line 135
    return-void
.end method


# virtual methods
.method protected getContextFromActivity()Landroid/content/Context;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v0, v0, Lcom/energysource/szj/embeded/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    .line 1013
    iget v4, p1, Landroid/os/Message;->arg1:I

    sparse-switch v4, :sswitch_data_0

    .line 1058
    :goto_0
    return v6

    .line 1015
    :sswitch_0
    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v4}, Lcom/energysource/szj/embeded/AdManager;->requestAdvById(I)V

    goto :goto_0

    .line 1030
    :sswitch_1
    sget-object v4, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v4, v4, Lcom/energysource/szj/embeded/AdManager;->mAdViewList:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 1031
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 1032
    .local v2, "h":Landroid/os/Handler;
    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 1033
    .local v1, "destory_msg":Landroid/os/Message;
    const/16 v4, 0xc9

    iput v4, v1, Landroid/os/Message;->arg1:I

    .line 1034
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1035
    const-string v4, "ADMANAGER"

    const-string v5, "\u53d1\u9001destory_atonce\u6d88\u606f"

    invoke-static {v4, v5}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1038
    .end local v1    # "destory_msg":Landroid/os/Message;
    .end local v2    # "h":Landroid/os/Handler;
    :cond_0
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 1039
    .restart local v2    # "h":Landroid/os/Handler;
    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 1040
    .restart local v1    # "destory_msg":Landroid/os/Message;
    const/16 v4, 0xc8

    iput v4, v1, Landroid/os/Message;->arg1:I

    .line 1041
    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1042
    const-string v4, "ADMANAGER"

    const-string v5, "==admanager \u5ef6\u8fdf10\u79d2\u9500\u6bc1=="

    invoke-static {v4, v5}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1047
    .end local v1    # "destory_msg":Landroid/os/Message;
    .end local v2    # "h":Landroid/os/Handler;
    :sswitch_2
    invoke-static {}, Lcom/energysource/szj/embeded/SZJServiceInstance;->getInstance()Lcom/energysource/szj/embeded/SZJServiceInstance;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/energysource/szj/embeded/SZJServiceInstance;->setStartLoadFlag(Z)V

    .line 1048
    new-instance v0, Lcom/energysource/szj/embeded/SZJClassLoad;

    invoke-direct {v0}, Lcom/energysource/szj/embeded/SZJClassLoad;-><init>()V

    .line 1049
    .local v0, "cl":Lcom/energysource/szj/embeded/SZJClassLoad;
    invoke-virtual {v0}, Lcom/energysource/szj/embeded/SZJClassLoad;->stopModule()Z

    .line 1050
    invoke-static {}, Lcom/energysource/szj/embeded/SZJServiceInstance;->getInstance()Lcom/energysource/szj/embeded/SZJServiceInstance;

    move-result-object v3

    .line 1051
    .local v3, "instance":Lcom/energysource/szj/embeded/SZJServiceInstance;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/energysource/szj/embeded/SZJServiceInstance;->setModulesMap(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 1052
    invoke-virtual {v3, v6}, Lcom/energysource/szj/embeded/SZJServiceInstance;->setDestoryFlag(Z)V

    .line 1053
    const-string v4, "ADMANAGER"

    const-string v5, "==admanager \u603b\u7b97\u9500\u6bc1\u4e86=="

    invoke-static {v4, v5}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1013
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xc8 -> :sswitch_1
        0xc9 -> :sswitch_2
    .end sparse-switch
.end method

.method protected requestAdvById(I)V
    .locals 34
    .param p1, "id"    # I

    .prologue
    .line 838
    :try_start_0
    invoke-static {}, Lcom/energysource/szj/embeded/SZJServiceInstance;->getInstance()Lcom/energysource/szj/embeded/SZJServiceInstance;

    move-result-object v15

    .line 839
    .local v15, "instance":Lcom/energysource/szj/embeded/SZJServiceInstance;
    invoke-virtual {v15}, Lcom/energysource/szj/embeded/SZJServiceInstance;->getModulesMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v8

    .line 840
    .local v8, "chm":Ljava/util/concurrent/ConcurrentHashMap;
    if-eqz v8, :cond_13

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v30

    if-lez v30, :cond_13

    .line 842
    sget-object v30, Lcom/energysource/szj/embeded/AdManager;->sdkConfigMap:Ljava/util/HashMap;

    if-nez v30, :cond_0

    .line 843
    sget-object v30, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    invoke-direct/range {v30 .. v30}, Lcom/energysource/szj/embeded/AdManager;->getSizeNo()V

    .line 845
    :cond_0
    const-string v30, "bootableModule"

    move-object v0, v8

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/energysource/szj/android/SZJModule;

    .line 846
    .local v7, "bootable":Lcom/energysource/szj/android/SZJModule;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/energysource/szj/embeded/AdManager;->mAdViewList:Landroid/util/SparseArray;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/energysource/szj/embeded/AdView;

    .line 847
    .local v4, "adView":Lcom/energysource/szj/embeded/AdView;
    const/16 v21, 0x0

    .line 848
    .local v21, "sizeNo":I
    if-eqz v4, :cond_d

    .line 849
    invoke-virtual {v4}, Lcom/energysource/szj/embeded/AdView;->getSizeNo()I

    move-result v30

    if-nez v30, :cond_a

    .line 850
    const/16 v20, 0x1

    .line 851
    .local v20, "sf":Z
    invoke-virtual {v4}, Lcom/energysource/szj/embeded/AdView;->getResWidth()I

    move-result v29

    .line 852
    .local v29, "width":I
    invoke-virtual {v4}, Lcom/energysource/szj/embeded/AdView;->getResHeight()I

    move-result v13

    .line 853
    .local v13, "height":I
    if-nez v29, :cond_1

    .line 854
    sget-object v30, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/energysource/szj/embeded/AdManager;->mActivity:Landroid/app/Activity;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/Display;->getWidth()I

    move-result v29

    .line 857
    :cond_1
    if-nez v13, :cond_2

    .line 858
    const/16 v13, 0xc8

    .line 861
    :cond_2
    sget-object v30, Lcom/energysource/szj/embeded/AdManager;->sdkConfigMap:Ljava/util/HashMap;

    if-eqz v30, :cond_4

    .line 862
    const-string v30, "newZip"

    const-string v31, "check sdkConfig====="

    invoke-static/range {v30 .. v31}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    move/from16 v22, v29

    .line 866
    .local v22, "t":I
    sget-object v30, Lcom/energysource/szj/embeded/AdManager;->sdkConfigMap:Ljava/util/HashMap;

    invoke-virtual/range {v30 .. v30}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "it":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_5

    .line 867
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 868
    .local v10, "en":Ljava/util/Map$Entry;
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 869
    .local v14, "hm":Ljava/lang/String;
    const-string v30, ","

    move-object v0, v14

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 870
    .local v27, "values":[Ljava/lang/String;
    const/16 v30, 0x0

    aget-object v30, v27, v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 871
    .local v26, "twidth":I
    const/16 v30, 0x1

    aget-object v30, v27, v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 872
    .local v25, "theight":I
    move/from16 v0, v29

    move/from16 v1, v26

    if-lt v0, v1, :cond_3

    const/16 v30, 0xc8

    move/from16 v0, v30

    move/from16 v1, v25

    if-lt v0, v1, :cond_3

    sub-int v30, v29, v26

    move/from16 v0, v22

    move/from16 v1, v30

    if-le v0, v1, :cond_3

    .line 873
    sub-int v22, v29, v26

    .line 874
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v21

    goto :goto_0

    .line 878
    .end local v10    # "en":Ljava/util/Map$Entry;
    .end local v14    # "hm":Ljava/lang/String;
    .end local v16    # "it":Ljava/util/Iterator;
    .end local v22    # "t":I
    .end local v25    # "theight":I
    .end local v26    # "twidth":I
    .end local v27    # "values":[Ljava/lang/String;
    :cond_4
    sget-object v30, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    invoke-direct/range {v30 .. v30}, Lcom/energysource/szj/embeded/AdManager;->getSizeNo()V

    .line 881
    :cond_5
    const-string v30, "wljie"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "sizeNo========"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/energysource/szj/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    move-object v0, v4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/energysource/szj/embeded/AdView;->setSizeNo(I)V

    .line 886
    .end local v13    # "height":I
    .end local v20    # "sf":Z
    .end local v29    # "width":I
    :goto_1
    if-eqz v21, :cond_d

    if-eqz v7, :cond_d

    .line 887
    invoke-virtual {v15}, Lcom/energysource/szj/embeded/SZJServiceInstance;->isDestoryFlag()Z

    move-result v30

    if-nez v30, :cond_d

    .line 888
    const/16 v30, 0x4

    if-nez v30, :cond_6

    const/16 v30, 0x8

    if-eqz v30, :cond_d

    .line 889
    :cond_6
    const/16 v30, 0x8

    move-object v0, v7

    move/from16 v1, v21

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/energysource/szj/android/SZJModule;->requestAd(II)Lcom/energysource/szj/android/AdvObject;

    move-result-object v5

    .line 890
    .local v5, "advObject":Lcom/energysource/szj/android/AdvObject;
    if-eqz v5, :cond_11

    .line 891
    sget-object v30, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/energysource/szj/embeded/AdManager;->webViewMap:Ljava/util/HashMap;

    move-object/from16 v30, v0

    if-nez v30, :cond_7

    .line 892
    sget-object v30, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    new-instance v31, Ljava/util/HashMap;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/energysource/szj/embeded/AdManager;->webViewMap:Ljava/util/HashMap;

    .line 894
    :cond_7
    const/4 v6, 0x0

    .line 895
    .local v6, "awv":Lcom/energysource/szj/embeded/AdvWebView;
    const/16 v17, 0x0

    .line 897
    .local v17, "key":I
    const-string v30, "ADMANAGER"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "====request id:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "AD_MANAGER.webViewMap size:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    sget-object v32, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/energysource/szj/embeded/AdManager;->webViewMap:Ljava/util/HashMap;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/HashMap;->size()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    sget-object v30, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/energysource/szj/embeded/AdManager;->webViewMap:Ljava/util/HashMap;

    move-object/from16 v30, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    if-eqz v30, :cond_f

    .line 901
    sget-object v30, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/energysource/szj/embeded/AdManager;->webViewMap:Ljava/util/HashMap;

    move-object/from16 v30, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/HashMap;

    .line 902
    .local v23, "tempMap":Ljava/util/HashMap;
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .end local v7    # "bootable":Lcom/energysource/szj/android/SZJModule;
    .restart local v16    # "it":Ljava/util/Iterator;
    :cond_8
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_b

    .line 903
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 904
    .local v9, "e":Ljava/util/Map$Entry;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/energysource/szj/embeded/AdvWebView;

    .line 905
    .local v24, "tempView":Lcom/energysource/szj/embeded/AdvWebView;
    const/16 v30, 0x4

    invoke-virtual/range {v24 .. v24}, Lcom/energysource/szj/embeded/AdvWebView;->getVisibility()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_9

    .line 906
    const-string v30, "==AdView=="

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "==tempView.getVisibility()=="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v24 .. v24}, Lcom/energysource/szj/embeded/AdvWebView;->getVisibility()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/energysource/szj/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/energysource/szj/embeded/AdView;->removeView(Landroid/view/View;)V

    .line 908
    move-object/from16 v6, v24

    .line 909
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 911
    :cond_9
    const/16 v30, 0x8

    invoke-virtual/range {v24 .. v24}, Lcom/energysource/szj/embeded/AdvWebView;->getVisibility()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_8

    .line 912
    const-string v30, "==AdView=="

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "==View.GONE===tempView.getVisibility()=="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v24 .. v24}, Lcom/energysource/szj/embeded/AdvWebView;->getVisibility()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/energysource/szj/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/energysource/szj/embeded/AdView;->removeView(Landroid/view/View;)V

    .line 914
    move-object/from16 v6, v24

    .line 915
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v17

    goto/16 :goto_2

    .line 884
    .end local v5    # "advObject":Lcom/energysource/szj/android/AdvObject;
    .end local v6    # "awv":Lcom/energysource/szj/embeded/AdvWebView;
    .end local v9    # "e":Ljava/util/Map$Entry;
    .end local v16    # "it":Ljava/util/Iterator;
    .end local v17    # "key":I
    .end local v23    # "tempMap":Ljava/util/HashMap;
    .end local v24    # "tempView":Lcom/energysource/szj/embeded/AdvWebView;
    .restart local v7    # "bootable":Lcom/energysource/szj/android/SZJModule;
    :cond_a
    invoke-virtual {v4}, Lcom/energysource/szj/embeded/AdView;->getSizeNo()I

    move-result v21

    goto/16 :goto_1

    .line 918
    .end local v7    # "bootable":Lcom/energysource/szj/android/SZJModule;
    .restart local v5    # "advObject":Lcom/energysource/szj/android/AdvObject;
    .restart local v6    # "awv":Lcom/energysource/szj/embeded/AdvWebView;
    .restart local v16    # "it":Ljava/util/Iterator;
    .restart local v17    # "key":I
    .restart local v23    # "tempMap":Ljava/util/HashMap;
    :cond_b
    if-nez v6, :cond_c

    .line 919
    new-instance v6, Lcom/energysource/szj/embeded/AdvWebView;

    .end local v6    # "awv":Lcom/energysource/szj/embeded/AdvWebView;
    sget-object v30, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/energysource/szj/embeded/AdManager;->mActivity:Landroid/app/Activity;

    move-object/from16 v30, v0

    move-object v0, v6

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/energysource/szj/embeded/AdvWebView;-><init>(Landroid/content/Context;)V

    .line 920
    .restart local v6    # "awv":Lcom/energysource/szj/embeded/AdvWebView;
    const/16 v30, 0x0

    move-object v0, v6

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/energysource/szj/embeded/AdvWebView;->setBackgroundColor(I)V

    .line 922
    :cond_c
    if-nez v17, :cond_e

    .line 923
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    sget-object v30, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/energysource/szj/embeded/AdManager;->webViewMap:Ljava/util/HashMap;

    move-object/from16 v30, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    .end local v16    # "it":Ljava/util/Iterator;
    :goto_3
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v5}, Lcom/energysource/szj/android/AdvObject;->getWidth()I

    move-result v30

    invoke-virtual {v5}, Lcom/energysource/szj/android/AdvObject;->getHeight()I

    move-result v31

    move-object/from16 v0, v19

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 938
    .local v19, "p":Landroid/widget/LinearLayout$LayoutParams;
    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/energysource/szj/embeded/AdvWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 939
    invoke-virtual {v5}, Lcom/energysource/szj/android/AdvObject;->getTime()J

    move-result-wide v30

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-nez v30, :cond_10

    .line 940
    const-wide/16 v30, 0xbb8

    move-object v0, v6

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/energysource/szj/embeded/AdvWebView;->setTime(J)V

    .line 944
    :goto_4
    invoke-virtual {v5}, Lcom/energysource/szj/android/AdvObject;->getTid()Ljava/lang/String;

    move-result-object v30

    move-object v0, v6

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/energysource/szj/embeded/AdvWebView;->setTid(Ljava/lang/String;)V

    .line 945
    invoke-virtual {v5}, Lcom/energysource/szj/android/AdvObject;->getShowtype()I

    move-result v30

    move-object v0, v6

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/energysource/szj/embeded/AdvWebView;->setShowType(I)V

    .line 946
    invoke-virtual {v5}, Lcom/energysource/szj/android/AdvObject;->getWidth()I

    move-result v30

    move-object v0, v6

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/energysource/szj/embeded/AdvWebView;->setResWidth(I)V

    .line 947
    invoke-virtual {v5}, Lcom/energysource/szj/android/AdvObject;->getHeight()I

    move-result v30

    move-object v0, v6

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/energysource/szj/embeded/AdvWebView;->setResHeight(I)V

    .line 948
    invoke-virtual {v6}, Lcom/energysource/szj/embeded/AdvWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v30

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 949
    const/16 v30, 0x0

    move-object v0, v6

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/energysource/szj/embeded/AdvWebView;->setVerticalScrollBarEnabled(Z)V

    .line 950
    const/16 v30, 0x0

    move-object v0, v6

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/energysource/szj/embeded/AdvWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 951
    invoke-static {}, Lcom/energysource/szj/embeded/AdvWebView$EsScreen;->getInstance()Lcom/energysource/szj/embeded/AdvWebView$EsScreen;

    move-result-object v11

    .line 952
    .local v11, "es":Lcom/energysource/szj/embeded/AdvWebView$EsScreen;
    invoke-virtual {v5}, Lcom/energysource/szj/android/AdvObject;->getHeight()I

    move-result v30

    move-object v0, v11

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/energysource/szj/embeded/AdvWebView$EsScreen;->setHeight(I)V

    .line 953
    invoke-virtual {v5}, Lcom/energysource/szj/android/AdvObject;->getWidth()I

    move-result v30

    move-object v0, v11

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/energysource/szj/embeded/AdvWebView$EsScreen;->setWidth(I)V

    .line 954
    const-string v30, "es"

    move-object v0, v6

    move-object v1, v11

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/energysource/szj/embeded/AdvWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 956
    new-instance v28, Lcom/energysource/szj/embeded/AdvWebView$MyWebViewClient;

    invoke-direct/range {v28 .. v28}, Lcom/energysource/szj/embeded/AdvWebView$MyWebViewClient;-><init>()V

    .line 957
    .local v28, "webViewClient":Lcom/energysource/szj/embeded/AdvWebView$MyWebViewClient;
    invoke-virtual {v5}, Lcom/energysource/szj/android/AdvObject;->getTid()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/energysource/szj/embeded/AdvWebView$MyWebViewClient;->setTid(Ljava/lang/String;)V

    .line 958
    invoke-virtual {v5}, Lcom/energysource/szj/android/AdvObject;->getResTitle()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/energysource/szj/embeded/AdvWebView$MyWebViewClient;->setResTitle(Ljava/lang/String;)V

    .line 959
    invoke-virtual {v5}, Lcom/energysource/szj/android/AdvObject;->getResContent()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/energysource/szj/embeded/AdvWebView$MyWebViewClient;->setResContent(Ljava/lang/String;)V

    .line 960
    invoke-virtual {v5}, Lcom/energysource/szj/android/AdvObject;->getShowtype()I

    move-result v30

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/energysource/szj/embeded/AdvWebView$MyWebViewClient;->setShowtype(I)V

    .line 961
    move-object v0, v6

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/energysource/szj/embeded/AdvWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 963
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "file://"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v5}, Lcom/energysource/szj/android/AdvObject;->getUrl()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object v0, v6

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/energysource/szj/embeded/AdvWebView;->loadUrl(Ljava/lang/String;)V

    .line 965
    const/4 v5, 0x0

    .line 966
    const/16 v30, -0x1

    const/16 v31, 0x0

    move-object v0, v4

    move-object v1, v6

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/energysource/szj/embeded/AdView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 967
    const/16 v30, 0x1

    move-object v0, v6

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/energysource/szj/embeded/AdvWebView;->setLast(Z)V

    .line 968
    const-string v30, "wljie"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "====adView.getWidth():"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v4}, Lcom/energysource/szj/embeded/AdView;->getWidth()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/energysource/szj/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    const-string v30, "wljie"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "====adView.getHeight():"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v4}, Lcom/energysource/szj/embeded/AdView;->getHeight()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/energysource/szj/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    const-string v30, "wljie"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "====adView.getWidth():"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v4}, Lcom/energysource/szj/embeded/AdView;->getResWidth()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/energysource/szj/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    const-string v30, "wljie"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "====adView.getHeight():"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v4}, Lcom/energysource/szj/embeded/AdView;->getResHeight()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/energysource/szj/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/energysource/szj/embeded/AdManager;->mAdViewList:Landroid/util/SparseArray;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/energysource/szj/embeded/AdManager;->mAdViewList:Landroid/util/SparseArray;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, p1

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 978
    sget-object v30, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/energysource/szj/embeded/AdManager;->adListener:Lcom/energysource/szj/embeded/AdListener;

    move-object/from16 v30, v0

    if-eqz v30, :cond_d

    invoke-virtual {v4}, Lcom/energysource/szj/embeded/AdView;->getChildCount()I

    move-result v30

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_d

    .line 979
    sget-object v30, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/energysource/szj/embeded/AdManager;->adListener:Lcom/energysource/szj/embeded/AdListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object v1, v4

    invoke-interface {v0, v1}, Lcom/energysource/szj/embeded/AdListener;->receiveAd(Lcom/energysource/szj/embeded/AdView;)V

    .line 1007
    .end local v4    # "adView":Lcom/energysource/szj/embeded/AdView;
    .end local v5    # "advObject":Lcom/energysource/szj/android/AdvObject;
    .end local v6    # "awv":Lcom/energysource/szj/embeded/AdvWebView;
    .end local v8    # "chm":Ljava/util/concurrent/ConcurrentHashMap;
    .end local v11    # "es":Lcom/energysource/szj/embeded/AdvWebView$EsScreen;
    .end local v15    # "instance":Lcom/energysource/szj/embeded/SZJServiceInstance;
    .end local v17    # "key":I
    .end local v19    # "p":Landroid/widget/LinearLayout$LayoutParams;
    .end local v21    # "sizeNo":I
    .end local v23    # "tempMap":Ljava/util/HashMap;
    .end local v28    # "webViewClient":Lcom/energysource/szj/embeded/AdvWebView$MyWebViewClient;
    :cond_d
    :goto_5
    return-void

    .line 926
    .restart local v4    # "adView":Lcom/energysource/szj/embeded/AdView;
    .restart local v5    # "advObject":Lcom/energysource/szj/android/AdvObject;
    .restart local v6    # "awv":Lcom/energysource/szj/embeded/AdvWebView;
    .restart local v8    # "chm":Ljava/util/concurrent/ConcurrentHashMap;
    .restart local v15    # "instance":Lcom/energysource/szj/embeded/SZJServiceInstance;
    .restart local v16    # "it":Ljava/util/Iterator;
    .restart local v17    # "key":I
    .restart local v21    # "sizeNo":I
    .restart local v23    # "tempMap":Ljava/util/HashMap;
    :cond_e
    sget-object v30, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/energysource/szj/embeded/AdManager;->webViewMap:Ljava/util/HashMap;

    move-object/from16 v30, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 1004
    .end local v4    # "adView":Lcom/energysource/szj/embeded/AdView;
    .end local v5    # "advObject":Lcom/energysource/szj/android/AdvObject;
    .end local v6    # "awv":Lcom/energysource/szj/embeded/AdvWebView;
    .end local v8    # "chm":Ljava/util/concurrent/ConcurrentHashMap;
    .end local v15    # "instance":Lcom/energysource/szj/embeded/SZJServiceInstance;
    .end local v16    # "it":Ljava/util/Iterator;
    .end local v17    # "key":I
    .end local v21    # "sizeNo":I
    .end local v23    # "tempMap":Ljava/util/HashMap;
    :catch_0
    move-exception v30

    move-object/from16 v9, v30

    .line 1005
    .local v9, "e":Ljava/lang/Exception;
    const-string v30, "ADMANAGER"

    const-string v31, ""

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object v2, v9

    invoke-static {v0, v1, v2}, Lcom/energysource/szj/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 930
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v4    # "adView":Lcom/energysource/szj/embeded/AdView;
    .restart local v5    # "advObject":Lcom/energysource/szj/android/AdvObject;
    .restart local v6    # "awv":Lcom/energysource/szj/embeded/AdvWebView;
    .restart local v7    # "bootable":Lcom/energysource/szj/android/SZJModule;
    .restart local v8    # "chm":Ljava/util/concurrent/ConcurrentHashMap;
    .restart local v15    # "instance":Lcom/energysource/szj/embeded/SZJServiceInstance;
    .restart local v17    # "key":I
    .restart local v21    # "sizeNo":I
    :cond_f
    :try_start_1
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    .line 931
    .restart local v23    # "tempMap":Ljava/util/HashMap;
    new-instance v6, Lcom/energysource/szj/embeded/AdvWebView;

    .end local v6    # "awv":Lcom/energysource/szj/embeded/AdvWebView;
    sget-object v30, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/energysource/szj/embeded/AdManager;->mActivity:Landroid/app/Activity;

    move-object/from16 v30, v0

    move-object v0, v6

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/energysource/szj/embeded/AdvWebView;-><init>(Landroid/content/Context;)V

    .line 932
    .restart local v6    # "awv":Lcom/energysource/szj/embeded/AdvWebView;
    const/16 v30, 0x0

    move-object v0, v6

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/energysource/szj/embeded/AdvWebView;->setBackgroundColor(I)V

    .line 933
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    sget-object v30, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/energysource/szj/embeded/AdManager;->webViewMap:Ljava/util/HashMap;

    move-object/from16 v30, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 942
    .end local v7    # "bootable":Lcom/energysource/szj/android/SZJModule;
    .restart local v19    # "p":Landroid/widget/LinearLayout$LayoutParams;
    :cond_10
    invoke-virtual {v5}, Lcom/energysource/szj/android/AdvObject;->getTime()J

    move-result-wide v30

    move-object v0, v6

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/energysource/szj/embeded/AdvWebView;->setTime(J)V

    goto/16 :goto_4

    .line 982
    .end local v6    # "awv":Lcom/energysource/szj/embeded/AdvWebView;
    .end local v17    # "key":I
    .end local v19    # "p":Landroid/widget/LinearLayout$LayoutParams;
    .end local v23    # "tempMap":Ljava/util/HashMap;
    .restart local v7    # "bootable":Lcom/energysource/szj/android/SZJModule;
    :cond_11
    sget-object v30, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/energysource/szj/embeded/AdManager;->adListener:Lcom/energysource/szj/embeded/AdListener;

    move-object/from16 v30, v0

    if-eqz v30, :cond_12

    .line 983
    sget-object v30, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/energysource/szj/embeded/AdManager;->adListener:Lcom/energysource/szj/embeded/AdListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object v1, v4

    invoke-interface {v0, v1}, Lcom/energysource/szj/embeded/AdListener;->failedReceiveAd(Lcom/energysource/szj/embeded/AdView;)V

    .line 985
    :cond_12
    const-string v30, "==AdView=="

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "return AdWebView is null.try late!===1===="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/energysource/szj/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    new-instance v12, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v30

    move-object v0, v12

    move-object/from16 v1, v30

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 987
    .local v12, "h":Landroid/os/Handler;
    move-object v0, v12

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v18

    .line 988
    .local v18, "msg":Landroid/os/Message;
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v18

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 989
    const-wide/16 v30, 0x1388

    move-object v0, v12

    move-object/from16 v1, v18

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_5

    .line 996
    .end local v4    # "adView":Lcom/energysource/szj/embeded/AdView;
    .end local v5    # "advObject":Lcom/energysource/szj/android/AdvObject;
    .end local v7    # "bootable":Lcom/energysource/szj/android/SZJModule;
    .end local v12    # "h":Landroid/os/Handler;
    .end local v18    # "msg":Landroid/os/Message;
    .end local v21    # "sizeNo":I
    :cond_13
    invoke-virtual {v15}, Lcom/energysource/szj/embeded/SZJServiceInstance;->isDestoryFlag()Z

    move-result v30

    if-nez v30, :cond_d

    .line 998
    const-string v30, "==AdView=="

    const-string v31, "wait load class.5"

    invoke-static/range {v30 .. v31}, Lcom/energysource/szj/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    new-instance v12, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v30

    move-object v0, v12

    move-object/from16 v1, v30

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 1000
    .restart local v12    # "h":Landroid/os/Handler;
    move-object v0, v12

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v18

    .line 1001
    .restart local v18    # "msg":Landroid/os/Message;
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v18

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1002
    const-wide/16 v30, 0x7d0

    move-object v0, v12

    move-object/from16 v1, v18

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5
.end method

.method protected setDebug(Z)V
    .locals 1
    .param p1, "isDebug"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/energysource/szj/embeded/AdManager;->isDebug:Z

    .line 110
    invoke-static {}, Lcom/energysource/szj/embeded/SZJServiceInstance;->getInstance()Lcom/energysource/szj/embeded/SZJServiceInstance;

    move-result-object v0

    .line 111
    .local v0, "instance":Lcom/energysource/szj/embeded/SZJServiceInstance;
    invoke-virtual {v0, p1}, Lcom/energysource/szj/embeded/SZJServiceInstance;->setDebug(Z)V

    .line 112
    return-void
.end method
