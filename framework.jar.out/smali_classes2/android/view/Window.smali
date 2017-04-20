.class public abstract Landroid/view/Window;
.super Ljava/lang/Object;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Window$OnWindowDismissedCallback;,
        Landroid/view/Window$Callback;
    }
.end annotation


# static fields
.field protected static final DEFAULT_FEATURES:I = 0x41
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FEATURE_ACTION_BAR:I = 0x8

.field public static final FEATURE_ACTION_BAR_OVERLAY:I = 0x9

.field public static final FEATURE_ACTION_MODE_OVERLAY:I = 0xa

.field public static final FEATURE_ACTIVITY_TRANSITIONS:I = 0xd

.field public static final FEATURE_CONTENT_TRANSITIONS:I = 0xc

.field public static final FEATURE_CONTEXT_MENU:I = 0x6

.field public static final FEATURE_CUSTOM_TITLE:I = 0x7

.field public static final FEATURE_INDETERMINATE_PROGRESS:I = 0x5

.field public static final FEATURE_LEFT_ICON:I = 0x3

.field public static final FEATURE_MAX:I = 0xd

.field public static final FEATURE_NO_TITLE:I = 0x1

.field public static final FEATURE_OPTIONS_PANEL:I = 0x0

.field public static final FEATURE_PROGRESS:I = 0x2

.field public static final FEATURE_RIGHT_ICON:I = 0x4

.field public static final FEATURE_SWIPE_TO_DISMISS:I = 0xb

.field public static final ID_ANDROID_CONTENT:I = 0x1020002

.field public static final NAVIGATION_BAR_BACKGROUND_TRANSITION_NAME:Ljava/lang/String; = "android:navigation:background"

.field public static final PROGRESS_END:I = 0x2710

.field public static final PROGRESS_INDETERMINATE_OFF:I = -0x4

.field public static final PROGRESS_INDETERMINATE_ON:I = -0x3

.field public static final PROGRESS_SECONDARY_END:I = 0x7530

.field public static final PROGRESS_SECONDARY_START:I = 0x4e20

.field public static final PROGRESS_START:I = 0x0

.field public static final PROGRESS_VISIBILITY_OFF:I = -0x2

.field public static final PROGRESS_VISIBILITY_ON:I = -0x1

.field private static final PROPERTY_HARDWARE_UI:Ljava/lang/String; = "persist.sys.ui.hw"

.field public static final STATUS_BAR_BACKGROUND_TRANSITION_NAME:Ljava/lang/String; = "android:status:background"


# instance fields
.field private mActiveChild:Landroid/view/Window;

.field private mAppName:Ljava/lang/String;

.field private mAppToken:Landroid/os/IBinder;

.field private mCallback:Landroid/view/Window$Callback;

.field private mCloseOnTouchOutside:Z

.field private mContainer:Landroid/view/Window;

.field private final mContext:Landroid/content/Context;

.field private mDefaultWindowFormat:I

.field private mDestroyed:Z

.field private mFeatures:I

.field private mForcedWindowFlags:I

.field private mHardwareAccelerated:Z

.field private mHasChildren:Z

.field private mHasSoftInputMode:Z

.field private mHaveDimAmount:Z

.field private mHaveWindowFormat:Z

.field private mIsActive:Z

.field private mLocalFeatures:I

.field private mOnWindowDismissedCallback:Landroid/view/Window$OnWindowDismissedCallback;

.field private mSetCloseOnTouchOutside:Z

