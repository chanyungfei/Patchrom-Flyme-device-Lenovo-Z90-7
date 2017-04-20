.class Lcom/lenovo/AppMonitor$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AppMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/AppMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/AppMonitor;


# direct methods
.method constructor <init>(Lcom/lenovo/AppMonitor;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/lenovo/AppMonitor$SettingsObserver;->this$0:Lcom/lenovo/AppMonitor;

    .line 96
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 97
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    .line 100
    iget-object v1, p0, Lcom/lenovo/AppMonitor$SettingsObserver;->this$0:Lcom/lenovo/AppMonitor;

    iget-object v1, v1, Lcom/lenovo/AppMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 101
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "performance_mode_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 105
    iget-object v1, p0, Lcom/lenovo/AppMonitor$SettingsObserver;->this$0:Lcom/lenovo/AppMonitor;

    invoke-virtual {v1}, Lcom/lenovo/AppMonitor;->updateSettings()V

    .line 106
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 109
    iget-object v0, p0, Lcom/lenovo/AppMonitor$SettingsObserver;->this$0:Lcom/lenovo/AppMonitor;

    invoke-virtual {v0}, Lcom/lenovo/AppMonitor;->updateSettings()V

    .line 110
    return-void
.end method
