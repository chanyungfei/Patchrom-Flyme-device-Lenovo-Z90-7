.class final Lcom/android/server/BatteryService$Led;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Led"
.end annotation


# instance fields
.field private final mBatteryFullARGB:I

.field private final mBatteryLedOff:I

.field private final mBatteryLedOn:I

.field private final mBatteryLight:Lcom/android/server/lights/Light;

.field private final mBatteryLowARGB:I

.field private final mBatteryMediumARGB:I

.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "lights"    # Lcom/android/server/lights/LightsManager;

    .prologue
    .line 786
    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 787
    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    .line 789
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:integer@config_notificationsBatteryLowARGB#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    .line 791
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:integer@config_notificationsBatteryMediumARGB#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    .line 793
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:integer@config_notificationsBatteryFullARGB#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    .line 795
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:integer@config_notificationsBatteryLedOn#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    .line 797
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:integer@config_notificationsBatteryLedOff#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    .line 799
    return-void
.end method


# virtual methods
.method public updateLightsLocked()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    .line 805
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v2

    iget v0, v2, Landroid/os/BatteryProperties;->batteryLevel:I

    .line 806
    .local v0, "level":I
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v2

    iget v1, v2, Landroid/os/BatteryProperties;->batteryStatus:I

    .line 808
    .local v1, "status":I
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$500()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Led-Light: level: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLedLightEnabled:Z
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$900(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 810
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$1000(Lcom/android/server/BatteryService;)I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 811
    if-ne v1, v5, :cond_0

    .line 882
    :cond_0
    :goto_0
    return-void

    .line 819
    :cond_1
    if-eq v1, v5, :cond_2

    if-ne v1, v6, :cond_5

    .line 821
    :cond_2
    if-eq v1, v6, :cond_3

    const/16 v2, 0x5a

    if-lt v0, v2, :cond_4

    .line 823
    :cond_3
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setColor(I)V

    goto :goto_0

    .line 826
    :cond_4
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setColor(I)V

    goto :goto_0

    .line 830
    :cond_5
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    goto :goto_0

    .line 833
    :cond_6
    packed-switch v1, :pswitch_data_0

    .line 876
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$500()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Led-Light: unknown battery status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    goto :goto_0

    .line 835
    :pswitch_0
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Led-Light: BATTERY_STATUS_UNKNOWN"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 838
    :pswitch_1
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Led-Light: BATTERY_STATUS_NOT_CHARGING"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 841
    :pswitch_2
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Led-Light: BATTERY_STATUS_DISCHARGING"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    goto :goto_0

    .line 857
    :pswitch_3
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Led-Light: BATTERY_STATUS_CHARGING"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    const/16 v2, 0x64

    if-ge v0, v2, :cond_7

    .line 859
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    const/high16 v3, 0xff0000

    const/4 v4, 0x4

    iget v5, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    iget v6, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_0

    .line 864
    :cond_7
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    goto/16 :goto_0

    .line 872
    :pswitch_4
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    .line 873
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Led-Light: BATTERY_STATUS_FULL TurnOff"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 833
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method
