.class final Lcom/madhouse/android/ads/eee;
.super Ljava/lang/Object;


# static fields
.field static _:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static final _(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/madhouse/android/ads/eee;->_:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x6ff

    invoke-static {v0}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected static final __(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/madhouse/android/ads/eee;->_:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x6ff

    invoke-static {v0}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected static final ___(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/madhouse/android/ads/eee;->_:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x6ff

    invoke-static {v0}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected static final ____(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/madhouse/android/ads/eee;->_:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x6ff

    invoke-static {v0}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
