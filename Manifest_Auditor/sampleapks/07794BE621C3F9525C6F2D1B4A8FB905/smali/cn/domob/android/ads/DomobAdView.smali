.class public Lcn/domob/android/ads/DomobAdView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/DomobAdView$a;,
        Lcn/domob/android/ads/DomobAdView$b;,
        Lcn/domob/android/ads/DomobAdView$c;,
        Lcn/domob/android/ads/DomobAdView$d;,
        Lcn/domob/android/ads/DomobAdView$e;
    }
.end annotation


# static fields
.field public static final ANIMATION_ALPHA:I = 0x3

.field public static final ANIMATION_FRAGMENT:I = 0x9

.field public static final ANIMATION_ROTATE:I = 0x1

.field public static final ANIMATION_SCALE_FROM_MIDDLE:I = 0x5

.field public static final ANIMATION_TRANSLATE:I = 0x7

.field private static D:I

.field static final b:Landroid/os/Handler;

.field private static c:Ljava/lang/Boolean;


# instance fields
.field private A:Lcn/domob/android/ads/DomobAdView$c;

.field private B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private C:Z

.field private E:I

.field protected a:Z

.field private d:Lcn/domob/android/ads/DomobAdBuilder;

.field private e:Ljava/lang/String;

.field private f:Lcn/domob/android/ads/DomobAdEngine$RecvHandler;

.field private g:I

.field private h:I

.field private i:J

.field private j:J

.field private k:J

.field private l:Ljava/lang/String;

.field private m:Lcn/domob/android/ads/DomobAdListener;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:J

.field private s:J

.field private t:I

.field private u:Z

.field private v:Landroid/content/Context;

.field private w:Z

.field private x:Z

