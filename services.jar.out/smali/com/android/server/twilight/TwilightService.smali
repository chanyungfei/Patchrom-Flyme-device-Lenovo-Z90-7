.class public final Lcom/android/server/twilight/TwilightService;
.super Lcom/android/server/SystemService;
.source "TwilightService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/twilight/TwilightService$LocationHandler;,
        Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;
    }
.end annotation


# static fields
.field private static final ACTION_AUTO_FORCE_STOP:Ljava/lang/String; = "com.android.action.AUTO_FORCE_STOP"

.field private static final ACTION_START_NIGHT_WATCH:Ljava/lang/String; = "com.android.action.START_NIGHT_WATCH"

.field static final ACTION_UPDATE_TWILIGHT_STATE:Ljava/lang/String; = "com.android.server.action.UPDATE_TWILIGHT_STATE"

.field static final DEBUG:Z = false

.field private static final SCHEDULER_ALARM_DURATION:J = 0x1b7740L

.field private static final START_WATCH_HOUR:I = 0x1

.field private static final START_WATCH_MINUTE:I = 0x0

.field private static final STOP_WATCH_HOUR:I = 0x3

.field private static final STOP_WATCH_MINUTE:I = 0x0

.field static final TAG:Ljava/lang/String; = "TwilightService"


# instance fields
.field mAlarmManager:Landroid/app/AlarmManager;

.field private final mEmptyLocationListener:Landroid/location/LocationListener;

.field final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field mLocationHandler:Lcom/android/server/twilight/TwilightService$LocationHandler;

.field private final mLocationListener:Landroid/location/LocationListener;

.field mLocationManager:Landroid/location/LocationManager;

.field final mLock:Ljava/lang/Object;

.field private final mNightWatchReceiver:Landroid/content/BroadcastReceiver;

.field private final mService:Lcom/android/server/twilight/TwilightManager;

.field mTwilightState:Lcom/android/server/twilight/TwilightState;

.field private final mUpdateLocationReceiver:Landroid/content/BroadcastReceiver;

.field private storeDataConnection:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLock:Ljava/lang/Object;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Ljava/util/ArrayList;

    .line 126
    new-instance v0, Lcom/android/server/twilight/TwilightService$1;

    invoke-direct {v0, p0}, Lcom/android/server/twilight/TwilightService$1;-><init>(Lcom/android/server/twilight/TwilightService;)V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mService:Lcom/android/server/twilight/TwilightManager;

    .line 444
    new-instance v0, Lcom/android/server/twilight/TwilightService$2;

    invoke-direct {v0, p0}, Lcom/android/server/twilight/TwilightService$2;-><init>(Lcom/android/server/twilight/TwilightService;)V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mUpdateLocationReceiver:Landroid/content/BroadcastReceiver;

    .line 466
    new-instance v0, Lcom/android/server/twilight/TwilightService$3;

    invoke-direct {v0, p0}, Lcom/android/server/twilight/TwilightService$3;-><init>(Lcom/android/server/twilight/TwilightService;)V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mEmptyLocationListener:Landroid/location/LocationListener;

    .line 480
    new-instance v0, Lcom/android/server/twilight/TwilightService$4;

    invoke-direct {v0, p0}, Lcom/android/server/twilight/TwilightService$4;-><init>(Lcom/android/server/twilight/TwilightService;)V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationListener:Landroid/location/LocationListener;

    .line 503
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/twilight/TwilightService;->storeDataConnection:Z

    .line 598
    new-instance v0, Lcom/android/server/twilight/TwilightService$5;

    invoke-direct {v0, p0}, Lcom/android/server/twilight/TwilightService$5;-><init>(Lcom/android/server/twilight/TwilightService;)V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mNightWatchReceiver:Landroid/content/BroadcastReceiver;

    .line 81
    return-void
.end method

.method static synthetic access$100(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 1
    .param p0, "x0"    # Landroid/location/Location;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 62
    invoke-static {p0, p1}, Lcom/android/server/twilight/TwilightService;->hasMoved(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/twilight/TwilightService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/twilight/TwilightService;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService;->storeDataConnection:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/twilight/TwilightService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/twilight/TwilightService;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/server/twilight/TwilightService;->storeDataConnection:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/twilight/TwilightService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/twilight/TwilightService;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->autoForceStopProcess()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/twilight/TwilightService;)Landroid/location/LocationListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/twilight/TwilightService;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mEmptyLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/twilight/TwilightService;)Landroid/location/LocationListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/twilight/TwilightService;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/twilight/TwilightService;
    .param p1, "x1"    # Lcom/android/server/twilight/TwilightState;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/twilight/TwilightService;->setTwilightState(Lcom/android/server/twilight/TwilightState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/twilight/TwilightService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/twilight/TwilightService;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->updateAlarmNightWatch()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/twilight/TwilightService;JII)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/twilight/TwilightService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/twilight/TwilightService;->isTimePassed(JII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/twilight/TwilightService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/twilight/TwilightService;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->stopNightWatch()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/twilight/TwilightService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/twilight/TwilightService;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->cancelAlarmStopProcess()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/twilight/TwilightService;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/twilight/TwilightService;
    .param p1, "x1"    # J

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/server/twilight/TwilightService;->setAlarmStopProcess(J)V

    return-void
