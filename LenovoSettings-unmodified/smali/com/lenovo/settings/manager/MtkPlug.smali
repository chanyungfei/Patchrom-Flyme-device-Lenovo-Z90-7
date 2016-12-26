.class public Lcom/lenovo/settings/manager/MtkPlug;
.super Ljava/lang/Object;
.source "MtkPlug.java"

# interfaces
.implements Lcom/lenovo/settings/plugin/IMtkPlug;


# static fields
.field private static mInstance:Lcom/lenovo/settings/manager/MtkPlug;

.field private static mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    sput-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mInstance:Lcom/lenovo/settings/manager/MtkPlug;

    .line 17
    sput-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkPlug;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mInstance:Lcom/lenovo/settings/manager/MtkPlug;

    if-eqz v0, :cond_0

    .line 21
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mInstance:Lcom/lenovo/settings/manager/MtkPlug;

    .line 25
    :goto_0
    return-object v0

    .line 23
    :cond_0
    new-instance v0, Lcom/lenovo/settings/manager/MtkPlug;

    invoke-direct {v0}, Lcom/lenovo/settings/manager/MtkPlug;-><init>()V

    sput-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mInstance:Lcom/lenovo/settings/manager/MtkPlug;

    .line 24
    invoke-static {p0}, Lcom/lenovo/settings/manager/PluginManager;->getMtkPlug(Landroid/content/Context;)Lcom/lenovo/settings/plugin/IMtkPlug;

    move-result-object v0

    sput-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    .line 25
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mInstance:Lcom/lenovo/settings/manager/MtkPlug;

    goto :goto_0
.end method


# virtual methods
.method public addAction(Landroid/content/IntentFilter;Ljava/lang/String;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/IntentFilter;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 75
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0, p1, p2}, Lcom/lenovo/settings/plugin/IMtkPlug;->addAction(Landroid/content/IntentFilter;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public addAutoBootPrf(Landroid/preference/PreferenceGroup;)V
    .locals 1
    .param p1, "prefGroup"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 101
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0, p1}, Lcom/lenovo/settings/plugin/IMtkPlug;->addAutoBootPrf(Landroid/preference/PreferenceGroup;)V

    .line 102
    return-void
.end method

.method public addMdmPermCtrlPrf(Landroid/preference/PreferenceGroup;)V
    .locals 1
    .param p1, "prefGroup"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 122
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0, p1}, Lcom/lenovo/settings/plugin/IMtkPlug;->addMdmPermCtrlPrf(Landroid/preference/PreferenceGroup;)V

    .line 123
    return-void
.end method

.method public addPermSwitchPrf(Landroid/preference/PreferenceGroup;)V
    .locals 1
    .param p1, "prefGroup"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 96
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0, p1}, Lcom/lenovo/settings/plugin/IMtkPlug;->addPermSwitchPrf(Landroid/preference/PreferenceGroup;)V

    .line 97
    return-void
.end method

.method public addPplPrf(Landroid/preference/PreferenceGroup;)V
    .locals 1
    .param p1, "prefGroup"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 111
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0, p1}, Lcom/lenovo/settings/plugin/IMtkPlug;->addPplPrf(Landroid/preference/PreferenceGroup;)V

    .line 113
    return-void
.end method

.method public clearScrapViewsIfNeeded(Landroid/widget/ListView;)V
    .locals 1
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 69
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0, p1}, Lcom/lenovo/settings/plugin/IMtkPlug;->clearScrapViewsIfNeeded(Landroid/widget/ListView;)V

    .line 71
    return-void
.end method

.method public customizeDateTimePreferenceStatus(Landroid/content/Context;Landroid/preference/ListPreference;Landroid/preference/CheckBoxPreference;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "listPreference"    # Landroid/preference/ListPreference;
    .param p3, "checkBoxPreference"    # Landroid/preference/CheckBoxPreference;

    .prologue
    .line 31
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0, p1, p2, p3}, Lcom/lenovo/settings/plugin/IMtkPlug;->customizeDateTimePreferenceStatus(Landroid/content/Context;Landroid/preference/ListPreference;Landroid/preference/CheckBoxPreference;)V

    .line 33
    return-void
.end method

.method public customizePreferenceScreen(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "pref"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 37
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0, p1, p2}, Lcom/lenovo/settings/plugin/IMtkPlug;->customizePreferenceScreen(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 39
    return-void
.end method

.method public enablerIMdmPause()V
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IMtkPlug;->enablerIMdmPause()V

    .line 158
    return-void
.end method

.method public enablerIMdmResume()V
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IMtkPlug;->enablerIMdmResume()V

    .line 128
    return-void
.end method

.method public enablerPermPause()V
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IMtkPlug;->enablerPermPause()V

    .line 153
    return-void
.end method

.method public enablerPermResume()V
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IMtkPlug;->enablerPermResume()V

    .line 107
    return-void
.end method

.method public enablerPplPPause()V
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IMtkPlug;->enablerPplPPause()V

    .line 148
    return-void
.end method

.method public enablerPplPResume()V
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IMtkPlug;->enablerPplPResume()V

    .line 118
    return-void
.end method

.method public getConstantStringEXTRA_WAPI_AS_CERTIFICATE_DATA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IMtkPlug;->getConstantStringEXTRA_WAPI_AS_CERTIFICATE_DATA()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConstantStringEXTRA_WAPI_AS_CERTIFICATE_NAME()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IMtkPlug;->getConstantStringEXTRA_WAPI_AS_CERTIFICATE_NAME()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConstantStringEXTRA_WAPI_USER_CERTIFICATE_DATA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IMtkPlug;->getConstantStringEXTRA_WAPI_USER_CERTIFICATE_DATA()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConstantStringEXTRA_WAPI_USER_CERTIFICATE_NAME()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IMtkPlug;->getConstantStringEXTRA_WAPI_USER_CERTIFICATE_NAME()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSupportusingVoiceWeak()Z
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IMtkPlug;->isSupportusingVoiceWeak()Z

    move-result v0

    return v0
.end method

.method public releaseIDateTimeSettingsExt()V
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IMtkPlug;->releaseIDateTimeSettingsExt()V

    .line 45
    return-void
.end method

.method public releaseIMdmPermissionControlExt()V
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IMtkPlug;->releaseIMdmPermissionControlExt()V

    .line 143
    return-void
.end method

.method public releaseIPermissionControlExt()V
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IMtkPlug;->releaseIPermissionControlExt()V

    .line 138
    return-void
.end method

.method public releaseIPplSettingsEntryExt()V
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IMtkPlug;->releaseIPplSettingsEntryExt()V

    .line 133
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 162
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0, p1}, Lcom/lenovo/settings/plugin/IMtkPlug;->setContext(Landroid/content/Context;)V

    .line 163
    return-void
.end method

.method public updateOpNameFromRec(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 1
    .param p1, "p"    # Landroid/preference/Preference;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 80
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0, p1, p2}, Lcom/lenovo/settings/plugin/IMtkPlug;->updateOpNameFromRec(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public updateServiceState(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 1
    .param p1, "p"    # Landroid/preference/Preference;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 86
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0, p1, p2}, Lcom/lenovo/settings/plugin/IMtkPlug;->updateServiceState(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 87
    return-void
.end method
