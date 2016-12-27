.class public Lcom/android/settings/CryptKeeper;
.super Landroid/app/Activity;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CryptKeeper$ValidationTask;,
        Lcom/android/settings/CryptKeeper$DecryptTask;,
        Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;
    }
.end annotation


# static fields
.field static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final COOL_DOWN_ATTEMPTS:I = 0x5

.field private static final COOL_DOWN_INTERVAL:I = 0x1e

.field private static final DECRYPT_STATE:Ljava/lang/String; = "trigger_restart_framework"

.field private static final ENCRYPTION_VERIFY_SUCCESS:Ljava/lang/String; = "com.android.settings.encryption.verify.success"

.field private static final EXTRA_FORCE_VIEW:Ljava/lang/String; = "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

.field private static final FORCE_VIEW_ERROR:Ljava/lang/String; = "error"

.field private static final FORCE_VIEW_PASSWORD:Ljava/lang/String; = "password"

.field private static final FORCE_VIEW_PROGRESS:Ljava/lang/String; = "progress"

.field private static final MAX_FAILED_ATTEMPTS:I = 0x1e

.field private static final MESSAGE_COOLDOWN:I = 0x2

.field private static final MESSAGE_NOTIFY:I = 0x3

.field private static final MESSAGE_UPDATE_PROGRESS:I = 0x1

.field private static final RIGHT_PATTERN_CLEAR_TIMEOUT_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "CryptKeeper"

.field private static final WRONG_PATTERN_CLEAR_TIMEOUT_MS:I = 0x5dc

.field private static final sWidgetsToDisable:I = 0x3370000


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field protected mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private mClearPatternRunnable:Ljava/lang/Runnable;

.field private mCooldown:I

.field private mCorrupt:Z

.field private mEncryptionGoneBad:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIgnoreBack:Z

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mNotificationCountdown:I

.field private mPasswordEntry:Landroid/widget/EditText;

.field private mReleaseWakeLockCountdown:I

.field private mStatusBar:Landroid/app/StatusBarManager;

.field private mStatusString:I

.field private mValidationComplete:Z

