.class public Lcom/madhouse/android/ads/AdView;
.super Landroid/widget/RelativeLayout;


# static fields
.field public static final AD_MEASURE_176:I = 0xb0

.field public static final AD_MEASURE_240:I = 0xf0

.field public static final AD_MEASURE_320:I = 0x140

.field public static final AD_MEASURE_360:I = 0x168

.field public static final AD_MEASURE_480:I = 0x1e0

.field public static final AD_MEASURE_640:I = 0x280

.field public static final BANNER_ANIMATION_TYPE_CURLDOWN:I = 0x6

.field public static final BANNER_ANIMATION_TYPE_CURLUP:I = 0x5

.field public static final BANNER_ANIMATION_TYPE_FADEINOUT:I = 0x2

.field public static final BANNER_ANIMATION_TYPE_FLIPFROMLEFT:I = 0x3

.field public static final BANNER_ANIMATION_TYPE_FLIPFROMRIGHT:I = 0x4

.field public static final BANNER_ANIMATION_TYPE_NONE:I = 0x0

.field public static final BANNER_ANIMATION_TYPE_RANDOM:I = 0x1

.field public static final BANNER_ANIMATION_TYPE_SLIDEFROMLEFT:I = 0x7

.field public static final BANNER_ANIMATION_TYPE_SLIDEFROMRIGHT:I = 0x8

.field public static final EVENT_EXISTAD:I = 0x3

.field public static final EVENT_FINISHAD:I = 0x2

.field public static final EVENT_INCOMPLETE_PERMISSION:I = 0x5

.field public static final EVENT_INVALIDAD:I = 0x4

.field public static final EVENT_NEWAD:I = 0x1

.field public static final RETRUNCODE_INVALIDADPOSITION:I = 0x191

.field public static final RETRUNCODE_INVALIDIP:I = 0x194

.field public static final RETRUNCODE_INVALIDUSER:I = 0x192

.field public static final RETRUNCODE_INVALIDUSERAGENT:I = 0x193

.field public static final RETRUNCODE_NOADS:I = 0x190

.field public static final RETRUNCODE_OK:I = 0xc8

.field public static final RETRUNCODE_SERVERBUSY:I = 0x1f4

.field public static final RETRUNCODE_SERVERERROR:I = 0x1f5

.field public static final RETRUNCODE_TRYAGAIN:I = 0x195

