.class public Lcom/android/server/pm/PackagePreloadLinkedUtil;
.super Ljava/lang/Object;
.source "PackagePreloadLinkedUtil.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LAST_PRELOAD_INFO_FILE:Ljava/lang/String; = "/cache/lastpreload"

.field private static final OPEN_FIRSTBOOT_PRELOAD_LINKED:Z = false

.field private static final SYSTEM_PRELOAD_DIR:Ljava/lang/String; = "/system/preload/"

.field private static final TAG:Ljava/lang/String; = "PackagePreloadLinkedUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createLinkNewApp([Ljava/io/File;)V
    .locals 9
    .param p1, "newappfiles"    # [Ljava/io/File;

    .prologue
    .line 124
    const-string v6, "PackagePreloadLinkedUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readyLinkNewApp new apps size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    if-eqz p1, :cond_2

    .line 126
    move-object v1, p1

    .local v1, "arr$":[Ljava/io/File;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, v1, v4

    .line 127
    .local v0, "app":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "filename":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_1

    .line 126
    .end local v3    # "filename":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 130
    .restart local v3    # "filename":Ljava/lang/String;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ln -s /system/preload/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " /data/app/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "cmd":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/pm/PackagePreloadLinkedUtil;->doExcute(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 132
    const-string v6, "PackagePreloadLinkedUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readyLinkNewApp fail "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 137
    .end local v0    # "app":Ljava/io/File;
    .end local v1    # "arr$":[Ljava/io/File;
    .end local v2    # "cmd":Ljava/lang/String;
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_2
    return-void
.end method

.method private doExcute(Ljava/lang/String;)Z
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 144
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 145
    .local v1, "p":Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 146
    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 147
    const/4 v2, 0x1

    .line 152
    .end local v1    # "p":Ljava/lang/Process;
    :goto_0
    return v2

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getNeedNewPreloadApps([Ljava/lang/String;Z)[Ljava/io/File;
    .locals 7
    .param p1, "apps"    # [Ljava/lang/String;
    .param p2, "isFirstboot"    # Z

    .prologue
    .line 81
    const-string v4, "PackagePreloadLinkedUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepare new link preload app lists isFirstboot:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v2, 0x0

    .line 83
    .local v2, "preloadappfiles":[Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/preload/"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    .local v3, "preloaddir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 85
    if-eqz p2, :cond_0

    .line 86
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    :goto_0
    move-object v4, v2

    .line 108
    :goto_1
    return-object v4

    .line 88
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackagePreloadLinkedUtil;->makenewlist([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 89
    .local v1, "oldApplist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/server/pm/PackagePreloadLinkedUtil$1;

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/PackagePreloadLinkedUtil$1;-><init>(Lcom/android/server/pm/PackagePreloadLinkedUtil;Ljava/util/ArrayList;)V

    .line 104
    .local v0, "newnamefilter":Ljava/io/FilenameFilter;
    invoke-virtual {v3, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    goto :goto_0

    .line 108
    .end local v0    # "newnamefilter":Ljava/io/FilenameFilter;
    .end local v1    # "oldApplist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private makenewlist([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "strs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v0, "alist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 114
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 115
    .local v4, "str":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 116
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "str":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private readFile(Ljava/io/File;)Ljava/lang/String;
    .locals 8
    .param p1, "fil"    # Ljava/io/File;

    .prologue
    .line 156
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 157
    .local v0, "afile":Landroid/util/AtomicFile;
    const/4 v2, 0x0

    .line 159
    .local v2, "in":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .local v3, "in":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 161
    .local v5, "sb":Ljava/lang/StringBuffer;
    const/16 v6, 0xa

    invoke-direct {p0, v3, v5, v6}, Lcom/android/server/pm/PackagePreloadLinkedUtil;->readToken(Ljava/io/InputStream;Ljava/lang/StringBuffer;C)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 169
    .local v4, "lastpreloadlinkinfo":Ljava/lang/String;
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v2, v3

    .line 171
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .end local v4    # "lastpreloadlinkinfo":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    .restart local v2    # "in":Ljava/io/BufferedInputStream;
    :goto_0
    return-object v4

    .line 164
    :catch_0
    move-exception v6

    .line 169
    :goto_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 171
    :goto_2
    const/4 v4, 0x0

    goto :goto_0

    .line 166
    :catch_1
    move-exception v1

    .line 167
    .local v1, "e":Ljava/io/IOException;
    :goto_3
    :try_start_2
    const-string v6, "PackagePreloadLinkedUtil"

    const-string v7, "Failed to readFile"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v6

    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v2    # "in":Ljava/io/BufferedInputStream;
    goto :goto_4

    .line 166
    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v2    # "in":Ljava/io/BufferedInputStream;
    goto :goto_3

    .line 164
    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    :catch_3
    move-exception v6

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v2    # "in":Ljava/io/BufferedInputStream;
    goto :goto_1
.end method

.method private readToken(Ljava/io/InputStream;Ljava/lang/StringBuffer;C)Ljava/lang/String;
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "sb"    # Ljava/lang/StringBuffer;
    .param p3, "endOfToken"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 178
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 179
    .local v0, "ch":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 180
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 181
    const/4 v1, 0x0

    .line 186
    :goto_1
    return-object v1

    .line 183
    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 185
    :cond_1
    if-ne v0, p3, :cond_2

    .line 186
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 188
    :cond_2
    int-to-char v1, v0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private write_system_preload()V
    .locals 7

    .prologue
    .line 194
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    const-string v4, "/cache/lastpreload"

    invoke-direct {v1, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 195
    .local v1, "linkfile":Ljava/io/FileWriter;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, "AnyShare,BaiduInput,GaodeMap,LeVoiceLasf,LeVoiceLasfTts,LeVoiceMenuAssist,LenovoCalculator,LenovoCompass,LenovoService,MobileQQ,NetEaseNews,Qunar,SinaWeather,SinaWeibo,Taobao,UCBrowser,WidgetTencentPortfolio,WidgetXiaoZhi,iReader,sousuo"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, "plstr":Ljava/lang/String;
    const-string v4, "PackagePreloadLinkedUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readySystemPreloadUpgrade write plstr : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 200
    new-instance v4, Ljava/io/File;

    const-string v5, "/cache/lastpreload"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/io/File;->setReadable(ZZ)Z

    .line 201
    new-instance v4, Ljava/io/File;

    const-string v5, "/cache/lastpreload"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/io/File;->setWritable(ZZ)Z

    .line 202
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    .line 203
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v1    # "linkfile":Ljava/io/FileWriter;
    .end local v2    # "plstr":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "PackagePreloadLinkedUtil"

    const-string v5, "Filed to reading recovery log"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public startSystemPreloadUpgrade(ZZ)V
    .locals 9
    .param p1, "isFirstboot"    # Z
    .param p2, "isUpgrade"    # Z

    .prologue
    .line 41
    const-string v6, "vold.decrypt"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, "decrypt":Ljava/lang/String;
    const/4 v0, 0x0

    .line 44
    .local v0, "bDecrypt":Z
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 45
    const-string v6, "trigger_restart_min_framework"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 51
    :cond_0
    if-nez p2, :cond_2

    if-eqz p1, :cond_1

    .line 52
    :cond_1
    const-string v6, "PackagePreloadLinkedUtil"

    const-string v7, "no need to start link new preload app to /data/app/ "

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_0
    return-void

    .line 51
    :cond_2
    if-nez v0, :cond_1

    .line 55
    if-eqz p2, :cond_3

    .line 56
    invoke-direct {p0}, Lcom/android/server/pm/PackagePreloadLinkedUtil;->write_system_preload()V

    .line 61
    :cond_3
    const/4 v3, 0x0

    .line 62
    .local v3, "lastPreapplist":[Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    const-string v6, "/cache/lastpreload"

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .local v4, "lastpreloadF":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 64
    invoke-direct {p0, v4}, Lcom/android/server/pm/PackagePreloadLinkedUtil;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "cur":Ljava/lang/String;
    const-string v6, "PackagePreloadLinkedUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read lastpreload cache app cur: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    if-eqz v1, :cond_4

    .line 67
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 73
    :cond_4
    if-eqz p1, :cond_5

    :cond_5
    const/4 v6, 0x0

    invoke-direct {p0, v3, v6}, Lcom/android/server/pm/PackagePreloadLinkedUtil;->getNeedNewPreloadApps([Ljava/lang/String;Z)[Ljava/io/File;

    move-result-object v5

    .line 74
    .local v5, "newappfiles":[Ljava/io/File;
    invoke-direct {p0, v5}, Lcom/android/server/pm/PackagePreloadLinkedUtil;->createLinkNewApp([Ljava/io/File;)V

    .line 76
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 77
    const-string v6, "PackagePreloadLinkedUtil"

    const-string v7, "complete linked new preload app, del lastpreload file:  /cache/lastpreload"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 69
    .end local v1    # "cur":Ljava/lang/String;
    .end local v5    # "newappfiles":[Ljava/io/File;
    :cond_6
    if-eqz p1, :cond_7

    .line 70
    :cond_7
    const-string v6, "PackagePreloadLinkedUtil"

    const-string v7, "do not link new preload app cause old preload info noexist"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
