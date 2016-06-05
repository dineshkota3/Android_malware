.class public Lcom/masshabit/common/InputEvent;
.super Ljava/lang/Object;
.source "InputEvent.java"


# static fields
.field public static final ACTION_KEY_DOWN:I = 0x1

.field public static final ACTION_KEY_UP:I = 0x2

.field public static final ACTION_TOUCH_DOWN:I = 0x3

.field public static final ACTION_TOUCH_MOVE:I = 0x4

.field public static final ACTION_TOUCH_UP:I = 0x5

.field public static final EVENT_TYPE_KEY:B = 0x1t

.field public static final EVENT_TYPE_TOUCH:B = 0x2t

.field public static final TAG:Ljava/lang/String; = "InputEvent"


# instance fields
.field public mAction:I

.field public mEventType:B

.field public mKeyCode:I

.field protected mOwner:Lcom/masshabit/common/InputEventPool;

.field public mPos:Lcom/masshabit/common/physics/Vector2;

.field public mTime:J


# direct methods
.method public constructor <init>(Lcom/masshabit/common/InputEventPool;)V
    .locals 1
    .param p1, "owner"    # Lcom/masshabit/common/InputEventPool;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/masshabit/common/physics/Vector2;

    invoke-direct {v0}, Lcom/masshabit/common/physics/Vector2;-><init>()V

    iput-object v0, p0, Lcom/masshabit/common/InputEvent;->mPos:Lcom/masshabit/common/physics/Vector2;

    .line 31
    iput-object p1, p0, Lcom/masshabit/common/InputEvent;->mOwner:Lcom/masshabit/common/InputEventPool;

    .line 32
    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/masshabit/common/InputEvent;->mOwner:Lcom/masshabit/common/InputEventPool;

    invoke-virtual {v0, p0}, Lcom/masshabit/common/InputEventPool;->release(Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method public setEvent(Landroid/view/KeyEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 36
    iput-byte v1, p0, Lcom/masshabit/common/InputEvent;->mEventType:B

    .line 37
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 38
    .local v0, "a":I
    packed-switch v0, :pswitch_data_0

    .line 47
    const/4 v1, 0x0

    iput v1, p0, Lcom/masshabit/common/InputEvent;->mAction:I

    .line 49
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/masshabit/common/InputEvent;->mTime:J

    .line 50
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    iput v1, p0, Lcom/masshabit/common/InputEvent;->mKeyCode:I

    .line 51
    return-void

    .line 41
    :pswitch_0
    iput v1, p0, Lcom/masshabit/common/InputEvent;->mAction:I

    goto :goto_0

    .line 44
    :pswitch_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/masshabit/common/InputEvent;->mAction:I

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEvent(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 55
    const/4 v1, 0x2

    iput-byte v1, p0, Lcom/masshabit/common/InputEvent;->mEventType:B

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 57
    .local v0, "a":I
    packed-switch v0, :pswitch_data_0

    .line 69
    const/4 v1, 0x0

    iput v1, p0, Lcom/masshabit/common/InputEvent;->mAction:I

    .line 71
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/masshabit/common/InputEvent;->mTime:J

    .line 72
    iget-object v1, p0, Lcom/masshabit/common/InputEvent;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 73
    return-void

    .line 60
    :pswitch_0
    const/4 v1, 0x3

    iput v1, p0, Lcom/masshabit/common/InputEvent;->mAction:I

    goto :goto_0

    .line 63
    :pswitch_1
    const/4 v1, 0x4

    iput v1, p0, Lcom/masshabit/common/InputEvent;->mAction:I

    goto :goto_0

    .line 66
    :pswitch_2
    const/4 v1, 0x5

    iput v1, p0, Lcom/masshabit/common/InputEvent;->mAction:I

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setEvent(Landroid/view/MotionEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "historyItem"    # I

    .prologue
    .line 77
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/masshabit/common/InputEvent;->mEventType:B

    .line 78
    const/4 v0, 0x4

    iput v0, p0, Lcom/masshabit/common/InputEvent;->mAction:I

    .line 79
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/masshabit/common/InputEvent;->mTime:J

    .line 80
    iget-object v0, p0, Lcom/masshabit/common/InputEvent;->mPos:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v1

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 81
    return-void
.end method
