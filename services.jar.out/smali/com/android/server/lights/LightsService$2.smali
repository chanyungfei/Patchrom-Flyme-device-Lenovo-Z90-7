.class Lcom/android/server/lights/LightsService$2;
.super Landroid/os/Handler;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method constructor <init>(Lcom/android/server/lights/LightsService;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/server/lights/LightsService$2;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 173
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_2

    .line 175
    :try_start_0
    iget-object v2, p0, Lcom/android/server/lights/LightsService$2;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->lightControl:Lcom/android/server/power/LightControl;
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$300(Lcom/android/server/lights/LightsService;)Lcom/android/server/power/LightControl;

    move-result-object v2

    if-nez v2, :cond_0

    .line 176
    iget-object v2, p0, Lcom/android/server/lights/LightsService$2;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {}, Lcom/android/server/power/LightControl;->getInstance()Lcom/android/server/power/LightControl;

    move-result-object v3

    # setter for: Lcom/android/server/lights/LightsService;->lightControl:Lcom/android/server/power/LightControl;
    invoke-static {v2, v3}, Lcom/android/server/lights/LightsService;->access$302(Lcom/android/server/lights/LightsService;Lcom/android/server/power/LightControl;)Lcom/android/server/power/LightControl;

    .line 178
    :cond_0
    iget-object v2, p0, Lcom/android/server/lights/LightsService$2;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->lightControl:Lcom/android/server/power/LightControl;
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$300(Lcom/android/server/lights/LightsService;)Lcom/android/server/power/LightControl;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 179
    iget-object v2, p0, Lcom/android/server/lights/LightsService$2;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->lightControl:Lcom/android/server/power/LightControl;
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$300(Lcom/android/server/lights/LightsService;)Lcom/android/server/power/LightControl;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/server/power/LightControl;->controlLight(Z)V

    .line 191
    :goto_0
    return-void

    .line 181
    :cond_1
    const-string v2, "LightsService"

    const-string v3, "lightControl is null "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 187
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/lights/LightsService$LightImpl;

    .line 188
    .local v1, "light":Lcom/android/server/lights/LightsService$LightImpl;
    # invokes: Lcom/android/server/lights/LightsService$LightImpl;->stopFlashing()V
    invoke-static {v1}, Lcom/android/server/lights/LightsService$LightImpl;->access$400(Lcom/android/server/lights/LightsService$LightImpl;)V

    goto :goto_0
.end method
