.class Lcom/android/server/StartShutdownPolicy;
.super Ljava/lang/Object;
.source "StartShutdownPolicy.java"


# static fields
.field private static final AUTO_SHUTDOWN_ACTION:Ljava/lang/String; = "com.android.startshutdown.AUTO_SHUTDOWN"

.field static final AUTO_SHUTDOWN_NOTIFICATION_ACTION:Ljava/lang/String; = "lenovo.intent.action.TIMELY_SHUTDOWN"

.field private static final AUTO_SHUTDOWN_TIME:Ljava/lang/String; = "startshutdown.autoshutdowntime"

.field private static final AUTO_START_ACTION:Ljava/lang/String; = "com.android.startshutdown.AUTO_START"

.field private static final AUTO_START_TIME:Ljava/lang/String; = "startshutdown.autostarttime"

.field private static final MESSAGE_SHUTDOWN_CONFIRM:I = 0x2

.field private static final SHUTDOWN_TIME_DELAY:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "StartShutdownService"


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mAutoShutdownAfterScreenOffWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mCallStateSync:Ljava/lang/Object;

.field private final mCallback:Lcom/android/server/StartShutdownService$ServiceCallback;

.field private mCalling:Z

.field private final mContext:Landroid/content/Context;

.field private mDelay:I

.field private mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mReducedBoot:Z

.field private mRingtone:Landroid/media/Ringtone;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mShutdownDialog:Landroid/app/AlertDialog;

.field private mShutdownDialogListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mShutdownMillisSeconds:J

.field private mStartMillisSeconds:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/StartShutdownService$ServiceCallback;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/server/StartShutdownService$ServiceCallback;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/StartShutdownPolicy;->mCallStateSync:Ljava/lang/Object;

    .line 45
    iput-wide v6, p0, Lcom/android/server/StartShutdownPolicy;->mStartMillisSeconds:J

    .line 46
    iput-wide v6, p0, Lcom/android/server/StartShutdownPolicy;->mShutdownMillisSeconds:J

    .line 47
    iput-object v2, p0, Lcom/android/server/StartShutdownPolicy;->mShutdownDialog:Landroid/app/AlertDialog;

    .line 50
    const/16 v1, 0x1e

    iput v1, p0, Lcom/android/server/StartShutdownPolicy;->mDelay:I

    .line 51
    iput-boolean v4, p0, Lcom/android/server/StartShutdownPolicy;->mCalling:Z

    .line 204
    new-instance v1, Lcom/android/server/StartShutdownPolicy$1;

    invoke-direct {v1, p0}, Lcom/android/server/StartShutdownPolicy$1;-><init>(Lcom/android/server/StartShutdownPolicy;)V

    iput-object v1, p0, Lcom/android/server/StartShutdownPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 263
    new-instance v1, Lcom/android/server/StartShutdownPolicy$2;

    invoke-direct {v1, p0}, Lcom/android/server/StartShutdownPolicy$2;-><init>(Lcom/android/server/StartShutdownPolicy;)V

    iput-object v1, p0, Lcom/android/server/StartShutdownPolicy;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 361
    new-instance v1, Lcom/android/server/StartShutdownPolicy$5;

    invoke-direct {v1, p0}, Lcom/android/server/StartShutdownPolicy$5;-><init>(Lcom/android/server/StartShutdownPolicy;)V

    iput-object v1, p0, Lcom/android/server/StartShutdownPolicy;->mShutdownDialogListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 370
    new-instance v1, Lcom/android/server/StartShutdownPolicy$6;

    invoke-direct {v1, p0}, Lcom/android/server/StartShutdownPolicy$6;-><init>(Lcom/android/server/StartShutdownPolicy;)V

    iput-object v1, p0, Lcom/android/server/StartShutdownPolicy;->mHandler:Landroid/os/Handler;

    .line 393
    iput-object v2, p0, Lcom/android/server/StartShutdownPolicy;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 395
    iput-object v2, p0, Lcom/android/server/StartShutdownPolicy;->mAutoShutdownAfterScreenOffWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 58
    iput-object p1, p0, Lcom/android/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/android/server/StartShutdownPolicy;->mCallback:Lcom/android/server/StartShutdownService$ServiceCallback;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "startshutdown.autostarttime"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/android/server/StartShutdownPolicy;->mStartMillisSeconds:J

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "startshutdown.autoshutdowntime"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/android/server/StartShutdownPolicy;->mShutdownMillisSeconds:J

    .line 66
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 67
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.startshutdown.AUTO_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    const-string v1, "com.android.startshutdown.AUTO_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string v1, "lenovo.intent.action.TIMELY_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/android/server/StartShutdownPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    iget-object v1, p0, Lcom/android/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/StartShutdownPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/StartShutdownPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StartShutdownPolicy;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/server/StartShutdownPolicy;->handleAutoShutdown()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/StartShutdownPolicy;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/StartShutdownPolicy;

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/android/server/StartShutdownPolicy;->mStartMillisSeconds:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/android/server/StartShutdownPolicy;)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StartShutdownPolicy;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/StartShutdownPolicy;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/StartShutdownPolicy;)Landroid/media/Ringtone;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StartShutdownPolicy;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/StartShutdownPolicy;->mRingtone:Landroid/media/Ringtone;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/StartShutdownPolicy;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StartShutdownPolicy;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/StartShutdownPolicy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/StartShutdownPolicy;)Lcom/android/server/StartShutdownService$ServiceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StartShutdownPolicy;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/StartShutdownPolicy;->mCallback:Lcom/android/server/StartShutdownService$ServiceCallback;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/StartShutdownPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StartShutdownPolicy;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/server/StartShutdownPolicy;->releaseScreenWakeLock()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/StartShutdownPolicy;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StartShutdownPolicy;

    .prologue
    .line 32
    iget v0, p0, Lcom/android/server/StartShutdownPolicy;->mDelay:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/StartShutdownPolicy;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StartShutdownPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/android/server/StartShutdownPolicy;->mDelay:I

    return p1
