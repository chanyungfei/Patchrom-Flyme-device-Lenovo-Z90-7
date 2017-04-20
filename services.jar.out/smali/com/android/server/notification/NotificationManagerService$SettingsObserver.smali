.class final Lcom/android/server/notification/NotificationManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 851
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 852
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 848
    const-string v0, "notification_light_pulse"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    .line 853
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 856
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 857
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 860
    const-string v1, "unread_email_alert_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 862
    const-string v1, "unread_sms_alert_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 864
    const-string v1, "missed_call_alert_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 866
    const-string v1, "other_app_alert_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 869
    const-string v1, "colorlight_shutdown_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 871
    const-string v1, "unread_weixin_alter_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 873
    const-string v1, "unread_qq_alter_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 875
    const-string v1, "unread_weibo_alter_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 878
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 879
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 882
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 883
    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 886
    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v12}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 888
    .local v4, "resolver":Landroid/content/ContentResolver;
    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mLedLightEnabled:Z
    invoke-static {v12}, Lcom/android/server/notification/NotificationManagerService;->access$1600(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 889
    const-string v12, "missed_call_alert_enabled"

    invoke-static {v4, v12, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_8

    move v1, v10

    .line 891
    .local v1, "missedCallAlertEnabled":Z
    :goto_0
    const-string v12, "unread_email_alert_enabled"

    invoke-static {v4, v12, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_9

    move v5, v10

    .line 893
    .local v5, "unreadEmailAlertEnabled":Z
    :goto_1
    const-string v12, "unread_sms_alert_enabled"

    invoke-static {v4, v12, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_a

    move v7, v10

    .line 895
    .local v7, "unreadSmsAlertEnabled":Z
    :goto_2
    const-string v12, "other_app_alert_enabled"

    invoke-static {v4, v12, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_b

    move v2, v10

    .line 898
    .local v2, "otherAppAlertEnabled":Z
    :goto_3
    const-string v12, "colorlight_shutdown_enabled"

    invoke-static {v4, v12, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_c

    move v0, v10

    .line 900
    .local v0, "colorlightShutdownEnabled":Z
    :goto_4
    const-string v12, "unread_weixin_alter_enabled"

    invoke-static {v4, v12, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_d

    move v9, v10

    .line 902
    .local v9, "unreadWeixinAlertEnabled":Z
    :goto_5
    const-string v12, "unread_qq_alter_enabled"

    invoke-static {v4, v12, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_e

    move v6, v10

    .line 904
    .local v6, "unreadQQAlertEnabled":Z
    :goto_6
    const-string v12, "unread_weibo_alter_enabled"

    invoke-static {v4, v12, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_f

    move v8, v10

    .line 907
    .local v8, "unreadWeiboAlertEnabled":Z
    :goto_7
    const-string v10, "NotificationService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Led-Light: missedCallAlertEnabled: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " unreadSmsAlertEnabled: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mMissedCallAlertEnabled:Z
    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v10

    if-eq v10, v1, :cond_0

    .line 909
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mMissedCallAlertEnabled:Z
    invoke-static {v10, v1}, Lcom/android/server/notification/NotificationManagerService;->access$1702(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 910
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)V

    .line 912
    :cond_0
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mUnreadEmailAlertEnabled:Z
    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->access$1800(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v10

    if-eq v10, v5, :cond_1

    .line 913
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mUnreadEmailAlertEnabled:Z
    invoke-static {v10, v5}, Lcom/android/server/notification/NotificationManagerService;->access$1802(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 914
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)V

    .line 916
    :cond_1
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mUnreadSmsAlertEnabled:Z
    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->access$1900(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v10

    if-eq v10, v7, :cond_2

    .line 917
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mUnreadSmsAlertEnabled:Z
    invoke-static {v10, v7}, Lcom/android/server/notification/NotificationManagerService;->access$1902(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 918
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)V

    .line 920
    :cond_2
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOtherAppAlertEnabled:Z
    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->access$2000(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v10

    if-eq v10, v2, :cond_3

    .line 921
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mOtherAppAlertEnabled:Z
    invoke-static {v10, v2}, Lcom/android/server/notification/NotificationManagerService;->access$2002(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 922
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)V

    .line 925
    :cond_3
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mColorLightShutdown:Z
    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->access$2100(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v10

    if-eq v10, v0, :cond_4

    .line 926
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mColorLightShutdown:Z
    invoke-static {v10, v0}, Lcom/android/server/notification/NotificationManagerService;->access$2102(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 927
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)V

    .line 929
    :cond_4
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mUnreadWeixinAlertEnabled:Z
    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->access$2200(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v10

    if-eq v10, v9, :cond_5

    .line 930
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mUnreadWeixinAlertEnabled:Z
    invoke-static {v10, v9}, Lcom/android/server/notification/NotificationManagerService;->access$2202(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 931
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)V

    .line 933
    :cond_5
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mUnreadQQAlertEnabled:Z
    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->access$2300(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v10

    if-eq v10, v6, :cond_6

    .line 934
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mUnreadQQAlertEnabled:Z
    invoke-static {v10, v6}, Lcom/android/server/notification/NotificationManagerService;->access$2302(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 935
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)V

    .line 937
    :cond_6
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mUnreadWeiboAlertEnabled:Z
    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->access$2400(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v10

    if-eq v10, v8, :cond_7

    .line 938
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mUnreadWeiboAlertEnabled:Z
    invoke-static {v10, v8}, Lcom/android/server/notification/NotificationManagerService;->access$2402(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 939
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)V

    .line 951
    .end local v0    # "colorlightShutdownEnabled":Z
    .end local v1    # "missedCallAlertEnabled":Z
    .end local v2    # "otherAppAlertEnabled":Z
    .end local v5    # "unreadEmailAlertEnabled":Z
    .end local v6    # "unreadQQAlertEnabled":Z
    .end local v7    # "unreadSmsAlertEnabled":Z
    .end local v8    # "unreadWeiboAlertEnabled":Z
    .end local v9    # "unreadWeixinAlertEnabled":Z
    :cond_7
    :goto_8
    return-void

    :cond_8
    move v1, v11

    .line 889
    goto/16 :goto_0

    .restart local v1    # "missedCallAlertEnabled":Z
    :cond_9
    move v5, v11

    .line 891
    goto/16 :goto_1

    .restart local v5    # "unreadEmailAlertEnabled":Z
    :cond_a
    move v7, v11

    .line 893
    goto/16 :goto_2

    .restart local v7    # "unreadSmsAlertEnabled":Z
    :cond_b
    move v2, v11

    .line 895
    goto/16 :goto_3

    .restart local v2    # "otherAppAlertEnabled":Z
    :cond_c
    move v0, v11

    .line 898
    goto/16 :goto_4

    .restart local v0    # "colorlightShutdownEnabled":Z
    :cond_d
    move v9, v11

    .line 900
    goto/16 :goto_5

    .restart local v9    # "unreadWeixinAlertEnabled":Z
    :cond_e
    move v6, v11

    .line 902
    goto/16 :goto_6

    .restart local v6    # "unreadQQAlertEnabled":Z
    :cond_f
    move v8, v11

    .line 904
    goto/16 :goto_7

    .line 942
    .end local v0    # "colorlightShutdownEnabled":Z
    .end local v1    # "missedCallAlertEnabled":Z
    .end local v2    # "otherAppAlertEnabled":Z
    .end local v5    # "unreadEmailAlertEnabled":Z
    .end local v6    # "unreadQQAlertEnabled":Z
    .end local v7    # "unreadSmsAlertEnabled":Z
    .end local v9    # "unreadWeixinAlertEnabled":Z
    :cond_10
    if-eqz p1, :cond_11

    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    invoke-virtual {v12, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 943
    :cond_11
    const-string v12, "notification_light_pulse"

    invoke-static {v4, v12, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_12

    move v3, v10

    .line 945
    .local v3, "pulseEnabled":Z
    :goto_9
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z
    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->access$2500(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v10

    if-eq v10, v3, :cond_7

    .line 946
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z
    invoke-static {v10, v3}, Lcom/android/server/notification/NotificationManagerService;->access$2502(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 947
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)V

    goto :goto_8

    .end local v3    # "pulseEnabled":Z
    :cond_12
    move v3, v11

    .line 943
    goto :goto_9
.end method
