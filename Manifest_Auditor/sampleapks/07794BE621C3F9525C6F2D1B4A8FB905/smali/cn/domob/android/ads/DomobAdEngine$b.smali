.class final Lcn/domob/android/ads/DomobAdEngine$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/DomobAdEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcn/domob/android/ads/DomobAdEngine$c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcn/domob/android/ads/DomobAdBuilder;

.field private c:Lcn/domob/android/ads/DomobAdEngine;


# direct methods
.method public constructor <init>(Lcn/domob/android/ads/DomobAdBuilder;Lcn/domob/android/ads/DomobAdEngine;)V
    .locals 1

    .prologue
    .line 1299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1300
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdEngine$b;->b:Lcn/domob/android/ads/DomobAdBuilder;

    .line 1301
    iput-object p2, p0, Lcn/domob/android/ads/DomobAdEngine$b;->c:Lcn/domob/android/ads/DomobAdEngine;

    .line 1302
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdEngine$b;->a:Ljava/util/Vector;

    .line 1303
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const-string v8, "DomobSDK"

    .line 1307
    :try_start_0
    const-string v0, "DomobSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1308
    const-string v0, "DomobSDK"

    const-string v1, "AddViewThread run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    :cond_0
    const/4 v0, 0x0

    .line 1312
    const/4 v1, 0x0

    .line 1313
    iget-object v2, p0, Lcn/domob/android/ads/DomobAdEngine$b;->b:Lcn/domob/android/ads/DomobAdBuilder;

    if-eqz v2, :cond_16

    .line 1314
    iget-object v2, p0, Lcn/domob/android/ads/DomobAdEngine$b;->b:Lcn/domob/android/ads/DomobAdBuilder;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcn/domob/android/ads/DomobAdBuilder;->setPadding(IIII)V

    .line 1315
    iget-object v2, p0, Lcn/domob/android/ads/DomobAdEngine$b;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v0

    .line 1317
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1318
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/android/ads/DomobAdEngine$c;

    .line 1322
    iget-object v4, v0, Lcn/domob/android/ads/DomobAdEngine$c;->a:Landroid/view/View;

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcn/domob/android/ads/DomobAdEngine$c;->b:Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v4, :cond_5

    .line 1323
    :cond_2
    const-string v0, "DomobSDK"

    const/4 v4, 0x3

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1324
    const-string v0, "DomobSDK"

    const-string v4, "Basic View element is null, continue."

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1394
    :catch_0
    move-exception v0

    .line 1395
    const-string v1, "DomobSDK"

    const-string v1, "failed to add view into builder!"

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1397
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine$b;->c:Lcn/domob/android/ads/DomobAdEngine;

    if-eqz v0, :cond_3

    .line 1398
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine$b;->c:Lcn/domob/android/ads/DomobAdEngine;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdEngine;->e()V

    .line 1402
    :cond_3
    :goto_1
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine$b;->a:Ljava/util/Vector;

    if-eqz v0, :cond_4

    .line 1403
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine$b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1405
    :cond_4
    return-void

    .line 1330
    :cond_5
    :try_start_1
    iget-object v4, v0, Lcn/domob/android/ads/DomobAdEngine$c;->c:Ljava/lang/String;

    if-eqz v4, :cond_12

    .line 1331
    if-nez v3, :cond_18

    .line 1332
    new-instance v1, Lcn/domob/android/ads/m;

    iget-object v3, p0, Lcn/domob/android/ads/DomobAdEngine$b;->b:Lcn/domob/android/ads/DomobAdBuilder;

    invoke-virtual {v3}, Lcn/domob/android/ads/DomobAdBuilder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcn/domob/android/ads/m;-><init>(Landroid/content/Context;)V

    .line 1333
    const/4 v3, 0x0

    .line 1334
    const-string v4, "l2r"

    iget-object v5, v0, Lcn/domob/android/ads/DomobAdEngine$c;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1335
    const-string v3, "DomobSDK"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1336
    const-string v3, "DomobSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "set text anim:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcn/domob/android/ads/DomobAdEngine$c;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    :cond_6
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, -0x3d380000    # -100.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v4, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v4, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v3, v4

    .line 1365
    :cond_7
    :goto_2
    invoke-virtual {v1, v3}, Lcn/domob/android/ads/m;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1367
    :goto_3
    iget-object v3, v0, Lcn/domob/android/ads/DomobAdEngine$c;->a:Landroid/view/View;

    iget-object v4, v0, Lcn/domob/android/ads/DomobAdEngine$c;->b:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v3, v4}, Lcn/domob/android/ads/m;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1368
    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine$c;->b:Landroid/widget/RelativeLayout$LayoutParams;

    move-object v3, v1

    move-object v1, v0

    goto/16 :goto_0

    .line 1339
    :cond_8
    const-string v4, "r2l"

    iget-object v5, v0, Lcn/domob/android/ads/DomobAdEngine$c;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1340
    const-string v3, "DomobSDK"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1341
    const-string v3, "DomobSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "set text anim:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcn/domob/android/ads/DomobAdEngine$c;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    :cond_9
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, 0x42c80000    # 100.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v4, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v4, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v3, v4

    goto :goto_2

    .line 1344
    :cond_a
    const-string v4, "t2b"

    iget-object v5, v0, Lcn/domob/android/ads/DomobAdEngine$c;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1345
    const-string v3, "DomobSDK"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1346
    const-string v3, "DomobSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "set text anim:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcn/domob/android/ads/DomobAdEngine$c;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    :cond_b
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, -0x3db80000    # -50.0f

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v4, 0x9c4

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v5, 0x1f4

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v5, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v5, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v5, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v3, v5

    goto/16 :goto_2

    .line 1349
    :cond_c
    const-string v4, "b2t"

    iget-object v5, v0, Lcn/domob/android/ads/DomobAdEngine$c;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1350
    const-string v3, "DomobSDK"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1351
    const-string v3, "DomobSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "set text anim:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcn/domob/android/ads/DomobAdEngine$c;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    :cond_d
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x42480000    # 50.0f

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v4, 0x9c4

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v5, 0x1f4

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v5, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v5, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v5, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v3, v5

    goto/16 :goto_2

    .line 1354
    :cond_e
    const-string v4, "shx"

    iget-object v5, v0, Lcn/domob/android/ads/DomobAdEngine$c;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1355
    const-string v3, "DomobSDK"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1356
    const-string v3, "DomobSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "set text anim:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcn/domob/android/ads/DomobAdEngine$c;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    :cond_f
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, 0x41f00000    # 30.0f

    const/high16 v5, 0x42480000    # 50.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v4, Landroid/view/animation/CycleInterpolator;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v4, v5}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v4, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v4, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v3, v4

    goto/16 :goto_2

    .line 1359
    :cond_10
    const-string v4, "shy"

    iget-object v5, v0, Lcn/domob/android/ads/DomobAdEngine$c;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1360
    const-string v3, "DomobSDK"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1361
    const-string v3, "DomobSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "set text anim:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcn/domob/android/ads/DomobAdEngine$c;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    :cond_11
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, -0x3fc00000    # -3.0f

    const/high16 v7, 0x41200000    # 10.0f

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v4, Landroid/view/animation/CycleInterpolator;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v4, v5}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v4, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v4, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v3, v4

    goto/16 :goto_2

    .line 1370
    :cond_12
    iget-object v4, p0, Lcn/domob/android/ads/DomobAdEngine$b;->b:Lcn/domob/android/ads/DomobAdBuilder;

    iget-object v5, v0, Lcn/domob/android/ads/DomobAdEngine$c;->a:Landroid/view/View;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine$c;->b:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4, v5, v0}, Lcn/domob/android/ads/DomobAdBuilder;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 1374
    :cond_13
    if-eqz v3, :cond_15

    .line 1375
    invoke-virtual {v3}, Lcn/domob/android/ads/m;->getChildCount()I

    move-result v0

    if-le v0, v9, :cond_17

    .line 1376
    const/16 v0, 0x2710

    invoke-virtual {v3, v0}, Lcn/domob/android/ads/m;->setFlipInterval(I)V

    .line 1380
    :goto_4
    const-string v0, "DomobSDK"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1381
    const-string v0, "DomobSDK"

    const-string v2, "add flipper."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    :cond_14
    invoke-virtual {v3}, Lcn/domob/android/ads/m;->startFlipping()V

    .line 1384
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine$b;->b:Lcn/domob/android/ads/DomobAdBuilder;

    invoke-virtual {v0, v3, v1}, Lcn/domob/android/ads/DomobAdBuilder;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1387
    :cond_15
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine$b;->b:Lcn/domob/android/ads/DomobAdBuilder;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdBuilder;->invalidate()V

    .line 1388
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine$b;->b:Lcn/domob/android/ads/DomobAdBuilder;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdBuilder;->requestLayout()V

    .line 1391
    :cond_16
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine$b;->c:Lcn/domob/android/ads/DomobAdEngine;

    if-eqz v0, :cond_3

    .line 1392
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine$b;->c:Lcn/domob/android/ads/DomobAdEngine;

    invoke-static {v0}, Lcn/domob/android/ads/DomobAdEngine;->a(Lcn/domob/android/ads/DomobAdEngine;)V

    goto/16 :goto_1

    .line 1378
    :cond_17
    const v0, 0x927c0

    invoke-virtual {v3, v0}, Lcn/domob/android/ads/m;->setFlipInterval(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :cond_18
    move-object v1, v3

    goto/16 :goto_3
.end method
