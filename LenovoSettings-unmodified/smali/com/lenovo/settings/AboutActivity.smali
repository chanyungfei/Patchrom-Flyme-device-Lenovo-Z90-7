.class public Lcom/lenovo/settings/AboutActivity;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "AboutActivity.java"

# interfaces
.implements Lcom/lenovo/settings/search/Indexable;


# static fields
.field private static final DIALOG_LENOVO_EXP:I = 0x1

.field private static final KEY_BUILD_NUMBER:Ljava/lang/String; = "build_number"

.field private static final KEY_CONTAINER:Ljava/lang/String; = "container"

.field private static final KEY_COPYRIGHT:Ljava/lang/String; = "copyright"

.field private static final KEY_LENOVO_EXP:Ljava/lang/String; = "lenovo_exp_checkbox"

.field private static final KEY_LICENSE:Ljava/lang/String; = "license"

.field private static final KEY_PHONE_INFO:Ljava/lang/String; = "phone_info_key"

.field private static final KEY_PLAYERS_TUTORIAL:Ljava/lang/String; = "setting_wizard"

.field private static final KEY_REGULATORY_INFO:Ljava/lang/String; = "regulatory_info"

.field private static final KEY_SAFETY_INFORMATION:Ljava/lang/String; = "security_information"

.field private static final KEY_SELINUX_STATUS:Ljava/lang/String; = "selinux_status"

.field private static final KEY_TEAM:Ljava/lang/String; = "team"

.field private static final KEY_TERMS:Ljava/lang/String; = "terms"

.field private static final LOG_TAG:Ljava/lang/String; = "AboutActivity"

.field private static final PERSIST_BACKGROUND_DATA_ENABLE:Ljava/lang/String; = "persist.backgrounddata.enable"

.field private static final PROPERTY_SELINUX_STATUS:Ljava/lang/String; = "ro.build.selinux"

.field private static final PROPERTY_URL_SAFETYLEGAL:Ljava/lang/String; = "ro.url.safetylegal"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;

.field static final TAPS_TO_BE_A_DEVELOPER:I = 0x7


# instance fields
.field mDevHitCountdown:I

.field mDevHitToast:Landroid/widget/Toast;

