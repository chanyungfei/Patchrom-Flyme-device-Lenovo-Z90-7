.class Lcom/android/settings/WiFiSwitchEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "WiFiSwitchEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/WiFiSwitchEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/WiFiSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/WiFiSwitchEnabler;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/settings/WiFiSwitchEnabler$1;->this$0:Lcom/android/settings/WiFiSwitchEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 53
    const-string v1, "wifi_switch_state"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 55
    .local v0, "state":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive, Handle WIFI_SWITCH_STATE_CHANGED_ACTION, WiFi Switch Enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/settings/WiFiSwitchEnabler;->MSG_DEBUG(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/settings/WiFiSwitchEnabler;->access$000(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/android/settings/WiFiSwitchEnabler$1;->this$0:Lcom/android/settings/WiFiSwitchEnabler;

    # invokes: Lcom/android/settings/WiFiSwitchEnabler;->handleStateChanged(I)V
    invoke-static {v1, v0}, Lcom/android/settings/WiFiSwitchEnabler;->access$100(Lcom/android/settings/WiFiSwitchEnabler;I)V

    .line 59
    return-void
.end method
