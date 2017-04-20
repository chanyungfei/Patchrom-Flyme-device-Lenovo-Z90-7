.class final Lcom/android/server/power/LightControl$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "LightControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/LightControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/LightControl;


# direct methods
.method public constructor <init>(Lcom/android/server/power/LightControl;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/server/power/LightControl$SettingsObserver;->this$0:Lcom/android/server/power/LightControl;

    .line 210
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 211
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/server/power/LightControl$SettingsObserver;->this$0:Lcom/android/server/power/LightControl;

    invoke-virtual {v0}, Lcom/android/server/power/LightControl;->handleSettingsChangedLocked()V

    .line 216
    return-void
.end method
