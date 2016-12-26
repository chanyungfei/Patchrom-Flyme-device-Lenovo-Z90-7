.class public Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;
.super Ljava/lang/Object;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SwitchPrimarysStorageHelper"
.end annotation


# static fields
.field public static final ACTION_EXRTA_RECOMMEND_SWITCH:Ljava/lang/String; = "recommend_switch"

.field public static final ACTION_EXTRA_SDCARD_MISSING:Ljava/lang/String; = "sdcard_missing"

.field public static final PROPERTY_CID_NONE:Ljava/lang/String; = "0"

.field public static final PROPERTY_CID_POSITION:I = 0x1

.field public static final PROPERTY_PRIMARY_EMMC:Ljava/lang/String; = "emmc"

.field public static final PROPERTY_PRIMARY_NONE:Ljava/lang/String; = "none"

.field public static final PROPERTY_PRIMARY_POSITION:I = 0x0

.field public static final PROPERTY_PRIMARY_SDCARD:Ljava/lang/String; = "sdcard"

.field public static final RECOMMEND_THRESHOLD_SIZE:J = 0x40000000L

.field public static final SAME_SDCARD_PROPERTY:Ljava/lang/String; = "sys.storage.same_sdcard"

.field public static final SWITCH_STORAGE_PROPERTY:Ljava/lang/String; = "persist.sys.switch_storage"


# instance fields
.field private final mDefContainerConn:Landroid/content/ServiceConnection;

.field private mEncrypted:Z

.field private mPrimary:Ljava/lang/String;

.field private mSameSdcard:Z