.field mHits:[J

.field private mLenovoExpCheck:Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;

.field private savedPlayersTutorialPref:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 459
    new-instance v0, Lcom/lenovo/settings/AboutActivity$6;

    invoke-direct {v0}, Lcom/lenovo/settings/AboutActivity$6;-><init>()V

    sput-object v0, Lcom/lenovo/settings/AboutActivity;->SEARCH_INDEX_DATA_PROVIDER:Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 128
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/lenovo/settings/AboutActivity;->mHits:[J

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/settings/AboutActivity;)Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/AboutActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lenovo/settings/AboutActivity;->mLenovoExpCheck:Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;

    return-object v0
.end method

.method private checkSecurityInfoAndShowDialog(Z)V
    .locals 8
    .param p1, "check"    # Z

    .prologue
    .line 375
    const-string v0, "com.android.settings.DeviceInfoSettings.safety_information"

    .line 376
    .local v0, "SAVE_PREFERENCE":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lenovo/settings/AboutActivity;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 377
    .local v3, "mPrefs":Landroid/content/SharedPreferences;
    const-string v5, "com.android.settings.DeviceInfoSettings.safety_information"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 378
    .local v4, "persist":Z
    if-eqz p1, :cond_0

    if-eqz v4, :cond_0

    .line 399
    :goto_0
    return-void

    .line 381
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/lenovo/settings/AboutActivity;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 382
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0c011f

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c011e

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    new-instance v7, Lcom/lenovo/settings/AboutActivity$3;

    invoke-direct {v7, p0, v3}, Lcom/lenovo/settings/AboutActivity$3;-><init>(Lcom/lenovo/settings/AboutActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/lenovo/settings/AboutActivity$2;

    invoke-direct {v6, p0, v3}, Lcom/lenovo/settings/AboutActivity$2;-><init>(Lcom/lenovo/settings/AboutActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 398
    .local v1, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private removePreferenceIfExist(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 437
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/AboutActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/lenovo/settings/AboutActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/lenovo/settings/AboutActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 440
    :cond_0
    return-void
.end method

.method private removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "preferenceGroup"    # Landroid/preference/PreferenceGroup;
    .param p2, "preference"    # Ljava/lang/String;
    .param p3, "property"    # Ljava/lang/String;

    .prologue
    .line 362
    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/lenovo/settings/AboutActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "AboutActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' missing and no \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' preference"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeUnnecessaryPreference()V
    .locals 1

    .prologue
    .line 433
    const-string v0, "phone_info_key"

    invoke-direct {p0, v0}, Lcom/lenovo/settings/AboutActivity;->removePreferenceIfExist(Ljava/lang/String;)V

    .line 434
    return-void
.end method

.method private setStringSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 354
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/AboutActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :goto_0
    return-void

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/AboutActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/settings/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c043f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const v1, 0x7f0c07bf

    .line 138
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 140
    const v0, 0x7f06001d

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/AboutActivity;->addPreferencesFromResource(I)V

    .line 144
    const-string v0, "build_number"

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/AboutActivity;->protectByRestrictions(Ljava/lang/String;)V

    .line 146
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 147
    invoke-virtual {p0}, Lcom/lenovo/settings/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0b69

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 148
    .local v12, "status":Ljava/lang/String;
    const-string v0, "selinux_status"

    invoke-direct {p0, v0, v12}, Lcom/lenovo/settings/AboutActivity;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .end local v12    # "status":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/settings/AboutActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/TelephonyPlugin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/manager/TelephonyPlugin;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    const-string v0, "AboutActivity"

    const-string v2, "DeviceInfoSettings onCreate isMultiSimEnabled is true"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v0, "status_info"

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/AboutActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.deviceinfo.msim.MSimStatus"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/settings/AboutActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "selinux_status"

    const-string v3, "ro.build.selinux"

    invoke-direct {p0, v0, v2, v3}, Lcom/lenovo/settings/AboutActivity;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/lenovo/settings/AboutActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "safetylegal"

    const-string v3, "ro.url.safetylegal"

    invoke-direct {p0, v0, v2, v3}, Lcom/lenovo/settings/AboutActivity;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v0, "ro.lenovo.region"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "row"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 172
    const-string v0, "regulatory_info"

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/AboutActivity;->removePreference(Ljava/lang/String;)V

    .line 176
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lenovo/settings/AboutActivity;->checkSecurityInfoAndShowDialog(Z)V

    .line 180
    :cond_2
    const-string v0, "lenovo_exp_checkbox"

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/AboutActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;

    iput-object v0, p0, Lcom/lenovo/settings/AboutActivity;->mLenovoExpCheck:Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;

    .line 183
    iget-object v0, p0, Lcom/lenovo/settings/AboutActivity;->mLenovoExpCheck:Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;->setHyperLinkText(Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isCmcc()Z

    move-result v0

    if-nez v0, :cond_6

    .line 188
    iget-object v0, p0, Lcom/lenovo/settings/AboutActivity;->mLenovoExpCheck:Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;

    new-instance v2, Lcom/lenovo/settings/AboutActivity$1;

    invoke-direct {v2, p0}, Lcom/lenovo/settings/AboutActivity$1;-><init>(Lcom/lenovo/settings/AboutActivity;)V

    invoke-virtual {v0, v2}, Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 201
    :cond_3
    :goto_1
    const-string v0, "ro.lenovo.region"

    const-string v2, "prc"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "row"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 202
    const-string v0, "security_information"

    invoke-direct {p0, v0}, Lcom/lenovo/settings/AboutActivity;->removePreferenceIfExist(Ljava/lang/String;)V

    .line 203
    const-string v0, "lenovo_exp_checkbox"

    invoke-direct {p0, v0}, Lcom/lenovo/settings/AboutActivity;->removePreferenceIfExist(Ljava/lang/String;)V

    .line 208
    :cond_4
    const-string v0, "setting_wizard"

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/AboutActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/settings/AboutActivity;->savedPlayersTutorialPref:Landroid/preference/Preference;

    .line 209
    iget-object v11, p0, Lcom/lenovo/settings/AboutActivity;->savedPlayersTutorialPref:Landroid/preference/Preference;

    .line 210
    .local v11, "playersTutorialPref":Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/lenovo/settings/AboutActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0, v11}, Lcom/lenovo/settings/AboutActivity;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/Preference;)V

    .line 217
    invoke-virtual {p0}, Lcom/lenovo/settings/AboutActivity;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 219
    .local v8, "act":Landroid/app/Activity;
    const-string v0, "container"

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/AboutActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceGroup;

    .line 221
    .local v10, "parentPreference":Landroid/preference/PreferenceGroup;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 222
    .local v9, "legalIntent":Landroid/content/Intent;
    const-string v0, "com.android.settings"

    const-string v2, "com.android.settings.deviceinfo.LegalInformationActivity"

    invoke-virtual {v9, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    invoke-virtual {v10, v9}, Landroid/preference/PreferenceGroup;->setIntent(Landroid/content/Intent;)V

    .line 226
    invoke-direct {p0}, Lcom/lenovo/settings/AboutActivity;->removeUnnecessaryPreference()V

    .line 228
    invoke-virtual {p0}, Lcom/lenovo/settings/AboutActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lenovo/settings/AboutActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "about_device"

    invoke-static {v0, v2, v3}, Lcom/android/settings/Utils;->addPreferencePluginSort(Landroid/app/Activity;Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/lenovo/settings/AboutActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lenovo/settings/AboutActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/lenovo/settings/AboutActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v3, Lcom/android/settings/SubSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    move v3, v1

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addShowInfoAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-void

    .line 149
    .end local v8    # "act":Landroid/app/Activity;
    .end local v9    # "legalIntent":Landroid/content/Intent;
    .end local v10    # "parentPreference":Landroid/preference/PreferenceGroup;
    .end local v11    # "playersTutorialPref":Landroid/preference/Preference;
    :cond_5
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/lenovo/settings/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0b6a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 151
    .restart local v12    # "status":Ljava/lang/String;
    const-string v0, "selinux_status"

    invoke-direct {p0, v0, v12}, Lcom/lenovo/settings/AboutActivity;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 195
    .end local v12    # "status":Ljava/lang/String;
    :cond_6
    iget-object v0, p0, Lcom/lenovo/settings/AboutActivity;->mLenovoExpCheck:Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;

    if-eqz v0, :cond_3

    .line 196
    invoke-virtual {p0}, Lcom/lenovo/settings/AboutActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/lenovo/settings/AboutActivity;->mLenovoExpCheck:Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 406
    packed-switch p1, :pswitch_data_0

    .line 425
    const/4 v0, 0x0

    .line 428
    .local v0, "d":Landroid/app/Dialog;
    :goto_0
    return-object v0

    .line 408
    .end local v0    # "d":Landroid/app/Dialog;
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/lenovo/settings/AboutActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c019e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c019b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/lenovo/settings/AboutActivity$5;

    invoke-direct {v3, p0}, Lcom/lenovo/settings/AboutActivity$5;-><init>(Lcom/lenovo/settings/AboutActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/lenovo/settings/AboutActivity$4;

    invoke-direct {v3, p0}, Lcom/lenovo/settings/AboutActivity$4;-><init>(Lcom/lenovo/settings/AboutActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 422
    .restart local v0    # "d":Landroid/app/Dialog;
    goto :goto_0

    .line 406
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 255
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    .line 257
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 12
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v0, 0x1

    .line 261
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "build_number"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 263
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_1

    .line 349
    :cond_0
    :goto_0
    return v0

    .line 265
    :cond_1
    iget v1, p0, Lcom/lenovo/settings/AboutActivity;->mDevHitCountdown:I

    if-lez v1, :cond_7

    .line 266
    iget v1, p0, Lcom/lenovo/settings/AboutActivity;->mDevHitCountdown:I

    if-ne v1, v0, :cond_2

    .line 267
    invoke-super {p0, p2}, Lcom/android/settings/RestrictedSettingsFragment;->ensurePinRestrictedPreference(Landroid/preference/Preference;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    :cond_2
    iget v1, p0, Lcom/lenovo/settings/AboutActivity;->mDevHitCountdown:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/lenovo/settings/AboutActivity;->mDevHitCountdown:I

    .line 272
    iget v1, p0, Lcom/lenovo/settings/AboutActivity;->mDevHitCountdown:I

    if-nez v1, :cond_5

    .line 273
    invoke-virtual {p0}, Lcom/lenovo/settings/AboutActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "development"

    invoke-virtual {v1, v2, v11}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "show"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 276
    iget-object v1, p0, Lcom/lenovo/settings/AboutActivity;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v1, :cond_3

    .line 277
    iget-object v1, p0, Lcom/lenovo/settings/AboutActivity;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 279
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/settings/AboutActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0440

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/settings/AboutActivity;->mDevHitToast:Landroid/widget/Toast;

    .line 281
    iget-object v0, p0, Lcom/lenovo/settings/AboutActivity;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 349
    :cond_4
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0

    .line 282
    :cond_5
    iget v1, p0, Lcom/lenovo/settings/AboutActivity;->mDevHitCountdown:I

    if-lez v1, :cond_4

    iget v1, p0, Lcom/lenovo/settings/AboutActivity;->mDevHitCountdown:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_4

    .line 284
    iget-object v1, p0, Lcom/lenovo/settings/AboutActivity;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v1, :cond_6

    .line 285
    iget-object v1, p0, Lcom/lenovo/settings/AboutActivity;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 287
    :cond_6
    invoke-virtual {p0}, Lcom/lenovo/settings/AboutActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/settings/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0f0000

    iget v4, p0, Lcom/lenovo/settings/AboutActivity;->mDevHitCountdown:I

    new-array v0, v0, [Ljava/lang/Object;

    iget v5, p0, Lcom/lenovo/settings/AboutActivity;->mDevHitCountdown:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v11

    invoke-virtual {v2, v3, v4, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/settings/AboutActivity;->mDevHitToast:Landroid/widget/Toast;

    .line 290
    iget-object v0, p0, Lcom/lenovo/settings/AboutActivity;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 292
    :cond_7
    iget v1, p0, Lcom/lenovo/settings/AboutActivity;->mDevHitCountdown:I

    if-gez v1, :cond_4

    .line 293
    iget-object v1, p0, Lcom/lenovo/settings/AboutActivity;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v1, :cond_8

    .line 294
    iget-object v1, p0, Lcom/lenovo/settings/AboutActivity;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 296
    :cond_8
    invoke-virtual {p0}, Lcom/lenovo/settings/AboutActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0441

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/settings/AboutActivity;->mDevHitToast:Landroid/widget/Toast;

    .line 298
    iget-object v0, p0, Lcom/lenovo/settings/AboutActivity;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 301
    :cond_9
    const-string v1, "security_information"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 302
    invoke-direct {p0, v11}, Lcom/lenovo/settings/AboutActivity;->checkSecurityInfoAndShowDialog(Z)V

    goto :goto_1

    .line 306
    :cond_a
    const-string v1, "more_device_info"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 307
    const-string v2, "com.lenovo.settings.VersionInfoSettingsActivity$VersionInfoSettingsMore"

    const v3, 0x7f0c02bd

    const/16 v4, 0x12c

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/settings/AboutActivity;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto/16 :goto_1

    .line 312
    :cond_b
    const-string v1, "lenovo_exp_checkbox"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 314
    iget-object v1, p0, Lcom/lenovo/settings/AboutActivity;->mLenovoExpCheck:Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;

    invoke-virtual {v1}, Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;->isChecked()Z

    move-result v9

    .line 315
    .local v9, "lastCheckStatus":Z
    if-eqz v9, :cond_c

    .line 318
    iget-object v1, p0, Lcom/lenovo/settings/AboutActivity;->mLenovoExpCheck:Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;

    invoke-virtual {v1, v0}, Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;->setChecked(Z)V

    .line 319
    invoke-virtual {p0, v0}, Lcom/lenovo/settings/AboutActivity;->showDialog(I)V

    goto/16 :goto_1

    .line 325
    :cond_c
    :try_start_0
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 327
    .local v8, "intentUe":Landroid/content/Intent;
    const-string v1, "com.lenovo.action.LENOVO_UE_SERVICE"

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    invoke-virtual {p0}, Lcom/lenovo/settings/AboutActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    .end local v8    # "intentUe":Landroid/content/Intent;
    :goto_2
    iget-object v1, p0, Lcom/lenovo/settings/AboutActivity;->mLenovoExpCheck:Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;

    invoke-virtual {v1, v0}, Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;->setChecked(Z)V

    .line 333
    const-string v0, "persist.backgrounddata.enable"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 329
    :catch_0
    move-exception v6

    .line 330
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 338
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v9    # "lastCheckStatus":Z
    :cond_d
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "phone_info_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 339
    new-instance v10, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/lenovo/settings/AboutActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 340
    .local v10, "preferencefrag":Landroid/preference/Preference;
    const-class v0, Lcom/lenovo/settings/PhoneInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0}, Lcom/lenovo/settings/AboutActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0, v5, v10}, Lcom/android/settings/SettingsActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 343
    .end local v10    # "preferencefrag":Landroid/preference/Preference;
    :cond_e
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "regulatory_info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 344
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.provider.Telephony.SECRET_CODE"

    const-string v1, "android_secret_code://07"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 345
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/lenovo/settings/AboutActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 237
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 238
    invoke-virtual {p0}, Lcom/lenovo/settings/AboutActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 239
    .local v1, "parentPreference":Landroid/preference/PreferenceGroup;
    invoke-virtual {p0}, Lcom/lenovo/settings/AboutActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "development"

    invoke-virtual {v3, v4, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "show"

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v6, "eng"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    :goto_0
    iput v3, p0, Lcom/lenovo/settings/AboutActivity;->mDevHitCountdown:I

    .line 242
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lenovo/settings/AboutActivity;->mDevHitToast:Landroid/widget/Toast;

    .line 244
    const-string v3, "persist.backgrounddata.enable"

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 245
    .local v0, "bBackgroundDataEnable":Ljava/lang/Boolean;
    iget-object v3, p0, Lcom/lenovo/settings/AboutActivity;->mLenovoExpCheck:Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;->setChecked(Z)V

    .line 249
    iget-object v2, p0, Lcom/lenovo/settings/AboutActivity;->savedPlayersTutorialPref:Landroid/preference/Preference;

    .line 250
    .local v2, "playersTutorialPref":Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/lenovo/settings/AboutActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/lenovo/settings/AboutActivity;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/Preference;)V

    .line 252
    return-void

    .line 239
    .end local v0    # "bBackgroundDataEnable":Ljava/lang/Boolean;
    .end local v2    # "playersTutorialPref":Landroid/preference/Preference;
    :cond_0
    const/4 v3, 0x7

    goto :goto_0
.end method

.method public updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/Preference;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 444
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .local v1, "preferenceKey":Ljava/lang/String;
    move-object v2, p2

    .line 445
    check-cast v2, Landroid/preference/PreferenceGroup;

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    move-result v0

    .line 447
    .local v0, "isAvailable":Z
    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {p0}, Lcom/lenovo/settings/AboutActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 453
    :goto_0
    return-void

    .line 450
    :cond_0
    const-string v2, "AboutActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The preference "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/preference/Preference;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is not available and should be remove"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-direct {p0, v1}, Lcom/lenovo/settings/AboutActivity;->removePreferenceIfExist(Ljava/lang/String;)V

    goto :goto_0
.end method
