.class public Lcom/lenovo/CurrentLog;
.super Ljava/lang/Object;
.source "CurrentLog.java"


# static fields
.field public static final CURRENT_LOG:Ljava/lang/String; = "currentlog"

.field public static final DATE_FORMAT:Ljava/text/DateFormat;

.field public static final DATE_FORMAT2:Ljava/text/DateFormat;

.field private static final LOG_PATH:Ljava/lang/String; = "/data/local/log/aplog/"

.field private static final MAX_FILE_NUM:I = 0x5

.field private static final MAX_FILE_SIZE:I = 0x100000

.field private static final MSG_ACTIVITY_CHANGE:I = 0x1

.field private static final MSG_LOG_DISABLE:I = 0x4

.field private static final MSG_LOG_ENABLE:I = 0x3

.field private static final MSG_LOG_UPDATE:I = 0x5

.field private static final MSG_PROCESS_OBSERVER:I = 0x2

.field private static final SYS_PATH_BRIGHTNESS:Ljava/lang/String; = "/sys/class/leds/lcd-backlight/brightness"

.field private static final SYS_PATH_ZOOM:Ljava/lang/String; = "/sys/class/power_supply/battery/current_now"

.field private static final TAG:Ljava/lang/String; = "CurrLog"


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mHandler:Landroid/os/Handler;

.field mIntentFilter:Landroid/content/IntentFilter;

.field private mIsCharging:Z

