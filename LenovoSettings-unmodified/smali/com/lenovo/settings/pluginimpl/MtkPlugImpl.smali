.class public Lcom/lenovo/settings/pluginimpl/MtkPlugImpl;
.super Ljava/lang/Object;
.source "MtkPlugImpl.java"

# interfaces
.implements Lcom/lenovo/settings/plugin/IMtkPlug;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAction(Landroid/content/IntentFilter;Ljava/lang/String;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/IntentFilter;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 60
    return-void
.end method

.method public addAutoBootPrf(Landroid/preference/PreferenceGroup;)V
    .locals 0
    .param p1, "prefGroup"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 85
    return-void
.end method

.method public addMdmPermCtrlPrf(Landroid/preference/PreferenceGroup;)V
    .locals 0
    .param p1, "prefGroup"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 105
    return-void
.end method

.method public addPermSwitchPrf(Landroid/preference/PreferenceGroup;)V
    .locals 0
    .param p1, "prefGroup"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 80
    return-void
.end method

.method public addPplPrf(Landroid/preference/PreferenceGroup;)V
    .locals 0
    .param p1, "prefGroup"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 95
    return-void
.end method

.method public clearScrapViewsIfNeeded(Landroid/widget/ListView;)V
    .locals 0
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 55
    return-void
.end method

.method public customizeDateTimePreferenceStatus(Landroid/content/Context;Landroid/preference/ListPreference;Landroid/preference/CheckBoxPreference;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "listPreference"    # Landroid/preference/ListPreference;
    .param p3, "checkBoxPreference"    # Landroid/preference/CheckBoxPreference;

    .prologue
    .line 20
    return-void
.end method

.method public customizePreferenceScreen(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "pref"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 25
    return-void
.end method

.method public enablerIMdmPause()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public enablerIMdmResume()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public enablerPermPause()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public enablerPermResume()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public enablerPplPPause()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public enablerPplPResume()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public getConstantStringEXTRA_WAPI_AS_CERTIFICATE_DATA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConstantStringEXTRA_WAPI_AS_CERTIFICATE_NAME()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConstantStringEXTRA_WAPI_USER_CERTIFICATE_DATA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConstantStringEXTRA_WAPI_USER_CERTIFICATE_NAME()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSupportusingVoiceWeak()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public releaseIDateTimeSettingsExt()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public releaseIMdmPermissionControlExt()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public releaseIPermissionControlExt()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public releaseIPplSettingsEntryExt()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    return-void
.end method

.method public updateOpNameFromRec(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 0
    .param p1, "p"    # Landroid/preference/Preference;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 65
    return-void
.end method

.method public updateServiceState(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 0
    .param p1, "p"    # Landroid/preference/Preference;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 70
    return-void
.end method