.field private y:Lcn/domob/android/ads/c;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcn/domob/android/ads/DomobAdView;->c:Ljava/lang/Boolean;

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcn/domob/android/ads/DomobAdView;->b:Landroid/os/Handler;

    .line 1216
    const/4 v0, 0x0

    sput v0, Lcn/domob/android/ads/DomobAdView;->D:I

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 101
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcn/domob/android/ads/DomobAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeset"    # Landroid/util/AttributeSet;

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/domob/android/ads/DomobAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeset"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v3, 0x0

    const-string v6, "DomobSDK"

    .line 125
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const-wide/32 v0, -0x1000000

    iput-wide v0, p0, Lcn/domob/android/ads/DomobAdView;->j:J

    .line 43
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/domob/android/ads/DomobAdView;->k:J

    .line 52
    iput-boolean v4, p0, Lcn/domob/android/ads/DomobAdView;->a:Z

    .line 61
    iput-boolean v3, p0, Lcn/domob/android/ads/DomobAdView;->w:Z

    .line 62
    iput-boolean v3, p0, Lcn/domob/android/ads/DomobAdView;->x:Z

    .line 64
    new-instance v0, Lcn/domob/android/ads/c;

    invoke-direct {v0}, Lcn/domob/android/ads/c;-><init>()V

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdView;->y:Lcn/domob/android/ads/c;

    .line 66
    iput-boolean v3, p0, Lcn/domob/android/ads/DomobAdView;->z:Z

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdView;->B:Ljava/util/ArrayList;

    .line 333
    iput-boolean v3, p0, Lcn/domob/android/ads/DomobAdView;->C:Z

    .line 127
    const-string v0, "DomobSDK"

    const-string v0, "current version is 20110701"

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-ne v7, v0, :cond_1

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Lcn/domob/android/ads/l;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v8, :cond_1

    :cond_0
    const-string v0, "DomobSDK"

    const-string v0, "you must have android.permission.WRITE_EXTERNAL_STORAGE permission !"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "you must have android.permission.WRITE_EXTERNAL_STORAGE permission !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_1
    const-string v0, "DomobSDK"

    invoke-static {v6, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    const-string v0, "DomobSDK"

    const-string v0, "DomobAdView!"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_2
    sget v0, Lcn/domob/android/ads/DomobAdView;->D:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcn/domob/android/ads/DomobAdView;->D:I

    iput v0, p0, Lcn/domob/android/ads/DomobAdView;->E:I

    .line 137
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/DomobAdView;->setDescendantFocusability(I)V

    .line 138
    invoke-virtual {p0, v4}, Lcn/domob/android/ads/DomobAdView;->setClickable(Z)V

    .line 139
    invoke-virtual {p0, v3}, Lcn/domob/android/ads/DomobAdView;->setLongClickable(Z)V

    .line 140
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/DomobAdView;->setGravity(I)V

    .line 142
    const/16 v0, 0x4e20

    iput v0, p0, Lcn/domob/android/ads/DomobAdView;->g:I

    .line 147
    if-eqz p2, :cond_5

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://schemas.android.com/apk/res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    const-string v1, "backgroundColor"

    invoke-interface {p2, v0, v1, v7}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 152
    if-eq v1, v7, :cond_3

    .line 153
    invoke-virtual {p0, v1}, Lcn/domob/android/ads/DomobAdView;->setBackgroundColor(I)V

    .line 155
    :cond_3
    const-string v1, "primaryTextColor"

    invoke-interface {p2, v0, v1, v7}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 156
    if-eq v1, v7, :cond_4

    .line 157
    invoke-virtual {p0, v1}, Lcn/domob/android/ads/DomobAdView;->setPrimaryTextColor(I)V

    .line 159
    :cond_4
    const-string v1, "keywords"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/android/ads/DomobAdView;->e:Ljava/lang/String;

    .line 160
    const-string v1, "spots"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/android/ads/DomobAdView;->l:Ljava/lang/String;

    .line 162
    const-string v1, "refreshInterval"

    const/16 v2, 0x14

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 163
    invoke-static {v0}, Lcn/domob/android/ads/DomobAdView;->a(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcn/domob/android/ads/DomobAdView;->g:I

    const-string v0, "DomobSDK"

    invoke-static {v6, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setDefaultInterval:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/domob/android/ads/DomobAdView;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_5
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdView;->v:Landroid/content/Context;

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdView;->d:Lcn/domob/android/ads/DomobAdBuilder;

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/DomobAdEngine$RecvHandler;

    .line 177
    sget-object v0, Lcn/domob/android/ads/DomobAdView;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    .line 178
    invoke-static {p1}, Lcn/domob/android/ads/DomobAdView;->b(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcn/domob/android/ads/DomobAdView;->c:Ljava/lang/Boolean;

    .line 181
    :cond_6
    invoke-direct {p0, p1}, Lcn/domob/android/ads/DomobAdView;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 182
    iput-boolean v3, p0, Lcn/domob/android/ads/DomobAdView;->q:Z

    .line 183
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/domob/android/ads/DomobAdView;->r:J

    .line 184
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/domob/android/ads/DomobAdView;->s:J

    .line 185
    invoke-virtual {p0, v4}, Lcn/domob/android/ads/DomobAdView;->setRequestInterval(I)V

    .line 188
    :cond_7
    iput-boolean v3, p0, Lcn/domob/android/ads/DomobAdView;->n:Z

    .line 189
    iput-boolean v4, p0, Lcn/domob/android/ads/DomobAdView;->p:Z

    .line 190
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/domob/android/ads/DomobAdView;->i:J

    .line 191
    iput-boolean v4, p0, Lcn/domob/android/ads/DomobAdView;->u:Z

    .line 192
    iput v3, p0, Lcn/domob/android/ads/DomobAdView;->t:I

    .line 194
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->q:Z

    if-eqz v0, :cond_a

    .line 195
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 197
    const-string v2, "DomobSDK"

    invoke-static {v6, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 198
    const-string v2, "DomobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mDisabled = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcn/domob/android/ads/DomobAdView;->q:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | mDisabledTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcn/domob/android/ads/DomobAdView;->r:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | mDisabledTimestamp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcn/domob/android/ads/DomobAdView;->s:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const-string v2, "DomobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "curr timestamp = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_8
    iget-wide v2, p0, Lcn/domob/android/ads/DomobAdView;->s:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcn/domob/android/ads/DomobAdView;->r:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_a

    .line 203
    const-string v0, "DomobSDK"

    invoke-static {v6, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 204
    const-string v0, "DomobSDK"

    const-string v0, "send detector because ad is disabled."

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_9
    invoke-direct {p0}, Lcn/domob/android/ads/DomobAdView;->j()V

    .line 210
    :cond_a
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->v:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcn/domob/android/ads/DomobAdView;->v:Landroid/content/Context;

    const-class v3, Lcn/domob/android/ads/DomobActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v0, v1, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v0, "DomobSDK"

    const-string v0, "please declare DomobActivity in AndroidManifest !"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "can\'t find declare of DomobActivity in AndroidManifest !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_b
    return-void
.end method

.method private static a(I)I
    .locals 2

    .prologue
    const/16 v1, 0x258

    const/16 v0, 0x14

    .line 471
    if-ge p0, v0, :cond_0

    .line 476
    :goto_0
    return v0

    .line 473
    :cond_0
    if-le p0, v1, :cond_1

    move v0, v1

    .line 474
    goto :goto_0

    :cond_1
    move v0, p0

    .line 476
    goto :goto_0
.end method

.method protected static a(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdBuilder;)Lcn/domob/android/ads/DomobAdBuilder;
    .locals 0

    .prologue
    .line 822
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdView;->d:Lcn/domob/android/ads/DomobAdBuilder;

    return-object p1
.end method

.method protected static a(Lcn/domob/android/ads/DomobAdView;)V
    .locals 1

    .prologue
    .line 368
    if-eqz p0, :cond_0

    .line 370
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->C:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->p:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Z

    if-nez v0, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    invoke-direct {p0}, Lcn/domob/android/ads/DomobAdView;->k()V

    goto :goto_0
.end method

.method protected static a(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdBuilder;I)V
    .locals 2

    .prologue
    const-string v1, "DomobSDK"

    .line 1070
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1071
    const-string v0, "DomobSDK"

    const-string v0, "start ad switch Animation"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    :cond_0
    const/16 v0, 0x9

    if-ne p2, v0, :cond_1

    .line 1075
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcn/domob/android/ads/DomobAdBuilder;->setVisibility(I)V

    .line 1076
    new-instance v0, Lcn/domob/android/ads/n;

    invoke-direct {v0}, Lcn/domob/android/ads/n;-><init>()V

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView;->d:Lcn/domob/android/ads/DomobAdBuilder;

    invoke-virtual {v0, p0, p1, v1}, Lcn/domob/android/ads/n;->a(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdBuilder;Lcn/domob/android/ads/DomobAdBuilder;)V

    .line 1077
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->d:Lcn/domob/android/ads/DomobAdBuilder;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/DomobAdBuilder;->setVisibility(I)V

    .line 1093
    :goto_0
    return-void

    .line 1081
    :cond_1
    invoke-static {p2, p0}, Lcn/domob/android/ads/DomobReport;->a(ILcn/domob/android/ads/DomobAdView;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1082
    new-instance v1, Lcn/domob/android/ads/DomobAdView$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p0, p0, p1, p2}, Lcn/domob/android/ads/DomobAdView$a;-><init>(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdBuilder;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1084
    const/4 v1, 0x5

    if-eq p2, v1, :cond_2

    .line 1085
    const/4 v1, 0x7

    if-ne p2, v1, :cond_3

    .line 1086
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcn/domob/android/ads/DomobAdBuilder;->setVisibility(I)V

    .line 1087
    invoke-virtual {p1, v0}, Lcn/domob/android/ads/DomobAdBuilder;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1092
    :cond_3
    invoke-virtual {p0, v0}, Lcn/domob/android/ads/DomobAdView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method protected static a(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/c;)V
    .locals 0

    .prologue
    .line 1167
    return-void
.end method

.method protected static a(Lcn/domob/android/ads/DomobAdView;Z)V
    .locals 0

    .prologue
    .line 326
    iput-boolean p1, p0, Lcn/domob/android/ads/DomobAdView;->p:Z

    .line 327
    return-void
.end method

.method private a(Z)V
    .locals 4

    .prologue
    const-string v0, "DomobSDK"

    .line 481
    monitor-enter p0

    .line 485
    :try_start_0
    const-string v0, "DomobSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    const-string v0, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "schedule for a fresh ad?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const-string v0, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "check WindowsVisibility:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcn/domob/android/ads/DomobAdView;->t:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const-string v0, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "check WindowsFocus:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcn/domob/android/ads/DomobAdView;->u:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const-string v0, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getVisibility:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdView;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const-string v0, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mInterval:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcn/domob/android/ads/DomobAdView;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_0
    const/4 v0, 0x0

    .line 494
    iget v1, p0, Lcn/domob/android/ads/DomobAdView;->h:I

    if-gtz v1, :cond_1

    iget v1, p0, Lcn/domob/android/ads/DomobAdView;->h:I

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcn/domob/android/ads/DomobAdView;->a:Z

    if-eqz v1, :cond_2

    .line 495
    :cond_1
    const/4 v0, 0x1

    .line 498
    :cond_2
    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    .line 499
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 500
    iget v0, p0, Lcn/domob/android/ads/DomobAdView;->t:I

    if-nez v0, :cond_5

    .line 501
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->u:Z

    if-eqz v0, :cond_5

    .line 502
    invoke-direct {p0}, Lcn/domob/android/ads/DomobAdView;->l()V

    .line 504
    new-instance v0, Lcn/domob/android/ads/DomobAdView$c;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/DomobAdView$c;-><init>(Lcn/domob/android/ads/DomobAdView;)V

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdView;->A:Lcn/domob/android/ads/DomobAdView$c;

    .line 505
    iget v0, p0, Lcn/domob/android/ads/DomobAdView;->h:I

    if-nez v0, :cond_4

    .line 506
    sget-object v0, Lcn/domob/android/ads/DomobAdView;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView;->A:Lcn/domob/android/ads/DomobAdView$c;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 510
    :goto_0
    const-string v0, "DomobSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 511
    const-string v0, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad refresh scheduled for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/domob/android/ads/DomobAdView;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from now."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 508
    :cond_4
    sget-object v0, Lcn/domob/android/ads/DomobAdView;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView;->A:Lcn/domob/android/ads/DomobAdView$c;

    iget v2, p0, Lcn/domob/android/ads/DomobAdView;->h:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 484
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 514
    :cond_5
    if-eqz p1, :cond_6

    :try_start_1
    iget v0, p0, Lcn/domob/android/ads/DomobAdView;->h:I

    if-nez v0, :cond_3

    .line 515
    :cond_6
    const-string v0, "DomobSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 516
    const-string v0, "DomobSDK"

    const-string v1, "just cancel the previous request!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_7
    invoke-direct {p0}, Lcn/domob/android/ads/DomobAdView;->l()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private a(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v0, "DomobSDK"

    .line 214
    .line 215
    const/4 v0, 0x0

    .line 217
    :try_start_0
    invoke-static {p1}, Lcn/domob/android/ads/DBHelper;->a(Landroid/content/Context;)Lcn/domob/android/ads/DBHelper;

    move-result-object v1

    .line 219
    invoke-virtual {v1}, Lcn/domob/android/ads/DBHelper;->b()Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 220
    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 221
    :cond_0
    const-string v2, "DomobSDK"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 222
    const-string v2, "DomobSDK"

    const-string v3, "no data in conf db, initialize now."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_1
    invoke-virtual {v1}, Lcn/domob/android/ads/DBHelper;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v4

    .line 246
    :goto_0
    if-eqz v0, :cond_2

    .line 247
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 250
    :cond_2
    return v1

    .line 227
    :cond_3
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 228
    const-string v1, "_dis_flag"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_4

    .line 229
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/domob/android/ads/DomobAdView;->q:Z

    .line 234
    :goto_1
    const-string v1, "_dis_time"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcn/domob/android/ads/DomobAdView;->r:J

    .line 235
    const-string v1, "_dis_timestamp"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcn/domob/android/ads/DomobAdView;->s:J

    .line 237
    const-string v1, "_interval"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 238
    invoke-virtual {p0, v1}, Lcn/domob/android/ads/DomobAdView;->setRequestInterval(I)V

    move v1, v3

    .line 240
    goto :goto_0

    .line 231
    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/domob/android/ads/DomobAdView;->q:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 242
    :catch_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 243
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    move v1, v4

    goto :goto_0

    .line 242
    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2
.end method

.method protected static b(Lcn/domob/android/ads/DomobAdView;)I
    .locals 1

    .prologue
    .line 826
    iget v0, p0, Lcn/domob/android/ads/DomobAdView;->h:I

    return v0
.end method

.method protected static b(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdBuilder;)V
    .locals 3

    .prologue
    const-string v1, "DomobSDK"

    .line 1043
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1044
    const-string v0, "DomobSDK"

    const-string v0, "startAlphaAnimation"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->d:Lcn/domob/android/ads/DomobAdBuilder;

    .line 1048
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcn/domob/android/ads/DomobAdBuilder;->setVisibility(I)V

    .line 1049
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdView;->d:Lcn/domob/android/ads/DomobAdBuilder;

    .line 1051
    if-eqz v0, :cond_1

    .line 1052
    invoke-virtual {p0, v0}, Lcn/domob/android/ads/DomobAdView;->removeView(Landroid/view/View;)V

    .line 1053
    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdBuilder;->c()V

    .line 1056
    :cond_1
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->o:Z

    if-eqz v0, :cond_2

    .line 1057
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1058
    const-wide/16 v1, 0xe9

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1059
    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->startNow()V

    .line 1060
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1061
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1062
    invoke-virtual {p0, v0}, Lcn/domob/android/ads/DomobAdView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1066
    :cond_2
    return-void
.end method

.method protected static b(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/c;)V
    .locals 0

    .prologue
    .line 1173
    return-void
.end method

.method protected static b(Lcn/domob/android/ads/DomobAdView;Z)V
    .locals 1

    .prologue
    .line 854
    if-eqz p0, :cond_0

    .line 855
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->n:Z

    .line 857
    :cond_0
    return-void
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 813
    :try_start_0
    const-string v0, "org.json.JSONException"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 818
    :goto_0
    return v0

    .line 815
    :catch_0
    move-exception v0

    .line 816
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 818
    :cond_0
    invoke-static {p0}, Lcn/domob/android/ads/DomobAdManager;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected static c(Lcn/domob/android/ads/DomobAdView;)Lcn/domob/android/ads/DomobAdListener;
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->m:Lcn/domob/android/ads/DomobAdListener;

    return-object v0
.end method

.method protected static c(Lcn/domob/android/ads/DomobAdView;Z)V
    .locals 1

    .prologue
    .line 860
    if-eqz p0, :cond_0

    .line 861
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/domob/android/ads/DomobAdView;->a(Z)V

    .line 863
    :cond_0
    return-void
.end method

.method protected static d(Lcn/domob/android/ads/DomobAdView;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 838
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    .line 839
    const-string v0, "DomobSDK"

    const-string v1, "The length of keywords cannot exceed 200!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    const/4 v0, 0x0

    .line 842
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method protected static e(Lcn/domob/android/ads/DomobAdView;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 846
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    .line 847
    const-string v0, "DomobSDK"

    const-string v1, "The length of spots cannot exceed 200!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    const/4 v0, 0x0

    .line 850
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->l:Ljava/lang/String;

    goto :goto_0
.end method

.method protected static f(Lcn/domob/android/ads/DomobAdView;)Lcn/domob/android/ads/DomobAdEngine$RecvHandler;
    .locals 1

    .prologue
    .line 874
    if-nez p0, :cond_0

    .line 875
    const/4 v0, 0x0

    .line 882
    :goto_0
    return-object v0

    .line 878
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/DomobAdEngine$RecvHandler;

    if-nez v0, :cond_1

    .line 879
    new-instance v0, Lcn/domob/android/ads/DomobAdEngine$RecvHandler;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/DomobAdEngine$RecvHandler;-><init>(Lcn/domob/android/ads/DomobAdView;)V

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/DomobAdEngine$RecvHandler;

    .line 882
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/DomobAdEngine$RecvHandler;

    goto :goto_0
.end method

.method protected static g(Lcn/domob/android/ads/DomobAdView;)V
    .locals 2

    .prologue
    .line 886
    if-nez p0, :cond_1

    .line 893
    :cond_0
    :goto_0
    return-void

    .line 890
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->m:Lcn/domob/android/ads/DomobAdListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/domob/android/ads/DomobAdView;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 891
    sget-object v0, Lcn/domob/android/ads/DomobAdView;->b:Landroid/os/Handler;

    new-instance v1, Lcn/domob/android/ads/DomobAdView$b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/DomobAdView$b;-><init>(Lcn/domob/android/ads/DomobAdView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected static h(Lcn/domob/android/ads/DomobAdView;)V
    .locals 3

    .prologue
    .line 916
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->m:Lcn/domob/android/ads/DomobAdListener;

    if-eqz v0, :cond_0

    .line 918
    :try_start_0
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->m:Lcn/domob/android/ads/DomobAdListener;

    invoke-interface {v0, p0}, Lcn/domob/android/ads/DomobAdListener;->onReceivedFreshAd(Lcn/domob/android/ads/DomobAdView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 925
    :cond_0
    :goto_0
    return-void

    .line 920
    :catch_0
    move-exception v0

    .line 921
    const-string v1, "DomobSDK"

    const-string v2, "Unhandled exception raised in onReceivedFreshAd."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private i()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    const-string v5, "DomobSDK"

    .line 355
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/domob/android/ads/DomobAdView;->i:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x14

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 356
    const-string v2, "DomobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring requestFreshAd.  Called "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds since last refresh.  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Refreshes must be at least "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " apart."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 364
    :goto_0
    return v0

    .line 358
    :cond_0
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->n:Z

    if-eqz v0, :cond_1

    .line 359
    const-string v0, "DomobSDK"

    const-string v0, "Ignoring doRefresh() because we are requesting an ad right now already."

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 360
    goto :goto_0

    .line 363
    :cond_1
    invoke-direct {p0}, Lcn/domob/android/ads/DomobAdView;->k()V

    .line 364
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic i(Lcn/domob/android/ads/DomobAdView;)Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->q:Z

    return v0
.end method

.method static synthetic j(Lcn/domob/android/ads/DomobAdView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->v:Landroid/content/Context;

    return-object v0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 378
    new-instance v0, Lcn/domob/android/ads/h;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/h;-><init>(Lcn/domob/android/ads/DomobAdView;)V

    invoke-virtual {v0}, Lcn/domob/android/ads/h;->start()V

    .line 379
    return-void
.end method

.method static synthetic k(Lcn/domob/android/ads/DomobAdView;)I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcn/domob/android/ads/DomobAdView;->t:I

    return v0
.end method

.method private k()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const-string v2, "DomobSDK"

    .line 382
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->q:Z

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->v:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/ads/DomobAdManager;->isTestMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->v:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/ads/DomobAdManager;->isTestAllowed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 387
    :cond_0
    const-string v0, "DomobSDK"

    const-string v0, "AD has been disabled on web server, ignore doRefresh()"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :goto_0
    return-void

    .line 392
    :cond_1
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Z

    if-nez v0, :cond_2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 393
    const-string v0, "DomobSDK"

    const-string v0, "Cannot doRefresh() when the DomobAdView is not visible. Call DomobAdView.setVisibility(View.VISIBLE) first."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 397
    :cond_2
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->n:Z

    if-eqz v0, :cond_3

    .line 398
    const-string v0, "DomobSDK"

    const-string v0, "Ignoring doRefresh() because we are requesting an ad right now already."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 401
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->n:Z

    .line 402
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/domob/android/ads/DomobAdView;->i:J

    .line 404
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->p:Z

    if-eqz v0, :cond_5

    .line 405
    const-string v0, "DomobSDK"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 406
    const-string v0, "DomobSDK"

    const-string v0, "send detector!"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_4
    invoke-direct {p0}, Lcn/domob/android/ads/DomobAdView;->j()V

    goto :goto_0

    .line 410
    :cond_5
    const-string v0, "DomobSDK"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 411
    const-string v0, "DomobSDK"

    const-string v0, "doRefresh now!"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_6
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GetAd by view:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/domob/android/ads/DomobAdView;->E:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    new-instance v0, Lcn/domob/android/ads/g;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/g;-><init>(Lcn/domob/android/ads/DomobAdView;)V

    invoke-virtual {v0}, Lcn/domob/android/ads/g;->start()V

    goto :goto_0
.end method

.method private l()V
    .locals 3

    .prologue
    const-string v2, "DomobSDK"

    .line 525
    sget-object v0, Lcn/domob/android/ads/DomobAdView;->b:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 526
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->A:Lcn/domob/android/ads/DomobAdView$c;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->A:Lcn/domob/android/ads/DomobAdView$c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/domob/android/ads/DomobAdView$c;->a:Z

    .line 528
    sget-object v0, Lcn/domob/android/ads/DomobAdView;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView;->A:Lcn/domob/android/ads/DomobAdView$c;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 529
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdView;->A:Lcn/domob/android/ads/DomobAdView$c;

    .line 531
    :cond_0
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 532
    const-string v0, "DomobSDK"

    const-string v0, "Cancelled an ad refresh scheduled."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_1
    return-void
.end method

.method static synthetic l(Lcn/domob/android/ads/DomobAdView;)Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->u:Z

    return v0
.end method

.method static synthetic m(Lcn/domob/android/ads/DomobAdView;)Lcn/domob/android/ads/DomobAdBuilder;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->d:Lcn/domob/android/ads/DomobAdBuilder;

    return-object v0
.end method


# virtual methods
.method public SetAnimList([I)V
    .locals 3
    .param p1, "animArray"    # [I

    .prologue
    .line 1193
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 1196
    return-void

    .line 1194
    :cond_0
    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView;->B:Ljava/util/ArrayList;

    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1193
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final a()J
    .locals 2

    .prologue
    .line 622
    iget-wide v0, p0, Lcn/domob/android/ads/DomobAdView;->k:J

    return-wide v0
.end method

.method protected final a(Lcn/domob/android/ads/DomobAdEngine;Lcn/domob/android/ads/DomobAdBuilder;)V
    .locals 5

    .prologue
    const/4 v3, 0x3

    const-string v4, "DomobSDK"

    .line 929
    const-string v0, "DomobSDK"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 930
    const-string v0, "DomobSDK"

    const-string v0, "construct ad view"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 934
    :cond_1
    const-string v0, "DomobSDK"

    const-string v0, "failed to construct view!"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :goto_0
    return-void

    .line 938
    :cond_2
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Z

    .line 939
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/domob/android/ads/DomobAdView;->a:Z

    .line 940
    invoke-virtual {p2, p1}, Lcn/domob/android/ads/DomobAdBuilder;->a(Lcn/domob/android/ads/DomobAdEngine;)V

    .line 942
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdView;->getVisibility()I

    move-result v1

    .line 943
    const-string v2, "DomobSDK"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 944
    const-string v2, "DomobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "this.getVisibility():"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :cond_3
    invoke-virtual {p2, v1}, Lcn/domob/android/ads/DomobAdBuilder;->setVisibility(I)V

    .line 948
    const/16 v2, 0x11

    invoke-virtual {p2, v2}, Lcn/domob/android/ads/DomobAdBuilder;->setGravity(I)V

    .line 949
    invoke-virtual {p1, p2}, Lcn/domob/android/ads/DomobAdEngine;->a(Lcn/domob/android/ads/DomobAdBuilder;)V

    .line 950
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Lcn/domob/android/ads/DomobAdEngine;->b()I

    move-result v3

    invoke-virtual {p1, v3}, Lcn/domob/android/ads/DomobAdEngine;->a(I)I

    move-result v3

    invoke-virtual {p1}, Lcn/domob/android/ads/DomobAdEngine;->c()I

    move-result v4

    invoke-virtual {p1, v4}, Lcn/domob/android/ads/DomobAdEngine;->a(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 951
    invoke-virtual {p2, v2}, Lcn/domob/android/ads/DomobAdBuilder;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 953
    sget-object v2, Lcn/domob/android/ads/DomobAdView;->b:Landroid/os/Handler;

    new-instance v3, Lcn/domob/android/ads/DomobAdView$d;

    invoke-direct {v3, p0, p2, v1, v0}, Lcn/domob/android/ads/DomobAdView$d;-><init>(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdBuilder;IZ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected final a(ZJJ)V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 728
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->q:Z

    if-ne v0, p1, :cond_1

    .line 745
    :cond_0
    :goto_0
    return-void

    .line 732
    :cond_1
    iput-boolean p1, p0, Lcn/domob/android/ads/DomobAdView;->q:Z

    .line 733
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->q:Z

    if-eqz v0, :cond_2

    .line 734
    const-string v0, "DomobSDK"

    const-string v1, "AD is disabled on web server."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iput-wide p2, p0, Lcn/domob/android/ads/DomobAdView;->r:J

    .line 736
    iput-wide p4, p0, Lcn/domob/android/ads/DomobAdView;->s:J

    .line 742
    :goto_1
    sget-object v0, Lcn/domob/android/ads/DomobAdView;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 743
    sget-object v0, Lcn/domob/android/ads/DomobAdView;->b:Landroid/os/Handler;

    new-instance v1, Lcn/domob/android/ads/DomobAdView$e;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/DomobAdView$e;-><init>(Lcn/domob/android/ads/DomobAdView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 738
    :cond_2
    iput-wide v1, p0, Lcn/domob/android/ads/DomobAdView;->r:J

    .line 739
    iput-wide v1, p0, Lcn/domob/android/ads/DomobAdView;->s:J

    goto :goto_1
.end method

.method protected final b()J
    .locals 2

    .prologue
    .line 642
    iget-wide v0, p0, Lcn/domob/android/ads/DomobAdView;->j:J

    return-wide v0
.end method

.method protected final c()Z
    .locals 1

    .prologue
    .line 1145
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->w:Z

    return v0
.end method

.method public cleanup()V
    .locals 2

    .prologue
    const-string v1, "DomobSDK"

    .line 802
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->d:Lcn/domob/android/ads/DomobAdBuilder;

    if-eqz v0, :cond_1

    .line 803
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 804
    const-string v0, "DomobSDK"

    const-string v0, "clear the ad."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->d:Lcn/domob/android/ads/DomobAdBuilder;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdBuilder;->c()V

    .line 807
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdView;->d:Lcn/domob/android/ads/DomobAdBuilder;

    .line 809
    :cond_1
    return-void
.end method

.method protected final d()Z
    .locals 1

    .prologue
    .line 1149
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->x:Z

    return v0
.end method

.method protected final e()Z
    .locals 1

    .prologue
    .line 1156
    const/4 v0, 0x0

    return v0
.end method

.method protected final f()Lcn/domob/android/ads/c;
    .locals 1

    .prologue
    .line 1163
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->y:Lcn/domob/android/ads/c;

    return-object v0
.end method

.method protected final g()Lcn/domob/android/ads/e;
    .locals 1

    .prologue
    .line 1180
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdListener()Lcn/domob/android/ads/DomobAdListener;
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->m:Lcn/domob/android/ads/DomobAdListener;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestInterval()I
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Lcn/domob/android/ads/DomobAdView;->h:I

    div-int/lit16 v0, v0, 0x3e8

    .line 426
    return v0
.end method

.method public getSpots()Ljava/lang/String;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->l:Ljava/lang/String;

    return-object v0
.end method

.method protected final h()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1199
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->B:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasAd()Z
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->d:Lcn/domob/android/ads/DomobAdBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->d:Lcn/domob/android/ads/DomobAdBuilder;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdBuilder;->b()Lcn/domob/android/ads/DomobAdEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const-string v2, "DomobSDK"

    .line 584
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    const-string v0, "DomobSDK"

    const-string v0, "onAttachedToWindow"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_0
    iput-boolean v1, p0, Lcn/domob/android/ads/DomobAdView;->o:Z

    .line 590
    invoke-direct {p0, v1}, Lcn/domob/android/ads/DomobAdView;->a(Z)V

    .line 591
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 592
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 6

    .prologue
    const/4 v3, 0x3

    const/4 v5, 0x0

    const-string v4, "DomobSDK"

    .line 596
    const-string v0, "DomobSDK"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    const-string v0, "DomobSDK"

    const-string v0, "onDetachedFromWindow"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_0
    iput-boolean v5, p0, Lcn/domob/android/ads/DomobAdView;->o:Z

    .line 601
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Z

    .line 604
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->v:Landroid/content/Context;

    if-eqz v0, :cond_2

    invoke-static {}, Lcn/domob/android/ads/j;->c()J

    move-result-wide v0

    const-string v2, "DomobSDK"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "DomobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The avg req time is:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/domob/android/ads/DomobAdView;->v:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/ads/DBHelper;->a(Landroid/content/Context;)Lcn/domob/android/ads/DBHelper;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "_avg_time"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/DBHelper;->a(Landroid/content/ContentValues;)I

    .line 605
    :cond_2
    invoke-direct {p0, v5}, Lcn/domob/android/ads/DomobAdView;->a(Z)V

    .line 607
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->d:Lcn/domob/android/ads/DomobAdBuilder;

    if-eqz v0, :cond_3

    .line 608
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->d:Lcn/domob/android/ads/DomobAdBuilder;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdBuilder;->c()V

    .line 611
    :cond_3
    invoke-static {}, Lcn/domob/android/ads/j;->b()V

    .line 613
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 614
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v8, -0x80000000

    const/4 v7, 0x3

    const-string v6, "DomobSDK"

    .line 271
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 272
    const-string v0, "DomobSDK"

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    const-string v0, "DomobSDK"

    const-string v0, "DomobAdView onMeasure"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 277
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 278
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 279
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 281
    const/4 v4, 0x0

    .line 285
    if-eq v1, v8, :cond_1

    if-ne v1, v9, :cond_8

    .line 290
    :cond_1
    :goto_0
    const-string v1, "DomobSDK"

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 291
    const-string v1, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "DomobAdView width is :"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_2
    if-ne v3, v9, :cond_9

    .line 295
    const-string v1, "DomobSDK"

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 296
    const-string v1, "DomobSDK"

    const-string v1, "heightMeasureSpec is android.view.View.MeasureSpec.EXACTLY!"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v1, v2

    .line 310
    :cond_4
    :goto_1
    const-string v2, "DomobSDK"

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 311
    const-string v2, "DomobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DomobAdView height is :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_5
    invoke-virtual {p0, v0, v1}, Lcn/domob/android/ads/DomobAdView;->setMeasuredDimension(II)V

    .line 316
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcn/domob/android/ads/DomobAdView;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    .line 317
    const-string v0, "DomobSDK"

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 318
    const-string v0, "DomobSDK"

    const-string v0, "request the first ad!"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_6
    invoke-direct {p0}, Lcn/domob/android/ads/DomobAdView;->i()Z

    .line 323
    :cond_7
    return-void

    .line 288
    :cond_8
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/ads/DomobAdManager;->e(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    .line 301
    :cond_9
    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView;->d:Lcn/domob/android/ads/DomobAdBuilder;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView;->d:Lcn/domob/android/ads/DomobAdBuilder;

    invoke-virtual {v1}, Lcn/domob/android/ads/DomobAdBuilder;->b()Lcn/domob/android/ads/DomobAdEngine;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 302
    invoke-virtual {v1}, Lcn/domob/android/ads/DomobAdEngine;->c()I

    move-result v5

    invoke-virtual {v1, v5}, Lcn/domob/android/ads/DomobAdEngine;->a(I)I

    move-result v1

    .line 303
    if-ne v3, v8, :cond_4

    if-ge v2, v1, :cond_4

    .line 304
    const-string v3, "DomobSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot display ad because its container is too small.  The ad is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " pixels tall but is only given "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at most to draw into.  Please make your view containing DomobAdView taller."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    goto/16 :goto_1

    :cond_a
    move v1, v4

    goto/16 :goto_1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    const-string v2, "DomobSDK"

    .line 560
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onWindowFocusChanged:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_0
    iput-boolean p1, p0, Lcn/domob/android/ads/DomobAdView;->u:Z

    .line 565
    invoke-direct {p0, p1}, Lcn/domob/android/ads/DomobAdView;->a(Z)V

    .line 567
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 568
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3
    .param p1, "v"    # I

    .prologue
    const-string v2, "DomobSDK"

    .line 572
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onWindowVisibilityChanged:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_0
    iput p1, p0, Lcn/domob/android/ads/DomobAdView;->t:I

    .line 577
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcn/domob/android/ads/DomobAdView;->a(Z)V

    .line 579
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 580
    return-void

    .line 577
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestFreshAd()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 347
    iput-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Z

    .line 348
    iput-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->C:Z

    .line 349
    invoke-direct {p0}, Lcn/domob/android/ads/DomobAdView;->i()Z

    .line 350
    return-void
.end method

.method public setAdListener(Lcn/domob/android/ads/DomobAdListener;)V
    .locals 1
    .param p1, "adlistener"    # Lcn/domob/android/ads/DomobAdListener;

    .prologue
    .line 753
    monitor-enter p0

    .line 754
    :try_start_0
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdView;->m:Lcn/domob/android/ads/DomobAdListener;

    .line 753
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBackgroundColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 652
    int-to-long v0, p1

    iput-wide v0, p0, Lcn/domob/android/ads/DomobAdView;->j:J

    .line 653
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdView;->invalidate()V

    .line 655
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->w:Z

    .line 656
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 673
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    .line 674
    const-string v0, "DomobSDK"

    const-string v1, "The length of keywords cannot exceed 200!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :goto_0
    return-void

    .line 677
    :cond_0
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdView;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public setPrimaryTextColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 631
    const/high16 v0, -0x1000000

    or-int/2addr v0, p1

    int-to-long v0, v0

    iput-wide v0, p0, Lcn/domob/android/ads/DomobAdView;->k:J

    .line 633
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->x:Z

    .line 634
    return-void
.end method

.method public setRequestInterval(I)V
    .locals 3
    .param p1, "requestInterval"    # I

    .prologue
    const/4 v1, 0x3

    const-string v2, "DomobSDK"

    .line 444
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 445
    const-string v0, "DomobSDK"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    const-string v0, "DomobSDK"

    const-string v0, "use the default interval(from xml)."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_0
    iget v0, p0, Lcn/domob/android/ads/DomobAdView;->g:I

    iput v0, p0, Lcn/domob/android/ads/DomobAdView;->h:I

    .line 457
    :goto_0
    const-string v0, "DomobSDK"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setRequestInterval:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/domob/android/ads/DomobAdView;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_1
    return-void

    .line 449
    :cond_2
    if-nez p1, :cond_3

    .line 450
    const-string v0, "DomobSDK"

    const-string v0, "refreshInterval is 0, AD will not be refreshed any more."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    mul-int/lit16 v0, p1, 0x3e8

    iput v0, p0, Lcn/domob/android/ads/DomobAdView;->h:I

    .line 453
    invoke-direct {p0}, Lcn/domob/android/ads/DomobAdView;->l()V

    goto :goto_0

    .line 455
    :cond_3
    invoke-static {p1}, Lcn/domob/android/ads/DomobAdView;->a(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcn/domob/android/ads/DomobAdView;->h:I

    goto :goto_0
.end method

.method public setSpots(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 695
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    .line 696
    const-string v0, "DomobSDK"

    const-string v1, "The length of spots cannot exceed 200!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :goto_0
    return-void

    .line 699
    :cond_0
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdView;->l:Ljava/lang/String;

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 5
    .param p1, "v"    # I

    .prologue
    const/4 v3, 0x0

    const-string v4, "DomobSDK"

    .line 707
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 708
    monitor-enter p0

    .line 709
    :try_start_0
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdView;->getChildCount()I

    move-result v0

    move v1, v3

    .line 710
    :goto_0
    if-lt v1, v0, :cond_2

    .line 715
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 716
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdView;->invalidate()V

    .line 708
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 720
    :cond_0
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v4, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 721
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setVisibility:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :cond_1
    if-nez p1, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcn/domob/android/ads/DomobAdView;->a(Z)V

    .line 725
    return-void

    .line 711
    :cond_2
    :try_start_1
    invoke-virtual {p0, v1}, Lcn/domob/android/ads/DomobAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 712
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 710
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 708
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move v0, v3

    .line 724
    goto :goto_1
.end method
