.class public Landroid/util/NtpTrustedTime;
.super Ljava/lang/Object;
.source "NtpTrustedTime.java"

# interfaces
.implements Landroid/util/TrustedTime;


# static fields
.field private static final LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "NtpTrustedTime"

.field private static final VDBG:Z

.field private static mNtpServers:[Ljava/lang/String;

.field private static sContext:Landroid/content/Context;

.field private static sSingleton:Landroid/util/NtpTrustedTime;


# instance fields
.field private mCM:Landroid/net/ConnectivityManager;

.field private mCachedNtpCertainty:J

.field private mCachedNtpElapsedRealtime:J

.field private mCachedNtpTime:J

.field private mClient:Landroid/net/SntpClient;

.field private mHasCache:Z

.field private final mServer:Ljava/lang/String;

.field private mSuccess:Z

.field private mTimeStamp:J

.field private final mTimeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "xtra1.gpsonextra.net"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "0.centos.pool.ntp.org"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "1.centos.pool.ntp.org"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "2.centos.pool.ntp.org"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "time.buptnet.edu.cn"

    aput-object v2, v0, v1

    sput-object v0, Landroid/util/NtpTrustedTime;->mNtpServers:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;J)V
    .locals 4
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "timeout"    # J

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-string v0, "NtpTrustedTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "creating NtpTrustedTime using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iput-object p1, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    .line 76
    iput-wide p2, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    .line 77
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Landroid/util/NtpTrustedTime;->mNtpServers:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/util/NtpTrustedTime;)Landroid/net/SntpClient;
    .locals 1
    .param p0, "x0"    # Landroid/util/NtpTrustedTime;

    .prologue
    .line 39
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mClient:Landroid/net/SntpClient;

    return-object v0
.end method

