.class Lcom/android/server/power/LightControl$1;
.super Landroid/os/Handler;
.source "LightControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/LightControl;-><init>(Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/LightControl;


# direct methods
.method constructor <init>(Lcom/android/server/power/LightControl;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/server/power/LightControl$1;->this$0:Lcom/android/server/power/LightControl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 123
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_2

    .line 124
    const-string v0, "LightControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLightSensorValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/LightControl$1;->this$0:Lcom/android/server/power/LightControl;

    # getter for: Lcom/android/server/power/LightControl;->mLightSensorValue:I
    invoke-static {v2}, Lcom/android/server/power/LightControl;->access$000(Lcom/android/server/power/LightControl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mPSensorValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/LightControl$1;->this$0:Lcom/android/server/power/LightControl;

    # getter for: Lcom/android/server/power/LightControl;->mPSensorValue:I
    invoke-static {v2}, Lcom/android/server/power/LightControl;->access$100(Lcom/android/server/power/LightControl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/android/server/power/LightControl$1;->this$0:Lcom/android/server/power/LightControl;

    # getter for: Lcom/android/server/power/LightControl;->mLightSensorValue:I
    invoke-static {v0}, Lcom/android/server/power/LightControl;->access$000(Lcom/android/server/power/LightControl;)I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/power/LightControl$1;->this$0:Lcom/android/server/power/LightControl;

    # getter for: Lcom/android/server/power/LightControl;->mLightSensorValue:I
    invoke-static {v0}, Lcom/android/server/power/LightControl;->access$000(Lcom/android/server/power/LightControl;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/LightControl$1;->this$0:Lcom/android/server/power/LightControl;

    # getter for: Lcom/android/server/power/LightControl;->mPSensorValue:I
    invoke-static {v0}, Lcom/android/server/power/LightControl;->access$100(Lcom/android/server/power/LightControl;)I

    move-result v0

    if-lez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/server/power/LightControl$1;->this$0:Lcom/android/server/power/LightControl;

    # setter for: Lcom/android/server/power/LightControl;->isDark:Z
    invoke-static {v0, v4}, Lcom/android/server/power/LightControl;->access$202(Lcom/android/server/power/LightControl;Z)Z

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/LightControl$1;->this$0:Lcom/android/server/power/LightControl;

    invoke-virtual {v0, v3}, Lcom/android/server/power/LightControl;->controlLight(Z)V

    .line 134
    :cond_1
    :goto_0
    return-void

    .line 131
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_1

    .line 132
    iget-object v0, p0, Lcom/android/server/power/LightControl$1;->this$0:Lcom/android/server/power/LightControl;

    # getter for: Lcom/android/server/power/LightControl;->mButtonLight:Lcom/android/server/lights/Light;
    invoke-static {v0}, Lcom/android/server/power/LightControl;->access$300(Lcom/android/server/power/LightControl;)Lcom/android/server/lights/Light;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/lights/Light;->setBrightness(I)V

    goto :goto_0
.end method