.end method

.method static synthetic access$1510(Lcom/android/server/StartShutdownPolicy;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/StartShutdownPolicy;

    .prologue
    .line 32
    iget v0, p0, Lcom/android/server/StartShutdownPolicy;->mDelay:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/StartShutdownPolicy;->mDelay:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/StartShutdownPolicy;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StartShutdownPolicy;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/server/StartShutdownPolicy;->acquireScreenWakeLock(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/StartShutdownPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StartShutdownPolicy;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/server/StartShutdownPolicy;->showAutoShutdownAlert()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/StartShutdownPolicy;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/StartShutdownPolicy;

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/android/server/StartShutdownPolicy;->mShutdownMillisSeconds:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/server/StartShutdownPolicy;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StartShutdownPolicy;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/StartShutdownPolicy;->mShutdownDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/StartShutdownPolicy;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StartShutdownPolicy;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/server/StartShutdownPolicy;->mShutdownDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/StartShutdownPolicy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StartShutdownPolicy;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/StartShutdownPolicy;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StartShutdownPolicy;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/server/StartShutdownPolicy;->releaseAfterScreenOffWakeLock(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/StartShutdownPolicy;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StartShutdownPolicy;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/server/StartShutdownPolicy;->acquireAfterScreenOffWakeLock(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/StartShutdownPolicy;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StartShutdownPolicy;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/StartShutdownPolicy;->mCallStateSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/StartShutdownPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StartShutdownPolicy;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/server/StartShutdownPolicy;->cancelShutdown()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/server/StartShutdownPolicy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StartShutdownPolicy;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/server/StartShutdownPolicy;->mCalling:Z

    return p1
.end method

.method private acquireAfterScreenOffWakeLock(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 398
    iget-object v1, p0, Lcom/android/server/StartShutdownPolicy;->mAutoShutdownAfterScreenOffWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 405
    :goto_0
    return-void

    .line 400
    :cond_0
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 402
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "AutoShutdownExtra"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/StartShutdownPolicy;->mAutoShutdownAfterScreenOffWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 404
    iget-object v1, p0, Lcom/android/server/StartShutdownPolicy;->mAutoShutdownAfterScreenOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0
.end method

.method private acquireScreenWakeLock(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 415
    iget-object v1, p0, Lcom/android/server/StartShutdownPolicy;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 425
    :goto_0
    return-void

    .line 419
    :cond_0
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 421
    .local v0, "pm":Landroid/os/PowerManager;
    const v1, 0x3000001a

    const-string v2, "AutoShutdown"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/StartShutdownPolicy;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 424
    iget-object v1, p0, Lcom/android/server/StartShutdownPolicy;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0
.end method

.method private final cancelShutdown()V
    .locals 7

    .prologue
    const v4, 0x104008d

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 237
    iget-boolean v2, p0, Lcom/android/server/StartShutdownPolicy;->mCalling:Z

    if-eqz v2, :cond_0

    .line 261
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v2, p0, Lcom/android/server/StartShutdownPolicy;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 239
    iget-object v2, p0, Lcom/android/server/StartShutdownPolicy;->mShutdownDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 240
    const/16 v2, 0x1e

    iput v2, p0, Lcom/android/server/StartShutdownPolicy;->mDelay:I

    .line 242
    iget-object v2, p0, Lcom/android/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 244
    .local v1, "nm":Landroid/app/NotificationManager;
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 245
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 246
    const v2, 0x1080441

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 247
    iget-object v2, p0, Lcom/android/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 249
    iget-object v2, p0, Lcom/android/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    const v3, 0x1040089

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 251
    iget-object v2, p0, Lcom/android/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 253
    iget-object v2, p0, Lcom/android/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "lenovo.intent.action.TIMELY_SHUTDOWN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x10000000

    invoke-static {v2, v6, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 256
    iget-object v2, p0, Lcom/android/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_in_silent"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 257
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 259
    :cond_1
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 260
    invoke-direct {p0}, Lcom/android/server/StartShutdownPolicy;->initAutoShutdown()V

    goto :goto_0
.end method

.method private enableAutoShutdownAlert(J)V
    .locals 7
    .param p1, "timeMillisSeconds"    # J

    .prologue
    const/4 v5, 0x0

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    .line 154
    const-string v2, "StartShutdownService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***AutoStartShutdownPolicy --- EnableAutoShutdown at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.startshutdown.AUTO_SHUTDOWN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "Long_time"

    invoke-virtual {v0, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 158
    iget-object v2, p0, Lcom/android/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    const/high16 v3, 0x10000000

    invoke-static {v2, v5, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 160
    .local v1, "sender":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/android/server/StartShutdownPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v5, p1, p2, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 162
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "sender":Landroid/app/PendingIntent;
    :cond_0
    return-void
.end method

.method private enableAutoStartAlert(J)V
    .locals 5
    .param p1, "timeMillisSeconds"    # J

    .prologue
    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    .line 118
    const-string v2, "StartShutdownService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n***AutoStartShutdownPolicy --- EnableAutoStart at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "***\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.startshutdown.AUTO_START"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 123
    .local v1, "sender":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/android/server/StartShutdownPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x6

    invoke-virtual {v2, v3, p1, p2, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 124
    const-string v2, "persist.sys.rtc_start_time"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "sender":Landroid/app/PendingIntent;
    :cond_0
    return-void
.end method

.method private handleAutoShutdown()V
    .locals 8

    .prologue
    .line 288
    iget-object v5, p0, Lcom/android/server/StartShutdownPolicy;->mCallStateSync:Ljava/lang/Object;

    monitor-enter v5

    .line 289
    :try_start_0
    iget-object v4, p0, Lcom/android/server/StartShutdownPolicy;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/StartShutdownPolicy;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 290
    iget-object v4, p0, Lcom/android/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 292
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/android/server/StartShutdownPolicy;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v6, 0x20

    invoke-virtual {v3, v4, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 293
    iget-object v4, p0, Lcom/android/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 294
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "general"

    .line 296
    .local v1, "profile":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 297
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/StartShutdownPolicy;->mCallStateSync:Ljava/lang/Object;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    :goto_0
    :try_start_2
    const-string v4, "StartShutdownService"

    const-string v6, "start to check profile and calling state"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const-string v4, "general"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/server/StartShutdownPolicy;->mCalling:Z

    if-nez v4, :cond_1

    .line 307
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 308
    .local v2, "soundUri":Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 309
    iget-object v4, p0, Lcom/android/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/StartShutdownPolicy;->mRingtone:Landroid/media/Ringtone;

    .line 311
    iget-object v4, p0, Lcom/android/server/StartShutdownPolicy;->mRingtone:Landroid/media/Ringtone;

    if-eqz v4, :cond_1

    .line 312
    iget-object v4, p0, Lcom/android/server/StartShutdownPolicy;->mRingtone:Landroid/media/Ringtone;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 313
    iget-object v4, p0, Lcom/android/server/StartShutdownPolicy;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4}, Landroid/media/Ringtone;->play()V

    .line 314
    const-string v4, "StartShutdownService"

    const-string v6, "play DEFAULT_ALARM_ALERT_URI"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    .end local v2    # "soundUri":Landroid/net/Uri;
    :cond_1
    monitor-exit v5

    .line 319
    return-void

    .line 318
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "profile":Ljava/lang/String;
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 302
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v1    # "profile":Ljava/lang/String;
    .restart local v3    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private initAutoShutdown()V
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/server/StartShutdownPolicy;->isAutoShutdownTimeSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-wide v0, p0, Lcom/android/server/StartShutdownPolicy;->mShutdownMillisSeconds:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/StartShutdownPolicy;->enableAutoShutdownAlert(J)V

    .line 105
    :cond_0
    return-void
.end method

.method private initAutoStart()V
    .locals 2

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/server/StartShutdownPolicy;->isAutoStartTimeSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-wide v0, p0, Lcom/android/server/StartShutdownPolicy;->mStartMillisSeconds:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/StartShutdownPolicy;->enableAutoStartAlert(J)V

    .line 99
    :cond_0
    return-void
.end method

.method private releaseAfterScreenOffWakeLock(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/server/StartShutdownPolicy;->mAutoShutdownAfterScreenOffWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 412
    :goto_0
    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/android/server/StartShutdownPolicy;->mAutoShutdownAfterScreenOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 411
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/StartShutdownPolicy;->mAutoShutdownAfterScreenOffWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0
.end method

.method private releaseScreenWakeLock()V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/server/StartShutdownPolicy;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/server/StartShutdownPolicy;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 430
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/StartShutdownPolicy;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 432
    :cond_0
    return-void
.end method

.method private setAutoShutdownTime(J)Z
    .locals 3
    .param p1, "timeMillisSeconds"    # J

    .prologue
    .line 187
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 188
    iput-wide p1, p0, Lcom/android/server/StartShutdownPolicy;->mShutdownMillisSeconds:J

    .line 189
    iget-object v0, p0, Lcom/android/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "startshutdown.autoshutdowntime"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 191
    const/4 v0, 0x1

    .line 193
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAutoStartTime(J)Z
    .locals 3
    .param p1, "timeMillisSeconds"    # J

    .prologue
    .line 177
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 178
    iput-wide p1, p0, Lcom/android/server/StartShutdownPolicy;->mStartMillisSeconds:J

    .line 179
    iget-object v0, p0, Lcom/android/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "startshutdown.autostarttime"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 181
    const/4 v0, 0x1

    .line 183
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showAutoShutdownAlert()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 322
    iget-object v1, p0, Lcom/android/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    const v2, 0x1040088

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/server/StartShutdownPolicy;->mDelay:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/StartShutdownPolicy;->mShutdownDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 326
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040089

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040092

    new-instance v3, Lcom/android/server/StartShutdownPolicy$4;

    invoke-direct {v3, p0}, Lcom/android/server/StartShutdownPolicy$4;-><init>(Lcom/android/server/StartShutdownPolicy;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/server/StartShutdownPolicy$3;

    invoke-direct {v3, p0}, Lcom/android/server/StartShutdownPolicy$3;-><init>(Lcom/android/server/StartShutdownPolicy;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/StartShutdownPolicy;->mShutdownDialog:Landroid/app/AlertDialog;

    .line 347
    iget-object v1, p0, Lcom/android/server/StartShutdownPolicy;->mShutdownDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 349
    iget-object v1, p0, Lcom/android/server/StartShutdownPolicy;->mShutdownDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 350
    iget-object v1, p0, Lcom/android/server/StartShutdownPolicy;->mShutdownDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 352
    iget-object v1, p0, Lcom/android/server/StartShutdownPolicy;->mShutdownDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/server/StartShutdownPolicy;->mShutdownDialogListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 353
    iget-object v1, p0, Lcom/android/server/StartShutdownPolicy;->mShutdownDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 359
    :goto_0
    return-void

    .line 356
    :cond_0
    iget-object v1, p0, Lcom/android/server/StartShutdownPolicy;->mShutdownDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public disableAutoShutdown()V
    .locals 5

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/android/server/StartShutdownPolicy;->isAutoShutdownTimeSet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/StartShutdownPolicy;->setAutoShutdownTime(J)Z

    .line 168
    const-string v2, "StartShutdownService"

    const-string v3, "***AutoStartShutdownPolicy --- DisableAutoShutdown"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.startshutdown.AUTO_SHUTDOWN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 172
    .local v1, "sender":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/android/server/StartShutdownPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 174
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "sender":Landroid/app/PendingIntent;
    :cond_0
    return-void
.end method

.method public disableAutoStart()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 129
    invoke-virtual {p0}, Lcom/android/server/StartShutdownPolicy;->isAutoStartTimeSet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    invoke-direct {p0, v6, v7}, Lcom/android/server/StartShutdownPolicy;->setAutoStartTime(J)Z

    .line 132
    const-string v2, "StartShutdownService"

    const-string v3, "***AutoStartShutdownPolicy --- DisableAutoStart"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.startshutdown.AUTO_START"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 136
    .local v1, "sender":Landroid/app/PendingIntent;
    const-string v2, "persist.service.autostartenbale"

    const-string v3, "disable"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v2, p0, Lcom/android/server/StartShutdownPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 138
    const-string v2, "persist.sys.rtc_start_time"

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "sender":Landroid/app/PendingIntent;
    :cond_0
    return-void
.end method

.method public enableAutoShutdown(J)V
    .locals 3
    .param p1, "timeMillisSeconds"    # J

    .prologue
    .line 143
    const-string v0, "StartShutdownService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableAutoShutdown:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p0}, Lcom/android/server/StartShutdownPolicy;->isAutoShutdownTimeSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/android/server/StartShutdownPolicy;->disableAutoShutdown()V

    .line 147
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/StartShutdownPolicy;->setAutoShutdownTime(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/android/server/StartShutdownPolicy;->enableAutoShutdownAlert(J)V

    .line 150
    :cond_1
    return-void
.end method

.method public enableAutoStart(J)V
    .locals 1
    .param p1, "timeMillisSeconds"    # J

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/server/StartShutdownPolicy;->isAutoStartTimeSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/android/server/StartShutdownPolicy;->disableAutoStart()V

    .line 111
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/StartShutdownPolicy;->setAutoStartTime(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/server/StartShutdownPolicy;->enableAutoStartAlert(J)V

    .line 114
    :cond_1
    return-void
.end method

.method public init(Z)V
    .locals 1
    .param p1, "reducedBoot"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/server/StartShutdownPolicy;->mReducedBoot:Z

    .line 83
    iget-boolean v0, p0, Lcom/android/server/StartShutdownPolicy;->mReducedBoot:Z

    if-eqz v0, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/android/server/StartShutdownPolicy;->initAutoStart()V

    .line 86
    :cond_0
    return-void
.end method

.method public isAutoShutdownTimeSet()Z
    .locals 4

    .prologue
    .line 201
    iget-wide v0, p0, Lcom/android/server/StartShutdownPolicy;->mShutdownMillisSeconds:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAutoStartTimeSet()Z
    .locals 4

    .prologue
    .line 197
    iget-wide v0, p0, Lcom/android/server/StartShutdownPolicy;->mStartMillisSeconds:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBootCompleted()V
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/server/StartShutdownPolicy;->mReducedBoot:Z

    if-nez v0, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/android/server/StartShutdownPolicy;->initAutoStart()V

    .line 92
    :cond_0
    invoke-direct {p0}, Lcom/android/server/StartShutdownPolicy;->initAutoShutdown()V

    .line 93
    return-void
.end method
