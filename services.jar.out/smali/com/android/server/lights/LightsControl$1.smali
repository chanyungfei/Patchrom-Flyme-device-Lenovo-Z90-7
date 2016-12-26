.class Lcom/android/server/lights/LightsControl$1;
.super Landroid/content/BroadcastReceiver;
.source "LightsControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/lights/LightsControl;-><init>(Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/LightsControl;


# direct methods
.method constructor <init>(Lcom/android/server/lights/LightsControl;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/server/lights/LightsControl$1;->this$0:Lcom/android/server/lights/LightsControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 71
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/android/server/lights/LightsControl$1;->this$0:Lcom/android/server/lights/LightsControl;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/lights/LightsControl;->enabledSensor(Z)V
    invoke-static {v0, v1}, Lcom/android/server/lights/LightsControl;->access$100(Lcom/android/server/lights/LightsControl;Z)V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/server/lights/LightsControl$1;->this$0:Lcom/android/server/lights/LightsControl;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/lights/LightsControl;->enabledSensor(Z)V
    invoke-static {v0, v1}, Lcom/android/server/lights/LightsControl;->access$100(Lcom/android/server/lights/LightsControl;Z)V

    goto :goto_0
.end method
