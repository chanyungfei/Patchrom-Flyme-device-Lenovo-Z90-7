.class Lcom/android/server/AlarmManagerService$UninstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UninstallReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 3

    .prologue
    .line 2561
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2562
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2564
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2566
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2567
    const-string v2, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2568
    const-string v2, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2569
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2570
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2572
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2573
    .local v1, "sdFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2574
    const-string v2, "android.intent.action.USER_STOPPED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2575
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2576
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 2581
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 2582
    .local v3, "action":Ljava/lang/String;
    const/4 v14, 0x0

    .line 2583
    .local v14, "pkgList":[Ljava/lang/String;
    const-string v18, "android.intent.action.QUERY_PACKAGE_RESTART"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 2584
    const-string v18, "android.intent.extra.PACKAGES"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 2585
    move-object v4, v14

    .local v4, "arr$":[Ljava/lang/String;
    array-length v10, v4

    .local v10, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v10, :cond_1

    aget-object v12, v4, v7

    .line 2586
    .local v12, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 2587
    const/16 v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$UninstallReceiver;->setResultCode(I)V

    .line 2588
    monitor-exit v19

    .line 2679
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v10    # "len$":I
    .end local v12    # "packageName":Ljava/lang/String;
    :goto_1
    return-void

    .line 2585
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v7    # "i$":I
    .restart local v10    # "len$":I
    .restart local v12    # "packageName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2591
    .end local v12    # "packageName":Ljava/lang/String;
    :cond_1
    monitor-exit v19

    goto :goto_1

    .line 2678
    .end local v3    # "action":Ljava/lang/String;
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v10    # "len$":I
    .end local v14    # "pkgList":[Ljava/lang/String;
    :catchall_0
    move-exception v18

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v18

    .line 2592
    .restart local v3    # "action":Ljava/lang/String;
    .restart local v14    # "pkgList":[Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v18, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 2593
    const-string v18, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 2664
    :cond_3
    :goto_2
    if-eqz v14, :cond_e

    array-length v0, v14

    move/from16 v18, v0

    if-lez v18, :cond_e

    .line 2665
    move-object v4, v14

    .restart local v4    # "arr$":[Ljava/lang/String;
    array-length v10, v4

    .restart local v10    # "len$":I
    const/4 v7, 0x0

    .restart local v7    # "i$":I
    :goto_3
    if-ge v7, v10, :cond_e

    aget-object v13, v4, v7

    .line 2666
    .local v13, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/lang/String;)V

    .line 2667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v18

    add-int/lit8 v6, v18, -0x1

    .local v6, "i":I
    :goto_4
    if-ltz v6, :cond_d

    .line 2669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/util/ArrayMap;

    .line 2670
    .local v16, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_4

    .line 2671
    invoke-virtual/range {v16 .. v16}, Landroid/util/ArrayMap;->size()I

    move-result v18

    if-gtz v18, :cond_4

    .line 2672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->removeAt(I)V

    .line 2668
    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 2594
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "i$":I
    .end local v10    # "len$":I
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v16    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :cond_5
    const-string v18, "android.intent.action.USER_STOPPED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 2595
    const-string v18, "android.intent.extra.user_handle"

    const/16 v20, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 2596
    .local v17, "userHandle":I
    if-ltz v17, :cond_3

    .line 2597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService;->removeUserLocked(I)V

    goto/16 :goto_2

    .line 2601
    .end local v17    # "userHandle":I
    :cond_6
    const-string v18, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 2603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    # invokes: Lcom/android/server/AlarmManagerService;->getIntentPKG(Landroid/content/Intent;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/AlarmManagerService;->access$1200(Lcom/android/server/AlarmManagerService;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v12

    .line 2604
    .restart local v12    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/AlarmManagerService;->mAlarmLock:Ljava/lang/Object;
    invoke-static/range {v18 .. v18}, Lcom/android/server/AlarmManagerService;->access$1300(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v20

    monitor-enter v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2605
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/AlarmManagerService;->mAlarmPolicies:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lcom/android/server/AlarmManagerService;->access$1400(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v18

    new-instance v21, Landroid/app/AlarmManager$AlarmPolicy;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v0, v12, v1}, Landroid/app/AlarmManager$AlarmPolicy;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2606
    const-string v18, "AlarmManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "newPolicy for "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " policy is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2607
    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2608
    :try_start_3
    const-string v18, "AlarmManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "ACTION_PACKAGE_ADDED "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 2607
    :catchall_1
    move-exception v18

    :try_start_4
    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v18

    .line 2615
    .end local v12    # "packageName":Ljava/lang/String;
    :cond_7
    const-string v18, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    const-string v18, "android.intent.extra.REPLACING"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 2618
    monitor-exit v19

    goto/16 :goto_1

    .line 2623
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    # invokes: Lcom/android/server/AlarmManagerService;->getIntentPKG(Landroid/content/Intent;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/AlarmManagerService;->access$1200(Lcom/android/server/AlarmManagerService;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v12

    .line 2624
    .restart local v12    # "packageName":Ljava/lang/String;
    const-string v18, "AlarmManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "ACTION_PACKAGE_REMOVED "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/AlarmManagerService;->mAlarmLock:Ljava/lang/Object;
    invoke-static/range {v18 .. v18}, Lcom/android/server/AlarmManagerService;->access$1300(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v20

    monitor-enter v20
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2626
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/AlarmManagerService;->mAlarmPolicies:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lcom/android/server/AlarmManagerService;->access$1400(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_a

    .line 2627
    const-string v18, "AlarmManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "before PACKAGE_REMOVED mAlarmPolicies size:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/AlarmManagerService;->mAlarmPolicies:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/android/server/AlarmManagerService;->access$1400(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/AlarmManagerService;->mAlarmPolicies:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lcom/android/server/AlarmManagerService;->access$1400(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 2629
    .local v8, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/AlarmManager$AlarmPolicy;>;"
    :cond_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_a

    .line 2630
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AlarmManager$AlarmPolicy;

    .line 2631
    .local v11, "p":Landroid/app/AlarmManager$AlarmPolicy;
    iget-object v0, v11, Landroid/app/AlarmManager$AlarmPolicy;->app:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 2632
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 2633
    const-string v18, "AlarmManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "after PACKAGE_REMOVED mAlarmPolicies size:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/AlarmManagerService;->mAlarmPolicies:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/android/server/AlarmManagerService;->access$1400(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2639
    .end local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/AlarmManager$AlarmPolicy;>;"
    .end local v11    # "p":Landroid/app/AlarmManager$AlarmPolicy;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/AlarmManagerService;->mAlarmStats:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lcom/android/server/AlarmManagerService;->access$1500(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_c

    .line 2640
    const-string v18, "AlarmManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "before PACKAGE_REMOVED mAlarmStats size:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/AlarmManagerService;->mAlarmStats:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/android/server/AlarmManagerService;->access$1500(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/AlarmManagerService;->mAlarmStats:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lcom/android/server/AlarmManagerService;->access$1500(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 2642
    .local v9, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/AlarmManager$AlarmStats;>;"
    :cond_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 2643
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/AlarmManager$AlarmStats;

    .line 2644
    .local v15, "s":Landroid/app/AlarmManager$AlarmStats;
    iget-object v0, v15, Landroid/app/AlarmManager$AlarmStats;->app:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 2645
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    .line 2646
    const-string v18, "AlarmManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "after PACKAGE_REMOVED mAlarmStats size:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/AlarmManagerService;->mAlarmStats:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/android/server/AlarmManagerService;->access$1500(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    .end local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/AlarmManager$AlarmStats;>;"
    .end local v15    # "s":Landroid/app/AlarmManager$AlarmStats;
    :cond_c
    monitor-exit v20
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2656
    :try_start_7
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 2657
    .local v5, "data":Landroid/net/Uri;
    if-eqz v5, :cond_3

    .line 2658
    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v13

    .line 2659
    .restart local v13    # "pkg":Ljava/lang/String;
    if-eqz v13, :cond_3

    .line 2660
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v14, v0, [Ljava/lang/String;

    .end local v14    # "pkgList":[Ljava/lang/String;
    const/16 v18, 0x0

    aput-object v13, v14, v18
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .restart local v14    # "pkgList":[Ljava/lang/String;
    goto/16 :goto_2

    .line 2651
    .end local v5    # "data":Landroid/net/Uri;
    .end local v13    # "pkg":Ljava/lang/String;
    :catchall_2
    move-exception v18

    :try_start_8
    monitor-exit v20
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v18

    .line 2665
    .end local v12    # "packageName":Ljava/lang/String;
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v6    # "i":I
    .restart local v7    # "i$":I
    .restart local v10    # "len$":I
    .restart local v13    # "pkg":Ljava/lang/String;
    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 2678
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "i$":I
    .end local v10    # "len$":I
    .end local v13    # "pkg":Ljava/lang/String;
    :cond_e
    monitor-exit v19
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1
.end method
