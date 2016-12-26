.class Lcom/android/server/AlarmManagerService$PowerSaveReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerSaveReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 2

    .prologue
    .line 3026
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$PowerSaveReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 3027
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3028
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3029
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3030
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3031
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3032
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3033
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3034
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3035
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3039
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 3040
    .local v3, "action":Ljava/lang/String;
    const-string v10, "android.intent.action.SCREEN_ON"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 3041
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/AlarmManagerService$PowerSaveReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mAlarmLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/server/AlarmManagerService;->access$1300(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 3042
    const/4 v10, 0x1

    :try_start_0
    # setter for: Lcom/android/server/AlarmManagerService;->mWakefulness:Z
    invoke-static {v10}, Lcom/android/server/AlarmManagerService;->access$1702(Z)Z

    .line 3043
    const-wide/16 v12, 0x0

    # setter for: Lcom/android/server/AlarmManagerService;->mSleepInternal:J
    invoke-static {v12, v13}, Lcom/android/server/AlarmManagerService;->access$1902(J)J

    move-result-wide v12

    # setter for: Lcom/android/server/AlarmManagerService;->mSleepTime:J
    invoke-static {v12, v13}, Lcom/android/server/AlarmManagerService;->access$1802(J)J

    .line 3044
    # getter for: Lcom/android/server/AlarmManagerService;->mLongSuspendElapsed:Z
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2000()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 3046
    const/4 v10, 0x0

    # setter for: Lcom/android/server/AlarmManagerService;->mLongSuspendElapsed:Z
    invoke-static {v10}, Lcom/android/server/AlarmManagerService;->access$2002(Z)Z

    .line 3048
    :cond_0
    const-string v10, "AlarmManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mBroadcastRefCount: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerService$PowerSaveReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget v13, v13, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3049
    const-string v10, "AlarmManager"

    const-string v12, ">>> SCREEN_ON <<< "

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3050
    monitor-exit v11

    .line 3114
    :cond_1
    :goto_0
    return-void

    .line 3050
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 3051
    :cond_2
    const-string v10, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 3052
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/AlarmManagerService$PowerSaveReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mAlarmLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/server/AlarmManagerService;->access$1300(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 3053
    const/4 v10, 0x0

    :try_start_1
    # setter for: Lcom/android/server/AlarmManagerService;->mWakefulness:Z
    invoke-static {v10}, Lcom/android/server/AlarmManagerService;->access$1702(Z)Z

    .line 3054
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    # setter for: Lcom/android/server/AlarmManagerService;->mSleepTime:J
    invoke-static {v12, v13}, Lcom/android/server/AlarmManagerService;->access$1802(J)J

    .line 3055
    const-string v10, "AlarmManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mBroadcastRefCount: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerService$PowerSaveReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget v13, v13, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3056
    const-string v10, "AlarmManager"

    const-string v12, ">>> SCREEN_OFF <<< "

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3057
    monitor-exit v11

    goto :goto_0

    :catchall_1
    move-exception v10

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v10

    .line 3058
    :cond_3
    const-string v10, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 3059
    const-string v10, "AlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ALMS listen ACTION_BOOT_COMPLETED at : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3060
    const-string v10, "AlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ALMS listen ACTION_BOOT_COMPLETED at : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AlarmManagerService$PowerSaveReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    # invokes: Lcom/android/server/AlarmManagerService;->formatMillisToDate(J)Ljava/lang/String;
    invoke-static {v12, v14, v15}, Lcom/android/server/AlarmManagerService;->access$2100(Lcom/android/server/AlarmManagerService;J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3061
    const-string v10, "AlarmManager"

    const-string v11, " AlarmManagerService = > ACTION_BOOT_COMPLETED "

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3062
    :cond_4
    const-string v10, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 3063
    const-string v10, "AlarmManager"

    const-string v11, " >>> ACTION_BATTERY_CHANGED <<< "

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3064
    const-string v10, "AlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mBroadcastRefCount: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AlarmManagerService$PowerSaveReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget v12, v12, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3065
    const-string v10, "status"

    const/4 v11, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 3066
    .local v8, "status":I
    const/4 v10, 0x2

    if-eq v8, v10, :cond_5

    const/4 v10, 0x5

    if-ne v8, v10, :cond_7

    :cond_5
    const/4 v7, 0x1

    .line 3069
    .local v7, "isCharging":Z
    :goto_1
    const-string v10, "plugged"

    const/4 v11, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 3070
    .local v4, "chargePlug":I
    const/4 v10, 0x2

    if-ne v4, v10, :cond_8

    const/4 v9, 0x1

    .line 3071
    .local v9, "usbCharge":Z
    :goto_2
    const/4 v10, 0x1

    if-ne v4, v10, :cond_9

    const/4 v2, 0x1

    .line 3072
    .local v2, "acCharge":Z
    :goto_3
    const/4 v10, 0x1

    if-ne v7, v10, :cond_a

    const-string v5, "Phone is charging with "

    .line 3073
    .local v5, "charging":Ljava/lang/String;
    :goto_4
    if-eqz v7, :cond_d

    .line 3074
    const/4 v10, 0x1

    if-ne v9, v10, :cond_b

    const-string v6, "USB Mode"

    .line 3076
    .local v6, "how":Ljava/lang/String;
    :goto_5
    const-string v10, "AlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Mobile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3077
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/AlarmManagerService$PowerSaveReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mAlarmLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/server/AlarmManagerService;->access$1300(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 3078
    const/4 v10, 0x1

    :try_start_2
    # setter for: Lcom/android/server/AlarmManagerService;->mIsPowerConnected:Z
    invoke-static {v10}, Lcom/android/server/AlarmManagerService;->access$2202(Z)Z

    .line 3079
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 3086
    .end local v6    # "how":Ljava/lang/String;
    :goto_6
    const-string v10, "AlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mIsPowerConnected : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    # getter for: Lcom/android/server/AlarmManagerService;->mIsPowerConnected:Z
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2200()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3087
    # getter for: Lcom/android/server/AlarmManagerService;->mWakefulness:Z
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$1700()Z

    move-result v10

    if-nez v10, :cond_1

    .line 3089
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    # getter for: Lcom/android/server/AlarmManagerService;->mSleepTime:J
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$1800()J

    move-result-wide v12

    sub-long/2addr v10, v12

    # setter for: Lcom/android/server/AlarmManagerService;->mSleepInternal:J
    invoke-static {v10, v11}, Lcom/android/server/AlarmManagerService;->access$1902(J)J

    .line 3090
    const-string v10, "AlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "System had already sleep :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    # getter for: Lcom/android/server/AlarmManagerService;->mSleepInternal:J
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$1900()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3091
    const-string v10, "AlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "System had already sleep :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    # getter for: Lcom/android/server/AlarmManagerService;->mSleepInternal:J
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$1900()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "s"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3092
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/AlarmManagerService$PowerSaveReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mSleepInternal:J
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$1900()J

    move-result-wide v12

    # invokes: Lcom/android/server/AlarmManagerService;->longSuspendElapsed(J)Z
    invoke-static {v10, v12, v13}, Lcom/android/server/AlarmManagerService;->access$2300(Lcom/android/server/AlarmManagerService;J)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 3093
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/AlarmManagerService$PowerSaveReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mAlarmLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/server/AlarmManagerService;->access$1300(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 3094
    :try_start_3
    # getter for: Lcom/android/server/AlarmManagerService;->mLongSuspendElapsed:Z
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2000()Z

    move-result v10

    if-nez v10, :cond_6

    .line 3096
    const/4 v10, 0x1

    # setter for: Lcom/android/server/AlarmManagerService;->mLongSuspendElapsed:Z
    invoke-static {v10}, Lcom/android/server/AlarmManagerService;->access$2002(Z)Z

    .line 3098
    :cond_6
    const-string v10, "AlarmManager"

    const-string v12, "System had already sleep so long time, Alarm will not allowed..."

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3099
    monitor-exit v11

    goto/16 :goto_0

    :catchall_2
    move-exception v10

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v10

    .line 3066
    .end local v2    # "acCharge":Z
    .end local v4    # "chargePlug":I
    .end local v5    # "charging":Ljava/lang/String;
    .end local v7    # "isCharging":Z
    .end local v9    # "usbCharge":Z
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 3070
    .restart local v4    # "chargePlug":I
    .restart local v7    # "isCharging":Z
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 3071
    .restart local v9    # "usbCharge":Z
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 3072
    .restart local v2    # "acCharge":Z
    :cond_a
    const-string v5, "Phone is not charging"

    goto/16 :goto_4

    .line 3074
    .restart local v5    # "charging":Ljava/lang/String;
    :cond_b
    const/4 v10, 0x1

    if-ne v2, v10, :cond_c

    const-string v6, "AC Mode"

    goto/16 :goto_5

    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 3079
    .restart local v6    # "how":Ljava/lang/String;
    :catchall_3
    move-exception v10

    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v10

    .line 3081
    .end local v6    # "how":Ljava/lang/String;
    :cond_d
    const-string v10, "AlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Mobile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3082
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/AlarmManagerService$PowerSaveReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mAlarmLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/server/AlarmManagerService;->access$1300(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 3083
    const/4 v10, 0x0

    :try_start_5
    # setter for: Lcom/android/server/AlarmManagerService;->mIsPowerConnected:Z
    invoke-static {v10}, Lcom/android/server/AlarmManagerService;->access$2202(Z)Z

    .line 3084
    monitor-exit v11

    goto/16 :goto_6

    :catchall_4
    move-exception v10

    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v10

    .line 3102
    .end local v2    # "acCharge":Z
    .end local v4    # "chargePlug":I
    .end local v5    # "charging":Ljava/lang/String;
    .end local v7    # "isCharging":Z
    .end local v8    # "status":I
    .end local v9    # "usbCharge":Z
    :cond_e
    const-string v10, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 3103
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/AlarmManagerService$PowerSaveReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mAlarmLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/server/AlarmManagerService;->access$1300(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 3104
    const/4 v10, 0x1

    :try_start_6
    # setter for: Lcom/android/server/AlarmManagerService;->mIsPowerConnected:Z
    invoke-static {v10}, Lcom/android/server/AlarmManagerService;->access$2202(Z)Z

    .line 3105
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 3106
    const-string v10, "AlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "POWER_CONNECTED : mIsPowerConnected : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    # getter for: Lcom/android/server/AlarmManagerService;->mIsPowerConnected:Z
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2200()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3105
    :catchall_5
    move-exception v10

    :try_start_7
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v10

    .line 3108
    :cond_f
    const-string v10, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 3109
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/AlarmManagerService$PowerSaveReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mAlarmLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/server/AlarmManagerService;->access$1300(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 3110
    const/4 v10, 0x0

    :try_start_8
    # setter for: Lcom/android/server/AlarmManagerService;->mIsPowerConnected:Z
    invoke-static {v10}, Lcom/android/server/AlarmManagerService;->access$2202(Z)Z

    .line 3111
    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 3112
    const-string v10, "AlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "POWER_DISCONNECTED : mIsPowerConnected : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    # getter for: Lcom/android/server/AlarmManagerService;->mIsPowerConnected:Z
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2200()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3111
    :catchall_6
    move-exception v10

    :try_start_9
    monitor-exit v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    throw v10
.end method