.field final mProcessObserver:Landroid/app/IProcessObserver;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mTopActivity:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd,HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/lenovo/CurrentLog;->DATE_FORMAT:Ljava/text/DateFormat;

    .line 46
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/lenovo/CurrentLog;->DATE_FORMAT2:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/lenovo/CurrentLog;->mActivityManager:Landroid/app/ActivityManager;

    .line 55
    iput-object v0, p0, Lcom/lenovo/CurrentLog;->mTopActivity:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/CurrentLog;->mIsCharging:Z

    .line 111
    new-instance v0, Lcom/lenovo/CurrentLog$2;

    invoke-direct {v0, p0}, Lcom/lenovo/CurrentLog$2;-><init>(Lcom/lenovo/CurrentLog;)V

    iput-object v0, p0, Lcom/lenovo/CurrentLog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 186
    new-instance v0, Lcom/lenovo/CurrentLog$3;

    invoke-direct {v0, p0}, Lcom/lenovo/CurrentLog$3;-><init>(Lcom/lenovo/CurrentLog;)V

    iput-object v0, p0, Lcom/lenovo/CurrentLog;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 61
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/lenovo/CurrentLog;->mActivityManager:Landroid/app/ActivityManager;

    .line 62
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/lenovo/CurrentLog;->mIntentFilter:Landroid/content/IntentFilter;

    .line 63
    iget-object v0, p0, Lcom/lenovo/CurrentLog;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/lenovo/CurrentLog;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/lenovo/CurrentLog;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 66
    new-instance v0, Lcom/lenovo/CurrentLog$1;

    invoke-direct {v0, p0, p2}, Lcom/lenovo/CurrentLog$1;-><init>(Lcom/lenovo/CurrentLog;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lenovo/CurrentLog;->mHandler:Landroid/os/Handler;

    .line 108
    iget-object v0, p0, Lcom/lenovo/CurrentLog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/CurrentLog;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/CurrentLog;
    .param p1, "x1"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/lenovo/CurrentLog;->foregroundActivitiesChanged(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/CurrentLog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/CurrentLog;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/CurrentLog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/lenovo/CurrentLog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/CurrentLog;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/lenovo/CurrentLog;->mIsCharging:Z

    return p1
.end method

.method private createFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 161
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/local/log/aplog/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/CurrentLog;->DATE_FORMAT2:Ljava/text/DateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/lenovo/LeFileUtils;->createFile(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private foregroundActivitiesChanged(I)Ljava/lang/String;
    .locals 6
    .param p1, "pid"    # I

    .prologue
    .line 216
    iget-object v3, p0, Lcom/lenovo/CurrentLog;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 217
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v1, :cond_1

    .line 218
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 219
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 220
    .local v0, "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, p1, :cond_0

    .line 221
    const-string v3, "CurrLog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "app.processName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iput-object v3, p0, Lcom/lenovo/CurrentLog;->mTopActivity:Ljava/lang/String;

    .line 223
    iget-object v3, p0, Lcom/lenovo/CurrentLog;->mTopActivity:Ljava/lang/String;

    .line 227
    .end local v0    # "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2    # "i":I
    :goto_1
    return-object v3

    .line 218
    .restart local v0    # "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    .end local v0    # "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2    # "i":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public disableLog()V
    .locals 2

    .prologue
    .line 134
    const-string v0, "CurrLog"

    const-string v1, "disable currlog"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/lenovo/CurrentLog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 136
    return-void
.end method

.method public enableLog()V
    .locals 2

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/lenovo/CurrentLog;->mIsCharging:Z

    if-nez v0, :cond_0

    .line 128
    const-string v0, "CurrLog"

    const-string v1, "enable currlog"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/lenovo/CurrentLog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 131
    :cond_0
    return-void
.end method

.method public readBrightness()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 177
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/class/leds/lcd-backlight/brightness"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .local v2, "reader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 178
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 180
    .local v0, "curr":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 183
    .end local v0    # "curr":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    return-object v0

    .line 180
    .restart local v0    # "curr":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v3

    .local v3, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v0    # "curr":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 181
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "CurrLog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to read uid_cputime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 183
    goto :goto_0

    .line 180
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "curr":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 177
    .end local v0    # "curr":Ljava/lang/String;
    :catch_2
    move-exception v6

    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 180
    :catchall_0
    move-exception v5

    :goto_1
    if-eqz v2, :cond_2

    if-eqz v6, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_2
    :goto_2
    :try_start_7
    throw v5

    :catch_3
    move-exception v3

    .restart local v3    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v6, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v3    # "x2":Ljava/lang/Throwable;
    :cond_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v5

    move-object v6, v4

    goto :goto_1
.end method

.method public readCurrent()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 167
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/class/power_supply/battery/current_now"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .local v2, "reader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 168
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 170
    .local v0, "curr":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 173
    .end local v0    # "curr":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    return-object v0

    .line 170
    .restart local v0    # "curr":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v3

    .local v3, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v0    # "curr":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 171
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "CurrLog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to read uid_cputime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 173
    goto :goto_0

    .line 170
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "curr":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 167
    .end local v0    # "curr":Ljava/lang/String;
    :catch_2
    move-exception v6

    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 170
    :catchall_0
    move-exception v5

    :goto_1
    if-eqz v2, :cond_2

    if-eqz v6, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_2
    :goto_2
    :try_start_7
    throw v5

    :catch_3
    move-exception v3

    .restart local v3    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v6, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v3    # "x2":Ljava/lang/Throwable;
    :cond_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v5

    move-object v6, v4

    goto :goto_1
.end method

.method public updateLog()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 139
    const-string v5, "/data/local/log/aplog/"

    const-string v6, "currentlog"

    invoke-static {v5, v6}, Lcom/lenovo/LeFileUtils;->queryFile(Ljava/lang/String;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    .line 140
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 141
    :cond_0
    array-length v5, v0

    if-lez v5, :cond_2

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "newFileName":Ljava/lang/String;
    :goto_1
    array-length v5, v0

    if-nez v5, :cond_3

    .line 143
    const-string v5, "currentlog"

    invoke-direct {p0, v5}, Lcom/lenovo/CurrentLog;->createFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    :cond_1
    :goto_2
    if-eqz v1, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/local/log/aplog/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 156
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/lenovo/CurrentLog;->DATE_FORMAT:Ljava/text/DateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/CurrentLog;->mTopActivity:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lenovo/CurrentLog;->readCurrent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lenovo/CurrentLog;->readBrightness()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "result":Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/lenovo/LeFileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "newFileName":Ljava/lang/String;
    .end local v3    # "result":Ljava/lang/String;
    :cond_2
    move-object v1, v4

    .line 141
    goto :goto_1

    .line 145
    .restart local v1    # "newFileName":Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/local/log/aplog/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/LeFileUtils;->getFileSize(Ljava/lang/String;)I

    move-result v5

    const/high16 v6, 0x100000

    if-lt v5, v6, :cond_4

    .line 146
    const-string v5, "currentlog"

    invoke-direct {p0, v5}, Lcom/lenovo/CurrentLog;->createFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    :cond_4
    array-length v5, v0

    const/4 v6, 0x5

    if-le v5, v6, :cond_1

    .line 149
    array-length v5, v0

    add-int/lit8 v2, v5, -0x5

    .line 150
    .local v2, "removeSize":I
    invoke-static {v0, v2}, Lcom/lenovo/LeFileUtils;->deleteFile([Ljava/io/File;I)Z

    goto/16 :goto_2

    .end local v2    # "removeSize":I
    :cond_5
    move-object v1, v4

    .line 154
    goto :goto_3
.end method
