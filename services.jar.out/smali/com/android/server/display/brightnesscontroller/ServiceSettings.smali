.class public Lcom/android/server/display/brightnesscontroller/ServiceSettings;
.super Ljava/lang/Object;
.source "ServiceSettings.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSettingsCache:Lcom/android/server/display/brightnesscontroller/SettingsCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/android/server/display/brightnesscontroller/ServiceSettings;->mContext:Landroid/content/Context;

    .line 14
    new-instance v0, Lcom/android/server/display/brightnesscontroller/SettingsCache;

    invoke-direct {v0}, Lcom/android/server/display/brightnesscontroller/SettingsCache;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/ServiceSettings;->mSettingsCache:Lcom/android/server/display/brightnesscontroller/SettingsCache;

    .line 15
    return-void
.end method


# virtual methods
.method public getProfileCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/ServiceSettings;->mSettingsCache:Lcom/android/server/display/brightnesscontroller/SettingsCache;

    invoke-virtual {v0}, Lcom/android/server/display/brightnesscontroller/SettingsCache;->getProfileCount()I

    move-result v0

    return v0
.end method

.method public getProfileIndex()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/ServiceSettings;->mSettingsCache:Lcom/android/server/display/brightnesscontroller/SettingsCache;

    invoke-virtual {v0}, Lcom/android/server/display/brightnesscontroller/SettingsCache;->getProfileIndex()I

    move-result v0

    return v0
.end method

.method public getSettingsCache()Lcom/android/server/display/brightnesscontroller/SettingsCache;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/ServiceSettings;->mSettingsCache:Lcom/android/server/display/brightnesscontroller/SettingsCache;

    return-object v0
.end method

.method public get_Maximum_Brightness_Value()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/ServiceSettings;->mSettingsCache:Lcom/android/server/display/brightnesscontroller/SettingsCache;

    invoke-virtual {v0}, Lcom/android/server/display/brightnesscontroller/SettingsCache;->get_Maximum_Brightness_Value()I

    move-result v0

    return v0
.end method

.method public get_Minimum_Brightness_Value()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/ServiceSettings;->mSettingsCache:Lcom/android/server/display/brightnesscontroller/SettingsCache;

    invoke-virtual {v0}, Lcom/android/server/display/brightnesscontroller/SettingsCache;->get_Minimum_Brightness_Value()I

    move-result v0

    return v0
.end method

.method public resetSettings()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/ServiceSettings;->mSettingsCache:Lcom/android/server/display/brightnesscontroller/SettingsCache;

    invoke-virtual {v0}, Lcom/android/server/display/brightnesscontroller/SettingsCache;->resetSettings()V

    .line 23
    return-void
.end method

.method public setProfileIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 26
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/ServiceSettings;->mSettingsCache:Lcom/android/server/display/brightnesscontroller/SettingsCache;

    invoke-virtual {v0}, Lcom/android/server/display/brightnesscontroller/SettingsCache;->getProfileCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/ServiceSettings;->mSettingsCache:Lcom/android/server/display/brightnesscontroller/SettingsCache;

    invoke-virtual {v0, p1}, Lcom/android/server/display/brightnesscontroller/SettingsCache;->setProfileIndex(I)V

    .line 29
    :cond_0
    return-void
.end method