.field private final mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowStyle:Landroid/content/res/TypedArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-boolean v1, p0, Landroid/view/Window;->mIsActive:Z

    .line 194
    iput-boolean v1, p0, Landroid/view/Window;->mHasChildren:Z

    .line 195
    iput-boolean v1, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    .line 196
    iput-boolean v1, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    .line 197
    iput v1, p0, Landroid/view/Window;->mForcedWindowFlags:I

    .line 202
    iput-boolean v1, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    .line 203
    iput-boolean v1, p0, Landroid/view/Window;->mHaveDimAmount:Z

    .line 204
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/Window;->mDefaultWindowFormat:I

    .line 206
    iput-boolean v1, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    .line 211
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 481
    iput-object p1, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    .line 482
    invoke-static {p1}, Landroid/view/Window;->getDefaultFeatures(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Landroid/view/Window;->mLocalFeatures:I

    iput v0, p0, Landroid/view/Window;->mFeatures:I

    .line 483
    return-void
.end method

.method public static getDefaultFeatures(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1403
    const/4 v0, 0x0

    .line 1405
    .local v0, "features":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1406
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x112009a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1407
    or-int/lit8 v0, v0, 0x1

    .line 1410
    :cond_0
    const v2, 0x112009b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1411
    or-int/lit8 v0, v0, 0x40

    .line 1414
    :cond_1
    return v0
.end method

.method private isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1028
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 1029
    .local v2, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 1030
    .local v3, "y":I
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v1

    .line 1031
    .local v1, "slop":I
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1032
    .local v0, "decorView":Landroid/view/View;
    neg-int v4, v1

    if-lt v2, v4, :cond_0

    neg-int v4, v1

    if-lt v3, v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v1

    if-gt v2, v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v1

    if-le v3, v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static setBlurBackgroundAlpha_lenovo(Landroid/view/Window;I)V
    .locals 1
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "alpha"    # I

    .prologue
    .line 899
    if-eqz p0, :cond_0

    .line 900
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->lenovoBlurBackgroundAlpha:I

    .line 902
    :cond_0
    return-void
.end method

.method public static setBlurBackgroundType_lenovo(Landroid/view/Window;I)V
    .locals 1
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "type"    # I

    .prologue
    .line 887
    if-eqz p0, :cond_0

    .line 888
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->lenovoBlurBackgroundType:I

    .line 890
    :cond_0
    return-void
.end method

.method private setPrivateFlags(II)V
    .locals 3
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    .line 874
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 875
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    xor-int/lit8 v2, p2, -0x1

    and-int/2addr v1, v2

    and-int v2, p1, p2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 876
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 877
    return-void
.end method


# virtual methods
.method public abstract addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public addFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 828
    invoke-virtual {p0, p1, p1}, Landroid/view/Window;->setFlags(II)V

    .line 829
    return-void
.end method

.method public addPrivateFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 833
    invoke-direct {p0, p1, p1}, Landroid/view/Window;->setPrivateFlags(II)V

    .line 834
    return-void
.end method

.method adjustLayoutParamsForSubWindow(Landroid/view/WindowManager$LayoutParams;)V
    .locals 6
    .param p1, "wp"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/16 v5, 0x3e8

    .line 594
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 595
    .local v0, "curTitle":Ljava/lang/CharSequence;
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v3, v5, :cond_c

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7cf

    if-gt v3, v4, :cond_c

    .line 597
    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v3, :cond_0

    .line 598
    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    .line 599
    .local v1, "decor":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 600
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 603
    .end local v1    # "decor":Landroid/view/View;
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 605
    :cond_1
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3e9

    if-ne v3, v4, :cond_6

    .line 606
    const-string v2, "Media"

    .line 620
    .local v2, "title":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 621
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 623
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 647
    .end local v2    # "title":Ljava/lang/String;
    :cond_3
    :goto_1
    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 648
    iget-object v3, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 650
    :cond_4
    iget-boolean v3, p0, Landroid/view/Window;->mHardwareAccelerated:Z

    if-eqz v3, :cond_5

    .line 651
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x1000000

    or-int/2addr v3, v4

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 653
    :cond_5
    return-void

    .line 607
    :cond_6
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3ec

    if-ne v3, v4, :cond_7

    .line 608
    const-string v2, "MediaOvr"

    .restart local v2    # "title":Ljava/lang/String;
    goto :goto_0

    .line 609
    .end local v2    # "title":Ljava/lang/String;
    :cond_7
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v3, v5, :cond_8

    .line 610
    const-string v2, "Panel"

    .restart local v2    # "title":Ljava/lang/String;
    goto :goto_0

    .line 611
    .end local v2    # "title":Ljava/lang/String;
    :cond_8
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3ea

    if-ne v3, v4, :cond_9

    .line 612
    const-string v2, "SubPanel"

    .restart local v2    # "title":Ljava/lang/String;
    goto :goto_0

    .line 613
    .end local v2    # "title":Ljava/lang/String;
    :cond_9
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3ed

    if-ne v3, v4, :cond_a

    .line 614
    const-string v2, "AboveSubPanel"

    .restart local v2    # "title":Ljava/lang/String;
    goto :goto_0

    .line 615
    .end local v2    # "title":Ljava/lang/String;
    :cond_a
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3eb

    if-ne v3, v4, :cond_b

    .line 616
    const-string v2, "AtchDlg"

    .restart local v2    # "title":Ljava/lang/String;
    goto :goto_0

    .line 618
    .end local v2    # "title":Ljava/lang/String;
    :cond_b
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "title":Ljava/lang/String;
    goto :goto_0

    .line 625
    .end local v2    # "title":Ljava/lang/String;
    :cond_c
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d0

    if-lt v3, v4, :cond_f

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0xbb7

    if-gt v3, v4, :cond_f

    .line 631
    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 632
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sys"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 633
    .restart local v2    # "title":Ljava/lang/String;
    iget-object v3, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    if-eqz v3, :cond_e

    .line 634
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 636
    :cond_e
    invoke-virtual {p1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 639
    .end local v2    # "title":Ljava/lang/String;
    :cond_f
    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v3, :cond_10

    .line 640
    iget-object v3, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    if-nez v3, :cond_12

    iget-object v3, p0, Landroid/view/Window;->mAppToken:Landroid/os/IBinder;

    :goto_2
    iput-object v3, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 642
    :cond_10
    if-eqz v0, :cond_11

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_3

    :cond_11
    iget-object v3, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 644
    iget-object v3, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 640
    :cond_12
    iget-object v3, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    iget-object v3, v3, Landroid/view/Window;->mAppToken:Landroid/os/IBinder;

    goto :goto_2
.end method

.method public abstract alwaysReadCloseOnTouchAttr()V
.end method

.method public clearFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 844
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/view/Window;->setFlags(II)V

    .line 845
    return-void
.end method

.method public abstract closeAllPanels()V
.end method

.method public abstract closePanel(I)V
.end method

.method public final destroy()V
    .locals 1

    .prologue
    .line 542
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Window;->mDestroyed:Z

    .line 543
    return-void
.end method

.method public final dispatchOnWindowDismissed()V
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Landroid/view/Window;->mOnWindowDismissedCallback:Landroid/view/Window$OnWindowDismissedCallback;

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Landroid/view/Window;->mOnWindowDismissedCallback:Landroid/view/Window$OnWindowDismissedCallback;

    invoke-interface {v0}, Landroid/view/Window$OnWindowDismissedCallback;->onWindowDismissed()V

    .line 692
    :cond_0
    return-void
.end method

.method protected dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 933
    iget-object v0, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 936
    :cond_0
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1089
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getAllowEnterTransitionOverlap()Z
    .locals 1

    .prologue
    .line 1840
    const/4 v0, 0x1

    return v0
.end method

.method public getAllowReturnTransitionOverlap()Z
    .locals 1

    .prologue
    .line 1866
    const/4 v0, 0x1

    return v0
.end method

.method public getAppToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Landroid/view/Window;->mAppToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public final getAttributes()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 975
    iget-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public final getCallback()Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    return-object v0
.end method

.method public final getContainer()Landroid/view/Window;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    return-object v0
.end method

.method public getContentScene()Landroid/transition/Scene;
    .locals 1

    .prologue
    .line 1603
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public abstract getCurrentFocus()Landroid/view/View;
.end method

.method public abstract getDecorView()Landroid/view/View;
.end method

.method public getEnterTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 1677
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExitTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 1706
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getFeatures()I
    .locals 1

    .prologue
    .line 1395
    iget v0, p0, Landroid/view/Window;->mFeatures:I

    return v0
.end method

.method protected final getForcedWindowFlags()I
    .locals 1

    .prologue
    .line 983
    iget v0, p0, Landroid/view/Window;->mForcedWindowFlags:I

    return v0
.end method

.method public abstract getLayoutInflater()Landroid/view/LayoutInflater;
.end method

.method protected final getLocalFeatures()I
    .locals 1

    .prologue
    .line 1436
    iget v0, p0, Landroid/view/Window;->mLocalFeatures:I

    return v0
.end method

.method public getMediaController()Landroid/media/session/MediaController;
    .locals 1

    .prologue
    .line 1504
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getNavigationBarColor()I
.end method

.method public getReenterTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 1720
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReturnTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 1692
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSharedElementEnterTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 1757
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSharedElementExitTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 1803
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSharedElementReenterTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 1814
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSharedElementReturnTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 1766
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSharedElementsUseOverlay()Z
    .locals 1

    .prologue
    .line 1905
    const/4 v0, 0x1

    return v0
.end method

.method public abstract getStatusBarColor()I
.end method

.method public getTransitionBackgroundFadeDuration()J
    .locals 2

    .prologue
    .line 1879
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTransitionManager()Landroid/transition/TransitionManager;
    .locals 1

    .prologue
    .line 1580
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getVolumeControlStream()I
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Landroid/view/Window;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public final getWindowStyle()Landroid/content/res/TypedArray;
    .locals 2

    .prologue
    .line 500
    monitor-enter p0

    .line 501
    :try_start_0
    iget-object v0, p0, Landroid/view/Window;->mWindowStyle:Landroid/content/res/TypedArray;

    if-nez v0, :cond_0

    .line 502
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Window;->mWindowStyle:Landroid/content/res/TypedArray;

    .line 505
    :cond_0
    iget-object v0, p0, Landroid/view/Window;->mWindowStyle:Landroid/content/res/TypedArray;

    monitor-exit p0

    return-object v0

    .line 506
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final hasChildren()Z
    .locals 1

    .prologue
    .line 537
    iget-boolean v0, p0, Landroid/view/Window;->mHasChildren:Z

    return v0
.end method

.method public hasFeature(I)Z
    .locals 3
    .param p1, "feature"    # I

    .prologue
    const/4 v0, 0x1

    .line 1424
    invoke-virtual {p0}, Landroid/view/Window;->getFeatures()I

    move-result v1

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final hasSoftInputMode()Z
    .locals 1

    .prologue
    .line 990
    iget-boolean v0, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    return v0
.end method

.method protected haveDimAmount()Z
    .locals 1

    .prologue
    .line 1460
    iget-boolean v0, p0, Landroid/view/Window;->mHaveDimAmount:Z

    return v0
.end method

.method public injectInputEvent(Landroid/view/InputEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 1567
    return-void
.end method

.method public abstract invalidatePanelMenu(I)V
.end method

.method public final isActive()Z
    .locals 1

    .prologue
    .line 1076
    iget-boolean v0, p0, Landroid/view/Window;->mIsActive:Z

    return v0
.end method

.method public final isDestroyed()Z
    .locals 1

    .prologue
    .line 547
    iget-boolean v0, p0, Landroid/view/Window;->mDestroyed:Z

    return v0
.end method

.method public abstract isFloating()Z
.end method

.method public abstract isShortcutKey(ILandroid/view/KeyEvent;)Z
.end method

.method public final makeActive()V
    .locals 2

    .prologue
    .line 1064
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    if-eqz v0, :cond_1

    .line 1065
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    iget-object v0, v0, Landroid/view/Window;->mActiveChild:Landroid/view/Window;

    if-eqz v0, :cond_0

    .line 1066
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    iget-object v0, v0, Landroid/view/Window;->mActiveChild:Landroid/view/Window;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/Window;->mIsActive:Z

    .line 1068
    :cond_0
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    iput-object p0, v0, Landroid/view/Window;->mActiveChild:Landroid/view/Window;

    .line 1070
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Window;->mIsActive:Z

    .line 1071
    invoke-virtual {p0}, Landroid/view/Window;->onActive()V

    .line 1072
    return-void
.end method

.method protected abstract onActive()V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract openPanel(ILandroid/view/KeyEvent;)V
.end method

.method public abstract peekDecorView()Landroid/view/View;
.end method

.method public abstract performContextMenuIdentifierAction(II)Z
.end method

.method public abstract performPanelIdentifierAction(III)Z
.end method

.method public abstract performPanelShortcut(IILandroid/view/KeyEvent;I)Z
.end method

.method protected removeFeature(I)V
    .locals 3
    .param p1, "featureId"    # I

    .prologue
    .line 1058
    const/4 v1, 0x1

    shl-int v0, v1, p1

    .line 1059
    .local v0, "flag":I
    iget v1, p0, Landroid/view/Window;->mFeatures:I

    xor-int/lit8 v2, v0, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/Window;->mFeatures:I

    .line 1060
    iget v1, p0, Landroid/view/Window;->mLocalFeatures:I

    iget-object v2, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    iget v2, v2, Landroid/view/Window;->mFeatures:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    .end local v0    # "flag":I
    :cond_0
    xor-int/lit8 v2, v0, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/Window;->mLocalFeatures:I

    .line 1061
    return-void
.end method

.method public requestFeature(I)Z
    .locals 4
    .param p1, "featureId"    # I

    .prologue
    const/4 v2, 0x1

    .line 1048
    shl-int v0, v2, p1

    .line 1049
    .local v0, "flag":I
    iget v1, p0, Landroid/view/Window;->mFeatures:I

    or-int/2addr v1, v0

    iput v1, p0, Landroid/view/Window;->mFeatures:I

    .line 1050
    iget v3, p0, Landroid/view/Window;->mLocalFeatures:I

    iget-object v1, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    iget v1, v1, Landroid/view/Window;->mFeatures:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v0

    :goto_0
    or-int/2addr v1, v3

    iput v1, p0, Landroid/view/Window;->mLocalFeatures:I

    .line 1051
    iget v1, p0, Landroid/view/Window;->mFeatures:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    return v1

    :cond_0
    move v1, v0

    .line 1050
    goto :goto_0

    .line 1051
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public abstract restoreHierarchyState(Landroid/os/Bundle;)V
.end method

.method public romUI_setUseThemeDeviceDefault(Z)V
    .locals 1
    .param p1, "isUsing"    # Z

    .prologue
    .line 922
    if-eqz p1, :cond_0

    .line 923
    const/high16 v0, 0x20000000

    invoke-virtual {p0, v0}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 925
    :cond_0
    return-void
.end method

.method public abstract saveHierarchyState()Landroid/os/Bundle;
.end method

.method public setAllowEnterTransitionOverlap(Z)V
    .locals 0
    .param p1, "allow"    # Z

    .prologue
    .line 1827
    return-void
.end method

.method public setAllowReturnTransitionOverlap(Z)V
    .locals 0
    .param p1, "allow"    # Z

    .prologue
    .line 1853
    return-void
.end method

.method public setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "a"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 964
    iget-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 965
    iget-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 966
    return-void
.end method

.method public abstract setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public setBackgroundDrawableResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1232
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1233
    return-void
.end method

.method public setCallback(Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "callback"    # Landroid/view/Window$Callback;

    .prologue
    .line 672
    iput-object p1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    .line 673
    return-void
.end method

.method public abstract setChildDrawable(ILandroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setChildInt(II)V
.end method

.method public setClipToOutline(Z)V
    .locals 0
    .param p1, "clipToOutline"    # Z

    .prologue
    .line 1220
    return-void
.end method

.method public setCloseOnTouchOutside(Z)V
    .locals 1
    .param p1, "close"    # Z

    .prologue
    .line 995
    iput-boolean p1, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    .line 996
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    .line 997
    return-void
.end method

.method public setCloseOnTouchOutsideIfNotSet(Z)V
    .locals 1
    .param p1, "close"    # Z

    .prologue
    .line 1001
    iget-boolean v0, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    if-nez v0, :cond_0

    .line 1002
    iput-boolean p1, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    .line 1003
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    .line 1005
    :cond_0
    return-void
.end method

.method public setContainer(Landroid/view/Window;)V
    .locals 1
    .param p1, "container"    # Landroid/view/Window;

    .prologue
    .line 517
    iput-object p1, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    .line 518
    if-eqz p1, :cond_0

    .line 520
    iget v0, p0, Landroid/view/Window;->mFeatures:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/Window;->mFeatures:I

    .line 521
    iget v0, p0, Landroid/view/Window;->mLocalFeatures:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/Window;->mLocalFeatures:I

    .line 522
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/view/Window;->mHasChildren:Z

    .line 524
    :cond_0
    return-void
.end method

.method public abstract setContentView(I)V
.end method

.method public abstract setContentView(Landroid/view/View;)V
.end method

.method public abstract setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public setDefaultIcon(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 1535
    return-void
.end method

.method public setDefaultLogo(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 1553
    return-void
.end method

.method protected setDefaultWindowFormat(I)V
    .locals 2
    .param p1, "format"    # I

    .prologue
    .line 1450
    iput p1, p0, Landroid/view/Window;->mDefaultWindowFormat:I

    .line 1451
    iget-boolean v1, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    if-nez v1, :cond_0

    .line 1452
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1453
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1454
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1456
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public setDimAmount(F)V
    .locals 2
    .param p1, "amount"    # F

    .prologue
    .line 947
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 948
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 949
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/Window;->mHaveDimAmount:Z

    .line 950
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 951
    return-void
.end method

.method public setDisableWallpaperTouchEvents(Z)V
    .locals 2
    .param p1, "disable"    # Z

    .prologue
    const/16 v1, 0x800

    .line 1010
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/view/Window;->setPrivateFlags(II)V

    .line 1013
    return-void

    .line 1010
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setElevation(F)V
    .locals 0
    .param p1, "elevation"    # F

    .prologue
    .line 1209
    return-void
.end method

.method public setEnterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1617
    return-void
.end method

.method public setExitTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1648
    return-void
.end method

.method public abstract setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setFeatureDrawableAlpha(II)V
.end method

.method public abstract setFeatureDrawableResource(II)V
.end method

.method public abstract setFeatureDrawableUri(ILandroid/net/Uri;)V
.end method

.method public abstract setFeatureInt(II)V
.end method

.method public setFlags(II)V
    .locals 3
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    .line 867
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 868
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/lit8 v2, p2, -0x1

    and-int/2addr v1, v2

    and-int v2, p1, p2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 869
    iget v1, p0, Landroid/view/Window;->mForcedWindowFlags:I

    or-int/2addr v1, p2

    iput v1, p0, Landroid/view/Window;->mForcedWindowFlags:I

    .line 870
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 871
    return-void
.end method

.method public setFormat(I)V
    .locals 2
    .param p1, "format"    # I

    .prologue
    .line 778
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 779
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_0

    .line 780
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 781
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    .line 786
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 787
    return-void

    .line 783
    :cond_0
    iget v1, p0, Landroid/view/Window;->mDefaultWindowFormat:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 784
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    goto :goto_0
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 749
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 750
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 751
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 752
    return-void
.end method

.method public setIcon(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 1526
    return-void
.end method

.method public setLayout(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 731
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 732
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 733
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 734
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 735
    return-void
.end method

.method public setLocalFocus(ZZ)V
    .locals 0
    .param p1, "hasFocus"    # Z
    .param p2, "inTouchMode"    # Z

    .prologue
    .line 1561
    return-void
.end method

.method public setLogo(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 1544
    return-void
.end method

.method public setMediaController(Landroid/media/session/MediaController;)V
    .locals 0
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .prologue
    .line 1494
    return-void
.end method

.method public abstract setNavigationBarColor(I)V
.end method

.method protected setNeedsMenuKey(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 909
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 910
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    .line 911
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 912
    return-void
.end method

.method public final setOnWindowDismissedCallback(Landroid/view/Window$OnWindowDismissedCallback;)V
    .locals 0
    .param p1, "dcb"    # Landroid/view/Window$OnWindowDismissedCallback;

    .prologue
    .line 684
    iput-object p1, p0, Landroid/view/Window;->mOnWindowDismissedCallback:Landroid/view/Window$OnWindowDismissedCallback;

    .line 685
    return-void
.end method

.method public setReenterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1664
    return-void
.end method

.method public setReturnTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1634
    return-void
.end method

.method public setSharedElementEnterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1733
    return-void
.end method

.method public setSharedElementExitTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1779
    return-void
.end method

.method public setSharedElementReenterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1792
    return-void
.end method

.method public setSharedElementReturnTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1748
    return-void
.end method

.method public setSharedElementsUseOverlay(Z)V
    .locals 0
    .param p1, "sharedElementsUseOverlay"    # Z

    .prologue
    .line 1916
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 810
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 811
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_0

    .line 812
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 813
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    .line 817
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 818
    return-void

    .line 815
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    goto :goto_0
.end method

.method public abstract setStatusBarColor(I)V
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract setTitleColor(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public setTransitionBackgroundFadeDuration(J)V
    .locals 0
    .param p1, "fadeDurationMillis"    # J

    .prologue
    .line 1893
    return-void
.end method

.method public setTransitionManager(Landroid/transition/TransitionManager;)V
    .locals 1
    .param p1, "tm"    # Landroid/transition/TransitionManager;

    .prologue
    .line 1591
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 761
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 762
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 763
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 764
    return-void
.end method

.method public setUiOptions(I)V
    .locals 0
    .param p1, "uiOptions"    # I

    .prologue
    .line 1511
    return-void
.end method

.method public setUiOptions(II)V
    .locals 0
    .param p1, "uiOptions"    # I
    .param p2, "mask"    # I

    .prologue
    .line 1519
    return-void
.end method

.method public abstract setVolumeControlStream(I)V
.end method

.method public setWindowAnimations(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 797
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 798
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 799
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 800
    return-void
.end method

.method public setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 1
    .param p1, "wm"    # Landroid/view/WindowManager;
    .param p2, "appToken"    # Landroid/os/IBinder;
    .param p3, "appName"    # Ljava/lang/String;

    .prologue
    .line 558
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V

    .line 559
    return-void
.end method

.method public setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "wm"    # Landroid/view/WindowManager;
    .param p2, "appToken"    # Landroid/os/IBinder;
    .param p3, "appName"    # Ljava/lang/String;
    .param p4, "hardwareAccelerated"    # Z

    .prologue
    const/4 v0, 0x0

    .line 570
    iput-object p2, p0, Landroid/view/Window;->mAppToken:Landroid/os/IBinder;

    .line 571
    iput-object p3, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    .line 572
    if-nez p4, :cond_0

    const-string v1, "persist.sys.ui.hw"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Landroid/view/Window;->mHardwareAccelerated:Z

    .line 574
    if-nez p1, :cond_2

    .line 575
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "wm":Landroid/view/WindowManager;
    check-cast p1, Landroid/view/WindowManager;

    .line 577
    .restart local p1    # "wm":Landroid/view/WindowManager;
    :cond_2
    check-cast p1, Landroid/view/WindowManagerImpl;

    .end local p1    # "wm":Landroid/view/WindowManager;
    invoke-virtual {p1, p0}, Landroid/view/WindowManagerImpl;->createLocalWindowManager(Landroid/view/Window;)Landroid/view/WindowManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Window;->mWindowManager:Landroid/view/WindowManager;

    .line 578
    return-void
.end method

.method public shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1020
    iget-boolean v0, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/view/Window;->isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1022
    const/4 v0, 0x1

    .line 1024
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract takeInputQueue(Landroid/view/InputQueue$Callback;)V
.end method

.method public abstract takeKeyEvents(Z)V
.end method

.method public abstract takeSurface(Landroid/view/SurfaceHolder$Callback2;)V
.end method

.method public abstract togglePanel(ILandroid/view/KeyEvent;)V
.end method
