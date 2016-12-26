.class public final Landroid/os/PowerManager$ChargeLimiter;
.super Ljava/lang/Object;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ChargeLimiter"
.end annotation


# instance fields
.field private mCount:I

.field private mFlags:I

.field private mHeld:Z

.field private mHistoryTag:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private mRefCounted:Z

.field private final mReleaser:Ljava/lang/Runnable;

.field private mTag:Ljava/lang/String;

.field private final mToken:Landroid/os/IBinder;

.field private final mTraceName:Ljava/lang/String;

.field private mWorkSource:Landroid/os/WorkSource;

.field final synthetic this$0:Landroid/os/PowerManager;


# direct methods
.method constructor <init>(Landroid/os/PowerManager;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1198
    iput-object p1, p0, Landroid/os/PowerManager$ChargeLimiter;->this$0:Landroid/os/PowerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1186
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/PowerManager$ChargeLimiter;->mRefCounted:Z

    .line 1192
    new-instance v0, Landroid/os/PowerManager$ChargeLimiter$1;

    invoke-direct {v0, p0}, Landroid/os/PowerManager$ChargeLimiter$1;-><init>(Landroid/os/PowerManager$ChargeLimiter;)V

    iput-object v0, p0, Landroid/os/PowerManager$ChargeLimiter;->mReleaser:Ljava/lang/Runnable;

    .line 1199
    iput p2, p0, Landroid/os/PowerManager$ChargeLimiter;->mFlags:I

    .line 1200
    iput-object p3, p0, Landroid/os/PowerManager$ChargeLimiter;->mTag:Ljava/lang/String;

    .line 1201
    iput-object p4, p0, Landroid/os/PowerManager$ChargeLimiter;->mPackageName:Ljava/lang/String;

    .line 1202
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/os/PowerManager$ChargeLimiter;->mToken:Landroid/os/IBinder;

    .line 1203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChargeLimiter ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/PowerManager$ChargeLimiter;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PowerManager$ChargeLimiter;->mTraceName:Ljava/lang/String;

    .line 1204
    return-void
.end method

.method private acquireLocked()V
    .locals 7

    .prologue
    .line 1240
    iget-boolean v0, p0, Landroid/os/PowerManager$ChargeLimiter;->mRefCounted:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/os/PowerManager$ChargeLimiter;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/os/PowerManager$ChargeLimiter;->mCount:I

    if-nez v0, :cond_1

    .line 1241
    :cond_0
    iget-object v0, p0, Landroid/os/PowerManager$ChargeLimiter;->this$0:Landroid/os/PowerManager;

    iget-object v0, v0, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/os/PowerManager$ChargeLimiter;->mReleaser:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1242
    const-wide/32 v0, 0x20000

    iget-object v2, p0, Landroid/os/PowerManager$ChargeLimiter;->mTraceName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1244
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager$ChargeLimiter;->this$0:Landroid/os/PowerManager;

    iget-object v0, v0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v1, p0, Landroid/os/PowerManager$ChargeLimiter;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/os/PowerManager$ChargeLimiter;->mFlags:I

    iget-object v3, p0, Landroid/os/PowerManager$ChargeLimiter;->mTag:Ljava/lang/String;

    iget-object v4, p0, Landroid/os/PowerManager$ChargeLimiter;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Landroid/os/PowerManager$ChargeLimiter;->mWorkSource:Landroid/os/WorkSource;

    iget-object v6, p0, Landroid/os/PowerManager$ChargeLimiter;->mHistoryTag:Ljava/lang/String;

    invoke-interface/range {v0 .. v6}, Landroid/os/IPowerManager;->acquireChargeLimiter(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1248
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/PowerManager$ChargeLimiter;->mHeld:Z

    .line 1250
    :cond_1
    return-void

    .line 1246
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public acquire()V
    .locals 2

    .prologue
    .line 1227
    iget-object v1, p0, Landroid/os/PowerManager$ChargeLimiter;->mToken:Landroid/os/IBinder;

    monitor-enter v1

    .line 1228
    :try_start_0
    invoke-direct {p0}, Landroid/os/PowerManager$ChargeLimiter;->acquireLocked()V

    .line 1229
    monitor-exit v1

    .line 1230
    return-void

    .line 1229
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public acquire(J)V
    .locals 3
    .param p1, "timeout"    # J

    .prologue
    .line 1233
    iget-object v1, p0, Landroid/os/PowerManager$ChargeLimiter;->mToken:Landroid/os/IBinder;

    monitor-enter v1

    .line 1234
    :try_start_0
    invoke-direct {p0}, Landroid/os/PowerManager$ChargeLimiter;->acquireLocked()V

    .line 1235
    iget-object v0, p0, Landroid/os/PowerManager$ChargeLimiter;->this$0:Landroid/os/PowerManager;

    iget-object v0, v0, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/os/PowerManager$ChargeLimiter;->mReleaser:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1236
    monitor-exit v1

    .line 1237
    return-void

    .line 1236
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1208
    iget-object v1, p0, Landroid/os/PowerManager$ChargeLimiter;->mToken:Landroid/os/IBinder;

    monitor-enter v1

    .line 1209
    :try_start_0
    iget-boolean v0, p0, Landroid/os/PowerManager$ChargeLimiter;->mHeld:Z

    if-eqz v0, :cond_0

    .line 1210
    const-string v0, "PowerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChargeLimiter finalized while still held: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/PowerManager$ChargeLimiter;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    const-wide/32 v2, 0x20000

    iget-object v0, p0, Landroid/os/PowerManager$ChargeLimiter;->mTraceName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1213
    :try_start_1
    iget-object v0, p0, Landroid/os/PowerManager$ChargeLimiter;->this$0:Landroid/os/PowerManager;

    iget-object v0, v0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v2, p0, Landroid/os/PowerManager$ChargeLimiter;->mToken:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IPowerManager;->releaseChargeLimiter(Landroid/os/IBinder;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1217
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 1218
    return-void

    .line 1217
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1214
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isHeld()Z
    .locals 2

    .prologue
    .line 1276
    iget-object v1, p0, Landroid/os/PowerManager$ChargeLimiter;->mToken:Landroid/os/IBinder;

    monitor-enter v1

    .line 1277
    :try_start_0
    iget-boolean v0, p0, Landroid/os/PowerManager$ChargeLimiter;->mHeld:Z

    monitor-exit v1

    return v0

    .line 1278
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 1253
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/PowerManager$ChargeLimiter;->release(I)V

    .line 1254
    return-void
.end method

.method public release(I)V
    .locals 5
    .param p1, "flags"    # I

    .prologue
    .line 1257
    iget-object v1, p0, Landroid/os/PowerManager$ChargeLimiter;->mToken:Landroid/os/IBinder;

    monitor-enter v1

    .line 1258
    :try_start_0
    iget-boolean v0, p0, Landroid/os/PowerManager$ChargeLimiter;->mRefCounted:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/os/PowerManager$ChargeLimiter;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/os/PowerManager$ChargeLimiter;->mCount:I

    if-nez v0, :cond_1

    .line 1259
    :cond_0
    iget-object v0, p0, Landroid/os/PowerManager$ChargeLimiter;->this$0:Landroid/os/PowerManager;

    iget-object v0, v0, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/os/PowerManager$ChargeLimiter;->mReleaser:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1260
    iget-boolean v0, p0, Landroid/os/PowerManager$ChargeLimiter;->mHeld:Z

    if-eqz v0, :cond_1

    .line 1261
    const-wide/32 v2, 0x20000

    iget-object v0, p0, Landroid/os/PowerManager$ChargeLimiter;->mTraceName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1263
    :try_start_1
    iget-object v0, p0, Landroid/os/PowerManager$ChargeLimiter;->this$0:Landroid/os/PowerManager;

    iget-object v0, v0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v2, p0, Landroid/os/PowerManager$ChargeLimiter;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v2, p1}, Landroid/os/IPowerManager;->releaseChargeLimiter(Landroid/os/IBinder;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1266
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Landroid/os/PowerManager$ChargeLimiter;->mHeld:Z

    .line 1269
    :cond_1
    iget v0, p0, Landroid/os/PowerManager$ChargeLimiter;->mCount:I

    if-gez v0, :cond_2

    .line 1270
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChargeLimiter under-locked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/PowerManager$ChargeLimiter;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1272
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1273
    return-void

    .line 1264
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setHistoryTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 1317
    iput-object p1, p0, Landroid/os/PowerManager$ChargeLimiter;->mHistoryTag:Ljava/lang/String;

    .line 1318
    return-void
.end method

.method public setReferenceCounted(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1221
    iget-object v1, p0, Landroid/os/PowerManager$ChargeLimiter;->mToken:Landroid/os/IBinder;

    monitor-enter v1

    .line 1222
    :try_start_0
    iput-boolean p1, p0, Landroid/os/PowerManager$ChargeLimiter;->mRefCounted:Z

    .line 1223
    monitor-exit v1

    .line 1224
    return-void

    .line 1223
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 1312
    iput-object p1, p0, Landroid/os/PowerManager$ChargeLimiter;->mTag:Ljava/lang/String;

    .line 1313
    return-void
.end method

.method public setUnimportantForLogging(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 1322
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/os/PowerManager$ChargeLimiter;->mFlags:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Landroid/os/PowerManager$ChargeLimiter;->mFlags:I

    .line 1324
    :goto_0
    return-void

    .line 1323
    :cond_0
    iget v0, p0, Landroid/os/PowerManager$ChargeLimiter;->mFlags:I

    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v0, v1

    iput v0, p0, Landroid/os/PowerManager$ChargeLimiter;->mFlags:I

    goto :goto_0
.end method

.method public setWorkSource(Landroid/os/WorkSource;)V
    .locals 6
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 1282
    iget-object v2, p0, Landroid/os/PowerManager$ChargeLimiter;->mToken:Landroid/os/IBinder;

    monitor-enter v2

    .line 1283
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 1284
    const/4 p1, 0x0

    .line 1288
    :cond_0
    if-nez p1, :cond_4

    .line 1289
    iget-object v1, p0, Landroid/os/PowerManager$ChargeLimiter;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    .line 1290
    .local v0, "changed":Z
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/PowerManager$ChargeLimiter;->mWorkSource:Landroid/os/WorkSource;

    .line 1301
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Landroid/os/PowerManager$ChargeLimiter;->mHeld:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 1303
    :try_start_1
    iget-object v1, p0, Landroid/os/PowerManager$ChargeLimiter;->this$0:Landroid/os/PowerManager;

    iget-object v1, v1, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v3, p0, Landroid/os/PowerManager$ChargeLimiter;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/os/PowerManager$ChargeLimiter;->mWorkSource:Landroid/os/WorkSource;

    iget-object v5, p0, Landroid/os/PowerManager$ChargeLimiter;->mHistoryTag:Ljava/lang/String;

    invoke-interface {v1, v3, v4, v5}, Landroid/os/IPowerManager;->updateChargeLimiterWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1307
    :cond_2
    :goto_2
    :try_start_2
    monitor-exit v2

    .line 1308
    return-void

    .line 1289
    .end local v0    # "changed":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 1291
    :cond_4
    iget-object v1, p0, Landroid/os/PowerManager$ChargeLimiter;->mWorkSource:Landroid/os/WorkSource;

    if-nez v1, :cond_5

    .line 1292
    const/4 v0, 0x1

    .line 1293
    .restart local v0    # "changed":Z
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    iput-object v1, p0, Landroid/os/PowerManager$ChargeLimiter;->mWorkSource:Landroid/os/WorkSource;

    goto :goto_1

    .line 1307
    .end local v0    # "changed":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1295
    :cond_5
    :try_start_3
    iget-object v1, p0, Landroid/os/PowerManager$ChargeLimiter;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, p1}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    move-result v0

    .line 1296
    .restart local v0    # "changed":Z
    if-eqz v0, :cond_1

    .line 1297
    iget-object v1, p0, Landroid/os/PowerManager$ChargeLimiter;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, p1}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1304
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1328
    iget-object v1, p0, Landroid/os/PowerManager$ChargeLimiter;->mToken:Landroid/os/IBinder;

    monitor-enter v1

    .line 1329
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChargeLimiter{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " held="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/os/PowerManager$ChargeLimiter;->mHeld:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", refCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/os/PowerManager$ChargeLimiter;->mCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1332
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