.end method

.method private autoForceStopProcess()V
    .locals 8

    .prologue
    .line 526
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 528
    .local v4, "powerManager":Landroid/os/PowerManager;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 529
    :cond_0
    const-string v5, "TwilightService"

    const-string v6, "Skip ForceStop Process screen on"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :goto_0
    return-void

    .line 532
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 534
    .local v1, "audioManager":Landroid/media/AudioManager;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActiveRemotely()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 536
    :cond_2
    const-string v5, "TwilightService"

    const-string v6, "Skip ForceStop Process music is active"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 539
    :cond_3
    const-string v5, "TwilightService"

    const-string v6, "ForceStop Process start"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const/4 v5, 0x1

    const-string v6, "ForceStopProcess"

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 542
    .local v2, "forceStopWakeLock":Landroid/os/PowerManager$WakeLock;
    const-wide/16 v6, 0x2710

    invoke-virtual {v2, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 544
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->disconnectNetWork()V

    .line 546
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/memoryclean/MemoryCleanApi;->newInstance(Landroid/content/Context;)Lcom/lenovo/memoryclean/MemoryCleanApi;

    move-result-object v0

    .line 547
    .local v0, "api":Lcom/lenovo/memoryclean/MemoryCleanApi;
    invoke-virtual {v0}, Lcom/lenovo/memoryclean/MemoryCleanApi;->init()V

    .line 548
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 549
    .local v3, "ignoreListSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v5, "com.lenovo.lenovofingerprintsettings"

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 550
    const-string v5, "com.lenovo.launcher"

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 551
    const-string v5, "com.lenovo.factorymode"

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 552
    const-string v5, "com.validation"

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 553
    invoke-virtual {v0, v3}, Lcom/lenovo/memoryclean/MemoryCleanApi;->cleanMemory(Ljava/util/HashSet;)Ljava/util/List;

    .line 555
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 556
    const-string v5, "TwilightService"

    const-string v6, "ForceStop Process end"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private cancelAlarmStopProcess()V
    .locals 5

    .prologue
    .line 654
    const-string v2, "TwilightService"

    const-string v3, "cancelAlarmStopProcess"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.action.AUTO_FORCE_STOP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 656
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 658
    .local v1, "sender":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 659
    return-void
.end method

.method private disconnectNetWork()V
    .locals 4

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 509
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_2

    .line 510
    :cond_0
    const-string v2, "TwilightService"

    const-string v3, "WifiAP enable not disconnect network"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_1
    :goto_0
    return-void

    .line 513
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 515
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_1

    .line 516
    iget-boolean v2, p0, Lcom/android/server/twilight/TwilightService;->storeDataConnection:Z

    if-nez v2, :cond_1

    .line 517
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/twilight/TwilightService;->storeDataConnection:Z

    .line 518
    iget-boolean v2, p0, Lcom/android/server/twilight/TwilightService;->storeDataConnection:Z

    if-eqz v2, :cond_1

    .line 519
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->disableDataConnectivity()Z

    .line 520
    const-string v2, "TwilightService"

    const-string v3, "disableDataConnectivity"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static hasMoved(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 8
    .param p0, "from"    # Landroid/location/Location;
    .param p1, "to"    # Landroid/location/Location;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 175
    if-nez p1, :cond_1

    .line 196
    :cond_0
    :goto_0
    return v3

    .line 179
    :cond_1
    if-nez p0, :cond_2

    move v3, v2

    .line 180
    goto :goto_0

    .line 184
    :cond_2
    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 189
    invoke-virtual {p0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    .line 192
    .local v0, "distance":F
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    add-float v1, v4, v5

    .line 196
    .local v1, "totalAccuracy":F
    cmpl-float v4, v0, v1

    if-ltz v4, :cond_3

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method private isTimePassed(JII)Z
    .locals 5
    .param p1, "currentTime"    # J
    .param p3, "hour"    # I
    .param p4, "minute"    # I

    .prologue
    .line 561
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 562
    .local v0, "alarmCalendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 563
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 564
    .local v1, "nowHour":I
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 565
    .local v2, "nowMinute":I
    if-lt p3, v1, :cond_0

    if-ne p3, v1, :cond_1

    if-gt p4, v2, :cond_1

    .line 567
    :cond_0
    const/4 v3, 0x1

    .line 569
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private setAlarmStopProcess(J)V
    .locals 7
    .param p1, "timeMillisSeconds"    # J

    .prologue
    const/4 v5, 0x0

    .line 662
    const-string v2, "TwilightService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAlarmStopProcess:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.action.AUTO_FORCE_STOP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 664
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x10000000

    invoke-static {v2, v5, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 666
    .local v1, "sender":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v5, p1, p2, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 667
    return-void
.end method

.method private setTwilightState(Lcom/android/server/twilight/TwilightState;)V
    .locals 4
    .param p1, "state"    # Lcom/android/server/twilight/TwilightState;

    .prologue
    .line 157
    iget-object v3, p0, Lcom/android/server/twilight/TwilightService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 158
    :try_start_0
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mTwilightState:Lcom/android/server/twilight/TwilightState;

    invoke-static {v2, p1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 163
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService;->mTwilightState:Lcom/android/server/twilight/TwilightState;

    .line 165
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 166
    .local v1, "listenerLen":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 167
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;

    invoke-virtual {v2}, Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;->postUpdate()V

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    .end local v0    # "i":I
    .end local v1    # "listenerLen":I
    :cond_0
    monitor-exit v3

    .line 171
    return-void

    .line 170
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private startNightWatch()V
    .locals 6

    .prologue
    .line 643
    const-string v1, "TwilightService"

    const-string v2, "startNightWatch"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 645
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 646
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 647
    const-string v1, "com.android.action.AUTO_FORCE_STOP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 648
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mNightWatchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 649
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->cancelAlarmStopProcess()V

    .line 650
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x1b7740

    add-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/android/server/twilight/TwilightService;->setAlarmStopProcess(J)V

    .line 651
    return-void
.end method

.method private stopNightWatch()V
    .locals 3

    .prologue
    .line 630
    const-string v1, "TwilightService"

    const-string v2, "stopNightWatch"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mNightWatchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 632
    iget-boolean v1, p0, Lcom/android/server/twilight/TwilightService;->storeDataConnection:Z

    if-eqz v1, :cond_0

    .line 633
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 635
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_1

    .line 640
    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    return-void

    .line 636
    .restart local v0    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    const-string v1, "TwilightService"

    const-string v2, "stopNightWatch enableDataConnectivity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/twilight/TwilightService;->storeDataConnection:Z

    .line 638
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->enableDataConnectivity()Z

    goto :goto_0
.end method

.method private updateAlarmNightWatch()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 573
    const-string v5, "persist.perf.nightwatch"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 596
    :goto_0
    return-void

    .line 576
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 577
    .local v0, "alarmCalendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 578
    .local v2, "currentTime":J
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 579
    invoke-direct {p0, v2, v3, v8, v10}, Lcom/android/server/twilight/TwilightService;->isTimePassed(JII)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 580
    const/4 v5, 0x6

    invoke-virtual {v0, v5, v8}, Ljava/util/Calendar;->add(II)V

    .line 581
    const/4 v5, 0x3

    invoke-direct {p0, v2, v3, v5, v10}, Lcom/android/server/twilight/TwilightService;->isTimePassed(JII)Z

    move-result v5

    if-nez v5, :cond_1

    .line 582
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->startNightWatch()V

    .line 585
    :cond_1
    const/16 v5, 0xb

    invoke-virtual {v0, v5, v8}, Ljava/util/Calendar;->set(II)V

    .line 586
    const/16 v5, 0xc

    invoke-virtual {v0, v5, v10}, Ljava/util/Calendar;->set(II)V

    .line 587
    const/16 v5, 0xd

    invoke-virtual {v0, v5, v10}, Ljava/util/Calendar;->set(II)V

    .line 588
    const/16 v5, 0xe

    invoke-virtual {v0, v5, v10}, Ljava/util/Calendar;->set(II)V

    .line 590
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 591
    .local v6, "timeMillisSeconds":J
    const-string v5, "TwilightService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateAlarmNightWatch:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.android.action.START_NIGHT_WATCH"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 593
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v8, 0x8000000

    invoke-static {v5, v10, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 595
    .local v4, "sender":Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v5, v10, v6, v7, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method


# virtual methods
.method public onStart()V
    .locals 3

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 86
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    .line 88
    new-instance v1, Lcom/android/server/twilight/TwilightService$LocationHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/twilight/TwilightService$LocationHandler;-><init>(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightService$1;)V

    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mLocationHandler:Lcom/android/server/twilight/TwilightService$LocationHandler;

    .line 90
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    const-string v1, "com.android.server.action.UPDATE_TWILIGHT_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v1, "com.android.action.START_NIGHT_WATCH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mUpdateLocationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    const-class v1, Lcom/android/server/twilight/TwilightManager;

    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mService:Lcom/android/server/twilight/TwilightManager;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/twilight/TwilightService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 103
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->updateAlarmNightWatch()V

    .line 104
    return-void
.end method