.field private mValidationRequested:Z

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 124
    iput-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mIgnoreBack:Z

    .line 130
    iput v0, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    .line 132
    iput v0, p0, Lcom/android/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    .line 133
    const v0, 0x7f0c0aad

    iput v0, p0, Lcom/android/settings/CryptKeeper;->mStatusString:I

    .line 141
    new-instance v0, Lcom/android/settings/CryptKeeper$1;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$1;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    .line 283
    new-instance v0, Lcom/android/settings/CryptKeeper$2;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$2;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    .line 689
    new-instance v0, Lcom/android/settings/CryptKeeper$5;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$5;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/CryptKeeper;)Landroid/os/storage/IMountService;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/settings/CryptKeeper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/settings/CryptKeeper;->mCorrupt:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->setupUi()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->updateProgress()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->notifyUser()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/CryptKeeper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 88
    iget v0, p0, Lcom/android/settings/CryptKeeper;->mStatusString:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/settings/CryptKeeper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;
    .param p1, "x1"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/android/settings/CryptKeeper;->mStatusString:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->passwordEntryInit()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->hideSoftKeyboard()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->takeEmergencyCallAction()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/CryptKeeper;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/CryptKeeper;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper;->showFactoryReset(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/CryptKeeper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 88
    iget v0, p0, Lcom/android/settings/CryptKeeper;->mCooldown:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/CryptKeeper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;
    .param p1, "x1"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/android/settings/CryptKeeper;->mCooldown:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->cooldown()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/CryptKeeper;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/CryptKeeper;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/settings/CryptKeeper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/settings/CryptKeeper;->mValidationComplete:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/settings/CryptKeeper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/settings/CryptKeeper;->mEncryptionGoneBad:Z

    return p1
.end method

.method private cooldown()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 643
    const v3, 0x7f0b003a

    invoke-virtual {p0, v3}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 645
    .local v1, "status":Landroid/widget/TextView;
    iget v3, p0, Lcom/android/settings/CryptKeeper;->mCooldown:I

    if-gtz v3, :cond_2

    .line 647
    iget-object v3, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v3, :cond_0

    .line 648
    iget-object v3, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 649
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 651
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v3, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 652
    invoke-direct {p0, v4}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    .line 654
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    iget-object v3, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v3, :cond_1

    .line 655
    iget-object v3, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 657
    :cond_1
    iget v3, p0, Lcom/android/settings/CryptKeeper;->mStatusString:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 674
    :goto_0
    return-void

    .line 660
    :cond_2
    iget-object v3, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v3, :cond_3

    .line 661
    iget-object v3, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 663
    :cond_3
    iget-object v3, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v3, :cond_4

    .line 664
    iget-object v3, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 667
    :cond_4
    const v3, 0x7f0c055b

    invoke-virtual {p0, v3}, Lcom/android/settings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 668
    .local v2, "template":Ljava/lang/CharSequence;
    new-array v3, v4, [Ljava/lang/CharSequence;

    iget v4, p0, Lcom/android/settings/CryptKeeper;->mCooldown:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 670
    iget v3, p0, Lcom/android/settings/CryptKeeper;->mCooldown:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/settings/CryptKeeper;->mCooldown:I

    .line 671
    iget-object v3, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 672
    iget-object v3, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private delayAudioNotification()V
    .locals 2

    .prologue
    .line 980
    const-string v0, "CryptKeeper"

    const-string v1, "User entering password: delay audio notification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    .line 982
    return-void
.end method

.method private encryptionProgressInit()V
    .locals 3

    .prologue
    .line 540
    const-string v1, "CryptKeeper"

    const-string v2, "Encryption progress screen initializing."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 542
    const-string v1, "CryptKeeper"

    const-string v2, "Acquiring wakelock."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 544
    .local v0, "pm":Landroid/os/PowerManager;
    const/16 v1, 0x1a

    const-string v2, "CryptKeeper"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 545
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 548
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    const v1, 0x7f0b0066

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 550
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    .line 553
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->updateProgress()V

    .line 554
    return-void
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 2

    .prologue
    .line 848
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 849
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 850
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 852
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getTelecomManager()Landroid/telecom/TelecomManager;
    .locals 1

    .prologue
    .line 973
    const-string v0, "telecom"

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 969
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 12
    .param p1, "imm"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "shouldIncludeAuxiliarySubtypes"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 808
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 811
    .local v1, "enabledImis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x0

    .line 813
    .local v2, "filteredImisCount":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 815
    .local v5, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-le v2, v10, :cond_1

    .line 841
    .end local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_1
    return v10

    .line 816
    .restart local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    invoke-virtual {p1, v5, v10}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    .line 819
    .local v8, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 820
    add-int/lit8 v2, v2, 0x1

    .line 821
    goto :goto_0

    .line 824
    :cond_2
    const/4 v0, 0x0

    .line 825
    .local v0, "auxCount":I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodSubtype;

    .line 826
    .local v7, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 827
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 830
    .end local v7    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int v6, v11, v0

    .line 835
    .local v6, "nonAuxCount":I
    if-gtz v6, :cond_5

    if-eqz p2, :cond_0

    if-le v0, v10, :cond_0

    .line 836
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 837
    goto :goto_0

    .line 841
    .end local v0    # "auxCount":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v6    # "nonAuxCount":I
    .end local v8    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_6
    if-gt v2, v10, :cond_7

    const/4 v11, 0x0

    invoke-virtual {p1, v11, v9}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v10, :cond_8

    :cond_7
    move v9, v10

    :cond_8
    move v10, v9

    goto :goto_1
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .prologue
    .line 713
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    if-nez v1, :cond_1

    .line 722
    :cond_0
    :goto_0
    return-void

    .line 716
    :cond_1
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 718
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 719
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private isDebugView()Z
    .locals 2

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isDebugView(Ljava/lang/String;)Z
    .locals 2
    .param p1, "viewType"    # Ljava/lang/String;

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isEmergencyCallCapable()Z
    .locals 2

    .prologue
    .line 947
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private launchEmergencyDialer()V
    .locals 2

    .prologue
    .line 961
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 962
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 964
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    .line 965
    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->startActivity(Landroid/content/Intent;)V

    .line 966
    return-void
.end method

.method private notifyUser()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 329
    iget v1, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    if-lez v1, :cond_2

    .line 330
    const-string v1, "CryptKeeper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Counting down to notify user..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget v1, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    .line 346
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 347
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 349
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 350
    iget v1, p0, Lcom/android/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    if-lez v1, :cond_3

    .line 351
    iget v1, p0, Lcom/android/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    .line 356
    :cond_1
    :goto_1
    return-void

    .line 332
    :cond_2
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    .line 333
    const-string v1, "CryptKeeper"

    const-string v2, "Notifying user that we are waiting for input..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x5

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->playSoundEffect(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CryptKeeper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyUser: Exception while playing sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 353
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1
.end method

.method private passwordEntryInit()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v6, 0x0

    .line 726
    const v4, 0x7f0b0063

    invoke-virtual {p0, v4}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    .line 727
    iget-object v4, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v4, :cond_0

    .line 728
    iget-object v4, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 729
    iget-object v4, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 731
    iget-object v4, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 732
    iget-object v4, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 733
    iget-object v4, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 737
    :cond_0
    const v4, 0x7f0b0055

    invoke-virtual {p0, v4}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/LockPatternView;

    iput-object v4, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 738
    iget-object v4, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v4, :cond_1

    .line 739
    iget-object v4, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v5, p0, Lcom/android/settings/CryptKeeper;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 743
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_2

    .line 744
    const v4, 0x7f0b0060

    invoke-virtual {p0, v4}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 745
    .local v0, "emergencyCall":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 746
    const-string v4, "CryptKeeper"

    const-string v5, "Removing the emergency Call button"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 751
    .end local v0    # "emergencyCall":Landroid/view/View;
    :cond_2
    const v4, 0x7f0b0064

    invoke-virtual {p0, v4}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 752
    .local v1, "imeSwitcher":Landroid/view/View;
    const-string v4, "input_method"

    invoke-virtual {p0, v4}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 754
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_3

    invoke-direct {p0, v2, v6}, Lcom/android/settings/CryptKeeper;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 755
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 756
    new-instance v4, Lcom/android/settings/CryptKeeper$6;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/CryptKeeper$6;-><init>(Lcom/android/settings/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 767
    :cond_3
    iget-object v4, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v4, :cond_4

    .line 768
    const-string v4, "CryptKeeper"

    const-string v5, "Acquiring wakelock."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 770
    .local v3, "pm":Landroid/os/PowerManager;
    if-eqz v3, :cond_4

    .line 771
    const/16 v4, 0x1a

    const-string v5, "CryptKeeper"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 772
    iget-object v4, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 775
    const/16 v4, 0x60

    iput v4, p0, Lcom/android/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    .line 781
    .end local v3    # "pm":Landroid/os/PowerManager;
    :cond_4
    iget-object v4, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-nez v4, :cond_5

    iget v4, p0, Lcom/android/settings/CryptKeeper;->mCooldown:I

    if-gtz v4, :cond_5

    .line 782
    iget-object v4, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/settings/CryptKeeper$7;

    invoke-direct {v5, p0, v2}, Lcom/android/settings/CryptKeeper$7;-><init>(Lcom/android/settings/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 789
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->updateEmergencyCallButtonState()V

    .line 791
    iget-object v4, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 792
    iget-object v4, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/32 v6, 0x1d4c0

    invoke-virtual {v4, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 795
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x480000

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 797
    return-void
.end method

.method private final setAirplaneModeIfNecessary()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 897
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    .line 899
    .local v1, "isLteDevice":Z
    :goto_0
    if-nez v1, :cond_0

    .line 900
    const-string v3, "CryptKeeper"

    const-string v4, "Going into airplane mode."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 902
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 903
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "state"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 904
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/CryptKeeper;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 906
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 897
    .end local v1    # "isLteDevice":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final setBackFunctionality(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .prologue
    .line 681
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mIgnoreBack:Z

    .line 682
    if-eqz p1, :cond_1

    .line 683
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3370000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 687
    :goto_1
    return-void

    .line 681
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 685
    :cond_1
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3770000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_1
.end method

.method private setupUi()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const v3, 0x7f040020

    .line 432
    iget-boolean v2, p0, Lcom/android/settings/CryptKeeper;->mEncryptionGoneBad:Z

    if-nez v2, :cond_0

    const-string v2, "error"

    invoke-direct {p0, v2}, Lcom/android/settings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 433
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 434
    iget-boolean v1, p0, Lcom/android/settings/CryptKeeper;->mCorrupt:Z

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper;->showFactoryReset(Z)V

    .line 499
    :cond_1
    :goto_0
    return-void

    .line 438
    :cond_2
    const-string v2, "vold.encrypt_progress"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, "progress":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "progress"

    invoke-direct {p0, v2}, Lcom/android/settings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 440
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 441
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->encryptionProgressInit()V

    goto :goto_0

    .line 442
    :cond_4
    iget-boolean v2, p0, Lcom/android/settings/CryptKeeper;->mValidationComplete:Z

    if-nez v2, :cond_5

    const-string v2, "password"

    invoke-direct {p0, v2}, Lcom/android/settings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 443
    :cond_5
    new-instance v1, Lcom/android/settings/CryptKeeper$3;

    invoke-direct {v1, p0}, Lcom/android/settings/CryptKeeper$3;-><init>(Lcom/android/settings/CryptKeeper;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings/CryptKeeper$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 494
    :cond_6
    iget-boolean v2, p0, Lcom/android/settings/CryptKeeper;->mValidationRequested:Z

    if-nez v2, :cond_1

    .line 496
    new-instance v2, Lcom/android/settings/CryptKeeper$ValidationTask;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/CryptKeeper$ValidationTask;-><init>(Lcom/android/settings/CryptKeeper;Lcom/android/settings/CryptKeeper$1;)V

    check-cast v1, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Lcom/android/settings/CryptKeeper$ValidationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 497
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/CryptKeeper;->mValidationRequested:Z

    goto :goto_0
.end method

.method private showFactoryReset(Z)V
    .locals 7
    .param p1, "corrupt"    # Z

    .prologue
    const v6, 0x7f0b003a

    const v5, 0x7f0b000f

    const/4 v4, 0x0

    .line 564
    const v2, 0x7f0b0061

    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 567
    const v2, 0x7f0b0067

    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 568
    .local v0, "button":Landroid/widget/Button;
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 569
    new-instance v2, Lcom/android/settings/CryptKeeper$4;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/CryptKeeper$4;-><init>(Lcom/android/settings/CryptKeeper;Z)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 582
    if-eqz p1, :cond_1

    .line 583
    invoke-virtual {p0, v5}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0c0033

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 584
    invoke-virtual {p0, v6}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0c0034

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 590
    :goto_0
    const v2, 0x7f0b0068

    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 592
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 593
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 595
    :cond_0
    return-void

    .line 586
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0c055d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 587
    invoke-virtual {p0, v6}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0c055e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private takeEmergencyCallAction()V
    .locals 2

    .prologue
    .line 951
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 952
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 953
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    .line 957
    :goto_0
    return-void

    .line 955
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->launchEmergencyDialer()V

    goto :goto_0
.end method

.method private updateEmergencyCallButtonState()V
    .locals 3

    .prologue
    .line 915
    const v2, 0x7f0b0060

    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 917
    .local v0, "emergencyCall":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 944
    :goto_0
    return-void

    .line 920
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->isEmergencyCallCapable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 921
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 922
    new-instance v2, Lcom/android/settings/CryptKeeper$8;

    invoke-direct {v2, p0}, Lcom/android/settings/CryptKeeper$8;-><init>(Lcom/android/settings/CryptKeeper;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 937
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 939
    const v1, 0x7f0c0b36

    .line 943
    .local v1, "textId":I
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 932
    .end local v1    # "textId":I
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 941
    :cond_2
    const v1, 0x7f0c0b35

    .restart local v1    # "textId":I
    goto :goto_1
.end method

.method private updateProgress()V
    .locals 13

    .prologue
    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 598
    const-string v8, "vold.encrypt_progress"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 600
    .local v3, "state":Ljava/lang/String;
    const-string v8, "error_partially_encrypted"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 601
    invoke-direct {p0, v11}, Lcom/android/settings/CryptKeeper;->showFactoryReset(Z)V

    .line 639
    :goto_0
    return-void

    .line 606
    :cond_0
    const v8, 0x7f0c055a

    invoke-virtual {p0, v8}, Lcom/android/settings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 607
    .local v4, "status":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 610
    .local v1, "percent":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->isDebugView()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_3

    const/16 v1, 0x32

    .line 614
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 617
    .local v2, "progress":Ljava/lang/String;
    const-string v8, "CryptKeeper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Encryption progress: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :try_start_1
    const-string v8, "vold.encrypt_time_remaining"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 620
    .local v6, "timeProperty":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 621
    .local v5, "time":I
    if-ltz v5, :cond_1

    .line 623
    add-int/lit8 v8, v5, 0x9

    div-int/lit8 v8, v8, 0xa

    mul-int/lit8 v5, v8, 0xa

    .line 624
    int-to-long v8, v5

    invoke-static {v8, v9}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v2

    .line 625
    const v8, 0x7f0c0035

    invoke-virtual {p0, v8}, Lcom/android/settings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 631
    .end local v5    # "time":I
    .end local v6    # "timeProperty":Ljava/lang/String;
    :cond_1
    :goto_2
    const v8, 0x7f0b003a

    invoke-virtual {p0, v8}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 632
    .local v7, "tv":Landroid/widget/TextView;
    if-eqz v7, :cond_2

    .line 633
    new-array v8, v12, [Ljava/lang/CharSequence;

    aput-object v2, v8, v11

    invoke-static {v4, v8}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 637
    :cond_2
    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 638
    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x3e8

    invoke-virtual {v8, v12, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 610
    .end local v2    # "progress":Ljava/lang/String;
    .end local v7    # "tv":Landroid/widget/TextView;
    :cond_3
    :try_start_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    goto :goto_1

    .line 611
    :catch_0
    move-exception v0

    .line 612
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "CryptKeeper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error parsing progress: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 627
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "progress":Ljava/lang/String;
    :catch_1
    move-exception v8

    goto :goto_2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 1008
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 998
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mIgnoreBack:Z

    if-eqz v0, :cond_0

    .line 368
    :goto_0
    return-void

    .line 367
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 372
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 375
    const-string v5, "vold.decrypt"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 376
    .local v4, "state":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->isDebugView()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "trigger_restart_framework"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 378
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 379
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-class v5, Lcom/android/settings/CryptKeeper;

    invoke-direct {v1, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 380
    .local v1, "name":Landroid/content/ComponentName;
    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-virtual {v2, v1, v5, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 389
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->finish()V

    .line 414
    .end local v1    # "name":Landroid/content/ComponentName;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    :goto_0
    return-void

    .line 394
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070011

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 395
    const/4 v5, -0x1

    invoke-virtual {p0, v5}, Lcom/android/settings/CryptKeeper;->setRequestedOrientation(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :cond_3
    :goto_1
    const-string v5, "statusbar"

    invoke-virtual {p0, v5}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/StatusBarManager;

    iput-object v5, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    .line 403
    iget-object v5, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v6, 0x3370000

    invoke-virtual {v5, v6}, Landroid/app/StatusBarManager;->disable(I)V

    .line 405
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->setAirplaneModeIfNecessary()V

    .line 406
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Lcom/android/settings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    .line 408
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 409
    .local v0, "lastInstance":Ljava/lang/Object;
    instance-of v5, v0, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;

    if-eqz v5, :cond_1

    move-object v3, v0

    .line 410
    check-cast v3, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;

    .line 411
    .local v3, "retained":Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;
    iget-object v5, v3, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;->wakelock:Landroid/os/PowerManager$WakeLock;

    iput-object v5, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 412
    const-string v5, "CryptKeeper"

    const-string v6, "Restoring wakelock from NonConfigurationInstanceState"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 397
    .end local v0    # "lastInstance":Ljava/lang/Object;
    .end local v3    # "retained":Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 524
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 526
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 527
    const-string v0, "CryptKeeper"

    const-string v1, "Releasing and destroying wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 529
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 531
    :cond_0
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 857
    if-eqz p2, :cond_0

    const/4 v3, 0x6

    if-ne p2, v3, :cond_1

    .line 859
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 861
    .local v0, "password":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 878
    .end local v0    # "password":Ljava/lang/String;
    :cond_1
    :goto_0
    return v1

    .line 866
    .restart local v0    # "password":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 870
    iget-object v3, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 871
    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    .line 873
    const-string v3, "CryptKeeper"

    const-string v4, "Attempting to send command to decrypt"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    new-instance v3, Lcom/android/settings/CryptKeeper$DecryptTask;

    invoke-direct {v3, p0, v5}, Lcom/android/settings/CryptKeeper$DecryptTask;-><init>(Lcom/android/settings/CryptKeeper;Lcom/android/settings/CryptKeeper$1;)V

    new-array v4, v2, [Ljava/lang/String;

    aput-object v0, v4, v1

    invoke-virtual {v3, v4}, Lcom/android/settings/CryptKeeper$DecryptTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v1, v2

    .line 876
    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 986
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->delayAudioNotification()V

    .line 987
    const/4 v0, 0x0

    return v0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 516
    new-instance v0, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;-><init>(Landroid/os/PowerManager$WakeLock;)V

    .line 517
    .local v0, "state":Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;
    const-string v1, "CryptKeeper"

    const-string v2, "Handing wakelock off to NonConfigurationInstanceState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 519
    return-object v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 423
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 424
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->setupUi()V

    .line 425
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 503
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 504
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 505
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 506
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 507
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 1003
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->delayAudioNotification()V

    .line 1004
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 992
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->delayAudioNotification()V

    .line 993
    const/4 v0, 0x0

    return v0
.end method
