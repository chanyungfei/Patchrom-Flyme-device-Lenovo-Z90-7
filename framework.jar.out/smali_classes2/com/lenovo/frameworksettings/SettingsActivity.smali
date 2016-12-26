.class public Lcom/lenovo/frameworksettings/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingsActivity"


# instance fields
.field private DEMOM:Ljava/lang/String;

.field demo:Landroid/preference/SwitchPreference;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 21
    const-string v0, "demo"

    iput-object v0, p0, Lcom/lenovo/frameworksettings/SettingsActivity;->DEMOM:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    iput-object p0, p0, Lcom/lenovo/frameworksettings/SettingsActivity;->mContext:Landroid/content/Context;

    .line 29
    const v0, 0x1110005

    invoke-virtual {p0, v0}, Lcom/lenovo/frameworksettings/SettingsActivity;->addPreferencesFromResource(I)V

    .line 30
    invoke-virtual {p0}, Lcom/lenovo/frameworksettings/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/frameworksettings/SettingsActivity;->DEMOM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/lenovo/frameworksettings/SettingsActivity;->demo:Landroid/preference/SwitchPreference;

    .line 31
    iget-object v0, p0, Lcom/lenovo/frameworksettings/SettingsActivity;->demo:Landroid/preference/SwitchPreference;

    const-string v1, "Demo"

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p0, Lcom/lenovo/frameworksettings/SettingsActivity;->demo:Landroid/preference/SwitchPreference;

    const-string v1, "just a demo ~"

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 34
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 45
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 46
    .local v1, "value":I
    :goto_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/frameworksettings/SettingsActivity;->DEMOM:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    :cond_0
    return v2

    .line 45
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "value":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 38
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 39
    iget-object v0, p0, Lcom/lenovo/frameworksettings/SettingsActivity;->demo:Landroid/preference/SwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 41
    return-void
.end method
