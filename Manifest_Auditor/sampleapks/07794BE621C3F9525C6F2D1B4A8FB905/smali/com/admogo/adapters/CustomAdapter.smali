.class public Lcom/admogo/adapters/CustomAdapter;
.super Lcom/admogo/adapters/AdMogoAdapter;
.source "CustomAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/admogo/adapters/CustomAdapter$DisplayCustomRunnable;,
        Lcom/admogo/adapters/CustomAdapter$FetchCustomRunnable;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)V
    .locals 0
    .param p1, "adMogoLayout"    # Lcom/admogo/AdMogoLayout;
    .param p2, "ration"    # Lcom/admogo/obj/Ration;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/admogo/adapters/AdMogoAdapter;-><init>(Lcom/admogo/AdMogoLayout;Lcom/admogo/obj/Ration;)V

    .line 37
    return-void
.end method


# virtual methods
.method public displayCustom()V
    .locals 38

    .prologue
    .line 51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admogo/adapters/CustomAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/admogo/AdMogoLayout;

    .line 52
    .local v7, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    const/4 v6, 0x0

    .line 53
    .local v6, "adFrameDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v7, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    move-object v0, v7

    iget-object v0, v0, Lcom/admogo/AdMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    .line 58
    .local v5, "activity":Landroid/app/Activity;
    if-eqz v5, :cond_0

    .line 61
    move-object v0, v7

    iget-object v0, v0, Lcom/admogo/AdMogoLayout;->custom:Lcom/admogo/obj/Custom;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/admogo/obj/Custom;->type:I

    move/from16 v34, v0

    packed-switch v34, :pswitch_data_0

    .line 162
    const-string v34, "AdsMOGO SDK"

    const-string v35, "Unknown custom type!"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {v7}, Lcom/admogo/AdMogoLayout;->rotateThreadedNow()V

    goto :goto_0

    .line 63
    :pswitch_0
    const-string v34, "AdsMOGO SDK"

    const-string v35, "Serving custom type: banner"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v10, Landroid/widget/RelativeLayout;

    invoke-direct {v10, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 66
    .local v10, "bannerView":Landroid/widget/RelativeLayout;
    move-object v0, v7

    iget-object v0, v0, Lcom/admogo/AdMogoLayout;->custom:Lcom/admogo/obj/Custom;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/admogo/obj/Custom;->image:Landroid/graphics/drawable/Drawable;

    move-object/from16 v34, v0

    if-nez v34, :cond_2

    .line 67
    invoke-virtual {v7}, Lcom/admogo/AdMogoLayout;->rotateThreadedNow()V

    goto :goto_0

    .line 70
    :cond_2
    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 71
    .local v9, "bannerImageView":Landroid/widget/ImageView;
    move-object v0, v7

    iget-object v0, v0, Lcom/admogo/AdMogoLayout;->custom:Lcom/admogo/obj/Custom;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/admogo/obj/Custom;->image:Landroid/graphics/drawable/Drawable;

    move-object/from16 v34, v0

    move-object v0, v9

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 73
    const/16 v34, -0x2

    .line 74
    const/16 v35, -0x2

    .line 72
    move-object v0, v11

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 75
    .local v11, "bannerViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v34, 0xd

    move-object v0, v11

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 76
    invoke-virtual {v10, v9, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    const/16 v34, 0x9

    move-object v0, v7

    move-object v1, v10

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/admogo/AdMogoLayout;->pushSubView(Landroid/view/ViewGroup;I)V

    .line 167
    .end local v9    # "bannerImageView":Landroid/widget/ImageView;
    .end local v10    # "bannerView":Landroid/widget/RelativeLayout;
    .end local v11    # "bannerViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_1
    move-object v0, v7

    iget-object v0, v0, Lcom/admogo/AdMogoLayout;->custom:Lcom/admogo/obj/Custom;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/admogo/obj/Custom;->image:Landroid/graphics/drawable/Drawable;

    .line 168
    move-object v0, v7

    iget-object v0, v0, Lcom/admogo/AdMogoLayout;->adMogoManager:Lcom/admogo/AdMogoManager;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/admogo/AdMogoManager;->resetRollover()V

    .line 169
    invoke-virtual {v7}, Lcom/admogo/AdMogoLayout;->rotateThreadedDelayed()V

    goto/16 :goto_0

    .line 82
    :pswitch_1
    const-string v34, "AdsMOGO SDK"

    const-string v35, "Serving custom type: icon"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v23, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 84
    .local v23, "iconView":Landroid/widget/RelativeLayout;
    move-object v0, v7

    iget-object v0, v0, Lcom/admogo/AdMogoLayout;->custom:Lcom/admogo/obj/Custom;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/admogo/obj/Custom;->image:Landroid/graphics/drawable/Drawable;

    move-object/from16 v34, v0

    if-nez v34, :cond_3

    .line 85
    invoke-virtual {v7}, Lcom/admogo/AdMogoLayout;->rotateThreadedNow()V

    goto/16 :goto_0

    .line 89
    :cond_3
    invoke-static {v5}, Lcom/admogo/util/AdMogoUtil;->getDensity(Landroid/app/Activity;)D

    move-result-wide v15

    .line 90
    .local v15, "density":D
    const/16 v34, 0x140

    move/from16 v0, v34

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Lcom/admogo/util/AdMogoUtil;->convertToScreenPixels(ID)I

    move-result v34

    move/from16 v0, v34

    int-to-double v0, v0

    move-wide/from16 v25, v0

    .line 91
    .local v25, "px320":D
    const/16 v34, 0x32

    move/from16 v0, v34

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Lcom/admogo/util/AdMogoUtil;->convertToScreenPixels(ID)I

    move-result v34

    move/from16 v0, v34

    int-to-double v0, v0

    move-wide/from16 v29, v0

    .line 92
    .local v29, "px50":D
    const/16 v34, 0x4

    move/from16 v0, v34

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Lcom/admogo/util/AdMogoUtil;->convertToScreenPixels(ID)I

    move-result v34

    move/from16 v0, v34

    int-to-double v0, v0

    move-wide/from16 v27, v0

    .line 93
    .local v27, "px4":D
    const/16 v34, 0x6

    move/from16 v0, v34

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Lcom/admogo/util/AdMogoUtil;->convertToScreenPixels(ID)I

    move-result v34

    move/from16 v0, v34

    int-to-double v0, v0

    move-wide/from16 v31, v0

    .line 95
    .local v31, "px6":D
    new-instance v34, Landroid/widget/FrameLayout$LayoutParams;

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move/from16 v35, v0

    move-wide/from16 v0, v29

    double-to-int v0, v0

    move/from16 v36, v0

    invoke-direct/range {v34 .. v36}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    new-instance v13, Landroid/widget/ImageView;

    invoke-direct {v13, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 98
    .local v13, "blendView":Landroid/widget/ImageView;
    move-object v0, v7

    iget-object v0, v0, Lcom/admogo/AdMogoLayout;->extra:Lcom/admogo/obj/Extra;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/admogo/obj/Extra;->bgRed:I

    move/from16 v34, v0

    .line 99
    move-object v0, v7

    iget-object v0, v0, Lcom/admogo/AdMogoLayout;->extra:Lcom/admogo/obj/Extra;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/admogo/obj/Extra;->bgGreen:I

    move/from16 v35, v0

    move-object v0, v7

    iget-object v0, v0, Lcom/admogo/AdMogoLayout;->extra:Lcom/admogo/obj/Extra;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/admogo/obj/Extra;->bgBlue:I

    move/from16 v36, v0

    .line 98
    invoke-static/range {v34 .. v36}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    .line 100
    .local v8, "backgroundColor":I
    new-instance v12, Landroid/graphics/drawable/GradientDrawable;

    .line 101
    sget-object v34, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/16 v35, 0x4

    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const/16 v37, -0x1

    aput v37, v35, v36

    const/16 v36, 0x1

    .line 102
    aput v8, v35, v36

    const/16 v36, 0x2

    aput v8, v35, v36

    const/16 v36, 0x3

    aput v8, v35, v36

    .line 100
    move-object v0, v12

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 103
    .local v12, "blend":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 105
    const/16 v34, -0x1

    .line 106
    const/16 v35, -0x1

    .line 104
    move-object v0, v14

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 107
    .local v14, "blendViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v23

    move-object v1, v13

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    new-instance v21, Landroid/widget/ImageView;

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 109
    .local v21, "iconImageView":Landroid/widget/ImageView;
    move-object v0, v7

    iget-object v0, v0, Lcom/admogo/AdMogoLayout;->custom:Lcom/admogo/obj/Custom;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/admogo/obj/Custom;->image:Landroid/graphics/drawable/Drawable;

    move-object/from16 v34, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    const/16 v34, 0xa

    move-object/from16 v0, v21

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 111
    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v34, v0

    const/16 v35, 0x0

    move-wide/from16 v0, v31

    double-to-int v0, v0

    move/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v36

    move/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 112
    sget-object v34, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 113
    new-instance v24, Landroid/widget/RelativeLayout$LayoutParams;

    .line 114
    const/16 v34, -0x2

    .line 115
    const/16 v35, -0x1

    .line 113
    move-object/from16 v0, v24

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 116
    .local v24, "iconViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    new-instance v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 118
    .local v19, "frameImageView":Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v34

    .line 119
    const-string v35, "/com/admogo/assets/ad_frame.gif"

    .line 118
    invoke-virtual/range {v34 .. v35}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v17

    .line 120
    .local v17, "drawableStream":Ljava/io/InputStream;
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    .end local v6    # "adFrameDrawable":Landroid/graphics/drawable/Drawable;
    move-object v0, v6

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 121
    .restart local v6    # "adFrameDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x0

    .line 122
    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v34, v0

    const/16 v35, 0x0

    move-wide/from16 v0, v31

    double-to-int v0, v0

    move/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v36

    move/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 124
    sget-object v34, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 125
    new-instance v20, Landroid/widget/RelativeLayout$LayoutParams;

    .line 126
    const/16 v34, -0x2

    .line 127
    const/16 v35, -0x1

    .line 125
    move-object/from16 v0, v20

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 129
    .local v20, "frameViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    new-instance v22, Landroid/widget/TextView;

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 132
    .local v22, "iconTextView":Landroid/widget/TextView;
    :try_start_0
    move-object v0, v7

    iget-object v0, v0, Lcom/admogo/AdMogoLayout;->custom:Lcom/admogo/obj/Custom;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/admogo/obj/Custom;->description:Ljava/lang/String;

    move-object/from16 v34, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v34, :cond_4

    .line 137
    :cond_4
    :goto_2
    move-object v0, v7

    iget-object v0, v0, Lcom/admogo/AdMogoLayout;->custom:Lcom/admogo/obj/Custom;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/admogo/obj/Custom;->description:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    sget-object v34, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    const/16 v35, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 139
    move-object v0, v7

    iget-object v0, v0, Lcom/admogo/AdMogoLayout;->extra:Lcom/admogo/obj/Extra;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/admogo/obj/Extra;->fgRed:I

    move/from16 v34, v0

    .line 140
    move-object v0, v7

    iget-object v0, v0, Lcom/admogo/AdMogoLayout;->extra:Lcom/admogo/obj/Extra;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/admogo/obj/Extra;->fgGreen:I

    move/from16 v35, v0

    move-object v0, v7

    iget-object v0, v0, Lcom/admogo/AdMogoLayout;->extra:Lcom/admogo/obj/Extra;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/admogo/obj/Extra;->fgBlue:I

    move/from16 v36, v0

    .line 139
    invoke-static/range {v34 .. v36}, Landroid/graphics/Color;->rgb(III)I

    move-result v34

    move-object/from16 v0, v22

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    new-instance v33, Landroid/widget/RelativeLayout$LayoutParams;

    .line 142
    const/16 v34, -0x1

    .line 143
    const/16 v35, -0x1

    .line 141
    invoke-direct/range {v33 .. v35}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 144
    .local v33, "textViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v34, 0x1

    .line 145
    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getId()I

    move-result v35

    .line 144
    invoke-virtual/range {v33 .. v35}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 146
    const/16 v34, 0xa

    invoke-virtual/range {v33 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 147
    const/16 v34, 0xc

    invoke-virtual/range {v33 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 148
    const/16 v34, 0xf

    invoke-virtual/range {v33 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 149
    const/16 v34, 0xd

    invoke-virtual/range {v33 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 150
    const/16 v34, 0x10

    move-object/from16 v0, v22

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 151
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    const/16 v34, 0x9

    move-object v0, v7

    move-object/from16 v1, v23

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/admogo/AdMogoLayout;->pushSubView(Landroid/view/ViewGroup;I)V

    .line 154
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 155
    :catch_0
    move-exception v18

    .line 156
    .local v18, "e":Ljava/io/IOException;
    const-string v34, "AdsMOGO SDK"

    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 134
    .end local v18    # "e":Ljava/io/IOException;
    .end local v33    # "textViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    :catch_1
    move-exception v34

    move-object/from16 v18, v34

    .line 135
    .local v18, "e":Ljava/lang/Exception;
    move-object v0, v7

    iget-object v0, v0, Lcom/admogo/AdMogoLayout;->custom:Lcom/admogo/obj/Custom;

    move-object/from16 v34, v0

    const-string v35, "Haven\'t description!"

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/admogo/obj/Custom;->description:Ljava/lang/String;

    goto/16 :goto_2

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 212
    const-string v0, "AdsMOGO SDK"

    const-string v1, "Custom Finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-void
.end method

.method public handle()V
    .locals 6

    .prologue
    .line 41
    iget-object v1, p0, Lcom/admogo/adapters/CustomAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admogo/AdMogoLayout;

    .line 42
    .local v0, "adMogoLayout":Lcom/admogo/AdMogoLayout;
    if-nez v0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v1, v0, Lcom/admogo/AdMogoLayout;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/admogo/adapters/CustomAdapter$FetchCustomRunnable;

    invoke-direct {v2, p0}, Lcom/admogo/adapters/CustomAdapter$FetchCustomRunnable;-><init>(Lcom/admogo/adapters/CustomAdapter;)V

    const-wide/16 v3, 0x0

    .line 47
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 46
    invoke-interface {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method
