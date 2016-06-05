.class public Lcom/energysource/szj/embeded/AdView;
.super Landroid/widget/RelativeLayout;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/energysource/szj/embeded/AdView$AdViewTime;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "==AdView=="

.field private static final mAdManager:Lcom/energysource/szj/embeded/AdManager;


# instance fields
.field private final LAYOUT_PARAMS:Landroid/widget/RelativeLayout$LayoutParams;

.field private final MSG_FIRST:I

.field private final MSG_FLIP:I

.field private adExitFlag:Z

.field private adtime_in:J

.field private adtime_out:J

.field private checkSdkConfigFlag:Z

.field private mAdNumInTask:I

.field private mCurr:I

.field private final mHandler:Landroid/os/Handler;

.field private mInAnim:Landroid/view/animation/TranslateAnimation;

.field private mInterval:J

.field private mIsTaskShowOver:Z

.field private mIsTransparent:Z

.field private mOutAnim:Landroid/view/animation/TranslateAnimation;

.field private mStart:Z

.field private mVisible:Z

.field private resHeight:I

.field private resWidth:I

.field private running:Z

.field private showtype:I

.field private sizeNo:I

.field private tid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    sput-object v0, Lcom/energysource/szj/embeded/AdView;->mAdManager:Lcom/energysource/szj/embeded/AdManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 94
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/energysource/szj/embeded/AdView;->LAYOUT_PARAMS:Landroid/widget/RelativeLayout$LayoutParams;

    .line 29
    iput v2, p0, Lcom/energysource/szj/embeded/AdView;->sizeNo:I

    .line 35
    iput-boolean v2, p0, Lcom/energysource/szj/embeded/AdView;->mVisible:Z

    .line 36
    iput-boolean v2, p0, Lcom/energysource/szj/embeded/AdView;->running:Z

    .line 37
    iput-boolean v2, p0, Lcom/energysource/szj/embeded/AdView;->mStart:Z

    .line 40
    const/4 v1, -0x1

    iput v1, p0, Lcom/energysource/szj/embeded/AdView;->mCurr:I

    .line 43
    iput v2, p0, Lcom/energysource/szj/embeded/AdView;->mAdNumInTask:I

    .line 45
    iput-wide v6, p0, Lcom/energysource/szj/embeded/AdView;->adtime_in:J

    .line 47
    iput-wide v6, p0, Lcom/energysource/szj/embeded/AdView;->adtime_out:J

    .line 51
    iput-boolean v2, p0, Lcom/energysource/szj/embeded/AdView;->adExitFlag:Z

    .line 56
    iput v2, p0, Lcom/energysource/szj/embeded/AdView;->showtype:I

    .line 58
    iput v2, p0, Lcom/energysource/szj/embeded/AdView;->resWidth:I

    .line 59
    iput-boolean v4, p0, Lcom/energysource/szj/embeded/AdView;->checkSdkConfigFlag:Z

    .line 62
    iput v4, p0, Lcom/energysource/szj/embeded/AdView;->MSG_FLIP:I

    .line 63
    iput v5, p0, Lcom/energysource/szj/embeded/AdView;->MSG_FIRST:I

    .line 64
    new-instance v1, Lcom/energysource/szj/embeded/AdView$1;

    invoke-direct {v1, p0}, Lcom/energysource/szj/embeded/AdView$1;-><init>(Lcom/energysource/szj/embeded/AdView;)V

    iput-object v1, p0, Lcom/energysource/szj/embeded/AdView;->mHandler:Landroid/os/Handler;

    .line 597
    iput v2, p0, Lcom/energysource/szj/embeded/AdView;->resHeight:I

    .line 96
    invoke-direct {p0, p1}, Lcom/energysource/szj/embeded/AdView;->initAnim(Landroid/content/Context;)V

    .line 98
    iget-object v1, p0, Lcom/energysource/szj/embeded/AdView;->LAYOUT_PARAMS:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 100
    invoke-virtual {p0, p2}, Lcom/energysource/szj/embeded/AdView;->setId(I)V

    .line 103
    sget-object v1, Lcom/energysource/szj/embeded/AdView;->mAdManager:Lcom/energysource/szj/embeded/AdManager;

    iget-object v1, v1, Lcom/energysource/szj/embeded/AdManager;->mAdViewList:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 107
    iget-object v1, p0, Lcom/energysource/szj/embeded/AdView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 108
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/energysource/szj/embeded/AdView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    .line 119
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/energysource/szj/embeded/AdView;->LAYOUT_PARAMS:Landroid/widget/RelativeLayout$LayoutParams;

    .line 29
    iput v3, p0, Lcom/energysource/szj/embeded/AdView;->sizeNo:I

    .line 35
    iput-boolean v3, p0, Lcom/energysource/szj/embeded/AdView;->mVisible:Z

    .line 36
    iput-boolean v3, p0, Lcom/energysource/szj/embeded/AdView;->running:Z

    .line 37
    iput-boolean v3, p0, Lcom/energysource/szj/embeded/AdView;->mStart:Z

    .line 40
    iput v4, p0, Lcom/energysource/szj/embeded/AdView;->mCurr:I

    .line 43
    iput v3, p0, Lcom/energysource/szj/embeded/AdView;->mAdNumInTask:I

    .line 45
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/energysource/szj/embeded/AdView;->adtime_in:J

    .line 47
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/energysource/szj/embeded/AdView;->adtime_out:J

    .line 51
    iput-boolean v3, p0, Lcom/energysource/szj/embeded/AdView;->adExitFlag:Z

    .line 56
    iput v3, p0, Lcom/energysource/szj/embeded/AdView;->showtype:I

    .line 58
    iput v3, p0, Lcom/energysource/szj/embeded/AdView;->resWidth:I

    .line 59
    iput-boolean v5, p0, Lcom/energysource/szj/embeded/AdView;->checkSdkConfigFlag:Z

    .line 62
    iput v5, p0, Lcom/energysource/szj/embeded/AdView;->MSG_FLIP:I

    .line 63
    iput v6, p0, Lcom/energysource/szj/embeded/AdView;->MSG_FIRST:I

    .line 64
    new-instance v1, Lcom/energysource/szj/embeded/AdView$1;

    invoke-direct {v1, p0}, Lcom/energysource/szj/embeded/AdView$1;-><init>(Lcom/energysource/szj/embeded/AdView;)V

    iput-object v1, p0, Lcom/energysource/szj/embeded/AdView;->mHandler:Landroid/os/Handler;

    .line 597
    iput v3, p0, Lcom/energysource/szj/embeded/AdView;->resHeight:I

    .line 121
    invoke-direct {p0, p1}, Lcom/energysource/szj/embeded/AdView;->initAnim(Landroid/content/Context;)V

    .line 123
    iget-object v1, p0, Lcom/energysource/szj/embeded/AdView;->LAYOUT_PARAMS:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 125
    invoke-direct {p0, p2}, Lcom/energysource/szj/embeded/AdView;->getViewParam(Landroid/util/AttributeSet;)V

    .line 128
    invoke-virtual {p0}, Lcom/energysource/szj/embeded/AdView;->getId()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 131
    sget-object v1, Lcom/energysource/szj/embeded/AdView;->mAdManager:Lcom/energysource/szj/embeded/AdManager;

    iget-object v1, v1, Lcom/energysource/szj/embeded/AdManager;->mAdViewList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/energysource/szj/embeded/AdView;->setId(I)V

    .line 137
    :cond_0
    sget-object v1, Lcom/energysource/szj/embeded/AdView;->mAdManager:Lcom/energysource/szj/embeded/AdManager;

    iget-object v1, v1, Lcom/energysource/szj/embeded/AdManager;->mAdViewList:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/energysource/szj/embeded/AdView;->getId()I

    move-result v2

    invoke-virtual {v1, v2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 138
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 143
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    const-string v1, ""

    invoke-static {p1, v1}, Lcom/energysource/szj/embeded/AdManager;->initAd(Landroid/app/Activity;Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/energysource/szj/embeded/AdView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 149
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/energysource/szj/embeded/AdView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 152
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/energysource/szj/embeded/AdView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/energysource/szj/embeded/AdView;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/energysource/szj/embeded/AdView;->running:Z

    return v0
.end method

.method static synthetic access$100(Lcom/energysource/szj/embeded/AdView;)V
    .locals 0
    .param p0, "x0"    # Lcom/energysource/szj/embeded/AdView;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/energysource/szj/embeded/AdView;->showNext()V

    return-void
.end method

.method static synthetic access$200(Lcom/energysource/szj/embeded/AdView;)J
    .locals 2
    .param p0, "x0"    # Lcom/energysource/szj/embeded/AdView;

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/energysource/szj/embeded/AdView;->mInterval:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/energysource/szj/embeded/AdView;J)J
    .locals 0
    .param p0, "x0"    # Lcom/energysource/szj/embeded/AdView;
    .param p1, "x1"    # J

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/energysource/szj/embeded/AdView;->adtime_in:J

    return-wide p1
.end method

.method static synthetic access$400()Lcom/energysource/szj/embeded/AdManager;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/energysource/szj/embeded/AdView;->mAdManager:Lcom/energysource/szj/embeded/AdManager;

    return-object v0
.end method

.method private checkScreenRotate(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v2, v5, Landroid/content/res/Configuration;->orientation:I

    .line 189
    .local v2, "screen":I
    sget-object v5, Lcom/energysource/szj/embeded/AdView;->mAdManager:Lcom/energysource/szj/embeded/AdManager;

    iget-object v5, v5, Lcom/energysource/szj/embeded/AdManager;->mTimeList:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/energysource/szj/embeded/AdView;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 190
    sget-object v5, Lcom/energysource/szj/embeded/AdView;->mAdManager:Lcom/energysource/szj/embeded/AdManager;

    iget-object v5, v5, Lcom/energysource/szj/embeded/AdManager;->mTimeList:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/energysource/szj/embeded/AdView;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/energysource/szj/embeded/AdView$AdViewTime;

    .line 191
    .local v0, "at":Lcom/energysource/szj/embeded/AdView$AdViewTime;
    invoke-virtual {v0}, Lcom/energysource/szj/embeded/AdView$AdViewTime;->getOrientation()I

    move-result v1

    .line 192
    .local v1, "orientation":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 193
    .local v3, "time":J
    if-ne v1, v2, :cond_1

    .line 194
    const-string v5, "==AdView=="

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5c4f\u5e55\u6ca1\u6709\u5207\u6362:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/energysource/szj/embeded/AdView$AdViewTime;->getTime_1()J

    move-result-wide v7

    sub-long v7, v3, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/energysource/szj/embeded/AdView$AdViewTime;->setTime_1(J)V

    .line 224
    invoke-virtual {v0, v2}, Lcom/energysource/szj/embeded/AdView$AdViewTime;->setOrientation(I)V

    .line 225
    sget-object v5, Lcom/energysource/szj/embeded/AdView;->mAdManager:Lcom/energysource/szj/embeded/AdManager;

    iget-object v5, v5, Lcom/energysource/szj/embeded/AdManager;->mTimeList:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/energysource/szj/embeded/AdView;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 226
    sget-object v5, Lcom/energysource/szj/embeded/AdView;->mAdManager:Lcom/energysource/szj/embeded/AdManager;

    iget-object v5, v5, Lcom/energysource/szj/embeded/AdManager;->mTimeList:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/energysource/szj/embeded/AdView;->getId()I

    move-result v6

    invoke-virtual {v5, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 234
    .end local v1    # "orientation":I
    .end local v3    # "time":J
    :goto_0
    return-void

    .line 197
    .restart local v1    # "orientation":I
    .restart local v3    # "time":J
    :cond_1
    const/4 v5, 0x1

    if-ne v2, v5, :cond_3

    .line 198
    const-string v5, "==AdView=="

    const-string v6, "==\u4ece\u7ad6\u5c4f\u5207\u6362\u5230\u6a2a\u5c4f\uff1aORIENTATION_PORTRAIT=1"

    invoke-static {v5, v6}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_2
    :goto_1
    const-string v5, "==AdView=="

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5c4f\u5e55\u5207\u6362\u65f6\u95f4\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/energysource/szj/embeded/AdView$AdViewTime;->getTime_1()J

    move-result-wide v7

    sub-long v7, v3, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0}, Lcom/energysource/szj/embeded/AdView$AdViewTime;->getTime_1()J

    move-result-wide v5

    sub-long v5, v3, v5

    const-wide/16 v7, 0xbb8

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    .line 209
    const-string v5, "==AdView=="

    const-string v6, "==============\u5c4f\u5e55\u5207\u6362\u5c0f\u4e8e3\u79d2\uff0c\u9000\u51fa\u4e0d\u663e\u793a\u5e7f\u544a=============="

    invoke-static {v5, v6}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0, v2}, Lcom/energysource/szj/embeded/AdView$AdViewTime;->setOrientation(I)V

    .line 212
    sget-object v5, Lcom/energysource/szj/embeded/AdView;->mAdManager:Lcom/energysource/szj/embeded/AdManager;

    iget-object v5, v5, Lcom/energysource/szj/embeded/AdManager;->mTimeList:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/energysource/szj/embeded/AdView;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 213
    sget-object v5, Lcom/energysource/szj/embeded/AdView;->mAdManager:Lcom/energysource/szj/embeded/AdManager;

    iget-object v5, v5, Lcom/energysource/szj/embeded/AdManager;->mTimeList:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/energysource/szj/embeded/AdView;->getId()I

    move-result v6

    invoke-virtual {v5, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 199
    :cond_3
    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    .line 200
    const-string v5, "==AdView=="

    const-string v6, "==\u4ece\u6a2a\u5c4f\u5207\u6362\u5230\u7ad6\u5c4f\uff1aORIENTATION_LANDSCAPE=2"

    invoke-static {v5, v6}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 228
    .end local v0    # "at":Lcom/energysource/szj/embeded/AdView$AdViewTime;
    .end local v1    # "orientation":I
    .end local v3    # "time":J
    :cond_4
    new-instance v0, Lcom/energysource/szj/embeded/AdView$AdViewTime;

    invoke-direct {v0, p0}, Lcom/energysource/szj/embeded/AdView$AdViewTime;-><init>(Lcom/energysource/szj/embeded/AdView;)V

    .line 229
    .restart local v0    # "at":Lcom/energysource/szj/embeded/AdView$AdViewTime;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/energysource/szj/embeded/AdView$AdViewTime;->setTime_1(J)V

    .line 230
    invoke-virtual {v0, v2}, Lcom/energysource/szj/embeded/AdView$AdViewTime;->setOrientation(I)V

    .line 231
    sget-object v5, Lcom/energysource/szj/embeded/AdView;->mAdManager:Lcom/energysource/szj/embeded/AdManager;

    iget-object v5, v5, Lcom/energysource/szj/embeded/AdManager;->mTimeList:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/energysource/szj/embeded/AdView;->getId()I

    move-result v6

    invoke-virtual {v5, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private covertUnit(Ljava/lang/String;)I
    .locals 6
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 522
    const/4 v1, 0x0

    .line 524
    .local v1, "len":I
    const/4 v3, 0x0

    .line 527
    .local v3, "tmp":Ljava/lang/String;
    :try_start_0
    const-string v4, "px"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 528
    const-string v4, "px"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 529
    .local v2, "pos":I
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 538
    .end local v2    # "pos":I
    :cond_0
    :goto_0
    if-eqz v3, :cond_2

    .line 540
    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 541
    const-string v4, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 542
    .restart local v2    # "pos":I
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 544
    .end local v2    # "pos":I
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 549
    :cond_2
    :goto_1
    return v1

    .line 530
    :cond_3
    const-string v4, "sp"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 531
    const-string v4, "sp"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 532
    .restart local v2    # "pos":I
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 533
    .end local v2    # "pos":I
    :cond_4
    const-string v4, "dip"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 534
    const-string v4, "dip"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 535
    .restart local v2    # "pos":I
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 546
    .end local v2    # "pos":I
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 547
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "==AdView=="

    const-string v5, ""

    invoke-static {v4, v5, v0}, Lcom/energysource/szj/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private getDisplayAdTime()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    .line 434
    :try_start_0
    iget-object v0, p0, Lcom/energysource/szj/embeded/AdView;->tid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/energysource/szj/embeded/AdView;->adtime_in:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/energysource/szj/embeded/AdView;->adtime_out:J

    .line 436
    const-string v0, "==AdView=="

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adtime_in:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/energysource/szj/embeded/AdView;->adtime_in:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v0, "==AdView=="

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adtime_out:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/energysource/szj/embeded/AdView;->adtime_out:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v0, "==AdView=="

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u3010showNext\u3011\uff1a adviewid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/energysource/szj/embeded/AdView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=showNext=\u5e7f\u544a\u6210\u529f\u5c55\u793a\u4e00\u6b21:\u3010\u65f6\u95f4\u3011:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/energysource/szj/embeded/AdView;->adtime_out:J

    iget-wide v4, p0, Lcom/energysource/szj/embeded/AdView;->adtime_in:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",tid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/energysource/szj/embeded/AdView;->tid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",showtype:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/energysource/szj/embeded/AdView;->showtype:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-wide v0, p0, Lcom/energysource/szj/embeded/AdView;->adtime_in:J

    iget-wide v2, p0, Lcom/energysource/szj/embeded/AdView;->adtime_out:J

    iget-object v4, p0, Lcom/energysource/szj/embeded/AdView;->tid:Ljava/lang/String;

    iget v5, p0, Lcom/energysource/szj/embeded/AdView;->showtype:I

    invoke-static/range {v0 .. v5}, Lcom/energysource/szj/embeded/AdManager;->saveAdViewShowTime(JJLjava/lang/String;I)V

    .line 450
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/energysource/szj/embeded/AdView;->adtime_in:J

    .line 451
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/energysource/szj/embeded/AdView;->adtime_out:J

    .line 463
    :goto_0
    return-void

    .line 453
    :cond_0
    const-string v0, "==AdView=="

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5e7f\u544a\u5c55\u793a\u65f6\u95f4\u8bb0\u5f55\u8fc7\u6ee4\uff1aadtime_in:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/energysource/szj/embeded/AdView;->adtime_in:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 457
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 458
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "==AdView=="

    const-string v1, "showNext:"

    invoke-static {v0, v1, v6}, Lcom/energysource/szj/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getViewParam(Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 159
    const-string v2, "transparent"

    const/4 v3, 0x1

    invoke-interface {p1, v4, v2, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/energysource/szj/embeded/AdView;->mIsTransparent:Z

    .line 161
    const-string v2, "debug"

    const/4 v3, 0x0

    invoke-interface {p1, v4, v2, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 162
    .local v0, "isdebug":Z
    const-string v2, "==AdView=="

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-===1=isdebug:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    sget-object v2, Lcom/energysource/szj/embeded/AdView;->mAdManager:Lcom/energysource/szj/embeded/AdManager;

    invoke-virtual {v2, v0}, Lcom/energysource/szj/embeded/AdManager;->setDebug(Z)V

    .line 168
    const-string v2, "http://schemas.android.com/apk/res/android"

    const-string v3, "layout_width"

    invoke-interface {p1, v2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "tmp":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/energysource/szj/embeded/AdView;->covertUnit(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/energysource/szj/embeded/AdView;->resWidth:I

    .line 171
    const-string v2, "http://schemas.android.com/apk/res/android"

    const-string v3, "layout_height"

    invoke-interface {p1, v2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-direct {p0, v1}, Lcom/energysource/szj/embeded/AdView;->covertUnit(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/energysource/szj/embeded/AdView;->resHeight:I

    .line 174
    const-string v2, "==AdView=="

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-===o-=========resWith\u3010"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/energysource/szj/embeded/AdView;->resWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u3011,resHeight\u3010"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/energysource/szj/embeded/AdView;->resHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u3011"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method private initAnim(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v9, 0x640

    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 324
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x40800000    # -1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/energysource/szj/embeded/AdView;->mInAnim:Landroid/view/animation/TranslateAnimation;

    .line 325
    iget-object v0, p0, Lcom/energysource/szj/embeded/AdView;->mInAnim:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 328
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/energysource/szj/embeded/AdView;->mOutAnim:Landroid/view/animation/TranslateAnimation;

    .line 329
    iget-object v0, p0, Lcom/energysource/szj/embeded/AdView;->mOutAnim:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 330
    return-void
.end method

.method private removeTask()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 399
    iget-boolean v0, p0, Lcom/energysource/szj/embeded/AdView;->mIsTaskShowOver:Z

    if-eqz v0, :cond_1

    .line 401
    iget v0, p0, Lcom/energysource/szj/embeded/AdView;->mAdNumInTask:I

    invoke-super {p0, v3, v0}, Landroid/widget/RelativeLayout;->removeViews(II)V

    .line 403
    const-string v0, "==AdView=="

    const-string v1, "=======AdView  removeTask==============="

    invoke-static {v0, v1}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v0, "==AdView=="

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/energysource/szj/embeded/AdView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "),getChildCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget v0, p0, Lcom/energysource/szj/embeded/AdView;->mCurr:I

    iget v1, p0, Lcom/energysource/szj/embeded/AdView;->mAdNumInTask:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/energysource/szj/embeded/AdView;->mCurr:I

    .line 407
    invoke-virtual {p0}, Lcom/energysource/szj/embeded/AdView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 408
    invoke-direct {p0}, Lcom/energysource/szj/embeded/AdView;->stopFlipping()V

    .line 409
    const/4 v0, -0x1

    iput v0, p0, Lcom/energysource/szj/embeded/AdView;->mCurr:I

    .line 413
    :cond_0
    iput v3, p0, Lcom/energysource/szj/embeded/AdView;->mAdNumInTask:I

    .line 414
    iput-boolean v3, p0, Lcom/energysource/szj/embeded/AdView;->mIsTaskShowOver:Z

    .line 418
    iget-boolean v0, p0, Lcom/energysource/szj/embeded/AdView;->adExitFlag:Z

    if-nez v0, :cond_1

    .line 419
    invoke-direct {p0}, Lcom/energysource/szj/embeded/AdView;->getDisplayAdTime()V

    .line 422
    :cond_1
    return-void
.end method

.method private showNext()V
    .locals 5

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/energysource/szj/embeded/AdView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 393
    :goto_0
    return-void

    .line 366
    :cond_0
    iget v1, p0, Lcom/energysource/szj/embeded/AdView;->mCurr:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/energysource/szj/embeded/AdView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/energysource/szj/embeded/AdvWebView;

    .line 367
    .local v0, "ad":Lcom/energysource/szj/embeded/AdvWebView;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/energysource/szj/embeded/AdvWebView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    .line 370
    invoke-virtual {v0}, Lcom/energysource/szj/embeded/AdvWebView;->getTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/energysource/szj/embeded/AdView;->mInterval:J

    .line 371
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/energysource/szj/embeded/AdvWebView;->setVisibility(I)V

    .line 372
    iget-object v1, p0, Lcom/energysource/szj/embeded/AdView;->mInAnim:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Lcom/energysource/szj/embeded/AdvWebView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 374
    invoke-virtual {v0}, Lcom/energysource/szj/embeded/AdvWebView;->isLast()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 376
    const-string v1, "==AdView=="

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "====\u8bf7\u6c42\u65b0\u5e7f\u544a==\u3010\u9891\u7387\u3011"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/energysource/szj/embeded/AdvWebView;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    sget-object v1, Lcom/energysource/szj/embeded/AdView;->mAdManager:Lcom/energysource/szj/embeded/AdManager;

    invoke-virtual {p0}, Lcom/energysource/szj/embeded/AdView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/energysource/szj/embeded/AdManager;->requestAdvById(I)V

    .line 383
    :cond_1
    :goto_1
    iget v1, p0, Lcom/energysource/szj/embeded/AdView;->mCurr:I

    invoke-virtual {p0, v1}, Lcom/energysource/szj/embeded/AdView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "ad":Lcom/energysource/szj/embeded/AdvWebView;
    check-cast v0, Lcom/energysource/szj/embeded/AdvWebView;

    .line 384
    .restart local v0    # "ad":Lcom/energysource/szj/embeded/AdvWebView;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/energysource/szj/embeded/AdvWebView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 385
    iget-object v1, p0, Lcom/energysource/szj/embeded/AdView;->mOutAnim:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Lcom/energysource/szj/embeded/AdvWebView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 387
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/energysource/szj/embeded/AdvWebView;->setVisibility(I)V

    .line 388
    iget v1, p0, Lcom/energysource/szj/embeded/AdView;->mAdNumInTask:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/energysource/szj/embeded/AdView;->mAdNumInTask:I

    .line 389
    invoke-virtual {v0}, Lcom/energysource/szj/embeded/AdvWebView;->isLast()Z

    move-result v1

    iput-boolean v1, p0, Lcom/energysource/szj/embeded/AdView;->mIsTaskShowOver:Z

    .line 391
    :cond_2
    iget v1, p0, Lcom/energysource/szj/embeded/AdView;->mCurr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/energysource/szj/embeded/AdView;->mCurr:I

    .line 392
    invoke-direct {p0}, Lcom/energysource/szj/embeded/AdView;->removeTask()V

    goto/16 :goto_0

    .line 380
    :cond_3
    iget-object v1, p0, Lcom/energysource/szj/embeded/AdView;->mOutAnim:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1}, Landroid/view/animation/TranslateAnimation;->getDuration()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/energysource/szj/embeded/AdView;->mInterval:J

    goto :goto_1
.end method

.method private startFlipping()V
    .locals 2

    .prologue
    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/energysource/szj/embeded/AdView;->mStart:Z

    .line 334
    const-string v0, "==AdView=="

    const-string v1, "____startFlipping___"

    invoke-static {v0, v1}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-direct {p0}, Lcom/energysource/szj/embeded/AdView;->updateRunning()V

    .line 336
    return-void
.end method

.method private stopFlipping()V
    .locals 2

    .prologue
    .line 339
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/energysource/szj/embeded/AdView;->mStart:Z

    .line 340
    const-string v0, "==AdView=="

    const-string v1, "____stopFlipping____"

    invoke-static {v0, v1}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-direct {p0}, Lcom/energysource/szj/embeded/AdView;->updateRunning()V

    .line 342
    return-void
.end method

.method private updateRunning()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 348
    iget-boolean v1, p0, Lcom/energysource/szj/embeded/AdView;->mVisible:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/energysource/szj/embeded/AdView;->mStart:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/energysource/szj/embeded/AdView;->running:Z

    .line 349
    iget-boolean v1, p0, Lcom/energysource/szj/embeded/AdView;->running:Z

    if-eqz v1, :cond_1

    .line 350
    iget-object v1, p0, Lcom/energysource/szj/embeded/AdView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 351
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/energysource/szj/embeded/AdView;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/energysource/szj/embeded/AdView;->mInterval:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 358
    .end local v0    # "msg":Landroid/os/Message;
    :goto_1
    return-void

    .line 348
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 353
    :cond_1
    iget-object v1, p0, Lcom/energysource/szj/embeded/AdView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 354
    const-string v1, "==AdView=="

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-adview\'s id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/energysource/szj/embeded/AdView;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-mHandler.removeMessages(MSG_FLIP),11111"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 248
    :try_start_0
    instance-of v3, p1, Lcom/energysource/szj/embeded/AdvWebView;

    if-nez v3, :cond_0

    .line 249
    const-string v3, "==AdView=="

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u68c0\u6d4b\u5982\u679cview\u7c7b\u578b\u4e0d\u662fAdWebView,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .end local p1    # "child":Landroid/view/View;
    :goto_0
    return-void

    .line 253
    .restart local p1    # "child":Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/energysource/szj/embeded/AdView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 254
    invoke-direct {p0}, Lcom/energysource/szj/embeded/AdView;->startFlipping()V

    .line 257
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/energysource/szj/embeded/AdvWebView;

    move-object v1, v0

    .line 259
    .local v1, "ad":Lcom/energysource/szj/embeded/AdvWebView;
    invoke-virtual {v1}, Lcom/energysource/szj/embeded/AdvWebView;->getTid()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/energysource/szj/embeded/AdView;->tid:Ljava/lang/String;

    .line 260
    invoke-virtual {v1}, Lcom/energysource/szj/embeded/AdvWebView;->getShowType()I

    move-result v3

    iput v3, p0, Lcom/energysource/szj/embeded/AdView;->showtype:I

    .line 263
    iget-boolean v3, p0, Lcom/energysource/szj/embeded/AdView;->mIsTransparent:Z

    invoke-virtual {v1, v3}, Lcom/energysource/szj/embeded/AdvWebView;->setTransparent(Z)V

    .line 266
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/energysource/szj/embeded/AdvWebView;->setVisibility(I)V

    .line 269
    move-object v0, p1

    check-cast v0, Lcom/energysource/szj/embeded/AdvWebView;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/energysource/szj/embeded/AdvWebView;->getResWidth()I

    move-result v3

    iput v3, p0, Lcom/energysource/szj/embeded/AdView;->resWidth:I

    .line 270
    check-cast p1, Lcom/energysource/szj/embeded/AdvWebView;

    .end local p1    # "child":Landroid/view/View;
    invoke-virtual {p1}, Lcom/energysource/szj/embeded/AdvWebView;->getResHeight()I

    move-result v3

    iput v3, p0, Lcom/energysource/szj/embeded/AdView;->resHeight:I

    .line 271
    iget-object v3, p0, Lcom/energysource/szj/embeded/AdView;->LAYOUT_PARAMS:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-super {p0, v1, p2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 274
    .end local v1    # "ad":Lcom/energysource/szj/embeded/AdvWebView;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 275
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "==AdView=="

    const-string v4, ""

    invoke-static {v3, v4, v2}, Lcom/energysource/szj/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getAdtime_in()J
    .locals 2

    .prologue
    .line 553
    iget-wide v0, p0, Lcom/energysource/szj/embeded/AdView;->adtime_in:J

    return-wide v0
.end method

.method protected getResHeight()I
    .locals 1

    .prologue
    .line 600
    iget v0, p0, Lcom/energysource/szj/embeded/AdView;->resHeight:I

    return v0
.end method

.method protected getResWidth()I
    .locals 1

    .prologue
    .line 589
    iget v0, p0, Lcom/energysource/szj/embeded/AdView;->resWidth:I

    return v0
.end method

.method protected getShowtype()I
    .locals 1

    .prologue
    .line 575
    iget v0, p0, Lcom/energysource/szj/embeded/AdView;->showtype:I

    return v0
.end method

.method protected getSizeNo()I
    .locals 1

    .prologue
    .line 609
    iget v0, p0, Lcom/energysource/szj/embeded/AdView;->sizeNo:I

    return v0
.end method

.method public getTid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/energysource/szj/embeded/AdView;->tid:Ljava/lang/String;

    return-object v0
.end method

.method protected isCheckSdkConfigFlag()Z
    .locals 1

    .prologue
    .line 582
    iget-boolean v0, p0, Lcom/energysource/szj/embeded/AdView;->checkSdkConfigFlag:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 466
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 467
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 477
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 479
    sget-object v0, Lcom/energysource/szj/embeded/AdView;->mAdManager:Lcom/energysource/szj/embeded/AdManager;

    iget-object v0, v0, Lcom/energysource/szj/embeded/AdManager;->mAdViewList:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/energysource/szj/embeded/AdView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 481
    const-string v0, "==AdView=="

    const-string v1, "!!!!!!onDetachedFromWindow"

    invoke-static {v0, v1}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iput-boolean v2, p0, Lcom/energysource/szj/embeded/AdView;->mIsTaskShowOver:Z

    .line 484
    iput-boolean v2, p0, Lcom/energysource/szj/embeded/AdView;->adExitFlag:Z

    .line 485
    invoke-direct {p0}, Lcom/energysource/szj/embeded/AdView;->removeTask()V

    .line 486
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 284
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 286
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 287
    .local v5, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 289
    .local v1, "heightSize":I
    sget-object v6, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v6, v6, Lcom/energysource/szj/embeded/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v6

    .line 291
    .local v2, "t":D
    sget-object v6, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v6, v6, Lcom/energysource/szj/embeded/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v4, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 292
    .local v4, "w":I
    sget-object v6, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v6, v6, Lcom/energysource/szj/embeded/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v0, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 294
    .local v0, "h":I
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v2, v6

    if-nez v6, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/energysource/szj/embeded/AdView;->getResHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v6}, Lcom/energysource/szj/embeded/AdManager;->changeDipToPx(F)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/energysource/szj/embeded/AdView;->setMeasuredDimension(II)V

    .line 317
    :goto_0
    return-void

    .line 303
    :cond_0
    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    cmpl-double v6, v2, v6

    if-nez v6, :cond_1

    .line 305
    invoke-virtual {p0}, Lcom/energysource/szj/embeded/AdView;->getResHeight()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/energysource/szj/embeded/AdView;->setMeasuredDimension(II)V

    .line 307
    invoke-virtual {p0}, Lcom/energysource/szj/embeded/AdView;->getResHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v6}, Lcom/energysource/szj/embeded/AdManager;->changeDipToPx(F)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/energysource/szj/embeded/AdView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 311
    :cond_1
    invoke-virtual {p0}, Lcom/energysource/szj/embeded/AdView;->getResHeight()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/energysource/szj/embeded/AdView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 498
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 504
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/energysource/szj/embeded/AdView;->mVisible:Z

    .line 506
    invoke-direct {p0}, Lcom/energysource/szj/embeded/AdView;->updateRunning()V

    .line 508
    const-string v0, "==AdView=="

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--adview\'s id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/energysource/szj/embeded/AdView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-onWindowVisibilityChanged(visibility):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mVisible:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/energysource/szj/embeded/AdView;->mVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    return-void

    .line 504
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setAdtime_in(J)V
    .locals 0
    .param p1, "adtime_in"    # J

    .prologue
    .line 557
    iput-wide p1, p0, Lcom/energysource/szj/embeded/AdView;->adtime_in:J

    .line 558
    return-void
.end method

.method protected setAdtime_out(J)V
    .locals 0
    .param p1, "adtime_out"    # J

    .prologue
    .line 561
    iput-wide p1, p0, Lcom/energysource/szj/embeded/AdView;->adtime_out:J

    .line 562
    return-void
.end method

.method protected setCheckSdkConfigFlag(Z)V
    .locals 0
    .param p1, "checkSdkConfigFlag"    # Z

    .prologue
    .line 586
    iput-boolean p1, p0, Lcom/energysource/szj/embeded/AdView;->checkSdkConfigFlag:Z

    .line 587
    return-void
.end method

.method protected setResHeight(I)V
    .locals 0
    .param p1, "resHeight"    # I

    .prologue
    .line 604
    iput p1, p0, Lcom/energysource/szj/embeded/AdView;->resHeight:I

    .line 605
    return-void
.end method

.method protected setResWidth(I)V
    .locals 0
    .param p1, "resWidth"    # I

    .prologue
    .line 593
    iput p1, p0, Lcom/energysource/szj/embeded/AdView;->resWidth:I

    .line 594
    return-void
.end method

.method protected setShowtype(I)V
    .locals 0
    .param p1, "showtype"    # I

    .prologue
    .line 579
    iput p1, p0, Lcom/energysource/szj/embeded/AdView;->showtype:I

    .line 580
    return-void
.end method

.method protected setSizeNo(I)V
    .locals 0
    .param p1, "sizeNo"    # I

    .prologue
    .line 613
    iput p1, p0, Lcom/energysource/szj/embeded/AdView;->sizeNo:I

    .line 614
    return-void
.end method

.method public setTid(Ljava/lang/String;)V
    .locals 0
    .param p1, "tid"    # Ljava/lang/String;

    .prologue
    .line 571
    iput-object p1, p0, Lcom/energysource/szj/embeded/AdView;->tid:Ljava/lang/String;

    .line 572
    return-void
.end method