.field private static final _:[[F

.field private static final __:[[F

.field private static bbbb:Landroid/os/Handler;


# instance fields
.field private $:Ljava/lang/String;

.field private $$:I

.field private $$$:I

.field private $$$$:I

.field private $$$$$:Z

.field private ___:Ljava/lang/String;

.field private ____:Ljava/lang/String;

.field private _____:Ljava/lang/String;

.field private a:Z

.field private aa:Z

.field private aaa:Lcom/madhouse/android/ads/AdView;

.field private aaaa:Lcom/madhouse/android/ads/____;

.field private aaaaa:Lcom/madhouse/android/ads/eeee;

.field private b:Lcom/madhouse/android/ads/AdListener;

.field private bb:Landroid/content/Context;

.field private bbb:Ljava/util/Timer;

.field private bbbbb:Z


# direct methods
.method static final synthetic $(Lcom/madhouse/android/ads/AdView;)I
    .locals 1

    iget v0, p0, Lcom/madhouse/android/ads/AdView;->$$$:I

    return v0
.end method

.method static final synthetic $$(Lcom/madhouse/android/ads/AdView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/madhouse/android/ads/AdView;->____:Ljava/lang/String;

    return-object v0
.end method

.method static final synthetic $$$(Lcom/madhouse/android/ads/AdView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/madhouse/android/ads/AdView;->$:Ljava/lang/String;

    return-object v0
.end method

.method static final synthetic $$$$(Lcom/madhouse/android/ads/AdView;)Lcom/madhouse/android/ads/AdListener;
    .locals 1

    iget-object v0, p0, Lcom/madhouse/android/ads/AdView;->b:Lcom/madhouse/android/ads/AdListener;

    return-object v0
.end method

.method static final synthetic $$$$$(Lcom/madhouse/android/ads/AdView;)Lcom/madhouse/android/ads/AdView;
    .locals 1

    iget-object v0, p0, Lcom/madhouse/android/ads/AdView;->aaa:Lcom/madhouse/android/ads/AdView;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    const/16 v2, 0x8

    new-array v0, v6, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    sput-object v0, Lcom/madhouse/android/ads/AdView;->_:[[F

    new-array v0, v3, [[F

    new-array v1, v2, [F

    fill-array-data v1, :array_2

    aput-object v1, v0, v4

    new-array v1, v2, [F

    fill-array-data v1, :array_3

    aput-object v1, v0, v5

    new-array v1, v2, [F

    fill-array-data v1, :array_4

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v2, [F

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    sput-object v0, Lcom/madhouse/android/ads/AdView;->__:[[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x42b40000    # 90.0f
        -0x3d4c0000    # -90.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        -0x3d4c0000    # -90.0f
        0x42b40000    # 90.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/madhouse/android/ads/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/madhouse/android/ads/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v0, -0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/madhouse/android/ads/AdView;->$$:I

    iput v0, p0, Lcom/madhouse/android/ads/AdView;->$$$:I

    iput v0, p0, Lcom/madhouse/android/ads/AdView;->$$$$:I

    iput-boolean v4, p0, Lcom/madhouse/android/ads/AdView;->bbbbb:Z

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/madhouse/android/ads/AdView;->_(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;IIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;IIZ)V
    .locals 7

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/madhouse/android/ads/AdView;->$$:I

    iput v0, p0, Lcom/madhouse/android/ads/AdView;->$$$:I

    iput v0, p0, Lcom/madhouse/android/ads/AdView;->$$$$:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/madhouse/android/ads/AdView;->bbbbb:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/madhouse/android/ads/AdView;->_(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;IIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;IZ)V
    .locals 7

    const/4 v5, 0x0

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/madhouse/android/ads/AdView;->$$:I

    iput v0, p0, Lcom/madhouse/android/ads/AdView;->$$$:I

    iput v0, p0, Lcom/madhouse/android/ads/AdView;->$$$$:I

    iput-boolean v5, p0, Lcom/madhouse/android/ads/AdView;->bbbbb:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v4, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/madhouse/android/ads/AdView;->_(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;IIZ)V

    return-void
.end method

.method static final synthetic _(Lcom/madhouse/android/ads/AdView;)Lcom/madhouse/android/ads/____;
    .locals 1

    iget-object v0, p0, Lcom/madhouse/android/ads/AdView;->aaaa:Lcom/madhouse/android/ads/____;

    return-object v0
.end method

.method private _(Landroid/content/Context;)V
    .locals 3

    const/16 v2, 0x400

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/madhouse/android/ads/AdView;->bbbbb:Z

    :cond_0
    return-void
.end method

.method private _(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;IIZ)V
    .locals 8

    const/16 v7, 0x7aa

    const/16 v6, 0x783

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput-object p0, p0, Lcom/madhouse/android/ads/AdView;->aaa:Lcom/madhouse/android/ads/AdView;

    iput-boolean v3, p0, Lcom/madhouse/android/ads/AdView;->$$$$$:Z

    invoke-virtual {p0, v4}, Lcom/madhouse/android/ads/AdView;->setFocusable(Z)V

    invoke-virtual {p0, v4}, Lcom/madhouse/android/ads/AdView;->setClickable(Z)V

    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/madhouse/android/ads/AdView;->setDescendantFocusability(I)V

    iput-object p1, p0, Lcom/madhouse/android/ads/AdView;->bb:Landroid/content/Context;

    sput-boolean p6, Lcom/madhouse/android/ads/eee;->_:Z

    if-eqz p2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x754

    invoke-static {v1}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x640

    invoke-static {v1}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/madhouse/android/ads/eee;->_:Z

    const/16 v1, 0x778

    invoke-static {v1}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    iput-object v1, p0, Lcom/madhouse/android/ads/AdView;->_____:Ljava/lang/String;

    const/16 v1, 0x79f

    invoke-static {v1}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3c

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v7}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/madhouse/android/ads/eee;->__(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/madhouse/android/ads/AdView;->_(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/madhouse/android/ads/AdView;->_(I)V

    const/16 v1, 0x7de

    invoke-static {v1}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/madhouse/android/ads/AdView;->__(I)V

    const/16 v1, 0x7e8

    invoke-static {v1}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1, v4}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/madhouse/android/ads/AdView;->setAnimationType(I)V

    :cond_1
    iget-object v0, p0, Lcom/madhouse/android/ads/AdView;->_____:Ljava/lang/String;

    if-nez v0, :cond_2

    if-eqz p3, :cond_a

    iput-object p3, p0, Lcom/madhouse/android/ads/AdView;->_____:Ljava/lang/String;

    :cond_2
    iget v0, p0, Lcom/madhouse/android/ads/AdView;->$$:I

    if-ne v0, v5, :cond_4

    if-nez p4, :cond_3

    invoke-static {v7}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/madhouse/android/ads/eee;->__(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/madhouse/android/ads/AdView;->_(Landroid/content/Context;)V

    :cond_3
    invoke-virtual {p0, p4}, Lcom/madhouse/android/ads/AdView;->_(I)V

    :cond_4
    iget v0, p0, Lcom/madhouse/android/ads/AdView;->$$$:I

    if-ne v0, v5, :cond_5

    invoke-direct {p0, p5}, Lcom/madhouse/android/ads/AdView;->__(I)V

    :cond_5
    iget-object v0, p0, Lcom/madhouse/android/ads/AdView;->bb:Landroid/content/Context;

    const/16 v1, 0x4dc

    invoke-static {v1}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/madhouse/android/ads/n;->_(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_c

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const/16 v0, 0x4da

    invoke-static {v0}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_b

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/madhouse/android/ads/AdView;->____:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/madhouse/android/ads/AdView;->___:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/madhouse/android/ads/AdView;->bb:Landroid/content/Context;

    const/16 v1, 0x8fa

    invoke-static {v1}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/madhouse/android/ads/f;->_(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    iput-object v0, p0, Lcom/madhouse/android/ads/AdView;->___:Ljava/lang/String;

    :cond_6
    :goto_1
    const/16 v0, 0x7fa

    :try_start_0
    invoke-static {v0}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x81e

    invoke-static {v1}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x852

    invoke-static {v0}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x87a

    invoke-static {v1}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x8b2

    invoke-static {v0}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8ce

    invoke-static {v1}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/madhouse/android/ads/AdView;->aa:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    instance-of v0, v0, Lcom/madhouse/android/ads/l;

    if-nez v0, :cond_7

    new-instance v0, Lcom/madhouse/android/ads/l;

    iget-object v1, p0, Lcom/madhouse/android/ads/AdView;->bb:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/madhouse/android/ads/l;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_7
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/madhouse/android/ads/AdView;->_()V

    :cond_8
    :goto_3
    return-void

    :cond_9
    invoke-static {v6}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/madhouse/android/ads/eee;->____(Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    invoke-static {v6}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/madhouse/android/ads/eee;->____(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/madhouse/android/ads/AdView;->____:Ljava/lang/String;

    goto :goto_0

    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/madhouse/android/ads/AdView;->____:Ljava/lang/String;

    goto :goto_0

    :cond_d
    invoke-static {}, Lcom/madhouse/android/ads/AdManager;->_()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    iput-object v0, p0, Lcom/madhouse/android/ads/AdView;->___:Ljava/lang/String;

    goto :goto_1

    :cond_e
    const/16 v0, 0x901

    invoke-static {v0}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/madhouse/android/ads/eee;->____(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/madhouse/android/ads/eee;->____(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/madhouse/android/ads/AdView;->aa:Z

    goto :goto_2
.end method

.method static final synthetic _(Lcom/madhouse/android/ads/AdView;I)V
    .locals 0

    iput p1, p0, Lcom/madhouse/android/ads/AdView;->$$$$:I

    return-void
.end method

.method static final synthetic _(Lcom/madhouse/android/ads/AdView;Landroid/content/Context;)V
    .locals 2

    iget-boolean v0, p0, Lcom/madhouse/android/ads/AdView;->bbbbb:Z

    if-nez v0, :cond_0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    return-void
.end method

.method static final synthetic _(Lcom/madhouse/android/ads/AdView;Lcom/madhouse/android/ads/____;)V
    .locals 0

    iput-object p1, p0, Lcom/madhouse/android/ads/AdView;->aaaa:Lcom/madhouse/android/ads/____;

    return-void
.end method

.method static final synthetic _(Lcom/madhouse/android/ads/AdView;Lcom/madhouse/android/ads/____;II)V
    .locals 8

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v6, 0x1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/madhouse/android/ads/____;->setVisibility(I)V

    iget v0, p0, Lcom/madhouse/android/ads/AdView;->$$$$:I

    const/4 v1, 0x3

    sub-int v2, v0, v1

    int-to-float v0, p2

    div-float v3, v0, v4

    int-to-float v0, p3

    div-float v4, v0, v4

    const v0, -0x41333333    # -0.4f

    int-to-float v1, p2

    mul-float v5, v0, v1

    new-instance v0, Lcom/madhouse/android/ads/___;

    sget-object v1, Lcom/madhouse/android/ads/AdView;->_:[[F

    aget-object v1, v1, v2

    const/4 v7, 0x0

    aget v1, v1, v7

    sget-object v7, Lcom/madhouse/android/ads/AdView;->_:[[F

    aget-object v2, v7, v2

    aget v2, v2, v6

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/madhouse/android/ads/___;-><init>(FFFFFZI)V

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Lcom/madhouse/android/ads/___;->setDuration(J)V

    invoke-virtual {v0, v6}, Lcom/madhouse/android/ads/___;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/madhouse/android/ads/___;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/madhouse/android/ads/gggg;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/madhouse/android/ads/gggg;-><init>(Lcom/madhouse/android/ads/AdView;Lcom/madhouse/android/ads/____;II)V

    invoke-virtual {v0, v1}, Lcom/madhouse/android/ads/___;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Lcom/madhouse/android/ads/AdView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static final synthetic _(Lcom/madhouse/android/ads/AdView;Lcom/madhouse/android/ads/eeee;)V
    .locals 8

    const/4 v6, 0x1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/madhouse/android/ads/AdView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v3, v0, v1

    invoke-virtual {p0}, Lcom/madhouse/android/ads/AdView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v4, v0, v1

    new-instance v0, Lcom/madhouse/android/ads/___;

    const/4 v1, 0x0

    const/high16 v2, -0x3b790000    # -1080.0f

    const v5, 0x461c4000    # 10000.0f

    const/4 v7, 0x3

    invoke-direct/range {v0 .. v7}, Lcom/madhouse/android/ads/___;-><init>(FFFFFZI)V

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Lcom/madhouse/android/ads/___;->setDuration(J)V

    invoke-virtual {v0, v6}, Lcom/madhouse/android/ads/___;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/madhouse/android/ads/___;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/madhouse/android/ads/i;

    invoke-direct {v1, p0}, Lcom/madhouse/android/ads/i;-><init>(Lcom/madhouse/android/ads/AdView;)V

    invoke-virtual {v0, v1}, Lcom/madhouse/android/ads/___;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Lcom/madhouse/android/ads/AdView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static final synthetic _(Lcom/madhouse/android/ads/AdView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/madhouse/android/ads/AdView;->$:Ljava/lang/String;

    return-void
.end method

.method static final synthetic _(Lcom/madhouse/android/ads/AdView;Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/madhouse/android/ads/AdView;->a:Z

    return-void
.end method

.method private _(Z)V
    .locals 6

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget v0, p0, Lcom/madhouse/android/ads/AdView;->$$:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/madhouse/android/ads/AdView;->bbb:Ljava/util/Timer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/madhouse/android/ads/AdView;->bbb:Ljava/util/Timer;

    iget-object v0, p0, Lcom/madhouse/android/ads/AdView;->bbb:Ljava/util/Timer;

    new-instance v1, Lcom/madhouse/android/ads/ff;

    invoke-direct {v1, p0}, Lcom/madhouse/android/ads/ff;-><init>(Lcom/madhouse/android/ads/AdView;)V

    iget v2, p0, Lcom/madhouse/android/ads/AdView;->$$:I

    int-to-long v2, v2

    iget v4, p0, Lcom/madhouse/android/ads/AdView;->$$:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/madhouse/android/ads/AdView;->$$:I

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/madhouse/android/ads/AdView;->bbb:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/madhouse/android/ads/AdView;->bbb:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/madhouse/android/ads/AdView;->bbb:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static final synthetic __(Lcom/madhouse/android/ads/AdView;)I
    .locals 1

    iget v0, p0, Lcom/madhouse/android/ads/AdView;->$$$$:I

    return v0
.end method

.method private __(I)V
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/madhouse/android/ads/AdView;->$$$:I

    :goto_0
    return-void

    :sswitch_0
    const/16 v0, 0xb0

    iput v0, p0, Lcom/madhouse/android/ads/AdView;->$$$:I

    goto :goto_0

    :sswitch_1
    const/16 v0, 0xf0

    iput v0, p0, Lcom/madhouse/android/ads/AdView;->$$$:I

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x140

    iput v0, p0, Lcom/madhouse/android/ads/AdView;->$$$:I

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x168

    iput v0, p0, Lcom/madhouse/android/ads/AdView;->$$$:I

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/madhouse/android/ads/AdView;->$$$:I

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x280

    iput v0, p0, Lcom/madhouse/android/ads/AdView;->$$$:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xb0 -> :sswitch_0
        0xf0 -> :sswitch_1
        0x140 -> :sswitch_2
        0x168 -> :sswitch_3
        0x1e0 -> :sswitch_4
        0x280 -> :sswitch_5
    .end sparse-switch
.end method

.method static final synthetic __(Lcom/madhouse/android/ads/AdView;Lcom/madhouse/android/ads/____;)V
    .locals 3

    iput-object p1, p0, Lcom/madhouse/android/ads/AdView;->aaaa:Lcom/madhouse/android/ads/____;

    iget-boolean v0, p0, Lcom/madhouse/android/ads/AdView;->$$$$$:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->startNow()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0, v0}, Lcom/madhouse/android/ads/AdView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method static final synthetic __(Lcom/madhouse/android/ads/AdView;Lcom/madhouse/android/ads/eeee;)V
    .locals 8

    const/4 v6, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    iput-object p1, p0, Lcom/madhouse/android/ads/AdView;->aaaaa:Lcom/madhouse/android/ads/eeee;

    invoke-virtual {p0}, Lcom/madhouse/android/ads/AdView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/madhouse/android/ads/AdView;->getHeight()I

    move-result v1

    if-lez v0, :cond_0

    if-lez v1, :cond_0

    int-to-float v0, v0

    div-float/2addr v0, v2

    int-to-float v1, v1

    div-float/2addr v1, v2

    move v3, v0

    move v4, v1

    :goto_0
    new-instance v0, Lcom/madhouse/android/ads/___;

    const/4 v1, 0x0

    const/high16 v2, -0x3b790000    # -1080.0f

    const v5, 0x461c4000    # 10000.0f

    const/4 v7, 0x2

    invoke-direct/range {v0 .. v7}, Lcom/madhouse/android/ads/___;-><init>(FFFFFZI)V

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Lcom/madhouse/android/ads/___;->setDuration(J)V

    invoke-virtual {v0, v6}, Lcom/madhouse/android/ads/___;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/madhouse/android/ads/___;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/madhouse/android/ads/h;

    invoke-direct {v1, p0}, Lcom/madhouse/android/ads/h;-><init>(Lcom/madhouse/android/ads/AdView;)V

    invoke-virtual {v0, v1}, Lcom/madhouse/android/ads/___;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Lcom/madhouse/android/ads/AdView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_0
    iget v0, p1, Lcom/madhouse/android/ads/eeee;->_:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iget v1, p1, Lcom/madhouse/android/ads/eeee;->__:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    move v3, v0

    move v4, v1

    goto :goto_0
.end method

.method static final synthetic __(Lcom/madhouse/android/ads/AdView;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/madhouse/android/ads/AdView;->____:Ljava/lang/String;

    return-void
.end method

.method static final synthetic __()[[F
    .locals 1

    sget-object v0, Lcom/madhouse/android/ads/AdView;->_:[[F

    return-object v0
.end method

.method static final synthetic ___()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/madhouse/android/ads/AdView;->bbbb:Landroid/os/Handler;

    return-object v0
.end method

.method static final synthetic ___(Lcom/madhouse/android/ads/AdView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/madhouse/android/ads/AdView;->___:Ljava/lang/String;

    return-object v0
.end method

.method static final synthetic ___(Lcom/madhouse/android/ads/AdView;Lcom/madhouse/android/ads/____;)V
    .locals 3

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/madhouse/android/ads/____;->setVisibility(I)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->startNow()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/madhouse/android/ads/gg;

    invoke-direct {v1, p0, p1}, Lcom/madhouse/android/ads/gg;-><init>(Lcom/madhouse/android/ads/AdView;Lcom/madhouse/android/ads/____;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/madhouse/android/ads/AdView;->aaaa:Lcom/madhouse/android/ads/____;

    invoke-virtual {v1, v0}, Lcom/madhouse/android/ads/____;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static final synthetic ____(Lcom/madhouse/android/ads/AdView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/madhouse/android/ads/AdView;->_____:Ljava/lang/String;

    return-object v0
.end method

.method static final synthetic ____(Lcom/madhouse/android/ads/AdView;Lcom/madhouse/android/ads/____;)V
    .locals 14

    const-wide/16 v12, 0x2bc

    const/4 v11, 0x5

    const/4 v10, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lcom/madhouse/android/ads/AdView;->$$$$:I

    sub-int v9, v0, v11

    iget-object v0, p0, Lcom/madhouse/android/ads/AdView;->aaaa:Lcom/madhouse/android/ads/____;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/madhouse/android/ads/AdView;->aaaa:Lcom/madhouse/android/ads/____;

    invoke-virtual {v0, v10}, Lcom/madhouse/android/ads/____;->setClickable(Z)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    sget-object v2, Lcom/madhouse/android/ads/AdView;->__:[[F

    aget-object v2, v2, v9

    aget v2, v2, v10

    sget-object v3, Lcom/madhouse/android/ads/AdView;->__:[[F

    aget-object v3, v3, v9

    aget v4, v3, v1

    sget-object v3, Lcom/madhouse/android/ads/AdView;->__:[[F

    aget-object v3, v3, v9

    const/4 v5, 0x2

    aget v6, v3, v5

    sget-object v3, Lcom/madhouse/android/ads/AdView;->__:[[F

    aget-object v3, v3, v9

    const/4 v5, 0x3

    aget v8, v3, v5

    move v3, v1

    move v5, v1

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v2, p0, Lcom/madhouse/android/ads/AdView;->aaaa:Lcom/madhouse/android/ads/____;

    invoke-virtual {v2, v0}, Lcom/madhouse/android/ads/____;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v10}, Lcom/madhouse/android/ads/____;->setClickable(Z)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    sget-object v2, Lcom/madhouse/android/ads/AdView;->__:[[F

    aget-object v2, v2, v9

    const/4 v3, 0x4

    aget v2, v2, v3

    sget-object v3, Lcom/madhouse/android/ads/AdView;->__:[[F

    aget-object v3, v3, v9

    aget v4, v3, v11

    sget-object v3, Lcom/madhouse/android/ads/AdView;->__:[[F

    aget-object v3, v3, v9

    const/4 v5, 0x6

    aget v6, v3, v5

    sget-object v3, Lcom/madhouse/android/ads/AdView;->__:[[F

    aget-object v3, v3, v9

    const/4 v5, 0x7

    aget v8, v3, v5

    move v3, v1

    move v5, v1

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Lcom/madhouse/android/ads/ggggg;

    invoke-direct {v1, p0, p1}, Lcom/madhouse/android/ads/ggggg;-><init>(Lcom/madhouse/android/ads/AdView;Lcom/madhouse/android/ads/____;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, v0}, Lcom/madhouse/android/ads/____;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method static final synthetic _____(Lcom/madhouse/android/ads/AdView;)I
    .locals 1

    iget v0, p0, Lcom/madhouse/android/ads/AdView;->$$:I

    return v0
.end method

.method static final synthetic a(Lcom/madhouse/android/ads/AdView;)I
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    return v0
.end method

.method static final synthetic aa(Lcom/madhouse/android/ads/AdView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/madhouse/android/ads/AdView;->bb:Landroid/content/Context;

    return-object v0
.end method

.method static final synthetic aaa(Lcom/madhouse/android/ads/AdView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/madhouse/android/ads/AdView;->aa:Z

    return v0
.end method


# virtual methods
.method protected final _()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x70b

    invoke-static {v0}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/madhouse/android/ads/eee;->___(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/madhouse/android/ads/AdView;->a:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x727

    invoke-static {v0}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/madhouse/android/ads/eee;->_(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/madhouse/android/ads/AdView;->a:Z

    sget-object v0, Lcom/madhouse/android/ads/AdView;->bbbb:Landroid/os/Handler;

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/madhouse/android/ads/AdView;->bbbb:Landroid/os/Handler;

    :cond_2
    new-instance v0, Lcom/madhouse/android/ads/fff;

    invoke-direct {v0, p0}, Lcom/madhouse/android/ads/fff;-><init>(Lcom/madhouse/android/ads/AdView;)V

    invoke-virtual {v0}, Lcom/madhouse/android/ads/fff;->start()V

    goto :goto_0
.end method

.method protected final _(I)V
    .locals 3

    const/16 v2, 0x258

    const/16 v0, 0x14

    const/4 v1, 0x0

    if-gtz p1, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/madhouse/android/ads/AdView;->$$:I

    iget v0, p0, Lcom/madhouse/android/ads/AdView;->$$:I

    if-nez v0, :cond_2

    invoke-direct {p0, v1}, Lcom/madhouse/android/ads/AdView;->_(Z)V

    :goto_1
    return-void

    :cond_1
    if-lt p1, v0, :cond_0

    if-le p1, v2, :cond_3

    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/madhouse/android/ads/AdView;->_(Z)V

    goto :goto_1

    :cond_3
    move v0, p1

    goto :goto_0
.end method

.method public final getVisibility()I
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    return v0
.end method

.method protected final onAttachedToWindow()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/madhouse/android/ads/AdView;->$$$$$:Z

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/madhouse/android/ads/AdView;->$$$$$:Z

    invoke-direct {p0, v0}, Lcom/madhouse/android/ads/AdView;->_(Z)V

    iget-object v0, p0, Lcom/madhouse/android/ads/AdView;->aaaa:Lcom/madhouse/android/ads/____;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/madhouse/android/ads/AdView;->aaaa:Lcom/madhouse/android/ads/____;

    invoke-virtual {v0}, Lcom/madhouse/android/ads/____;->_()V

    :cond_0
    iget-object v0, p0, Lcom/madhouse/android/ads/AdView;->aaaaa:Lcom/madhouse/android/ads/eeee;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/madhouse/android/ads/AdView;->aaaaa:Lcom/madhouse/android/ads/eeee;

    invoke-virtual {v0}, Lcom/madhouse/android/ads/eeee;->_()V

    :cond_1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 4

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    sget-boolean v0, Lcom/madhouse/android/ads/eee;->_:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/madhouse/android/ads/AdView;->aaaa:Lcom/madhouse/android/ads/____;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    invoke-virtual {p0}, Lcom/madhouse/android/ads/AdView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/madhouse/android/ads/AdView;->getHeight()I

    move-result v1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    iget-object v2, p0, Lcom/madhouse/android/ads/AdView;->aaaa:Lcom/madhouse/android/ads/____;

    iget v2, v2, Lcom/madhouse/android/ads/____;->_:I

    iget-object v3, p0, Lcom/madhouse/android/ads/AdView;->aaaa:Lcom/madhouse/android/ads/____;

    iget v3, v3, Lcom/madhouse/android/ads/____;->__:I

    if-lt v0, v2, :cond_1

    if-lt v1, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/madhouse/android/ads/AdView;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/madhouse/android/ads/AdView;->_(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/madhouse/android/ads/AdView;->aaaa:Lcom/madhouse/android/ads/____;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-ltz p2, :cond_5

    if-ltz p3, :cond_5

    invoke-virtual {p0}, Lcom/madhouse/android/ads/AdView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/madhouse/android/ads/AdView;->getHeight()I

    move-result v1

    if-lez v0, :cond_4

    if-lez v1, :cond_4

    iget-object v2, p0, Lcom/madhouse/android/ads/AdView;->aaaa:Lcom/madhouse/android/ads/____;

    iget v2, v2, Lcom/madhouse/android/ads/____;->_:I

    iget-object v3, p0, Lcom/madhouse/android/ads/AdView;->aaaa:Lcom/madhouse/android/ads/____;

    iget v3, v3, Lcom/madhouse/android/ads/____;->__:I

    if-lt v0, v2, :cond_3

    if-ge v1, v3, :cond_0

    :cond_3
    const/16 v0, 0x6d

    invoke-static {v0}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/madhouse/android/ads/eee;->___(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/16 v0, 0xa2

    invoke-static {v0}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/madhouse/android/ads/eee;->___(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/16 v0, 0xd8

    invoke-static {v0}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/madhouse/android/ads/eee;->___(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/madhouse/android/ads/AdView;->_(Z)V

    return-void
.end method

.method protected final onWindowVisibilityChanged(I)V
    .locals 1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/madhouse/android/ads/AdView;->_(Z)V

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/madhouse/android/ads/AdView;->_(Z)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public final setAnimationType(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x8

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/madhouse/android/ads/AdView;->$$$$:I

    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/madhouse/android/ads/AdView;->$$$$:I

    goto :goto_0
.end method

.method public final setListener(Lcom/madhouse/android/ads/AdListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/madhouse/android/ads/AdView;->b:Lcom/madhouse/android/ads/AdListener;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setVisibility(I)V
    .locals 3

    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/madhouse/android/ads/AdView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/madhouse/android/ads/AdView;->_()V

    :goto_1
    monitor-exit p0

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lcom/madhouse/android/ads/AdView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/madhouse/android/ads/AdView;->aaaa:Lcom/madhouse/android/ads/____;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/madhouse/android/ads/AdView;->aaaa:Lcom/madhouse/android/ads/____;

    invoke-virtual {v0}, Lcom/madhouse/android/ads/____;->_()V

    iget-object v0, p0, Lcom/madhouse/android/ads/AdView;->aaaa:Lcom/madhouse/android/ads/____;

    invoke-virtual {p0, v0}, Lcom/madhouse/android/ads/AdView;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/madhouse/android/ads/AdView;->aaaa:Lcom/madhouse/android/ads/____;

    :cond_3
    iget-object v0, p0, Lcom/madhouse/android/ads/AdView;->aaaaa:Lcom/madhouse/android/ads/eeee;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/madhouse/android/ads/AdView;->aaaaa:Lcom/madhouse/android/ads/eeee;

    invoke-virtual {v0}, Lcom/madhouse/android/ads/eeee;->_()V

    iget-object v0, p0, Lcom/madhouse/android/ads/AdView;->aaaaa:Lcom/madhouse/android/ads/eeee;

    invoke-virtual {p0, v0}, Lcom/madhouse/android/ads/AdView;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/madhouse/android/ads/AdView;->aaaaa:Lcom/madhouse/android/ads/eeee;

    :cond_4
    invoke-virtual {p0}, Lcom/madhouse/android/ads/AdView;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
