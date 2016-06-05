.class final Lcn/domob/android/ads/DomobAdEngine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/DomobAdEngine$b;,
        Lcn/domob/android/ads/DomobAdEngine$c;,
        Lcn/domob/android/ads/DomobAdEngine$d;,
        Lcn/domob/android/ads/DomobAdEngine$RecvHandler;,
        Lcn/domob/android/ads/DomobAdEngine$e;
    }
.end annotation


# static fields
.field private static C:Z

.field private static D:Ljava/lang/String;

.field private static final a:I


# instance fields
.field private A:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private B:Landroid/content/Intent;

.field private b:Landroid/graphics/Rect;

.field private c:Lcn/domob/android/ads/DomobAdBuilder;

.field private d:F

.field private e:Z

.field private f:Lcn/domob/android/ads/DomobAdEngine$RecvHandler;

.field private g:Lcn/domob/android/ads/DomobAdEngine$e;

.field private h:J

.field private i:J

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcn/domob/android/ads/DomobAdEngine$d;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcn/domob/android/ads/d;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private s:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Lorg/json/JSONObject;

.field private x:Lcn/domob/android/ads/b;

.field private y:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x66

    .line 33
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcn/domob/android/ads/DomobAdEngine;->a:I

    .line 1644
    const/4 v0, 0x0

    sput-boolean v0, Lcn/domob/android/ads/DomobAdEngine;->C:Z

    .line 1650
    const-string v0, ""

    sput-object v0, Lcn/domob/android/ads/DomobAdEngine;->D:Ljava/lang/String;

    .line 32
    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/ads/DomobAdEngine;->e:Z

    .line 56
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->t:Ljava/util/Hashtable;

    .line 62
    new-instance v0, Lcn/domob/android/ads/b;

    invoke-direct {v0}, Lcn/domob/android/ads/b;-><init>()V

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->x:Lcn/domob/android/ads/b;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->y:Ljava/util/HashMap;

    .line 66
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->z:Ljava/util/Vector;

    .line 68
    iput-object v1, p0, Lcn/domob/android/ads/DomobAdEngine;->B:Landroid/content/Intent;

    .line 71
    iput-object v1, p0, Lcn/domob/android/ads/DomobAdEngine;->f:Lcn/domob/android/ads/DomobAdEngine$RecvHandler;

    .line 72
    iput-object v1, p0, Lcn/domob/android/ads/DomobAdEngine;->g:Lcn/domob/android/ads/DomobAdEngine$e;

    .line 74
    iput-object v1, p0, Lcn/domob/android/ads/DomobAdEngine;->b:Landroid/graphics/Rect;

    .line 75
    iput-object v1, p0, Lcn/domob/android/ads/DomobAdEngine;->u:Ljava/lang/String;

    .line 77
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/domob/android/ads/DomobAdEngine;->h:J

    .line 78
    iput v2, p0, Lcn/domob/android/ads/DomobAdEngine;->l:I

    .line 79
    iput v2, p0, Lcn/domob/android/ads/DomobAdEngine;->m:I

    .line 80
    const-wide/32 v0, -0x847c60

    iput-wide v0, p0, Lcn/domob/android/ads/DomobAdEngine;->i:J

    .line 82
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->n:Ljava/util/Vector;

    .line 83
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->o:Ljava/util/Vector;

    .line 84
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->p:Ljava/util/Vector;

    .line 85
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->q:Ljava/util/HashSet;

    .line 86
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->r:Ljava/util/Hashtable;

    .line 87
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->s:Ljava/util/Hashtable;

    .line 90
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcn/domob/android/ads/DomobAdEngine;->d:F

    .line 93
    return-void
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;F)F
    .locals 2

    .prologue
    .line 1224
    float-to-double v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 4

    .prologue
    .line 1262
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1264
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v1

    double-to-float v1, v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v2

    double-to-float v0, v2

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 1270
    :goto_0
    return-object v0

    .line 1265
    :catch_0
    move-exception v0

    .line 1266
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6

    .prologue
    const-string v0, "DomobSDK"

    const-string v0, ","

    .line 1241
    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1243
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1244
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v1

    double-to-int v1, v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v2

    double-to-int v2, v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/2addr v3, v1

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    double-to-int v0, v4

    add-int/2addr v0, v2

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcn/domob/android/ads/DomobAdEngine;->a(I)I

    move-result v1

    invoke-virtual {p0, v2}, Lcn/domob/android/ads/DomobAdEngine;->a(I)I

    move-result v2

    invoke-virtual {p0, v3}, Lcn/domob/android/ads/DomobAdEngine;->a(I)I

    move-result v3

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/DomobAdEngine;->a(I)I

    move-result v0

    invoke-direct {v4, v1, v2, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1246
    :try_start_1
    const-string v0, "DomobSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1247
    const-string v0, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getRect :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v4

    .line 1252
    :goto_0
    return-object v0

    .line 1249
    :catch_0
    move-exception v0

    move-object v1, p3

    .line 1250
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 1249
    :catch_1
    move-exception v0

    move-object v1, v4

    goto :goto_1

    :cond_0
    move-object v0, v4

    goto :goto_0

    :cond_1
    move-object v0, p3

    goto :goto_0
.end method

.method private a(Lorg/json/JSONObject;Landroid/graphics/Rect;)Landroid/view/View;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const-string v1, "DomobSDK"

    .line 1052
    iget-object v1, p0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    if-eqz v1, :cond_2

    .line 1054
    :try_start_0
    const-string v1, "ia"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p1, v1, v2}, Lcn/domob/android/ads/DomobAdEngine;->a(Lorg/json/JSONObject;Ljava/lang/String;F)F

    move-result v1

    .line 1055
    const-string v2, "epy"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p1, v2, v3}, Lcn/domob/android/ads/DomobAdEngine;->a(Lorg/json/JSONObject;Ljava/lang/String;F)F

    move-result v2

    .line 1056
    iget-wide v3, p0, Lcn/domob/android/ads/DomobAdEngine;->i:J

    long-to-int v3, v3

    .line 1058
    const-string v4, "bc"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1059
    if-eqz v4, :cond_0

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcn/domob/android/ads/DomobAdEngine;->j:Z

    if-nez v5, :cond_0

    .line 1060
    const/16 v3, 0x10

    invoke-static {v4, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    long-to-int v3, v3

    .line 1061
    const-string v4, "DomobSDK"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1062
    const-string v4, "DomobSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "bgcolor is:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1067
    iget-object v5, p0, Lcn/domob/android/ads/DomobAdEngine;->n:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1069
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1070
    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v1, v6

    float-to-int v1, v1

    .line 1071
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v2, v6

    float-to-int v2, v2

    iget v6, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v2

    .line 1072
    new-instance v7, Landroid/graphics/Rect;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v8, p2, Landroid/graphics/Rect;->top:I

    iget v9, p2, Landroid/graphics/Rect;->right:I

    invoke-direct {v7, v2, v8, v9, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1073
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 1074
    const/4 v8, -0x1

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1075
    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1076
    invoke-virtual {v5, v7, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1078
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v8

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    invoke-static {v1, v2, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 1079
    const/4 v2, 0x2

    new-array v8, v2, [I

    const/4 v2, 0x0

    .line 1080
    aput v1, v8, v2

    const/4 v1, 0x1

    aput v3, v8, v1

    .line 1084
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v2, v1, v8}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    move-object v0, v2

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    move-object v1, v0

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1085
    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1086
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v7, p2, Landroid/graphics/Rect;->right:I

    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v2, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1087
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 1088
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1089
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1090
    invoke-virtual {v5, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1092
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    invoke-virtual {v2}, Lcn/domob/android/ads/DomobAdBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1093
    iget-boolean v2, p0, Lcn/domob/android/ads/DomobAdEngine;->j:Z

    if-nez v2, :cond_1

    .line 1094
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1104
    :goto_0
    return-object v1

    .line 1096
    :cond_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1099
    :catch_0
    move-exception v1

    .line 1100
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    move-object v1, v10

    .line 1104
    goto :goto_0
.end method

.method private static a(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;Ljava/lang/String;)Lcn/domob/android/ads/DomobAdEngine$c;
    .locals 1

    .prologue
    .line 1043
    new-instance v0, Lcn/domob/android/ads/DomobAdEngine$c;

    invoke-direct {v0}, Lcn/domob/android/ads/DomobAdEngine$c;-><init>()V

    .line 1044
    iput-object p0, v0, Lcn/domob/android/ads/DomobAdEngine$c;->a:Landroid/view/View;

    .line 1045
    iput-object p1, v0, Lcn/domob/android/ads/DomobAdEngine$c;->b:Landroid/widget/RelativeLayout$LayoutParams;

    .line 1046
    iput-object p2, v0, Lcn/domob/android/ads/DomobAdEngine$c;->c:Ljava/lang/String;

    .line 1048
    return-object v0
.end method

.method protected static a(Lcn/domob/android/ads/DomobAdEngine$RecvHandler;Lorg/json/JSONObject;Lcn/domob/android/ads/DomobAdBuilder;)Lcn/domob/android/ads/DomobAdEngine;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    const-string v3, "DomobSDK"

    .line 96
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 97
    :cond_0
    const-string v0, "DomobSDK"

    const-string v0, "failed to init engine, jsonobject is null!"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 127
    :cond_1
    :goto_0
    return-object v0

    .line 101
    :cond_2
    const-string v0, "DomobSDK"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    const-string v0, "DomobSDK"

    const-string v0, "init engine now."

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_3
    new-instance v0, Lcn/domob/android/ads/DomobAdEngine;

    invoke-direct {v0}, Lcn/domob/android/ads/DomobAdEngine;-><init>()V

    .line 106
    iput-object p0, v0, Lcn/domob/android/ads/DomobAdEngine;->f:Lcn/domob/android/ads/DomobAdEngine$RecvHandler;

    .line 107
    iput-object p2, v0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    .line 109
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdEngine$RecvHandler;->a()Lcn/domob/android/ads/DomobAdView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/DomobAdView;->e()Z

    move-result v1

    if-nez v1, :cond_1

    .line 112
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdEngine$RecvHandler;->a()Lcn/domob/android/ads/DomobAdView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/DomobAdView;->a()J

    move-result-wide v1

    iput-wide v1, v0, Lcn/domob/android/ads/DomobAdEngine;->h:J

    .line 113
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdEngine$RecvHandler;->a()Lcn/domob/android/ads/DomobAdView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/DomobAdView;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lcn/domob/android/ads/DomobAdEngine;->i:J

    .line 116
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdEngine$RecvHandler;->a()Lcn/domob/android/ads/DomobAdView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/DomobAdView;->c()Z

    move-result v1

    iput-boolean v1, v0, Lcn/domob/android/ads/DomobAdEngine;->j:Z

    .line 117
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdEngine$RecvHandler;->a()Lcn/domob/android/ads/DomobAdView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/DomobAdView;->d()Z

    move-result v1

    iput-boolean v1, v0, Lcn/domob/android/ads/DomobAdEngine;->k:Z

    .line 120
    invoke-direct {v0, p1}, Lcn/domob/android/ads/DomobAdEngine;->c(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 121
    const-string v1, "DomobSDK"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    const-string v1, "DomobSDK"

    const-string v1, "success to parse ad response."

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move-object v0, v5

    .line 127
    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const-string v5, "DomobSDK"

    const-string v4, ""

    .line 1513
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/domob/android/ads/DomobAdEngine$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/domob/android/ads/d;

    move-result-object v0

    .line 1514
    iget-object v1, p0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    iget-object v1, v1, Lcn/domob/android/ads/DomobAdBuilder;->b:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v1}, Lcn/domob/android/ads/DomobAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d;->a(Landroid/content/Context;)V

    .line 1515
    invoke-virtual {v0}, Lcn/domob/android/ads/d;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1516
    invoke-virtual {v0}, Lcn/domob/android/ads/d;->d()[B

    move-result-object v1

    .line 1517
    const-string v2, "DomobSDK"

    const/4 v2, 0x3

    invoke-static {v5, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1518
    const-string v2, "DomobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "preload byte length:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    :cond_0
    const-string v2, ""

    .line 1522
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcn/domob/android/ads/d;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 1531
    :goto_0
    return-object v0

    .line 1523
    :catch_0
    move-exception v0

    .line 1525
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v4

    goto :goto_0

    .line 1531
    :cond_1
    const-string v0, ""

    move-object v0, v4

    goto :goto_0
.end method

.method static a(Lcn/domob/android/ads/DomobAdEngine;)V
    .locals 1

    .prologue
    .line 1409
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->f:Lcn/domob/android/ads/DomobAdEngine$RecvHandler;

    if-eqz v0, :cond_0

    .line 1410
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->f:Lcn/domob/android/ads/DomobAdEngine$RecvHandler;

    invoke-virtual {v0, p0}, Lcn/domob/android/ads/DomobAdEngine$RecvHandler;->received(Lcn/domob/android/ads/DomobAdEngine;)V

    .line 1412
    :cond_0
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/DomobAdEngine;ILjava/util/HashMap;)V
    .locals 4

    .prologue
    .line 1631
    new-instance v1, Lcn/domob/android/ads/DomobReport;

    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcn/domob/android/ads/DomobReport;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcn/domob/android/ads/DomobReport$ReportInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v1}, Lcn/domob/android/ads/DomobReport$ReportInfo;-><init>(Lcn/domob/android/ads/DomobReport;)V

    iput p1, v2, Lcn/domob/android/ads/DomobReport$ReportInfo;->a:I

    const/4 v0, 0x1

    iput v0, v2, Lcn/domob/android/ads/DomobReport$ReportInfo;->b:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Lcn/domob/android/ads/DomobReport$ReportInfo;->c:Ljava/util/ArrayList;

    iget-object v3, v2, Lcn/domob/android/ads/DomobReport$ReportInfo;->c:Ljava/util/ArrayList;

    const-string v0, "id"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rpurlmd5"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcn/domob/android/ads/DomobReport$ReportInfo;->d:Ljava/lang/String;

    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdBuilder;->b:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->getSpots()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcn/domob/android/ads/DomobReport$ReportInfo;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/DomobReport;->a(Lcn/domob/android/ads/DomobReport$ReportInfo;)V

    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/DomobAdEngine;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1599
    invoke-direct {p0, p1, p2}, Lcn/domob/android/ads/DomobAdEngine;->a(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    .prologue
    const-string v2, "DomobSDK"

    .line 1601
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1602
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startDownload url:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->A:Ljava/util/HashMap;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcn/domob/android/ads/DomobAdEngine$5;

    invoke-direct {v1, p0, p2}, Lcn/domob/android/ads/DomobAdEngine$5;-><init>(Lcn/domob/android/ads/DomobAdEngine;Landroid/content/Context;)V

    invoke-static {p1, v0, p2, v1}, Lcn/domob/android/download/AppExchangeDownloader;->downloadApp(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcn/domob/android/download/AppExchangeDownloaderListener;)V

    .line 1630
    return-void
.end method

.method static synthetic b(Lcn/domob/android/ads/DomobAdEngine;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->B:Landroid/content/Intent;

    return-object v0
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 19

    .prologue
    .line 332
    if-eqz p1, :cond_1

    .line 333
    const-string v3, "a"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 334
    const-string v4, "opentype"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 335
    const-string v5, "click_confirm"

    const/4 v6, 0x1

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 336
    const-string v6, "preload"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 337
    const-string v7, "auto_run"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move-object v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 338
    sput-boolean v7, Lcn/domob/android/ads/DomobAdEngine;->C:Z

    .line 339
    const-string v8, "name"

    const-string v9, ""

    move-object/from16 v0, p1

    move-object v1, v8

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 340
    const-string v9, "DomobSDK"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 341
    const-string v9, "DomobSDK"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "OpenType is:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_0
    if-nez v3, :cond_2

    .line 346
    const-string v3, "DomobSDK"

    const-string v4, "invalid action type!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_1
    :goto_0
    return-void

    .line 350
    :cond_2
    const-string v9, "d"

    const/4 v10, 0x0

    move-object/from16 v0, p1

    move-object v1, v9

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 352
    const/4 v10, 0x0

    .line 355
    const-string v11, "map"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 357
    const-string v11, "android.intent.action.VIEW"

    .line 358
    if-nez v9, :cond_3

    .line 359
    const-string v3, "DomobSDK"

    const-string v4, "map data is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 363
    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "geo:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v18, v12

    move-object v12, v11

    move-object/from16 v11, v18

    .line 415
    :goto_1
    const-string v13, "f"

    const/high16 v14, 0x10000000

    move-object/from16 v0, p1

    move-object v1, v13

    move v2, v14

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    .line 416
    const-string v14, "b"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object v1, v14

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 418
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 419
    if-eqz v11, :cond_18

    .line 420
    const-string v15, "DomobSDK"

    const/16 v16, 0x3

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 421
    const-string v15, "DomobSDK"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "intent uri:"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_4
    :goto_2
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15, v12, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 428
    if-eqz v13, :cond_5

    .line 429
    invoke-virtual {v15, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 432
    :cond_5
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 433
    const-string v12, "url"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 435
    const-string v12, "opentype"

    invoke-virtual {v11, v12, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v12, "click_confirm"

    invoke-virtual {v11, v12, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 437
    const-string v5, "preload"

    invoke-virtual {v11, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 438
    const-string v5, "auto_run"

    invoke-virtual {v11, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 439
    const-string v5, "name"

    invoke-virtual {v11, v5, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    if-eqz v6, :cond_8

    .line 442
    const-string v5, "DomobSDK"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 443
    const-string v5, "DomobSDK"

    const-string v6, "preload is needed by server"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_6
    if-eqz v4, :cond_7

    const-string v5, "inapp_fs"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 446
    :cond_7
    const-string v4, "html"

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct {v0, v1}, Lcn/domob/android/ads/DomobAdEngine;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    :cond_8
    const-string v4, "type"

    invoke-virtual {v11, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-virtual {v15, v11}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 461
    if-eqz v14, :cond_9

    if-eqz v10, :cond_9

    .line 462
    invoke-virtual {v15, v10, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 465
    :cond_9
    const-string v4, "s"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 466
    const-string v5, "mail"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    if-eqz v4, :cond_a

    .line 467
    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v15, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine;->p:Ljava/util/Vector;

    move-object v3, v0

    invoke-virtual {v3, v15}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 364
    :cond_b
    const-string v11, "sms"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 366
    const-string v10, "android.intent.action.SENDTO"

    .line 367
    if-nez v9, :cond_c

    .line 368
    const-string v3, "DomobSDK"

    const-string v4, "smsto is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 372
    :cond_c
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "smsto:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 373
    const-string v12, "sms_body"

    move-object/from16 v18, v12

    move-object v12, v10

    move-object/from16 v10, v18

    goto/16 :goto_1

    .line 374
    :cond_d
    const-string v11, "mail"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 375
    const-string v10, "android.intent.action.SENDTO"

    .line 376
    if-nez v9, :cond_e

    .line 377
    const-string v3, "DomobSDK"

    const-string v4, "mailto is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 381
    :cond_e
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "mailto:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 382
    const-string v12, "android.intent.extra.TEXT"

    move-object/from16 v18, v12

    move-object v12, v10

    move-object/from16 v10, v18

    goto/16 :goto_1

    .line 383
    :cond_f
    const-string v11, "url"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_10

    const-string v11, "market"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 385
    :cond_10
    const-string v11, "android.intent.action.VIEW"

    .line 386
    if-nez v9, :cond_11

    .line 387
    const-string v3, "DomobSDK"

    const-string v4, "url is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_11
    move-object v12, v11

    move-object v11, v9

    .line 391
    goto/16 :goto_1

    .line 392
    :cond_12
    const-string v11, "call"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 394
    const-string v11, "android.intent.action.DIAL"

    .line 395
    if-nez v9, :cond_13

    .line 396
    const-string v3, "DomobSDK"

    const-string v4, "tel number is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 400
    :cond_13
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "tel:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v18, v12

    move-object v12, v11

    move-object/from16 v11, v18

    goto/16 :goto_1

    .line 401
    :cond_14
    const-string v11, "video"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_15

    const-string v11, "audio"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 402
    :cond_15
    const-string v11, "android.intent.action.VIEW"

    .line 403
    if-nez v9, :cond_16

    .line 404
    const-string v3, "DomobSDK"

    const-string v4, "url is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_16
    move-object v12, v11

    move-object v11, v9

    .line 408
    goto/16 :goto_1

    .line 410
    :cond_17
    const-string v3, "DomobSDK"

    const-string v4, "unknown action type!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 424
    :cond_18
    const-string v15, "DomobSDK"

    const-string v16, "intent uri is null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method static synthetic c(Lcn/domob/android/ads/DomobAdEngine;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->A:Ljava/util/HashMap;

    return-object v0
.end method

.method private c(Lorg/json/JSONObject;)Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const-string v7, "ac"

    const-string v4, "DomobSDK"

    .line 656
    const-string v0, "rp_url"

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 657
    iput-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->v:Ljava/lang/String;

    .line 658
    iget-object v1, p0, Lcn/domob/android/ads/DomobAdEngine;->v:Ljava/lang/String;

    invoke-static {v1}, Lcn/domob/android/ads/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcn/domob/android/ads/DomobAdEngine;->D:Ljava/lang/String;

    .line 659
    if-nez v0, :cond_0

    .line 660
    const-string v0, "DomobSDK"

    const-string v0, "there is no jsonpurl which is required!"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 740
    :goto_0
    return v0

    .line 664
    :cond_0
    const-string v1, "DomobSDK"

    const/4 v1, 0x3

    invoke-static {v4, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 665
    const-string v1, "DomobSDK"

    const-string v1, "parse response now."

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_1
    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcn/domob/android/ads/DomobAdEngine$d;

    invoke-direct {v1, v0}, Lcn/domob/android/ads/DomobAdEngine$d;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->o:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 670
    :cond_2
    const-string v0, "identifier"

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->u:Ljava/lang/String;

    .line 671
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->u:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->u:Ljava/lang/String;

    const-string v1, "nullad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 672
    :cond_3
    const-string v0, "DomobSDK"

    const-string v0, "ad identifier is null, ignore it!"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 673
    goto :goto_0

    .line 675
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->A:Ljava/util/HashMap;

    .line 676
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->A:Ljava/util/HashMap;

    const-string v1, "id"

    iget-object v2, p0, Lcn/domob/android/ads/DomobAdEngine;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->A:Ljava/util/HashMap;

    const-string v1, "rpurlmd5"

    sget-object v2, Lcn/domob/android/ads/DomobAdEngine;->D:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    invoke-static {}, Lcn/domob/android/ads/DomobAdBuilder;->d()F

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/DomobAdEngine;->d:F

    .line 687
    const-string v0, "d"

    invoke-static {p1, v0, v5}, Lcn/domob/android/ads/DomobAdEngine;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    .line 689
    if-nez v0, :cond_5

    .line 690
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x43a00000    # 320.0f

    const/high16 v2, 0x42400000    # 48.0f

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 693
    :cond_5
    iget v1, v0, Landroid/graphics/PointF;->x:F

    cmpg-float v1, v1, v6

    if-ltz v1, :cond_6

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpg-float v1, v1, v6

    if-gez v1, :cond_7

    :cond_6
    move v0, v3

    .line 694
    goto/16 :goto_0

    .line 698
    :cond_7
    iget v1, v0, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iput v1, p0, Lcn/domob/android/ads/DomobAdEngine;->l:I

    .line 699
    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    iput v0, p0, Lcn/domob/android/ads/DomobAdEngine;->m:I

    .line 701
    const-string v0, "ac"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 702
    if-eqz v0, :cond_8

    .line 703
    invoke-direct {p0, v0}, Lcn/domob/android/ads/DomobAdEngine;->b(Lorg/json/JSONObject;)V

    .line 708
    :cond_8
    const-string v0, "ac"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 709
    if-eqz v0, :cond_9

    move v1, v3

    .line 710
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v1, v2, :cond_a

    .line 721
    :cond_9
    const-string v0, "markup"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 722
    if-nez v0, :cond_b

    .line 723
    const-string v0, "DomobSDK"

    const-string v0, "there is no markup which is required!"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 724
    goto/16 :goto_0

    .line 712
    :cond_a
    :try_start_0
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 713
    invoke-direct {p0, v2}, Lcn/domob/android/ads/DomobAdEngine;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 715
    :catch_0
    move-exception v2

    .line 716
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 727
    :cond_b
    iput-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->w:Lorg/json/JSONObject;

    .line 729
    :try_start_1
    invoke-direct {p0}, Lcn/domob/android/ads/DomobAdEngine;->j()V

    .line 730
    invoke-direct {p0}, Lcn/domob/android/ads/DomobAdEngine;->k()V

    .line 733
    invoke-direct {p0}, Lcn/domob/android/ads/DomobAdEngine;->h()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 734
    invoke-direct {p0}, Lcn/domob/android/ads/DomobAdEngine;->l()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 740
    :cond_c
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 736
    :catch_1
    move-exception v0

    .line 737
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v3

    .line 738
    goto/16 :goto_0
.end method

.method private d(Lorg/json/JSONObject;)Landroid/view/View;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v8, ".png"

    const-string v4, "DomobSDK"

    .line 1109
    .line 1110
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    if-eqz v0, :cond_7

    .line 1113
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/ads/DBHelper;->a(Landroid/content/Context;)Lcn/domob/android/ads/DBHelper;

    move-result-object v0

    .line 1114
    const-string v1, "$"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1115
    const-string v1, "def_"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1116
    const-string v1, "DomobSDK"

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1117
    const-string v1, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "load "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " from resources."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".png"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1120
    iget-object v3, p0, Lcn/domob/android/ads/DomobAdEngine;->x:Lcn/domob/android/ads/b;

    iget-object v3, p0, Lcn/domob/android/ads/DomobAdEngine;->r:Ljava/util/Hashtable;

    invoke-static {v0, v2, v1, v3}, Lcn/domob/android/ads/b;->b(Lcn/domob/android/ads/DBHelper;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1121
    const-string v1, "DomobSDK"

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1122
    const-string v1, "DomobSDK"

    const-string v1, "failed to load image from resources, try the backup."

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    :cond_1
    const-string v1, "def"

    invoke-virtual {p1, v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1125
    if-nez v1, :cond_2

    .line 1126
    const-string v0, "DomobSDK"

    const-string v0, "no defined backup default resources!"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 1220
    :goto_0
    return-object v0

    .line 1128
    :cond_2
    iget-object v3, p0, Lcn/domob/android/ads/DomobAdEngine;->x:Lcn/domob/android/ads/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".png"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcn/domob/android/ads/DomobAdEngine;->r:Ljava/util/Hashtable;

    invoke-static {v0, v2, v1, v3}, Lcn/domob/android/ads/b;->b(Lcn/domob/android/ads/DBHelper;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1129
    const-string v0, "DomobSDK"

    const-string v0, "failed to load backup default resources!"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 1130
    goto :goto_0

    .line 1134
    :cond_3
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->r:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_7

    .line 1136
    const/4 v1, 0x0

    :try_start_0
    array-length v3, v0

    invoke-static {v0, v1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1137
    if-nez v3, :cond_4

    .line 1138
    const-string v0, "DomobSDK"

    const-string v1, "failed to decode Bitmap!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 1139
    goto :goto_0

    .line 1144
    :cond_4
    iget-object v1, p0, Lcn/domob/android/ads/DomobAdEngine;->t:Ljava/util/Hashtable;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "gif"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1145
    const-string v1, "DomobSDK"

    const/4 v4, 0x3

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1146
    const-string v1, "DomobSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " is gif"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    :cond_5
    const/4 v1, 0x1

    .line 1151
    :goto_1
    new-instance v2, Lcn/domob/android/ads/DomobImageView;

    iget-object v4, p0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    invoke-virtual {v4}, Lcn/domob/android/ads/DomobAdBuilder;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Lcn/domob/android/ads/DomobImageView;-><init>(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1152
    :try_start_1
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v1}, Lcn/domob/android/ads/DomobImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1153
    const-string v1, "b"

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 1155
    iget-object v1, p0, Lcn/domob/android/ads/DomobAdEngine;->n:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1210
    invoke-virtual {v2, v3, v0}, Lcn/domob/android/ads/DomobImageView;->setImageBitmap(Landroid/graphics/Bitmap;[B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v2

    .line 1220
    :goto_2
    invoke-virtual {v0}, Lcn/domob/android/ads/DomobImageView;->getCurrentView()Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    .line 1212
    :catch_0
    move-exception v0

    move-object v1, v5

    .line 1213
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    goto :goto_2

    .line 1216
    :cond_6
    const-string v0, "DomobSDK"

    const-string v0, "can not create an imageView without $"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object v0, v5

    goto :goto_2

    .line 1212
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :cond_8
    move v1, v6

    goto :goto_1
.end method

.method static f()Z
    .locals 1

    .prologue
    .line 1647
    sget-boolean v0, Lcn/domob/android/ads/DomobAdEngine;->C:Z

    return v0
.end method

.method static g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1653
    sget-object v0, Lcn/domob/android/ads/DomobAdEngine;->D:Ljava/lang/String;

    return-object v0
.end method

.method private h()Z
    .locals 4

    .prologue
    const-string v3, "DomobSDK"

    .line 250
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->q:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->q:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 251
    :goto_0
    if-nez v0, :cond_0

    .line 252
    const-string v1, "DomobSDK"

    const/4 v1, 0x3

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    const-string v1, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "there are "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/domob/android/ads/DomobAdEngine;->q:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " connection left."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_0
    return v0

    .line 250
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private i()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const-string v0, "name"

    const-string v11, "DomobSDK"

    .line 262
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    if-eqz v0, :cond_3

    .line 263
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 264
    if-eqz v1, :cond_3

    .line 265
    const-string v0, "DomobSDK"

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    const-string v0, "DomobSDK"

    const-string v0, "do click action now."

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 270
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->p:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 272
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 273
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 276
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 277
    const-string v2, "opentype"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 278
    const-string v2, "type"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 279
    const-string v5, "click_confirm"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 280
    const-string v6, "DomobSDK"

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 281
    const-string v6, "DomobSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "intent\'s opentype:"

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "  intent:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 282
    const-string v9, ",click confirm:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 281
    invoke-static {v11, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_1
    const/high16 v6, 0x10000

    invoke-virtual {v7, v0, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 287
    :try_start_0
    const-string v6, "url"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 288
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 289
    const-string v6, "name"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 290
    iget-object v9, p0, Lcn/domob/android/ads/DomobAdEngine;->A:Ljava/util/HashMap;

    const-string v10, "name"

    invoke-virtual {v9, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    if-eqz v4, :cond_2

    const-string v6, "inapp_fs"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 294
    :cond_2
    const-string v0, "html"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 295
    new-instance v0, Lcn/domob/android/ads/i;

    invoke-direct {v0}, Lcn/domob/android/ads/i;-><init>()V

    .line 296
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-direct {v4, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 297
    iget-object v5, p0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    iget-object v5, v5, Lcn/domob/android/ads/DomobAdBuilder;->b:Lcn/domob/android/ads/DomobAdView;

    iget-object v6, p0, Lcn/domob/android/ads/DomobAdEngine;->A:Ljava/util/HashMap;

    invoke-virtual/range {v0 .. v6}, Lcn/domob/android/ads/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;Lcn/domob/android/ads/DomobAdView;Ljava/util/HashMap;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 329
    :cond_3
    :goto_1
    return-void

    .line 298
    :cond_4
    const-string v3, "outapp"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 300
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 319
    :catch_0
    move-exception v0

    .line 320
    const-string v2, "DomobSDK"

    const-string v2, "error happened in doAction!"

    invoke-static {v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 301
    :cond_5
    :try_start_1
    const-string v3, "inapp_dlg"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 303
    new-instance v0, Lcn/domob/android/ads/i;

    invoke-direct {v0}, Lcn/domob/android/ads/i;-><init>()V

    .line 304
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 305
    iget-object v4, p0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    iget-object v4, v4, Lcn/domob/android/ads/DomobAdBuilder;->b:Lcn/domob/android/ads/DomobAdView;

    iget-object v5, p0, Lcn/domob/android/ads/DomobAdEngine;->A:Ljava/util/HashMap;

    invoke-virtual {v0, v4, v2, v3, v5}, Lcn/domob/android/ads/i;->a(Lcn/domob/android/ads/DomobAdView;Ljava/lang/String;Landroid/app/ProgressDialog;Ljava/util/HashMap;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 307
    :cond_6
    const-string v3, "download"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 309
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->A:Ljava/util/HashMap;

    const-string v3, "name"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcn/domob/android/download/AppExchangeDownloader;->appIsDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->B:Landroid/content/Intent;

    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->B:Landroid/content/Intent;

    if-eqz v0, :cond_8

    if-eqz v5, :cond_7

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u5b89\u88c5"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->A:Ljava/util/HashMap;

    const-string v4, "name"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\u5df2\u7ecf\u4e0b\u8f7d\u662f\u5426\u73b0\u5728\u5b89\u88c5?"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "\u5426"

    new-instance v3, Lcn/domob/android/ads/DomobAdEngine$1;

    invoke-direct {v3, p0}, Lcn/domob/android/ads/DomobAdEngine$1;-><init>(Lcn/domob/android/ads/DomobAdEngine;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "\u662f"

    new-instance v3, Lcn/domob/android/ads/DomobAdEngine$2;

    invoke-direct {v3, p0, v1}, Lcn/domob/android/ads/DomobAdEngine$2;-><init>(Lcn/domob/android/ads/DomobAdEngine;Landroid/content/Context;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    :cond_7
    invoke-static {v1}, Lcn/domob/android/ads/DomobActivity;->initReceiver(Landroid/content/Context;)V

    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcn/domob/android/ads/DomobAdEngine;->B:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_8
    if-eqz v5, :cond_9

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "\u662f\u5426\u4e0b\u8f7d"

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->A:Ljava/util/HashMap;

    const-string v5, "name"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v3, "\u786e\u5b9a"

    new-instance v4, Lcn/domob/android/ads/DomobAdEngine$3;

    invoke-direct {v4, p0, v1, v2}, Lcn/domob/android/ads/DomobAdEngine$3;-><init>(Lcn/domob/android/ads/DomobAdEngine;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "\u53d6\u6d88"

    new-instance v3, Lcn/domob/android/ads/DomobAdEngine$4;

    invoke-direct {v3, p0}, Lcn/domob/android/ads/DomobAdEngine$4;-><init>(Lcn/domob/android/ads/DomobAdEngine;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    :cond_9
    invoke-direct {p0, v2, v1}, Lcn/domob/android/ads/DomobAdEngine;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_1

    .line 311
    :cond_a
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 317
    :cond_b
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 324
    :cond_c
    const-string v2, "DomobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "activity cannot be resolved, intent.getAction() =  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private j()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-string v0, "load "

    const-string v0, "DomobSDK"

    .line 748
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->w:Lorg/json/JSONObject;

    const-string v1, "$"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 749
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 750
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->q:Ljava/util/HashSet;

    if-eqz v0, :cond_6

    .line 751
    iget-object v3, p0, Lcn/domob/android/ads/DomobAdEngine;->q:Ljava/util/HashSet;

    monitor-enter v3

    .line 752
    :try_start_0
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    if-eqz v0, :cond_5

    .line 753
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdBuilder;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 754
    invoke-static {v4}, Lcn/domob/android/ads/DBHelper;->a(Landroid/content/Context;)Lcn/domob/android/ads/DBHelper;

    move-result-object v5

    .line 756
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 757
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 761
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "u"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 762
    if-eqz v0, :cond_0

    if-eqz v6, :cond_0

    .line 763
    const/16 v7, 0x2f

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 764
    if-lez v7, :cond_3

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 765
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 766
    const-string v8, "DomobSDK"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 767
    const-string v8, "DomobSDK"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "image name:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :cond_1
    iget-object v8, p0, Lcn/domob/android/ads/DomobAdEngine;->s:Ljava/util/Hashtable;

    invoke-virtual {v8, v0, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 773
    iget-object v9, p0, Lcn/domob/android/ads/DomobAdEngine;->t:Ljava/util/Hashtable;

    invoke-virtual {v9, v0, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    const-string v8, "def_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 776
    iget-object v8, p0, Lcn/domob/android/ads/DomobAdEngine;->x:Lcn/domob/android/ads/b;

    iget-object v8, p0, Lcn/domob/android/ads/DomobAdEngine;->r:Ljava/util/Hashtable;

    invoke-static {v5, v0, v7, v8}, Lcn/domob/android/ads/b;->b(Lcn/domob/android/ads/DBHelper;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 777
    const-string v0, "DomobSDK"

    const/4 v6, 0x3

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    const-string v0, "DomobSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "load "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from resources."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 751
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 783
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcn/domob/android/ads/DomobAdEngine;->x:Lcn/domob/android/ads/b;

    iget-object v8, p0, Lcn/domob/android/ads/DomobAdEngine;->r:Ljava/util/Hashtable;

    invoke-static {v5, v0, v7, v8}, Lcn/domob/android/ads/b;->a(Lcn/domob/android/ads/DBHelper;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 784
    const-string v0, "DomobSDK"

    const/4 v6, 0x3

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 785
    const-string v0, "DomobSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "load "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from cache."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 791
    :cond_3
    const-string v7, "DomobSDK"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 792
    const-string v7, "DomobSDK"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "need download "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from server "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_4
    invoke-static {v4}, Lcn/domob/android/ads/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4}, Lcn/domob/android/ads/DomobAdManager;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v0, v7, v8, p0}, Lcn/domob/android/ads/DomobAdEngine$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/a;)Lcn/domob/android/ads/d;

    move-result-object v0

    .line 795
    invoke-virtual {v0, v4}, Lcn/domob/android/ads/d;->a(Landroid/content/Context;)V

    .line 797
    iget-object v6, p0, Lcn/domob/android/ads/DomobAdEngine;->q:Ljava/util/HashSet;

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 751
    :cond_5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 804
    :cond_6
    return-void
.end method

.method private k()V
    .locals 3

    .prologue
    .line 808
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->q:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 809
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->q:Ljava/util/HashSet;

    monitor-enter v0

    .line 811
    :try_start_0
    iget-object v1, p0, Lcn/domob/android/ads/DomobAdEngine;->q:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 814
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 815
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/domob/android/ads/d;

    .line 819
    invoke-virtual {p0}, Lcn/domob/android/ads/d;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 809
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 823
    :cond_1
    return-void
.end method

.method private l()V
    .locals 24

    .prologue
    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine;->f:Lcn/domob/android/ads/DomobAdEngine$RecvHandler;

    move-object v4, v0

    invoke-virtual {v4}, Lcn/domob/android/ads/DomobAdEngine$RecvHandler;->a()Lcn/domob/android/ads/DomobAdView;

    move-result-object v4

    invoke-virtual {v4}, Lcn/domob/android/ads/DomobAdView;->e()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 899
    :cond_0
    :goto_0
    return-void

    .line 830
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine;->w:Lorg/json/JSONObject;

    move-object v4, v0

    if-nez v4, :cond_2

    .line 831
    const-string v4, "DomobSDK"

    const-string v5, "can not build view without markup!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 835
    :cond_2
    const/4 v4, 0x1

    .line 837
    :try_start_0
    const-string v5, "DomobSDK"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 838
    const-string v5, "DomobSDK"

    const-string v6, "build view with markup."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine;->w:Lorg/json/JSONObject;

    move-object v5, v0

    const-string v6, "v"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 842
    if-eqz v5, :cond_1f

    .line 843
    new-instance v6, Lcn/domob/android/ads/DomobAdEngine$b;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    move-object v7, v0

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/DomobAdEngine$b;-><init>(Lcn/domob/android/ads/DomobAdBuilder;Lcn/domob/android/ads/DomobAdEngine;)V

    .line 844
    const/4 v7, 0x0

    .line 846
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_7

    .line 847
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 851
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "t"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "f"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine;->b:Landroid/graphics/Rect;

    move-object v13, v0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v12

    move-object v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcn/domob/android/ads/DomobAdEngine;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v12

    const-string v13, "l"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    const-string v11, "DomobSDK"

    const/4 v13, 0x3

    invoke-static {v11, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "DomobSDK"

    const-string v13, "build text view."

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    move-object v11, v0

    if-eqz v11, :cond_20

    const-string v11, "fs"

    const/high16 v13, 0x41600000    # 14.0f

    invoke-static {v4, v11, v13}, Lcn/domob/android/ads/DomobAdEngine;->a(Lorg/json/JSONObject;Ljava/lang/String;F)F

    move-result v11

    const-string v13, "fa"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    const-string v14, "x"

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    const/4 v15, 0x0

    sget-object v16, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    if-eqz v13, :cond_22

    const/16 v17, 0x0

    move/from16 v23, v17

    move/from16 v17, v15

    move/from16 v15, v23

    :goto_2
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v18

    move v0, v15

    move/from16 v1, v18

    if-lt v0, v1, :cond_d

    invoke-static/range {v16 .. v17}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v13

    :goto_3
    const-string v15, "fc"

    const/16 v16, 0x0

    move-object v0, v4

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcn/domob/android/ads/DomobAdEngine;->h:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    if-eqz v15, :cond_21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/domob/android/ads/DomobAdEngine;->k:Z

    move/from16 v17, v0

    if-nez v17, :cond_21

    const/16 v16, 0x10

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v15

    long-to-int v15, v15

    :goto_4
    const-string v16, "dnv"

    const/16 v17, 0x1

    move-object v0, v4

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v16

    const-string v17, "mfs"

    const/high16 v18, 0x41400000    # 12.0f

    move-object v0, v4

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcn/domob/android/ads/DomobAdEngine;->a(Lorg/json/JSONObject;Ljava/lang/String;F)F

    move-result v17

    const-string v18, "at"

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    const-string v10, "at"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_5
    if-eqz v14, :cond_16

    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_6

    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    :cond_6
    const/16 v18, 0x0

    move/from16 v23, v18

    move-object/from16 v18, v8

    move/from16 v8, v23

    :goto_5
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v19

    move v0, v8

    move/from16 v1, v19

    if-lt v0, v1, :cond_14

    move-object v8, v10

    move-object/from16 v10, v18

    :goto_6
    if-nez v10, :cond_1b

    if-nez v9, :cond_1b

    const-string v4, "DomobSDK"

    const-string v8, "failed to build view"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    .line 853
    :goto_7
    if-nez v4, :cond_1e

    .line 854
    const-string v5, "DomobSDK"

    const-string v7, "failed to build view, callback!"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine;->f:Lcn/domob/android/ads/DomobAdEngine$RecvHandler;

    move-object v5, v0

    if-eqz v5, :cond_7

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine;->f:Lcn/domob/android/ads/DomobAdEngine$RecvHandler;

    move-object v5, v0

    invoke-virtual {v5}, Lcn/domob/android/ads/DomobAdEngine$RecvHandler;->failed()V

    .line 863
    :cond_7
    if-eqz v4, :cond_9

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    move-object v5, v0

    if-eqz v5, :cond_8

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine;->w:Lorg/json/JSONObject;

    move-object v5, v0

    const-string v7, "tat"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    move-object v7, v0

    invoke-virtual {v7, v5}, Lcn/domob/android/ads/DomobAdBuilder;->a(Ljava/lang/String;)V

    .line 869
    :cond_8
    sget-object v5, Lcn/domob/android/ads/DomobAdView;->b:Landroid/os/Handler;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 880
    :cond_9
    :goto_8
    if-nez v4, :cond_a

    .line 881
    const-string v4, "DomobSDK"

    const-string v5, "failed to build view, clear all bmps and views!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    invoke-virtual/range {p0 .. p0}, Lcn/domob/android/ads/DomobAdEngine;->e()V

    .line 885
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine;->q:Ljava/util/HashSet;

    move-object v4, v0

    if-eqz v4, :cond_b

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine;->q:Ljava/util/HashSet;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 887
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/domob/android/ads/DomobAdEngine;->q:Ljava/util/HashSet;

    .line 890
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine;->r:Ljava/util/Hashtable;

    move-object v4, v0

    if-eqz v4, :cond_c

    .line 891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine;->r:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/Hashtable;->clear()V

    .line 892
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/domob/android/ads/DomobAdEngine;->r:Ljava/util/Hashtable;

    .line 895
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine;->s:Ljava/util/Hashtable;

    move-object v4, v0

    if-eqz v4, :cond_0

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine;->s:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/Hashtable;->clear()V

    .line 897
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/domob/android/ads/DomobAdEngine;->s:Ljava/util/Hashtable;

    goto/16 :goto_0

    .line 851
    :cond_d
    :try_start_1
    invoke-virtual {v13, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "DomobSDK"

    const/16 v20, 0x3

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_e

    const-string v19, "DomobSDK"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "fa:["

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const-string v19, "b"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    or-int/lit8 v17, v17, 0x1

    :cond_f
    :goto_9
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    :cond_10
    const-string v19, "i"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    or-int/lit8 v17, v17, 0x2

    goto :goto_9

    :cond_11
    const-string v19, "m"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    sget-object v16, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_9

    :cond_12
    const-string v19, "s"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    sget-object v16, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_9

    :cond_13
    const-string v19, "ss"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    sget-object v16, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_9

    :cond_14
    invoke-virtual {v14, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v19

    new-instance v20, Lcn/domob/android/ads/k;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcn/domob/android/ads/DomobAdBuilder;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-static {}, Lcn/domob/android/ads/DomobAdBuilder;->d()F

    move-result v22

    invoke-direct/range {v20 .. v22}, Lcn/domob/android/ads/k;-><init>(Landroid/content/Context;F)V

    move/from16 v0, v16

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcn/domob/android/ads/k;->b:Z

    move-object/from16 v0, v20

    iget v0, v0, Lcn/domob/android/ads/k;->c:F

    move/from16 v21, v0

    mul-float v21, v21, v17

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcn/domob/android/ads/k;->a:F

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/k;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v20

    move v1, v15

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/k;->setTextColor(I)V

    const/16 v19, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v19

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/k;->setTextSize(IF)V

    move-object/from16 v0, v20

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/k;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual/range {v20 .. v20}, Lcn/domob/android/ads/k;->setSingleLine()V

    sget-object v19, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/k;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    if-eqz v9, :cond_15

    move-object v0, v9

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :goto_a
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_5

    :cond_15
    move-object/from16 v18, v20

    goto :goto_a

    :cond_16
    const/4 v8, 0x0

    move-object/from16 v23, v10

    move-object v10, v8

    move-object/from16 v8, v23

    goto/16 :goto_6

    :cond_17
    const-string v13, "bg"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_19

    const-string v8, "DomobSDK"

    const/4 v11, 0x3

    invoke-static {v8, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_18

    const-string v8, "DomobSDK"

    const-string v11, "build background view."

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/DomobAdEngine;->a(Lorg/json/JSONObject;Landroid/graphics/Rect;)Landroid/view/View;

    move-result-object v8

    move-object/from16 v23, v10

    move-object v10, v8

    move-object/from16 v8, v23

    goto/16 :goto_6

    :cond_19
    const-string v13, "i"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_20

    const-string v8, "DomobSDK"

    const/4 v11, 0x3

    invoke-static {v8, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_1a

    const-string v8, "DomobSDK"

    const-string v11, "build image view."

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcn/domob/android/ads/DomobAdEngine;->d(Lorg/json/JSONObject;)Landroid/view/View;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine;->z:Ljava/util/Vector;

    move-object v11, v0

    invoke-virtual {v11, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object/from16 v23, v10

    move-object v10, v8

    move-object/from16 v8, v23

    goto/16 :goto_6

    :cond_1b
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v14

    invoke-direct {v11, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v13, 0x9

    invoke-virtual {v11, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v13, 0xa

    invoke-virtual {v11, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v13, v12, Landroid/graphics/Rect;->left:I

    iget v12, v12, Landroid/graphics/Rect;->top:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v13, v12, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    if-eqz v9, :cond_1c

    invoke-virtual {v9}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-static {v4, v11, v8}, Lcn/domob/android/ads/DomobAdEngine;->a(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;Ljava/lang/String;)Lcn/domob/android/ads/DomobAdEngine$c;

    move-result-object v4

    iget-object v10, v6, Lcn/domob/android/ads/DomobAdEngine$b;->a:Ljava/util/Vector;

    invoke-virtual {v10, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_b

    .line 875
    :catch_0
    move-exception v4

    .line 876
    const/4 v5, 0x0

    .line 877
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    move v4, v5

    goto/16 :goto_8

    .line 851
    :cond_1c
    if-eqz v10, :cond_1d

    :try_start_2
    invoke-static {v10, v11, v8}, Lcn/domob/android/ads/DomobAdEngine;->a(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;Ljava/lang/String;)Lcn/domob/android/ads/DomobAdEngine$c;

    move-result-object v8

    iget-object v9, v6, Lcn/domob/android/ads/DomobAdEngine$b;->a:Ljava/util/Vector;

    invoke-virtual {v9, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v8, "cav"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    move-object v4, v0

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    move-object v4, v0

    invoke-virtual {v4, v10}, Lcn/domob/android/ads/DomobAdBuilder;->a(Landroid/view/View;)V

    :cond_1d
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 860
    :cond_1e
    add-int/lit8 v7, v7, 0x1

    .line 861
    goto/16 :goto_1

    .line 871
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine;->f:Lcn/domob/android/ads/DomobAdEngine$RecvHandler;

    move-object v5, v0

    if-eqz v5, :cond_9

    .line 872
    const-string v5, "DomobSDK"

    const-string v6, "can not build view because jason array of views is null!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine;->f:Lcn/domob/android/ads/DomobAdEngine$RecvHandler;

    move-object v5, v0

    invoke-virtual {v5}, Lcn/domob/android/ads/DomobAdEngine$RecvHandler;->failed()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_8

    :cond_20
    move-object/from16 v23, v10

    move-object v10, v8

    move-object/from16 v8, v23

    goto/16 :goto_6

    :cond_21
    move/from16 v15, v16

    goto/16 :goto_4

    :cond_22
    move-object/from16 v13, v16

    goto/16 :goto_3
.end method


# virtual methods
.method protected final a(I)I
    .locals 4

    .prologue
    .line 476
    iget v0, p0, Lcn/domob/android/ads/DomobAdEngine;->d:F

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    int-to-float v0, p1

    :goto_0
    float-to-int v0, v0

    return v0

    :cond_0
    int-to-float v0, p1

    iget v1, p0, Lcn/domob/android/ads/DomobAdEngine;->d:F

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method protected final a()Lcn/domob/android/ads/DomobAdBuilder;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    return-object v0
.end method

.method protected final a(Lcn/domob/android/ads/DomobAdBuilder;)V
    .locals 1

    .prologue
    .line 484
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    .line 485
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->g:Lcn/domob/android/ads/DomobAdEngine$e;

    if-nez v0, :cond_0

    .line 486
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdEngine;->g:Lcn/domob/android/ads/DomobAdEngine$e;

    .line 488
    :cond_0
    return-void
.end method

.method public final a(Lcn/domob/android/ads/d;)V
    .locals 5

    .prologue
    const-string v3, "DomobSDK"

    .line 1467
    invoke-virtual {p1}, Lcn/domob/android/ads/d;->c()Ljava/lang/String;

    move-result-object v0

    .line 1468
    invoke-virtual {p1}, Lcn/domob/android/ads/d;->d()[B

    move-result-object v1

    .line 1470
    if-eqz v1, :cond_4

    .line 1471
    iget-object v2, p0, Lcn/domob/android/ads/DomobAdEngine;->r:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1474
    iget-object v2, p0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    if-eqz v2, :cond_0

    .line 1475
    iget-object v2, p0, Lcn/domob/android/ads/DomobAdEngine;->s:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1477
    if-eqz v0, :cond_0

    .line 1478
    iget-object v2, p0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    invoke-virtual {v2}, Lcn/domob/android/ads/DomobAdBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1479
    invoke-static {v2}, Lcn/domob/android/ads/DBHelper;->a(Landroid/content/Context;)Lcn/domob/android/ads/DBHelper;

    move-result-object v2

    .line 1481
    const-string v3, "def_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1482
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v0, v1, v3, v4}, Lcn/domob/android/ads/DBHelper;->a(Lcn/domob/android/ads/DBHelper;Ljava/lang/String;[BJ)V

    .line 1494
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->q:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 1495
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->q:Ljava/util/HashSet;

    monitor-enter v0

    .line 1496
    :try_start_0
    iget-object v1, p0, Lcn/domob/android/ads/DomobAdEngine;->q:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1495
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1500
    :cond_1
    invoke-direct {p0}, Lcn/domob/android/ads/DomobAdEngine;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1501
    invoke-direct {p0}, Lcn/domob/android/ads/DomobAdEngine;->l()V

    .line 1504
    :cond_2
    return-void

    .line 1484
    :cond_3
    iget-object v3, p0, Lcn/domob/android/ads/DomobAdEngine;->x:Lcn/domob/android/ads/b;

    invoke-static {v2, v0, v1}, Lcn/domob/android/ads/b;->a(Lcn/domob/android/ads/DBHelper;Ljava/lang/String;[B)V

    goto :goto_0

    .line 1489
    :cond_4
    const-string v1, "DomobSDK"

    const/4 v1, 0x3

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1490
    const-string v1, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed reading asset("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") for ad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1495
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected final a(Lorg/json/JSONObject;)V
    .locals 10

    .prologue
    const/16 v2, 0x14

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x3

    const-string v8, "DomobSDK"

    .line 175
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->f:Lcn/domob/android/ads/DomobAdEngine$RecvHandler;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdEngine$RecvHandler;->a()Lcn/domob/android/ads/DomobAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->o:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 177
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->o:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/android/ads/DomobAdEngine$d;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine$d;->a:Ljava/lang/String;

    .line 178
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 179
    if-ge v1, v2, :cond_0

    move v2, v1

    .line 184
    :cond_0
    sub-int v2, v1, v2

    .line 183
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcn/domob/android/ads/DomobAdEngine;->y:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 187
    iget-object v1, p0, Lcn/domob/android/ads/DomobAdEngine;->y:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iput-boolean v3, p0, Lcn/domob/android/ads/DomobAdEngine;->e:Z

    .line 192
    :cond_1
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdEngine;->e:Z

    if-eqz v0, :cond_5

    .line 193
    const-string v0, "DomobSDK"

    const-string v0, "already clicked, ignore it."

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_2
    invoke-direct {p0}, Lcn/domob/android/ads/DomobAdEngine;->i()V

    .line 241
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->g:Lcn/domob/android/ads/DomobAdEngine$e;

    if-eqz v0, :cond_4

    .line 242
    const-string v0, "DomobSDK"

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 243
    const-string v0, "DomobSDK"

    const-string v0, "show click animation."

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_3
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->g:Lcn/domob/android/ads/DomobAdEngine$e;

    invoke-interface {v0}, Lcn/domob/android/ads/DomobAdEngine$e;->f()V

    .line 247
    :cond_4
    return-void

    .line 195
    :cond_5
    const-string v0, "DomobSDK"

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 196
    const-string v0, "DomobSDK"

    const-string v0, "report clicked now."

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_6
    iput-boolean v4, p0, Lcn/domob/android/ads/DomobAdEngine;->e:Z

    .line 200
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 202
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdBuilder;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 203
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->o:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 208
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/android/ads/DomobAdEngine$d;

    .line 214
    new-instance v4, Lcn/domob/android/ads/DomobAdEngine$a;

    invoke-direct {v4, p0}, Lcn/domob/android/ads/DomobAdEngine$a;-><init>(Lcn/domob/android/ads/DomobAdEngine;)V

    .line 227
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcn/domob/android/ads/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 228
    const-string v1, "DomobSDK"

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 229
    const-string v1, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "click report:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_7
    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine$d;->a:Ljava/lang/String;

    const-string v1, "click_tracking"

    invoke-static {v6}, Lcn/domob/android/ads/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Lcn/domob/android/ads/DomobAdManager;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v0 .. v5}, Lcn/domob/android/ads/DomobAdEngine$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/a;Ljava/lang/String;)Lcn/domob/android/ads/d;

    move-result-object v0

    .line 233
    invoke-virtual {v0, v6}, Lcn/domob/android/ads/d;->a(Landroid/content/Context;)V

    .line 235
    invoke-virtual {v0}, Lcn/domob/android/ads/d;->b()V

    goto :goto_0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 497
    iget v0, p0, Lcn/domob/android/ads/DomobAdEngine;->l:I

    return v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 501
    iget v0, p0, Lcn/domob/android/ads/DomobAdEngine;->m:I

    return v0
.end method

.method protected final d()Landroid/graphics/Rect;
    .locals 6

    .prologue
    const/4 v4, 0x0

    const-string v5, "DomobSDK"

    const-string v3, ","

    .line 521
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->b:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 523
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcn/domob/android/ads/DomobAdEngine;->l:I

    invoke-virtual {p0, v1}, Lcn/domob/android/ads/DomobAdEngine;->a(I)I

    move-result v1

    iget v2, p0, Lcn/domob/android/ads/DomobAdEngine;->m:I

    invoke-virtual {p0, v2}, Lcn/domob/android/ads/DomobAdEngine;->a(I)I

    move-result v2

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->b:Landroid/graphics/Rect;

    .line 525
    :cond_0
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v5, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getRect :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdEngine;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdEngine;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdEngine;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdEngine;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->b:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected final e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v1, "DomobSDK"

    .line 542
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    const-string v0, "DomobSDK"

    const-string v0, "clear engine resources."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->p:Ljava/util/Vector;

    if-eqz v0, :cond_1

    .line 547
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->p:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 548
    iput-object v3, p0, Lcn/domob/android/ads/DomobAdEngine;->p:Ljava/util/Vector;

    .line 551
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->o:Ljava/util/Vector;

    if-eqz v0, :cond_2

    .line 552
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->o:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 553
    iput-object v3, p0, Lcn/domob/android/ads/DomobAdEngine;->o:Ljava/util/Vector;

    .line 556
    :cond_2
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->n:Ljava/util/Vector;

    if-eqz v0, :cond_5

    .line 557
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->n:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 559
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 560
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 564
    if-eqz v0, :cond_3

    .line 565
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 569
    :cond_4
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->n:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 570
    iput-object v3, p0, Lcn/domob/android/ads/DomobAdEngine;->n:Ljava/util/Vector;

    .line 574
    :cond_5
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->z:Ljava/util/Vector;

    if-eqz v0, :cond_9

    .line 575
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->z:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 577
    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 578
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 582
    if-eqz v0, :cond_6

    .line 584
    instance-of v2, v0, Lcn/domob/android/ads/giftool/GifView;

    if-eqz v2, :cond_7

    .line 585
    check-cast v0, Lcn/domob/android/ads/giftool/GifView;

    .line 586
    invoke-virtual {v0}, Lcn/domob/android/ads/giftool/GifView;->clear()V

    goto :goto_1

    .line 587
    :cond_7
    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_6

    .line 589
    check-cast v0, Landroid/widget/ImageView;

    .line 591
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 596
    :cond_8
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->z:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 597
    iput-object v3, p0, Lcn/domob/android/ads/DomobAdEngine;->z:Ljava/util/Vector;

    .line 621
    :cond_9
    return-void
.end method