.method static synthetic access$202(Landroid/util/NtpTrustedTime;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/util/NtpTrustedTime;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Landroid/util/NtpTrustedTime;->mSuccess:Z

    return p1
.end method

.method static synthetic access$302(Landroid/util/NtpTrustedTime;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/util/NtpTrustedTime;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    return p1
.end method

.method static synthetic access$402(Landroid/util/NtpTrustedTime;J)J
    .locals 1
    .param p0, "x0"    # Landroid/util/NtpTrustedTime;
    .param p1, "x1"    # J

    .prologue
    .line 39
    iput-wide p1, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    return-wide p1
.end method

.method static synthetic access$502(Landroid/util/NtpTrustedTime;J)J
    .locals 1
    .param p0, "x0"    # Landroid/util/NtpTrustedTime;
    .param p1, "x1"    # J

    .prologue
    .line 39
    iput-wide p1, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    return-wide p1
.end method

.method static synthetic access$602(Landroid/util/NtpTrustedTime;J)J
    .locals 1
    .param p0, "x0"    # Landroid/util/NtpTrustedTime;
    .param p1, "x1"    # J

    .prologue
    .line 39
    iput-wide p1, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    return-wide p1
.end method

.method static synthetic access$700(Landroid/util/NtpTrustedTime;)V
    .locals 0
    .param p0, "x0"    # Landroid/util/NtpTrustedTime;

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/util/NtpTrustedTime;->sntpTimeResponse()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    const-class v10, Landroid/util/NtpTrustedTime;

    monitor-enter v10

    :try_start_0
    sget-object v7, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    if-nez v7, :cond_0

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 82
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 84
    .local v4, "resolver":Landroid/content/ContentResolver;
    const v7, 0x104003a

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "defaultServer":Ljava/lang/String;
    const v7, 0x10e007c

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-long v2, v7

    .line 89
    .local v2, "defaultTimeout":J
    const-string/jumbo v7, "ntp_server"

    invoke-static {v4, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 91
    .local v5, "secureServer":Ljava/lang/String;
    const-string/jumbo v7, "ntp_timeout"

    invoke-static {v4, v7, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 94
    .local v8, "timeout":J
    if-eqz v5, :cond_1

    move-object v6, v5

    .line 95
    .local v6, "server":Ljava/lang/String;
    :goto_0
    new-instance v7, Landroid/util/NtpTrustedTime;

    invoke-direct {v7, v6, v8, v9}, Landroid/util/NtpTrustedTime;-><init>(Ljava/lang/String;J)V

    sput-object v7, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    .line 96
    sput-object p0, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    .line 99
    .end local v0    # "defaultServer":Ljava/lang/String;
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "defaultTimeout":J
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "secureServer":Ljava/lang/String;
    .end local v6    # "server":Ljava/lang/String;
    .end local v8    # "timeout":J
    :cond_0
    sget-object v7, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v10

    return-object v7

    .restart local v0    # "defaultServer":Ljava/lang/String;
    .restart local v1    # "res":Landroid/content/res/Resources;
    .restart local v2    # "defaultTimeout":J
    .restart local v4    # "resolver":Landroid/content/ContentResolver;
    .restart local v5    # "secureServer":Ljava/lang/String;
    .restart local v8    # "timeout":J
    :cond_1
    move-object v6, v0

    .line 94
    goto :goto_0

    .line 80
    .end local v0    # "defaultServer":Ljava/lang/String;
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "defaultTimeout":J
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "secureServer":Ljava/lang/String;
    .end local v8    # "timeout":J
    :catchall_0
    move-exception v7

    monitor-exit v10

    throw v7
.end method

.method private getNtpSuccess()Z
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mSuccess:Z

    return v0
.end method

.method private getTimeStamp()J
    .locals 2

    .prologue
    .line 253
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mTimeStamp:J

    return-wide v0
.end method

.method private requestSntpTime()V
    .locals 6

    .prologue
    .line 200
    const-string v1, "NtpTrustedTime"

    const-string/jumbo v4, "requestSNTPTime called "

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-wide v2, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    .line 202
    .local v2, "timeout":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/util/NtpTrustedTime;->mTimeStamp:J

    .line 204
    new-instance v0, Landroid/util/NtpTrustedTime$1;

    invoke-direct {v0, p0, v2, v3}, Landroid/util/NtpTrustedTime$1;-><init>(Landroid/util/NtpTrustedTime;J)V

    .line 235
    .local v0, "getTimeTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 236
    return-void
.end method

.method private sntpTimeResponse()V
    .locals 8

    .prologue
    .line 240
    const-string v1, "NtpTrustedTime"

    const-string/jumbo v6, "sntpTimeResponse called"

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-direct {p0}, Landroid/util/NtpTrustedTime;->getNtpSuccess()Z

    move-result v0

    .line 242
    .local v0, "success":Z
    invoke-virtual {p0}, Landroid/util/NtpTrustedTime;->getCachedNtpTime()J

    move-result-wide v2

    .line 243
    .local v2, "time":J
    invoke-direct {p0}, Landroid/util/NtpTrustedTime;->getTimeStamp()J

    move-result-wide v4

    .line 246
    .local v4, "timeStamp":J
    const-string v1, "NtpTrustedTime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sntp Client ret: success = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " sntp time in ms = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " sntpTimeStamp = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return-void
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 4

    .prologue
    .line 173
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing authoritative time source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {p0}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public forceRefresh()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 104
    iget-object v2, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 144
    :goto_0
    return v2

    .line 110
    :cond_0
    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v2, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_1

    .line 112
    sget-object v2, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    .line 114
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    iget-object v2, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_3

    const/4 v1, 0x0

    .line 117
    .local v1, "ni":Landroid/net/NetworkInfo;
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2
    move v2, v3

    .line 120
    goto :goto_0

    .line 114
    .end local v1    # "ni":Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 116
    :cond_3
    iget-object v2, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    goto :goto_1

    .line 124
    .restart local v1    # "ni":Landroid/net/NetworkInfo;
    :cond_4
    const-string v2, "NtpTrustedTime"

    const-string v5, "forceRefresh() from cache miss"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v0, Landroid/net/SntpClient;

    invoke-direct {v0}, Landroid/net/SntpClient;-><init>()V

    .line 127
    .local v0, "client":Landroid/net/SntpClient;
    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mClient:Landroid/net/SntpClient;

    .line 129
    iget-object v2, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    iget-wide v6, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v5, v6

    invoke-virtual {v0, v2, v5}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 130
    iput-boolean v4, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    .line 131
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    .line 132
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    .line 133
    invoke-virtual {v0}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v2

    const-wide/16 v6, 0x2

    div-long/2addr v2, v6

    iput-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    .line 136
    const-string v2, "NtpTrustedTime"

    const-string v3, "client.requestTime mServer is true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 139
    goto :goto_0

    .line 142
    :cond_5
    invoke-direct {p0}, Landroid/util/NtpTrustedTime;->requestSntpTime()V

    move v2, v3

    .line 144
    goto :goto_0
.end method

.method public getCacheAge()J
    .locals 4

    .prologue
    .line 155
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_0

    .line 156
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    sub-long/2addr v0, v2

    .line 158
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public getCacheCertainty()J
    .locals 2

    .prologue
    .line 164
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_0

    .line 165
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    .line 167
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public getCachedNtpTime()J
    .locals 2

    .prologue
    .line 187
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    return-wide v0
.end method

.method public getCachedNtpTimeReference()J
    .locals 2

    .prologue
    .line 191
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    return-wide v0
.end method

.method public hasCache()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    return v0
.end method
