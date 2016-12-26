.class public Lcom/lenovo/psswitch/PsAnimationHelper;
.super Ljava/lang/Object;
.source "PsAnimationHelper.java"


# static fields
.field public static final CAMERA_P_MODE:I = 0x62

.field public static final CAMERA_S_MODE:I = 0x63

.field private static final MSG_END_ANIM:I = 0x2

.field private static final MSG_EXIT_ANIM:I = 0x3

.field private static final MSG_INVALIDATE:I = 0x1

.field private static final MSG_START_ANIM:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AnimationHelper"


# instance fields
.field public isShowing:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private parent:Landroid/view/ViewGroup;

.field private ps_bg:Landroid/widget/ImageView;

.field private ps_mode:Landroid/widget/TextView;

.field private ps_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/psswitch/PsAnimationHelper;->isShowing:Z

    .line 107
    new-instance v0, Lcom/lenovo/psswitch/PsAnimationHelper$1;

    invoke-direct {v0, p0}, Lcom/lenovo/psswitch/PsAnimationHelper$1;-><init>(Lcom/lenovo/psswitch/PsAnimationHelper;)V

    iput-object v0, p0, Lcom/lenovo/psswitch/PsAnimationHelper;->mHandler:Landroid/os/Handler;

    .line 52
    iput-object p1, p0, Lcom/lenovo/psswitch/PsAnimationHelper;->mContext:Landroid/content/Context;

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090064

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/lenovo/psswitch/PsAnimationHelper;->parent:Landroid/view/ViewGroup;

    .line 55
    iget-object v0, p0, Lcom/lenovo/psswitch/PsAnimationHelper;->parent:Landroid/view/ViewGroup;

    const v1, 0x102031d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/psswitch/PsAnimationHelper;->ps_title:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lcom/lenovo/psswitch/PsAnimationHelper;->parent:Landroid/view/ViewGroup;

    const v1, 0x102031e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/psswitch/PsAnimationHelper;->ps_mode:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcom/lenovo/psswitch/PsAnimationHelper;->parent:Landroid/view/ViewGroup;

    const v1, 0x102031c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/psswitch/PsAnimationHelper;->ps_bg:Landroid/widget/ImageView;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/psswitch/PsAnimationHelper;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/psswitch/PsAnimationHelper;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/psswitch/PsAnimationHelper;->parent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/psswitch/PsAnimationHelper;Landroid/view/ViewGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/psswitch/PsAnimationHelper;
    .param p1, "x1"    # Landroid/view/ViewGroup;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/lenovo/psswitch/PsAnimationHelper;->addView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/psswitch/PsAnimationHelper;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/psswitch/PsAnimationHelper;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/lenovo/psswitch/PsAnimationHelper;->removeView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/lenovo/psswitch/PsAnimationHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/psswitch/PsAnimationHelper;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/lenovo/psswitch/PsAnimationHelper;->excuExitAnim()V

    return-void
.end method

.method private addView(Landroid/view/ViewGroup;)V
    .locals 8
    .param p1, "view"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v7, 0x1cc

    const/high16 v6, 0x3f800000    # 1.0f

    .line 156
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 157
    .local v0, "anim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v4, 0x14a

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 158
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 159
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 162
    .local v2, "wm":Landroid/view/WindowManager;
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 164
    .local v1, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x110

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 166
    const/16 v3, 0x7d0

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 167
    const/16 v3, 0x7d6

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 168
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 169
    const/16 v3, 0x11

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 170
    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 171
    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 172
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 173
    const/4 v3, -0x3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 174
    const-string v3, "Camera_tips"

    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 176
    invoke-interface {v2, p1, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    iget-object v3, p0, Lcom/lenovo/psswitch/PsAnimationHelper;->ps_title:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 178
    iget-object v3, p0, Lcom/lenovo/psswitch/PsAnimationHelper;->ps_mode:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 179
    iget-object v3, p0, Lcom/lenovo/psswitch/PsAnimationHelper;->ps_bg:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 180
    iget-object v3, p0, Lcom/lenovo/psswitch/PsAnimationHelper;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    const-wide/16 v6, 0x67c

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 181
    return-void
.end method

.method private excuExitAnim()V
    .locals 4

    .prologue
    .line 184
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 185
    .local v0, "anim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x226

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 186
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 187
    new-instance v1, Lcom/lenovo/psswitch/PsAnimationHelper$2;

    invoke-direct {v1, p0}, Lcom/lenovo/psswitch/PsAnimationHelper$2;-><init>(Lcom/lenovo/psswitch/PsAnimationHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 213
    iget-object v1, p0, Lcom/lenovo/psswitch/PsAnimationHelper;->ps_title:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 214
    iget-object v1, p0, Lcom/lenovo/psswitch/PsAnimationHelper;->ps_mode:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 215
    iget-object v1, p0, Lcom/lenovo/psswitch/PsAnimationHelper;->ps_bg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 216
    return-void
.end method

.method private removeView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 219
    if-eqz p1, :cond_0

    .line 220
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 222
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 223
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lenovo/psswitch/PsAnimationHelper;->isShowing:Z

    .line 225
    .end local v0    # "wm":Landroid/view/WindowManager;
    :cond_0
    return-void
.end method


# virtual methods
.method public endAnimation()V
    .locals 3

    .prologue
    .line 101
    iget-object v1, p0, Lcom/lenovo/psswitch/PsAnimationHelper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 102
    iget-object v1, p0, Lcom/lenovo/psswitch/PsAnimationHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 103
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 104
    iget-object v1, p0, Lcom/lenovo/psswitch/PsAnimationHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 105
    return-void
.end method

.method public invalidateAnimation(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    .line 95
    iget-object v1, p0, Lcom/lenovo/psswitch/PsAnimationHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 96
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 97
    iget-object v1, p0, Lcom/lenovo/psswitch/PsAnimationHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 98
    return-void
.end method

.method public startAniamtion(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    const v4, 0x1040095

    .line 64
    packed-switch p1, :pswitch_data_0

    .line 88
    :goto_0
    iget-object v1, p0, Lcom/lenovo/psswitch/PsAnimationHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 89
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 90
    iget-object v1, p0, Lcom/lenovo/psswitch/PsAnimationHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 91
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/psswitch/PsAnimationHelper;->isShowing:Z

    .line 92
    return-void

    .line 69
    .end local v0    # "msg":Landroid/os/Message;
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/psswitch/PsAnimationHelper;->ps_bg:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lenovo/psswitch/PsAnimationHelper;->mContext:Landroid/content/Context;

    const v3, 0x108058f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 70
    iget-object v1, p0, Lcom/lenovo/psswitch/PsAnimationHelper;->ps_mode:Landroid/widget/TextView;

    const v2, 0x1040096

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 71
    iget-object v1, p0, Lcom/lenovo/psswitch/PsAnimationHelper;->ps_title:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 80
    :pswitch_1
    iget-object v1, p0, Lcom/lenovo/psswitch/PsAnimationHelper;->ps_bg:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lenovo/psswitch/PsAnimationHelper;->mContext:Landroid/content/Context;

    const v3, 0x1080590

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 81
    iget-object v1, p0, Lcom/lenovo/psswitch/PsAnimationHelper;->ps_mode:Landroid/widget/TextView;

    const v2, 0x1040097

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 82
    iget-object v1, p0, Lcom/lenovo/psswitch/PsAnimationHelper;->ps_title:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x62
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