.field private mSdcardCid:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/usb/UsbDeviceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDeviceManager;)V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1335
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1319
    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->mEncrypted:Z

    .line 1321
    new-instance v5, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper$1;

    invoke-direct {v5, p0}, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper$1;-><init>(Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;)V

    iput-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->mDefContainerConn:Landroid/content/ServiceConnection;

    .line 1336
    const-string v5, "persist.sys.switch_storage"

    const-string v6, "none,0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1337
    .local v0, "property":Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1338
    .local v2, "property_value":[Ljava/lang/String;
    array-length v5, v2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 1339
    aget-object v5, v2, v4

    iput-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->mPrimary:Ljava/lang/String;

    .line 1340
    aget-object v5, v2, v3

    iput-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->mSdcardCid:Ljava/lang/String;

    .line 1345
    :goto_0
    const-string v5, "sys.storage.same_sdcard"

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->mSameSdcard:Z

    .line 1346
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SwitchHelper - primary : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->mPrimary:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | sdcard cid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->mSdcardCid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | same sdcard : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->mSameSdcard:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    const-string v5, "ro.crypto.state"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1352
    .local v1, "propertyValue":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v5, "encrypted"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->mEncrypted:Z

    .line 1353
    return-void

    .line 1342
    .end local v1    # "propertyValue":Ljava/lang/String;
    :cond_0
    const-string v5, "none"

    iput-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->mPrimary:Ljava/lang/String;

    .line 1343
    const-string v5, "0"

    iput-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->mSdcardCid:Ljava/lang/String;

    goto :goto_0

    .restart local v1    # "propertyValue":Ljava/lang/String;
    :cond_1
    move v3, v4

    .line 1352
    goto :goto_1
.end method

.method static synthetic access$2300(Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;Lcom/android/internal/app/IMediaContainerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;
    .param p1, "x1"    # Lcom/android/internal/app/IMediaContainerService;

    .prologue
    .line 1302
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->updateRecommendNotification(Lcom/android/internal/app/IMediaContainerService;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->mDefContainerConn:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method private isSdcardLarger(Lcom/android/internal/app/IMediaContainerService;)Z
    .locals 14
    .param p1, "imcs"    # Lcom/android/internal/app/IMediaContainerService;

    .prologue
    const-wide/32 v12, 0x40000000

    const/4 v7, 0x0

    .line 1441
    const/4 v0, 0x1

    .line 1442
    .local v0, "EMMC_IDX":I
    const/4 v1, 0x0

    .line 1443
    .local v1, "SDCARD_IDX":I
    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->mPrimary:Ljava/lang/String;

    const-string v9, "sdcard"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->isSdcardInserted()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1444
    const/4 v0, 0x1

    .line 1445
    const/4 v1, 0x0

    .line 1451
    :goto_0
    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/usb/UsbDeviceManager;->access$600(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "storage"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageManager;

    .line 1452
    .local v6, "sm":Landroid/os/storage/StorageManager;
    invoke-virtual {v6}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v4

    .line 1454
    .local v4, "paths":[Ljava/lang/String;
    :try_start_0
    aget-object v8, v4, v0

    invoke-interface {p1, v8}, Lcom/android/internal/app/IMediaContainerService;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v3

    .line 1455
    .local v3, "emmcStat":[J
    aget-object v8, v4, v1

    invoke-interface {p1, v8}, Lcom/android/internal/app/IMediaContainerService;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v5

    .line 1456
    .local v5, "sdcardStat":[J
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SwitchHelper - emmcSize: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-wide v10, v3, v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " | sdcardSize: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-wide v10, v5, v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " | threshold: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-wide/32 v10, 0x40000000

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    const/4 v8, 0x0

    aget-wide v8, v5, v8

    const/4 v10, 0x0

    aget-wide v10, v3, v10
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v10, v12

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    const/4 v7, 0x1

    .line 1463
    .end local v3    # "emmcStat":[J
    .end local v5    # "sdcardStat":[J
    :cond_0
    :goto_1
    return v7

    .line 1447
    .end local v4    # "paths":[Ljava/lang/String;
    .end local v6    # "sm":Landroid/os/storage/StorageManager;
    :cond_1
    const/4 v0, 0x0

    .line 1448
    const/4 v1, 0x1

    goto :goto_0

    .line 1461
    .restart local v4    # "paths":[Ljava/lang/String;
    .restart local v6    # "sm":Landroid/os/storage/StorageManager;
    :catch_0
    move-exception v2

    .line 1462
    .local v2, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v8

    const-string v9, "cannot get size with IMediaContainerService"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private declared-synchronized updateRecommendNotification(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 10
    .param p1, "imcs"    # Lcom/android/internal/app/IMediaContainerService;

    .prologue
    .line 1403
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->mPrimary:Ljava/lang/String;

    const-string v8, "sdcard"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->isSdcardInserted()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->mSameSdcard:Z

    if-nez v7, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->isSdcardLarger(Lcom/android/internal/app/IMediaContainerService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_1

    .line 1438
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1410
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$2100(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v7

    if-nez v7, :cond_2

    .line 1411
    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$600(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v7

    const-string v9, "notification"

    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v8, v7}, Lcom/android/server/usb/UsbDeviceManager;->access$2102(Lcom/android/server/usb/UsbDeviceManager;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;

    .line 1414
    :cond_2
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$2100(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v7

    if-nez v7, :cond_3

    .line 1415
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SwitchHelper - cannot send notification, NotificationManager is unavailable"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1403
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 1419
    :cond_3
    :try_start_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1420
    .local v2, "intent":Landroid/content/Intent;
    const-string v7, "android.settings.MEMORY_CARD_SETTINGS"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1421
    const/high16 v7, 0x10000000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1422
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$600(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    const/high16 v9, 0x8000000

    invoke-static {v7, v8, v2, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 1425
    .local v4, "pi":Landroid/app/PendingIntent;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    .line 1426
    .local v5, "r":Landroid/content/res/Resources;
    const v6, 0x10406e6

    .line 1427
    .local v6, "titleId":I
    const v3, 0x10406e7

    .line 1428
    .local v3, "messageId":I
    const v1, 0x10800ab

    .line 1430
    .local v1, "iconId":I
    new-instance v7, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/usb/UsbDeviceManager;->access$600(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1437
    .local v0, "builder":Landroid/app/Notification$Builder;
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$2100(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v7

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public isSdcardInserted()Z
    .locals 2

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->mSdcardCid:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public resetPrimarySdcardMissing()V
    .locals 2

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->mPrimary:Ljava/lang/String;

    const-string v1, "sdcard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->isSdcardInserted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1361
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SwitchHelper - primary sdcard missing, reset to emmc"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    const-string v0, "persist.sys.switch_storage"

    const-string v1, "emmc,0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    :cond_0
    return-void
.end method

.method public updatePrimarySdcardMissing()V
    .locals 5

    .prologue
    .line 1368
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->mPrimary:Ljava/lang/String;

    const-string v3, "sdcard"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->isSdcardInserted()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->mSameSdcard:Z

    if-nez v2, :cond_2

    .line 1370
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->mEncrypted:Z

    if-eqz v2, :cond_1

    .line 1371
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SwitchHelper - phone is encrypted and primary is sdcard, reset primary to emmc"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    const-string v2, "persist.sys.switch_storage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "emmc,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->mSdcardCid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1377
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.settings.MEMORY_CARD_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1378
    const-string v2, "sdcard_missing"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1379
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1381
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->access$600(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1386
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void

    .line 1382
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1383
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SwitchHelper - sdcard missing, activity not found"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateRecommendNotification()V
    .locals 5

    .prologue
    .line 1390
    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->mEncrypted:Z

    if-eqz v2, :cond_0

    .line 1391
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SwitchHelper - phone is encrypted, do not send recommend switch notification"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    :goto_0
    return-void

    .line 1395
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.defcontainer"

    const-string v3, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    .local v0, "defcontainer":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 1399
    .local v1, "service":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->access$600(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->mDefContainerConn:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method
